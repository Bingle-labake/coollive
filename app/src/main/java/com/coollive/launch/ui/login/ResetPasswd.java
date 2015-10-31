package com.coollive.launch.ui.login;

import java.io.IOException;

import org.apache.http.HttpResponse;
import org.apache.http.ParseException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;
import org.json.JSONException;
import org.json.JSONObject;

import com.coollive.launch.R;
import com.coollive.launch.common.AppContext;
import com.coollive.launch.common.SysUtil;
import com.coollive.launch.sms.SmsContent;
import com.coollive.launch.ui.Home;
import com.coollive.launch.ui.video.VideoRecordRtmpH264;

import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;

public class ResetPasswd extends Activity implements View.OnClickListener {
	public static final int RESETPASSWD_RESET_PASSWD_FAILED = 8;
	public static final int RESETPASSWD_RESET_PASSWD_OK = 9;
	public static final int RESETPASSWD_USERPHONE_ERROR_MSG = 0;
	public static final int RESETPASSWD_WARNNING_INFO = 1;
	public static final int REGISTER_GET_CHECKCODE = 10;
	
	private Handler handler = new Handler() {
		@Override
		public void handleMessage(Message paramMessage) {
			super.handleMessage(paramMessage);
			ResetPasswd.this.resetProgressDialog.dismiss();
			switch (paramMessage.what) {			
			case RESETPASSWD_USERPHONE_ERROR_MSG:
				Toast.makeText(ResetPasswd.this, "请输入有效的手机号码", 0).show();
				return;
			case RESETPASSWD_RESET_PASSWD_OK:
				//ResetPasswd.this.findViewById(R.id.resetpasswd_tip).setVisibility(0);
				
				ResetPasswd.this.startActivity(new Intent(ResetPasswd.this, Login.class));
				return;
			case RESETPASSWD_RESET_PASSWD_FAILED:
				if (paramMessage.obj != null) {
					Toast.makeText(ResetPasswd.this, (String) paramMessage.obj, 0)
							.show();
					return;
				}
				Toast.makeText(ResetPasswd.this, "重置失败，请稍后重试", 0).show();	
			case RESETPASSWD_WARNNING_INFO:
				if (paramMessage.obj != null) {
					Toast.makeText(ResetPasswd.this, (String) paramMessage.obj, 0).show();
					return;
				}	
			case REGISTER_GET_CHECKCODE:
				if (paramMessage.obj != null) {
					((EditText) findViewById(R.id.resetpasswd_checkcode_ET)).setText(String.valueOf(paramMessage.obj));
				}
				return;
			default:
				return;
			}
			
			
		}
	};
	private EditText emailPhoneText = null;
	private ResetPasswordThread resetPasswordThread = null;
	private GetCheckCodeThread getCheckCodeThread = null;
	
	private ProgressDialog resetProgressDialog = null;
	private ProgressDialog checkProgressDialog = null;
	private SmsContent smsContent = null;

	public SmsContent getSmsContent() {
		return smsContent;
	}

	private boolean checkPhoneValid() {		
		String str = this.emailPhoneText.getText().toString().trim();
		if (SysUtil.isStringEmpty(str))
			return false;
		
		char[] arrayOfChar = str.toCharArray();
		for(int j=0; j<arrayOfChar.length; j++) {
			boolean bool = Character.isDigit(arrayOfChar[j]);
			if (bool) {
				continue;
			}else {
				return false;
			}
		}	
		return true;
	}
	
