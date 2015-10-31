package com.coollive.launch.ui;

import org.json.JSONObject;

import com.coollive.launch.R;
import com.coollive.launch.RayclearApplication;
import com.coollive.launch.camera.CameraProvider;
import com.coollive.launch.common.AppContext;
import com.coollive.launch.common.CreateNewActivityThread;
import com.coollive.launch.common.SysUtil;
import com.coollive.launch.model.PartyModel;
import com.coollive.launch.settings.Setting;
import com.coollive.launch.ui.video.VideoRecordRtmpFLV;
import com.coollive.launch.ui.video.VideoRecordRtmpH264;

import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.Menu;
import android.view.View;
import android.widget.Toast;

public class Home extends Activity implements View.OnClickListener {

	private long lastClickTime = 0L;
	private AlertDialog quitAlertDialog = null;
	private AlertDialog upgradeAppAlertDialog = null;

	private CreateNewActivityThread createNewActivityThread = null;
	private ProgressDialog getChannelProgressDialog = null;
	
	private Handler handler = new Handler() {
		@Override
		public void handleMessage(Message paramMessage) {
			super.handleMessage(paramMessage);
			switch (paramMessage.what) {
			default:
			case 0:
			case 1:
				if (paramMessage.obj != null) {
					Toast.makeText(Home.this, (String) paramMessage.obj, 0).show();
				}

				Home.this.getChannelProgressDialog.dismiss();
				if (paramMessage.obj == null)
					;
			case 2:
				try {
					JSONObject localJSONObject = new JSONObject(
							(String) paramMessage.obj);
					PartyModel localPartyModel = new PartyModel();
					localPartyModel.shareMessage = localJSONObject
							.getString("message");
					localPartyModel.urlToken = localJSONObject
							.getString("token");
					AppContext.savePartyModel(Home.this, localPartyModel);
					if (CameraProvider.canUseAdvancedCodec(Home.this)) {
						Home.this.startActivity(new Intent(Home.this,
								VideoRecordRtmpH264.class));
					} else {
						Home.this.startActivity(new Intent(Home.this,
								VideoRecordRtmpFLV.class));
					}
					Home.this.getChannelProgressDialog.dismiss();
					Toast.makeText(Home.this, "获取连接失败，请重试", 0).show();
					return;
				} catch (Exception localException) {
				}

			}

		}
	};

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.home);

		// RayclearApplication.enqueueActivity(this);
		SysUtil.samlog("Home@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
		
		findViewById(R.id.home_settings).setOnClickListener(this);
		findViewById(R.id.home_ready_actityIV).setOnClickListener(this);
		findViewById(R.id.home_my_actityIV).setOnClickListener(this);
		findViewById(R.id.home_live_goIV).setOnClickListener(this);
		
		this.getChannelProgressDialog = new ProgressDialog(this);
		this.getChannelProgressDialog.setTitle("请稍后...");
		this.getChannelProgressDialog.setMessage("正在获取分享地址");
		this.getChannelProgressDialog
				.setOnDismissListener(new DialogInterface.OnDismissListener() {
					@Override
					public void onDismiss(DialogInterface paramDialogInterface) {
						if (Home.this.createNewActivityThread != null)
							Home.this.createNewActivityThread.flag = false;
					}
				});
		
		this.quitAlertDialog = new AlertDialog.Builder(this)
				.setMessage("是否退出应用？")
				.setPositiveButton("确定", new DialogInterface.OnClickListener() {
					@Override
					public void onClick(DialogInterface paramDialogInterface,
							int paramInt) {
						RayclearApplication.clearActivitys();
						try {
							Home.this.finish();
							Intent localIntent = new Intent(
									"android.intent.action.MAIN");
							localIntent
									.addCategory("android.intent.category.HOME");
							localIntent.setFlags(268435456);
							Home.this.startActivity(localIntent);
							return;
						} catch (Exception localException) {
						}
					}
				}).setNegativeButton("取消", null).create();

		AlertDialog.Builder localBuilder = null;
		if (AppContext.upgradeState > 0) {
			AppContext.upgradeState = -1;
			localBuilder = new AlertDialog.Builder(this);
			localBuilder.setTitle("有可更新版本");
		}
		try {
			StringBuffer localStringBuffer = new StringBuffer();
			localStringBuffer.append("新特性:\n");
			for (int i = 0;; i++) {
				if (i >= AppContext.newfeatures.length()) {
					localBuilder.setMessage(localStringBuffer);
					localBuilder.setPositiveButton("立即更新",
							new DialogInterface.OnClickListener() {
								@Override
								public void onClick(
										DialogInterface paramDialogInterface,
										int paramInt) {
									Uri localUri = Uri
											.parse(AppContext.upgradeUrl);
									Home.this.startActivity(new Intent(
											"android.intent.action.VIEW",
											localUri));
								}
							});
					localBuilder.setNegativeButton("以后再说", null);
					this.upgradeAppAlertDialog = localBuilder.create();
					this.upgradeAppAlertDialog.show();
					System.setOut(System.out);
					System.setErr(System.err);
					return;
				}
				String str = AppContext.newfeatures.getString(i);
				localStringBuffer.append("*").append(str).append("\n");
			}
		} catch (Exception localException) {
		}
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.home, menu);
		return true;
	}

	@Override
	public void onClick(View paramView) {
		// TODO Auto-generated method stub		
		if (System.currentTimeMillis() - this.lastClickTime < 1000L) {
			System.out.println("####### last click time:....");
			return;		  
		}     
		 
		this.lastClickTime = System.currentTimeMillis();
		switch (paramView.getId()) {		    
		    case R.id.home_settings:
		    	 System.out.println("SettingsHome....");
		         startActivity(new Intent(Home.this, Setting.class));		         
		         return;		      
		    case R.id.home_live_goIV:
		    	Intent localIntent = null;
		        if (CameraProvider.canUseAdvancedCodec(this)) {
		        	System.out.println("###VideoRecordRtmpH264");
		    	    localIntent = new Intent(Home.this, VideoRecordRtmpH264.class);
		        }else {
		        	System.out.println("###VideoRecordRtmpFLV");
		    	    localIntent = new Intent(Home.this, VideoRecordRtmpFLV.class);
		        }		        
		        localIntent.putExtra("live", true);
		        startActivity(localIntent);
		    	return;		        
		    case R.id.home_ready_actityIV:
		         startActivity(new Intent(Home.this, ReadyActity.class));
		         return;
		    case R.id.home_my_actityIV:
		    	 startActivity(new Intent(Home.this, MyActity.class));
		    	 return;		    	
		    default:
			      return;
		}
		
	}
}
