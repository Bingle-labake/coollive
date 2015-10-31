package com.coollive.launch.ui;

import java.util.Calendar;

import org.json.JSONObject;

import com.coollive.launch.R;
import com.coollive.launch.common.AppContext;
import com.coollive.launch.common.CreateNewActivityThread;
import com.coollive.launch.common.SysUtil;
import com.coollive.launch.model.PartyModel;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.DatePickerDialog;
import android.app.ProgressDialog;
import android.app.TimePickerDialog;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.view.Menu;
import android.view.View;
import android.widget.CheckBox;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.TimePicker;
import android.widget.Toast;

public class ReadyActity extends Activity implements View.OnClickListener,
		DatePickerDialog.OnDateSetListener, TimePickerDialog.OnTimeSetListener {
	private PartyModel partyModel = new PartyModel();
	private EditText passwdEditText = null;
	private EditText titileEditText = null;
	private long judgeStartTime = 0L;

	private EditText joinNumEditText = null;
	private ProgressDialog getChannelProgressDialog = null;
	private DatePickerDialog datePickerDialog = null;
	private TextView durationTextView = null;
	private CreateNewActivityThread createNewActivityThread = null;

	private CheckBox checkBox = null;
	int year, month, day, hour, minute, second;
	private boolean isDuration = false;
	private TimePickerDialog timePickerDialog = null;

	private TextView startDateTextView = null;
	private TextView starttimeTextView = null;

	private Handler handler = new Handler() {
		@SuppressLint("NewApi")
		@SuppressWarnings("deprecation")
		@Override
		public void handleMessage(Message paramMessage) {
			super.handleMessage(paramMessage);
			switch (paramMessage.what) {
			case 0:
				ReadyActity.this.getChannelProgressDialog.dismiss();
				Toast.makeText(ReadyActity.this, "获取连接失败，请重试", 0).show();
				return;
			case 1:
				ReadyActity.this.getChannelProgressDialog.dismiss();
				try {
					JSONObject localJSONObject = new JSONObject(
							(String) paramMessage.obj);
					
					if(localJSONObject.getBoolean("result")) {
						JSONObject data = localJSONObject.getJSONObject("data");
						if (ReadyActity.this.checkBox.isChecked()) {
							ClipboardManager clipboard = (ClipboardManager)ReadyActity.this.getSystemService(Context.CLIPBOARD_SERVICE);
							clipboard.setText(data.getString("message"));
						}
						Toast.makeText(ReadyActity.this, "已创建活动", 0).show();
						ReadyActity.this.finish();
					}else {
						Toast.makeText(ReadyActity.this, localJSONObject.getString("error"),
								0).show();
					}					
					return;
				} catch (Exception localException) {
					localException.printStackTrace();
				}
			case 2:
				if (paramMessage.obj != null) {
					Toast.makeText(ReadyActity.this, (String) paramMessage.obj,
							0).show();
				}
				return;
			default:
				;
			}

		}
	};

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_ready_actity);

		findViewById(R.id.topback_IV).setOnClickListener(this);
		findViewById(R.id.topdone_IV).setOnClickListener(this);
		findViewById(R.id.ready_actity_startdate_panel)
				.setOnClickListener(this);
		findViewById(R.id.ready_actity_starttime_panel)
				.setOnClickListener(this);
		findViewById(R.id.ready_actity_duration_panel).setOnClickListener(this);

		this.titileEditText = ((EditText) findViewById(R.id.ready_actity_titleET));
		this.passwdEditText = ((EditText) findViewById(R.id.ready_actity_passwdET));
		this.joinNumEditText = ((EditText) findViewById(R.id.ready_actity_peoplenumET));
		this.starttimeTextView = ((TextView) findViewById(R.id.ready_actity_starttimeTV));
		this.startDateTextView = ((TextView) findViewById(R.id.ready_actity_startdateTV));
		this.durationTextView = ((TextView) findViewById(R.id.ready_actity_durationTV));
		this.checkBox = ((CheckBox) findViewById(R.id.ready_actity_CB));

		Calendar localCalendar = Calendar.getInstance();
		localCalendar.setTimeInMillis(System.currentTimeMillis());
		this.year = localCalendar.get(1);
		this.month = localCalendar.get(2);
		this.day = localCalendar.get(5);
		this.hour = (1 + localCalendar.get(11));
		this.minute = 0;
		this.second = 0;
		localCalendar.set(11, this.hour);
		localCalendar.set(12, 0);
		localCalendar.set(13, 0);
		this.partyModel.starttime = localCalendar.getTimeInMillis();
		this.judgeStartTime = System.currentTimeMillis();
		this.startDateTextView.setText(SysUtil
				.getPartyFormatDate(this.partyModel.starttime));
		this.starttimeTextView.setText(SysUtil
				.getPartyFormatTime(this.partyModel.starttime));
		this.durationTextView.setText(SysUtil
				.getPartyDurationString(this.partyModel.duration));
		this.datePickerDialog = new DatePickerDialog(this, this, this.year,
				this.month, this.day);
		this.timePickerDialog = new TimePickerDialog(this, this, this.hour,
				this.minute, true);
		this.datePickerDialog.setCanceledOnTouchOutside(false);
		this.timePickerDialog.setCanceledOnTouchOutside(false);
		this.getChannelProgressDialog = new ProgressDialog(this);
		this.getChannelProgressDialog.setTitle("请稍后...");
		this.getChannelProgressDialog.setMessage("正在提交直播请求");
		this.getChannelProgressDialog
				.setOnDismissListener(new DialogInterface.OnDismissListener() {
					@Override
					public void onDismiss(DialogInterface paramDialogInterface) {
						if (ReadyActity.this.createNewActivityThread != null)
							ReadyActity.this.createNewActivityThread.flag = false;
					}
				});
		this.getChannelProgressDialog.setCanceledOnTouchOutside(false);
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.ready_actity, menu);
		return true;
	}

	@Override
	public void onDateSet(DatePicker paramDatePicker, int paramInt1,
			int paramInt2, int paramInt3) {
		SysUtil.samlog("year = " + paramInt1 + ",monthOfYear = " + paramInt2
				+ ",dayOfMonth = " + paramInt3);
		Calendar localCalendar = Calendar.getInstance();
		localCalendar.set(paramInt1, paramInt2, paramInt3, this.hour,
				this.minute);
		if (localCalendar.getTimeInMillis() < System.currentTimeMillis()) {
			Toast.makeText(this, "设置时间不能小于当前时间", 0).show();
			return;
		}
		this.year = paramInt1;
		this.month = paramInt2;
		this.day = paramInt3;
		localCalendar.set(this.year, this.month, this.day, this.hour,
				this.minute);
		localCalendar.set(13, 0);
		this.partyModel.starttime = localCalendar.getTimeInMillis();
		this.startDateTextView.setText(SysUtil
				.getPartyFormatDate(this.partyModel.starttime));
		this.starttimeTextView.setText(SysUtil
				.getPartyFormatTime(this.partyModel.starttime));
	}

	@Override
	public void onTimeSet(TimePicker paramTimePicker, int paramInt1,
			int paramInt2) {
		SysUtil.samlog("hourOfDay = " + paramInt1 + ",minute = " + paramInt2);
		if (this.isDuration) {
			if (1000 * (paramInt1 * 3600 + paramInt2 * 60) == 0) {
				Toast.makeText(this, "活动持续时间不能为0", 0).show();
				return;
			}
			this.partyModel.duration = (1000 * (paramInt1 * 3600 + paramInt2 * 60));
			this.durationTextView.setText(SysUtil
					.getPartyDurationString(this.partyModel.duration));
			return;
		}
		Calendar localCalendar = Calendar.getInstance();
		localCalendar
				.set(this.year, this.month, this.day, paramInt1, paramInt2);
		if (localCalendar.getTimeInMillis() < System.currentTimeMillis()) {
			Toast.makeText(this, "设置时间不能小于当前时间", 0).show();
			return;
		}

		this.hour = paramInt1;
		this.minute = paramInt2;
		localCalendar.set(this.year, this.month, this.day, this.hour,
				this.minute);

		this.partyModel.starttime = localCalendar.getTimeInMillis();

		SysUtil.samlog("partyModel.starttime = " + this.partyModel.starttime);
		this.startDateTextView.setText(SysUtil
				.getPartyFormatDate(this.partyModel.starttime));

		this.starttimeTextView.setText(SysUtil
				.getPartyFormatTime(this.partyModel.starttime));
	}

	@Override
	public void onClick(View paramView) {
		switch (paramView.getId()) {
		default:
			return;
		case R.id.topback_IV:
			finish();
			return;
		case R.id.topdone_IV:
			this.partyModel.title = this.titileEditText.getText().toString();
			this.partyModel.passwd = this.passwdEditText.getText().toString();
			if (SysUtil.isStringEmpty(this.partyModel.title))
				this.partyModel.title = "我的直播";
			if (this.partyModel.starttime < this.judgeStartTime) {
				Toast.makeText(this, "不能小于当前时间", 0).show();
				return;
			}
			if (this.partyModel.duration == 0L) {
				Toast.makeText(this, "活动时间太短", 0).show();
				return;
			}
			try {
				if (!SysUtil.isStringEmpty(this.joinNumEditText.getText()
						.toString())) {
					this.partyModel.joinNum = Integer
							.parseInt(this.joinNumEditText.getText().toString()
									.trim());
					if (this.partyModel.joinNum <= 0) {
						Toast.makeText(this, "请填写正确人数", 0).show();
						return;
					}
				}
			} catch (Exception localException) {
				localException.printStackTrace();
				Toast.makeText(this, "请填写正确人数", 0).show();
				return;
			}
			this.getChannelProgressDialog.show();
			new CreateNewActivityThread(AppContext.getCookieStore(this),
					AppContext.getUserID(this), this.handler, 1, 2,
					this.partyModel.title, this.partyModel.starttime,
					this.partyModel.duration, this.partyModel.joinNum,
					this.partyModel.passwd, false).start();
			return;
		case R.id.ready_actity_starttime_panel:
			this.isDuration = false;
			this.timePickerDialog.updateTime(this.hour, this.minute);
			this.timePickerDialog.show();
			return;

		case R.id.ready_actity_startdate_panel:
			this.datePickerDialog.show();
			return;

		case R.id.ready_actity_duration_panel:
			this.isDuration = true;
			this.timePickerDialog.updateTime(
					(int) (this.partyModel.duration / 3600000L),
					(int) (this.partyModel.duration / 1000L / 60L) % 60);
			this.timePickerDialog.show();
		}

	}

}