	private boolean checkCodeValid() {
		EditText new_passwd = ((EditText) findViewById(R.id.new_passwd));
		String passwd = new_passwd.getText().toString().trim();
		if (SysUtil.isStringEmpty(passwd)) {
			this.handler.obtainMessage(RESETPASSWD_WARNNING_INFO, "新密码不能为空.").sendToTarget();			
			return false;
		}			
		
		EditText confirm_new_passwd = ((EditText) findViewById(R.id.confirm_new_passwd));		
		String c_passwd = confirm_new_passwd.getText().toString().trim();
		if (SysUtil.isStringEmpty(c_passwd)) {
			this.handler.obtainMessage(RESETPASSWD_WARNNING_INFO, "确认密码不能为空.").sendToTarget();			
			return false;
		}
		
		if(new_passwd.equals(confirm_new_passwd)) {
			this.handler.obtainMessage(RESETPASSWD_WARNNING_INFO, "两次输入的密码不一致.").sendToTarget();			
			return false;
		}

		EditText resetpasswd_checkcode_ET = ((EditText) findViewById(R.id.resetpasswd_checkcode_ET));		
		String resetpasswd_checkcode = resetpasswd_checkcode_ET.getText().toString().trim();
		if (SysUtil.isStringEmpty(resetpasswd_checkcode)) {
			this.handler.obtainMessage(RESETPASSWD_WARNNING_INFO, "新密码不能为空.").sendToTarget();		
			return false;
		}
		
		char[] arrayOfChar = resetpasswd_checkcode.toCharArray();
		for(int j=0; j<arrayOfChar.length; j++) {
			boolean bool = Character.isDigit(arrayOfChar[j]);
			if (bool) {
				continue;
			}else {
				this.handler.obtainMessage(RESETPASSWD_WARNNING_INFO, "验证码只能为数字.").sendToTarget();		
				return false;
			}
		}	
		return true;
	}

	@Override
	public void finish() {
		super.finish();
		if (this.resetPasswordThread != null)
			this.resetPasswordThread.stopReset();
	}

	@Override
	public void onClick(View paramView) {
		switch (paramView.getId()) {		
		case R.id.topback_IV:
			finish();
			return;
		case R.id.resetpasswd_reset_TV://重置密码
			if (!checkCodeValid()) {				
				return;
			}
			if (this.resetPasswordThread != null)
				this.resetPasswordThread.stopReset();
			
			this.resetProgressDialog.show();
			this.resetPasswordThread = new ResetPasswordThread(ResetPasswd.this);
			this.resetPasswordThread.start();
			return;	
		case R.id.checkcode_TV://获取效验码
			if (!checkPhoneValid()) {
				this.handler.obtainMessage(RESETPASSWD_USERPHONE_ERROR_MSG).sendToTarget();
				return;
			}
			if (this.getCheckCodeThread != null)
				this.getCheckCodeThread.stopReset();
			
			this.checkProgressDialog.show();
			this.getCheckCodeThread = new GetCheckCodeThread(ResetPasswd.this);
			this.getCheckCodeThread.start();
			return;	
		default:
			return;
		}
		
	}

	@Override
	protected void onCreate(Bundle paramBundle) {
		super.onCreate(paramBundle);
		setContentView(R.layout.activity_reset_passwd);
		//邮箱
		this.emailPhoneText = ((EditText) findViewById(R.id.resetpasswd_phone_ET));		
		
		findViewById(R.id.resetpasswd_reset_TV).setOnClickListener(this);
		this.resetProgressDialog = new ProgressDialog(this);
		this.resetProgressDialog.setTitle("请稍后...");
		this.resetProgressDialog.setMessage("正在重置密码");
		this.resetProgressDialog
				.setOnDismissListener(new DialogInterface.OnDismissListener() {
					@Override
					public void onDismiss(DialogInterface paramDialogInterface) {
						if (ResetPasswd.this.resetPasswordThread != null)
							ResetPasswd.this.resetPasswordThread.stopReset();
					}
				});
		
		this.checkProgressDialog = new ProgressDialog(this);
		this.checkProgressDialog.setTitle("请稍后...");
		this.checkProgressDialog.setMessage("正在获取验证码");
		this.checkProgressDialog
				.setOnDismissListener(new DialogInterface.OnDismissListener() {
					@Override
					public void onDismiss(DialogInterface paramDialogInterface) {
						if (ResetPasswd.this.getCheckCodeThread != null)
							ResetPasswd.this.getCheckCodeThread.stopReset();
					}
				});
		
		findViewById(R.id.topback_IV).setOnClickListener(this);
		
		smsContent = new SmsContent(ResetPasswd.this, ResetPasswd.this.handler,
				((EditText) findViewById(R.id.resetpasswd_checkcode_ET)));
	}

	private class ResetPasswordThread extends Thread {
		private boolean flag = false;
		private Context context;

		private ResetPasswordThread(Context context) {
			this.context = context;
		}

