package com.coollive.launch.ui;

import android.app.Activity;
import android.app.DatePickerDialog;
import android.app.ProgressDialog;
import android.app.TimePickerDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.View;
import android.widget.CheckBox;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.TimePicker;
import android.widget.Toast;

import java.nio.charset.Charset;
import java.util.Calendar;

import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.mime.MultipartEntity;
import org.apache.http.entity.mime.content.StringBody;
import org.apache.http.impl.client.DefaultHttpClient;
import com.coollive.launch.R;
import com.coollive.launch.common.AppContext;
import com.coollive.launch.common.SysUtil;

public class EditActity extends Activity implements View.OnClickListener,
		DatePickerDialog.OnDateSetListener, TimePickerDialog.OnTimeSetListener {
	private CheckBox checkBox = null;
	private DatePickerDialog datePickerDialog = null;

	private TextView durationTextView = null;
	private EditActivityTask editActivityTask = null;

	private boolean isDuration = false;
	private EditText joinNumEditText = null;

	private EditText passwdEditText = null;
	private ProgressDialog progressDialog = null;
	private TextView startDateTextView = null;
	private TextView starttimeTextView = null;
	private TimePickerDialog timePickerDialog = null;
	private EditText titileEditText = null;

	int year, month, day, hour, minute;

	@Override
	public void onClick(View paramView) {
		switch (paramView.getId()) {
		default:
			return;
		case R.id.topback_IV:
			finish();
			return;
		case R.id.topdone_IV:
			AppContext.getPartyModel(this).title = this.titileEditText
					.getText().toString();
			if (SysUtil.isStringEmpty(AppContext.getPartyModel(this).title)) {
				Toast.makeText(this, "标题不能为空", Toast.LENGTH_SHORT).show();
				return;
			}
			AppContext.getPartyModel(this).passwd = this.passwdEditText
					.getText().toString();
			if (AppContext.getPartyModel(this).duration == 0L) {
				Toast.makeText(this, "活动时间太短", Toast.LENGTH_SHORT).show();
				return;
			}
			try {
				if (!SysUtil.isStringEmpty(this.joinNumEditText.getText()
						.toString())) {
					AppContext.getPartyModel(this).joinNum = Integer
							.parseInt(this.joinNumEditText.getText().toString()
									.trim());
					if (AppContext.getPartyModel(this).joinNum <= 0) {
						Toast.makeText(this, "请填写正确人数", Toast.LENGTH_SHORT).show();
						return;
					}
				}
			} catch (Exception localException1) {
				localException1.printStackTrace();
				Toast.makeText(this, "请填写正确人数", Toast.LENGTH_SHORT).show();
				return;
			}
			AppContext.savePartyModel(this, AppContext.getPartyModel(this));
			this.progressDialog.show();
			if (this.editActivityTask == null) {
				this.editActivityTask = new EditActivityTask(EditActity.this);
				EditActivityTask localEditActivityTask = this.editActivityTask;
				Integer[] arrayOfInteger = new Integer[1];
				arrayOfInteger[0] = Integer.valueOf(0);
				localEditActivityTask.execute(arrayOfInteger);
				return;
			}else {
				this.editActivityTask.cancel(true);
				break;
			}
		case R.id.ready_actity_starttime_panel:
			this.isDuration = false;
			this.timePickerDialog.updateTime(this.hour, this.minute);
			this.timePickerDialog.show();
			return;

		case R.id.ready_actity_duration_panel:
			this.isDuration = true;
			this.timePickerDialog
					.updateTime(
							(int) (AppContext.getPartyModel(this).duration / 3600000L),
							(int) (AppContext.getPartyModel(this).duration / 1000L / 60L) % 60);
			this.timePickerDialog.show();
			return;

		case R.id.ready_actity_startdate_panel:
			this.datePickerDialog.show();
			return;
		}
	}

	@Override
	protected void onCreate(Bundle paramBundle) {
		super.onCreate(paramBundle);
		setContentView(R.layout.activity_ready_actity);

		((TextView) findViewById(R.id.topbar_titleTV)).setText("编辑活动");

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
		localCalendar.setTimeInMillis(AppContext.getPartyModel(this).starttime);
		this.year = localCalendar.get(1);
		this.month = localCalendar.get(2);
		this.day = localCalendar.get(5);
		this.hour = localCalendar.get(11);
		this.minute = localCalendar.get(12);

		this.titileEditText.setText(AppContext.getPartyModel(this).title);
		this.startDateTextView.setText(SysUtil.getPartyFormatDate(AppContext
				.getPartyModel(this).starttime));
		this.starttimeTextView.setText(SysUtil.getPartyFormatTime(AppContext
				.getPartyModel(this).starttime));
		this.durationTextView.setText(SysUtil.getPartyDurationString(AppContext
				.getPartyModel(this).duration));
		this.passwdEditText.setText(AppContext.getPartyModel(this).passwd);
		if (AppContext.getPartyModel(this).joinNum > 0)
			this.joinNumEditText
					.setText(AppContext.getPartyModel(this).joinNum);
		this.datePickerDialog = new DatePickerDialog(this, this, this.year,
				this.month, this.day);
		this.timePickerDialog = new TimePickerDialog(this, this, this.hour,
				this.minute, true);
		this.progressDialog = new ProgressDialog(this);
		this.progressDialog.setTitle("请稍等...");
		this.progressDialog.setMessage("正在提交修改");

		this.progressDialog
				.setOnDismissListener(new DialogInterface.OnDismissListener() {
					@Override
					public void onDismiss(DialogInterface paramDialogInterface) {
						if (EditActity.this.editActivityTask != null) {
							try {
								EditActity.this.editActivityTask.cancel(true);
								return;
							} catch (Exception localException) {
							}
						}
					}
				});
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
			Toast.makeText(this, "设置时间不能小于当前时间", Toast.LENGTH_SHORT).show();
			return;
		}
		this.year = paramInt1;
		this.month = paramInt2;
		this.day = paramInt3;
		localCalendar.set(this.year, this.month, this.day, this.hour,
				this.minute);
		AppContext.getPartyModel(this).starttime = localCalendar
				.getTimeInMillis();
		this.startDateTextView.setText(SysUtil.getPartyFormatDate(AppContext
				.getPartyModel(this).starttime));
		this.starttimeTextView.setText(SysUtil.getPartyFormatTime(AppContext
				.getPartyModel(this).starttime));
	}

	@Override
	public void onTimeSet(TimePicker paramTimePicker, int paramInt1,
			int paramInt2) {
		SysUtil.samlog("hourOfDay = " + paramInt1 + ",minute = " + paramInt2);
		if (this.isDuration) {
			if (1000 * (paramInt1 * 3600 + paramInt2 * 60) == 0) {
				Toast.makeText(this, "持续时间不能为0", Toast.LENGTH_SHORT).show();
				return;
			}
			AppContext.getPartyModel(this).duration = (1000 * (paramInt1 * 3600 + paramInt2 * 60));
			this.durationTextView
					.setText(SysUtil.getPartyDurationString(AppContext
							.getPartyModel(this).duration));
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
		AppContext.getPartyModel(this).starttime = localCalendar
				.getTimeInMillis();
		SysUtil.samlog("partyModel.starttime = "
				+ AppContext.getPartyModel(this).starttime);
		this.startDateTextView.setText(SysUtil.getPartyFormatDate(AppContext
				.getPartyModel(this).starttime));
		this.starttimeTextView.setText(SysUtil.getPartyFormatTime(AppContext
				.getPartyModel(this).starttime));
	}

	private class EditActivityTask extends AsyncTask<Integer, Integer, Integer> {
		private Context context;

		private EditActivityTask(Context context) {
			this.context = context;
		}

		@Override
		protected Integer doInBackground(Integer[] paramArrayOfInteger) {
			try {
				String str = AppContext.inetAddr
						+ AppContext.editActivityURL;
				SysUtil.samlog(str);
				SysUtil.samlog("post activity_id = "
						+ AppContext.getPartyModel(EditActity.this).id);
				SysUtil.samlog("post user_id = "
						+ AppContext.getUserID(EditActity.this));
				SysUtil.samlog("post title = "
						+ AppContext.getPartyModel(EditActity.this).title);
				SysUtil.samlog("post start_time = "
						+ AppContext.getPartyModel(EditActity.this).starttime);
				SysUtil.samlog("post duration = "
						+ AppContext.getPartyModel(EditActity.this).duration);
				SysUtil.samlog("post join_num = "
						+ AppContext.getPartyModel(EditActity.this).joinNum);
				SysUtil.samlog("post passwd = "
						+ AppContext.getPartyModel(EditActity.this).passwd);
				HttpPost localHttpPost = new HttpPost(str);

				MultipartEntity entity = new MultipartEntity();
				entity.addPart("rid", new StringBody(String.valueOf(AppContext
						.getPartyModel(EditActity.this).id)));
				entity.addPart("user_id", new StringBody(String.valueOf(AppContext.getUserID(EditActity.this))));
				entity.addPart("title", new StringBody(AppContext.getPartyModel(EditActity.this).title, Charset.forName("UTF-8")));
				entity.addPart("start_time", new StringBody(String.valueOf(AppContext
						.getPartyModel(EditActity.this).starttime)));
				entity.addPart("duration", new StringBody(String.valueOf(AppContext
						.getPartyModel(EditActity.this).duration)));
				entity.addPart("join_num", new StringBody(String.valueOf(AppContext
						.getPartyModel(EditActity.this).joinNum)));
				entity.addPart("passwd", new StringBody(AppContext.getPartyModel(EditActity.this).passwd, Charset.forName("UTF-8")));
				entity.addPart("is_tmp", new StringBody(String.valueOf(AppContext
						.getPartyModel(EditActity.this).istmp)));
				
				localHttpPost.setEntity(entity);
				DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient();
				localDefaultHttpClient.setCookieStore(AppContext
						.getCookieStore(EditActity.this));
				localDefaultHttpClient.getParams().setParameter(
						"http.connection.timeout", Integer.valueOf(20000));
				localDefaultHttpClient.getParams().setParameter(
						"http.socket.timeout", Integer.valueOf(20000));
				HttpResponse localHttpResponse = localDefaultHttpClient
						.execute(localHttpPost);
				SysUtil.samlog("getStatusCode = "
						+ localHttpResponse.getStatusLine().getStatusCode());
				
				Integer localInteger = Integer.valueOf(localHttpResponse
						.getStatusLine().getStatusCode());
				
				System.out.println("EditActivity:http status code:"+localInteger);
				return localInteger;
			} catch (Exception localException) {
				localException.printStackTrace();
			}
			return Integer.valueOf(0);
		}

		@Override
		protected void onPostExecute(Integer paramInteger) {
			super.onPostExecute(paramInteger);
			EditActity.this.progressDialog.dismiss();
			
			if (paramInteger.intValue() == 200) {
				Toast.makeText(EditActity.this, "房间已修改", Toast.LENGTH_SHORT).show();
				EditActity.this.finish();
				return;
			}
			
			Toast.makeText(EditActity.this, "房间修改失败", Toast.LENGTH_SHORT).show();
		}
	}
}

/*
 * Location: D:\apk_unbuild\dex2jar-0.0.9.15\classes_dex2jar.jar Qualified Name:
 * com.rayclear.videomessage.ui.EditActity JD-Core Version: 0.6.0
 */