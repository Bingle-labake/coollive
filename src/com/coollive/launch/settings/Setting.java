package com.coollive.launch.settings;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import android.widget.Toast;
import org.json.JSONArray;

import com.coollive.launch.LaunchActivity;
import com.coollive.launch.R;
import com.coollive.launch.RayclearApplication;
import com.coollive.launch.camera.CameraProvider;
import com.coollive.launch.common.AppContext;
import com.coollive.launch.common.SysUtil;

public class Setting extends Activity implements View.OnClickListener,
		DialogInterface.OnClickListener {
	private static final int MESSAGE_CHANGE_QUALITY = 0;
	private static final int MESSAGE_SHOW_RAW_WORDS = 1;
	public static final int RESULT_QUALITY_CHANGED = 10;
	public static final int RESULT_QUALITY_NOCHANGE = 11;
	private AlertDialog bpsAlertDialog = null;
	private AlertDialog recordtypeAlertDialog = null;
	private TextView bpsTextView = null;
	private TextView recordtypeTextView = null;
	private AlertDialog fpsAlertDialog = null;

	Handler handler = new Handler() {
		@Override
		public void handleMessage(Message paramMessage) {
			super.handleMessage(paramMessage);
			switch (paramMessage.what) {
			case 0:
			case 1:
				if (paramMessage.obj != null)
					Toast.makeText(Setting.this, (String) paramMessage.obj, 0)
							.show();
				break;
			default:
				;
			}
		}
	};
	private AlertDialog qualityAlertDialog = null;
	private TextView showFpsTextView = null;
	private TextView showqualityTextView = null;
	private JSONArray supportedQualitys = null;
	private TextView usernameTextView = null;

	private void setBPS(int paramInt) {
		System.out.println("设置码率 " + paramInt / 1000 + " kbps");
		this.bpsTextView.setText("设置码率 " + paramInt / 1000 + " kbps");
	}

	private void setRecordType(int paramInt) {
		String str = "自动";
		switch (paramInt) {
		case 1:
			str = "自动";
			break;
		case 2:
			str = "FLV";
			break;
		case 3:
			str = "H264";
			break;
		default:
			;
		}
		System.out.println("设置录制类型 :" + str + " ");
		this.recordtypeTextView.setText("设置录制类型 :" + str);
	}

	@Override
	public void onClick(DialogInterface paramDialogInterface, int paramInt) {
		if (paramDialogInterface == this.qualityAlertDialog) {
			SysUtil.samlog("qualityAlertDialog");

			switch (paramInt) {
			case 0:
				this.showqualityTextView.setText("320*240");
				CameraProvider.setRecordSizePref(this, 1);
				return;
			case 1:
				this.showqualityTextView.setText("480*270");
				CameraProvider.setRecordSizePref(this, 4);
				return;
			case 2:
				this.showqualityTextView.setText("640*480");
				CameraProvider.setRecordSizePref(this, 2);
				return;
			case 3:
				this.showqualityTextView.setText("1280*720");
				CameraProvider.setRecordSizePref(this, 3);
				return;
			default:
				return;
			}
		}

		if (paramDialogInterface == this.bpsAlertDialog) {
			SysUtil.samlog("bpsAlertDialog");
			SharedPreferences.Editor localEditor = getSharedPreferences("pref",
					0).edit();

			int i = 0;
			switch (paramInt) {
			case 0:
				i = 200000;
				break;
			case 1:
				i = 300000;
				break;
			case 2:
				i = 400000;
				break;
			case 3:
				i = 500000;
				break;
			case 4:
				i = 600000;
				break;
			case 5:
				i = 800000;
				break;
			case 6:
				i = 1000000;
				break;
			case 7:
				i = 1200000;
				break;
			case 8:
				i = 1400000;
				break;
			case 9:
				i = 1600000;
				break;
			case 10:
				i = 1800000;
				break;
			case 11:
				i = 2000000;
				break;
			default:
				break;
			}

			localEditor.putInt("videobps", i);
			localEditor.commit();
			setBPS(i);
			return;
		}

		if (paramDialogInterface == this.recordtypeAlertDialog) {
			SysUtil.samlog("recordtypeAlertDialog");
			SharedPreferences.Editor localEditor = getSharedPreferences("pref",
					0).edit();
			int i = 0;
			switch (paramInt) {
			case 0:
				i = 1;
				break;
			case 1:
				i = 2;
				break;
			case 2:
				i = 3;
				break;
			default:
				i = 1;
			}
			localEditor.putInt("recordtype", i);
			localEditor.commit();
			setRecordType(i);
			return;
		}

		if (paramDialogInterface == this.fpsAlertDialog) {
			SysUtil.samlog("fpsAlertDialog");
			switch (paramInt) {
			case 0:
				CameraProvider.setIfUse10FPS(this, false);
				this.showFpsTextView.setText("设置帧率 15fps");
				break;
			case 1:
				CameraProvider.setIfUse10FPS(this, true);
				this.showFpsTextView.setText("设置帧率 10fps");
				break;
			default:
				break;
			}
		}
	}

	@Override
	public void onClick(View paramView) {
		switch (paramView.getId()) {
		case R.id.settings_setfps_panel:
			this.fpsAlertDialog.show();
			break;
		case R.id.settings_setbps_panel:
			this.bpsAlertDialog.show();
			break;
		case R.id.settings_setrecordtype_panel:
			this.recordtypeAlertDialog.show();
			break;
		case R.id.topback_IV:
			finish();
			break;
		case R.id.settings_choose_quality_panel:
			this.qualityAlertDialog.show();
			break;
		case R.id.settings_logout_panel:
			new AlertDialog.Builder(this)
					.setMessage("是否注销登录?")
					.setPositiveButton("注销",
							new DialogInterface.OnClickListener() {
								@Override
								public void onClick(
										DialogInterface paramDialogInterface,
										int paramInt) {
									SharedPreferences.Editor localEditor = Setting.this
											.getSharedPreferences("pref", 0)
											.edit();

									localEditor.putInt("userid", 0);
									localEditor.putString("userphone", "");
									localEditor.putString("userpasswd", "");
									localEditor.putString("nickname", "");
									localEditor.commit();
									Setting.this
											.startActivity(new Intent(
													Setting.this,
													LaunchActivity.class));
									RayclearApplication.clearActivitys();
									Setting.this.finish();
								}
							}).setNegativeButton("取消", null).show().show();
			break;
		case R.id.settings_notifycenter_panel:
			startActivity(new Intent(this, ShareApp.class));
			break;
		case R.id.settings_use_introduce_panel:
			startActivity(new Intent(this, UseIntroduction.class));
			break;
		case R.id.settings_enterprise_account_panel:
			startActivity(new Intent(this, SettingsEnterpriseAccount.class));
			break;
		default:
			;
		}

	}

	@Override
	protected void onCreate(Bundle paramBundle) {
		super.onCreate(paramBundle);

		setContentView(R.layout.settings_home);
		this.showqualityTextView = ((TextView) findViewById(R.id.settings_choose_quality_panel_show_quality));
		this.showFpsTextView = ((TextView) findViewById(R.id.settings_setfps_panel_fpsTV));

		findViewById(R.id.settings_setbps_panel).setOnClickListener(this);
		findViewById(R.id.settings_setrecordtype_panel).setOnClickListener(this);
		findViewById(R.id.settings_logout_panel).setOnClickListener(this);
		findViewById(R.id.settings_choose_quality_panel).setOnClickListener(
				this);
		findViewById(R.id.settings_notifycenter_panel).setOnClickListener(this);
		findViewById(R.id.topback_IV).setOnClickListener(this);
		findViewById(R.id.settings_use_introduce_panel)
				.setOnClickListener(this);
		findViewById(R.id.settings_enterprise_account_panel)
				.setOnClickListener(this);
		findViewById(R.id.settings_setfps_panel).setOnClickListener(this);

		this.usernameTextView = ((TextView) findViewById(R.id.settings_usernameTV));
		SharedPreferences localSharedPreferences = getSharedPreferences("pref",
				0);
		this.usernameTextView.setText(AppContext.getUserName(this));
		String str = localSharedPreferences.getString("camera_sizelist", null);
		try {
			this.supportedQualitys = new JSONArray(str);
			boolean bool;
			CheckBox localCheckBox1;

			switch (CameraProvider.getUserFrameSizeSet(this)) {
			case 0:
				this.showqualityTextView.setText("176*144");
				break;
			case 1:
				this.showqualityTextView.setText("320*240");
				break;
			case 2:
				this.showqualityTextView.setText("640*480");
				break;
			case 3:
				this.showqualityTextView.setText("1280*720");
				break;
			case 4:
				this.showqualityTextView.setText("480*270");
				break;
			case 5:
				this.showqualityTextView.setText("360*200");
				break;
			case 6:
				this.showqualityTextView.setText("480*360");
				break;
			default:
				break;
			}
			this.showFpsTextView.setText("设置帧率 30fps");
			this.showFpsTextView.setText("设置帧率 15fps");

			this.bpsTextView = ((TextView) findViewById(R.id.settings_bps_textview));
			this.recordtypeTextView = ((TextView) findViewById(R.id.settings_recordtype_textview));

			setBPS(CameraProvider.getUserSetVideoBps(this));
			setRecordType(CameraProvider.getUserSetVideoRecordType(this));

			bool = CameraProvider.shouldUse10FPS(this);
			System.out.println("shouldUse10FPS:" + bool);

			// 增强算法
			localCheckBox1 = (CheckBox) findViewById(R.id.settings_setuse10fps_panel_fpsCB);
			localCheckBox1.setChecked(bool);

			localCheckBox1
					.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
						@Override
						public void onCheckedChanged(
								CompoundButton paramCompoundButton,
								boolean paramBoolean) {
							CameraProvider.setIfUse10FPS(Setting.this,
									paramBoolean);
						}
					});

			this.qualityAlertDialog = new AlertDialog.Builder(this)
					.setTitle("选择分辨率")
					.setAdapter(new QualityAdapter(null), this).create();
			this.qualityAlertDialog.setCanceledOnTouchOutside(true);

			this.bpsAlertDialog = new AlertDialog.Builder(this)
					.setTitle("选择码率:").setAdapter(new BpsAdapter(null), this)
					.create();
			this.bpsAlertDialog.setCanceledOnTouchOutside(true);

			this.recordtypeAlertDialog = new AlertDialog.Builder(this)
					.setTitle("选择录制方式:")
					.setAdapter(new RecordtypeAdapter(null), this).create();
			this.recordtypeAlertDialog.setCanceledOnTouchOutside(true);

			this.fpsAlertDialog = new AlertDialog.Builder(this)
					.setTitle("选择帧率:").setAdapter(new FpsAdapter(null), this)
					.create();
			this.fpsAlertDialog.setCanceledOnTouchOutside(true);

			// 实时模式
			CheckBox localCheckBox2 = (CheckBox) findViewById(R.id.settings_userealtimeCB);
			localCheckBox2.setChecked(localSharedPreferences.getBoolean(
					"userealtime", true));

			localCheckBox2
					.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
						@Override
						public void onCheckedChanged(
								CompoundButton paramCompoundButton,
								boolean paramBoolean) {
							SharedPreferences.Editor localEditor = Setting.this
									.getSharedPreferences("pref", 0).edit();
							localEditor.putBoolean("userealtime", paramBoolean);
							localEditor.commit();
						}
					});

			// 蓝牙
			CheckBox localCheckBox3 = (CheckBox) findViewById(R.id.settings_useblutoothCB);
			localCheckBox3.setChecked(localSharedPreferences.getBoolean(
					"bluetooth", false));
			localCheckBox3
					.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
						@Override
						public void onCheckedChanged(
								CompoundButton paramCompoundButton,
								boolean paramBoolean) {
							SharedPreferences.Editor localEditor = Setting.this
									.getSharedPreferences("pref", 0).edit();
							localEditor.putBoolean("bluetooth", paramBoolean);
							localEditor.commit();
						}
					});
		} catch (Exception localException) {
			localException.printStackTrace();
		}
	}

	@Override
	protected void onResume() {
		super.onResume();
		String str = getSharedPreferences("pref", 0).getString(
				"enterprise_account", null);
		if ((!SysUtil.isStringEmpty(str)) && (str.length() == 11))
			((TextView) findViewById(R.id.settings_enterprisenum)).setText(str);
	}

	private class BpsAdapter extends BaseAdapter {
		private BpsAdapter(Context context) {
		}

		@Override
		public int getCount() {
			return 12;
		}

		@Override
		public Object getItem(int paramInt) {
			return null;
		}

		@Override
		public long getItemId(int paramInt) {
			return 0L;
		}

		@Override
		public View getView(int paramInt, View paramView,
				ViewGroup paramViewGroup) {
			if (paramView == null) {
				TextView localTextView1 = new TextView(Setting.this);
				localTextView1.setTextSize(24.0F);
				localTextView1.setPadding(10, 10, 10, 10);
				localTextView1.setTextColor(-16777216);
				paramView = localTextView1;
			}
			TextView localTextView2 = (TextView) paramView;
			switch (paramInt) {
			case 0:
				localTextView2.setText("BPS 200k");
				return paramView;
			case 1:
				localTextView2.setText("BPS 300k");
				return paramView;
			case 2:
				localTextView2.setText("BPS 400k");
				return paramView;
			case 3:
				localTextView2.setText("BPS 500k");
				return paramView;
			case 4:
				localTextView2.setText("BPS 600k");
				return paramView;
			case 5:
				localTextView2.setText("BPS 800k");
				return paramView;
			case 6:
				localTextView2.setText("BPS 1000k");
				return paramView;
			case 7:
				localTextView2.setText("BPS 1200k");
				return paramView;
			case 8:
				localTextView2.setText("BPS 1400k");
				return paramView;
			case 9:
				localTextView2.setText("BPS 1600k");
				return paramView;
			case 10:
				localTextView2.setText("BPS 1800k");
				return paramView;
			case 11:
				localTextView2.setText("BPS 2000k");
				return paramView;
			default:
				return paramView;
			}

		}
	}

	private class RecordtypeAdapter extends BaseAdapter {
		private RecordtypeAdapter(Context context) {
		}

		@Override
		public int getCount() {
			return 3;
		}

		@Override
		public Object getItem(int paramInt) {
			return null;
		}

		@Override
		public long getItemId(int paramInt) {
			return 0L;
		}

		@Override
		public View getView(int paramInt, View paramView,
				ViewGroup paramViewGroup) {
			if (paramView == null) {
				TextView localTextView1 = new TextView(Setting.this);
				localTextView1.setTextSize(24.0F);
				localTextView1.setPadding(10, 10, 10, 10);
				localTextView1.setTextColor(-16777216);
				paramView = localTextView1;
			}
			TextView localTextView2 = (TextView) paramView;
			switch (paramInt) {
			case 0:
				localTextView2.setText("自动");
				return paramView;
			case 1:
				localTextView2.setText("FLV");
				return paramView;
			case 2:
				localTextView2.setText("H264");
				return paramView;
			default:
				return paramView;
			}

		}
	}

	private class FpsAdapter extends BaseAdapter {
		private FpsAdapter(Context context) {
		}

		@Override
		public int getCount() {
			return 2;
		}

		@Override
		public Object getItem(int paramInt) {
			return null;
		}

		@Override
		public long getItemId(int paramInt) {
			return 0L;
		}

		@Override
		public View getView(int paramInt, View paramView,
				ViewGroup paramViewGroup) {
			if (paramView == null) {
				TextView localTextView1 = new TextView(Setting.this);
				localTextView1.setTextSize(24.0F);
				localTextView1.setPadding(10, 10, 10, 10);
				localTextView1.setTextColor(-16777216);
				paramView = localTextView1;
			}
			TextView localTextView2 = (TextView) paramView;
			System.out.println("####################paramInt:" + paramInt);
			switch (paramInt) {
			case 0:
				localTextView2.setText("FPS = 15");
				return paramView;
			case 1:
				localTextView2.setText("FPS = 10");
				return paramView;
			default:
				return paramView;
			}

		}
	}

	private class QualityAdapter extends BaseAdapter {
		private QualityAdapter(Context context) {
		}

		@Override
		public int getCount() {
			return 4;
		}

		@Override
		public Object getItem(int paramInt) {
			return null;
		}

		@Override
		public long getItemId(int paramInt) {
			return 0L;
		}

		@Override
		public View getView(int paramInt, View paramView,
				ViewGroup paramViewGroup) {
			if (paramView == null) {
				TextView localTextView1 = new TextView(Setting.this);
				localTextView1.setTextSize(24.0F);
				localTextView1.setPadding(10, 10, 10, 10);
				localTextView1.setTextColor(-16777216);
				paramView = localTextView1;
			}
			TextView localTextView2 = (TextView) paramView;
			switch (paramInt) {
			case 0:
				localTextView2.setText("低（320*240）");
				return paramView;
			case 1:
				localTextView2.setText("中（480*270）");
				return paramView;
			case 2:
				localTextView2.setText("高（640*480）");
				return paramView;
			case 3:
				localTextView2.setText("高清（1280*720）");
				return paramView;
			default:
				return paramView;
			}

		}
	}
}

/*
 * Location: D:\apk_unbuild\dex2jar-0.0.9.15\classes_dex2jar.jar Qualified Name:
 * com.rayclear.videomessage.ui.settings.SettingsHome JD-Core Version: 0.6.0
 */