		@Override
		public void run() {
			super.run();
			
			findViewById(R.id.resetpasswd_reset_TV).setEnabled(false);
			this.flag = true;	
			
			String mobile                = ResetPasswd.this.emailPhoneText.getText().toString().trim();
			String new_passwd            = ((EditText) findViewById(R.id.new_passwd)).getText().toString().trim();
			String confirm_new_passwd    = ((EditText) findViewById(R.id.confirm_new_passwd)).getText().toString().trim();
			String resetpasswd_checkcode = ((EditText) findViewById(R.id.resetpasswd_checkcode_ET)).getText().toString().trim();
			
			String url = AppContext.inetAddr + AppContext.resetPasswd + "mobile="
					+ mobile +"&passwd="+new_passwd+"&c_passwd="
					+confirm_new_passwd+"&checkcode="
					+resetpasswd_checkcode;
			
			if (AppContext.isDebugMode)
				SysUtil.samlog(url);
			
			HttpResponse localHttpResponse;
			try {
				HttpGet localHttpGet = new HttpGet(url);
				localHttpResponse = new DefaultHttpClient()
						.execute(localHttpGet);
				if (!this.flag)
					return;
				
				if (AppContext.isDebugMode)
					SysUtil.samlog("httpResponse.getStatusLine().getStatusCode()="
							+ localHttpResponse.getStatusLine().getStatusCode());
				
				if (localHttpResponse.getStatusLine().getStatusCode() == 200) {					
					String result = EntityUtils.toString(localHttpResponse.getEntity());
					// v19
					JSONObject ret = new JSONObject(result);
					if(ret.getBoolean("result")) {
						ResetPasswd.this.handler.obtainMessage(RESETPASSWD_RESET_PASSWD_OK).sendToTarget();
					}else {
						ResetPasswd.this.handler.obtainMessage(RESETPASSWD_WARNNING_INFO, "重置密码失败..."+ret.getString("error")).sendToTarget();		
					}
					return;
				}
				findViewById(R.id.resetpasswd_reset_TV).setEnabled(true);
			} catch (Exception localException) {
				if (AppContext.isDebugMode)
					localException.printStackTrace();
				findViewById(R.id.resetpasswd_reset_TV).setEnabled(true);
				ResetPasswd.this.handler.obtainMessage(RESETPASSWD_RESET_PASSWD_FAILED).sendToTarget();
				return;
			}		
		}

		public void stopReset() {
			this.flag = true;
		}
	}
	
	private class GetCheckCodeThread extends Thread {
		private boolean flag = false;
		private Context context;

		private GetCheckCodeThread(Context context) {
			this.context = context;
		}

		@Override
		public void run() {
			super.run();
			// 注册短信变化监听
			ResetPasswd.this.getContentResolver().registerContentObserver(Uri.parse("content://sms/"), true, ResetPasswd.this.smsContent);
			
			this.flag = true;
			String str1 = ResetPasswd.this.emailPhoneText.getText().toString().trim();
			String str2 = AppContext.inetAddr + AppContext.sendCheckcode + "mobile=" + str1;
			if (AppContext.isDebugMode)
				SysUtil.samlog(str2);
			
			HttpResponse localHttpResponse;
			try {
				HttpGet localHttpGet = new HttpGet(str2);
				localHttpResponse = new DefaultHttpClient()
						.execute(localHttpGet);
				if (!this.flag)
					return;
				if (AppContext.isDebugMode)
					SysUtil.samlog("httpResponse.getStatusLine().getStatusCode()="
							+ localHttpResponse.getStatusLine().getStatusCode());
				
				if (localHttpResponse.getStatusLine().getStatusCode() == 200) {
					ResetPasswd.this.handler.obtainMessage(RESETPASSWD_RESET_PASSWD_OK).sendToTarget();
					return;
				}
			} catch (Exception localException) {
				if (AppContext.isDebugMode)
					localException.printStackTrace();
				ResetPasswd.this.handler.obtainMessage(RESETPASSWD_RESET_PASSWD_FAILED).sendToTarget();
				return;
			}
			String str3;
			try {
				str3 = EntityUtils.toString(localHttpResponse.getEntity());
				if (AppContext.isDebugMode)
					SysUtil.samlog(str3);
				JSONObject localJSONObject = new JSONObject(str3);
				ResetPasswd.this.handler.obtainMessage(RESETPASSWD_RESET_PASSWD_FAILED,
						localJSONObject.getString("error")).sendToTarget();
				
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}			
		}

		public void stopReset() {
			this.flag = true;
		}
	}

}
