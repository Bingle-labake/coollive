package com.coollive.launch.ui.login;

import java.io.IOException;
import java.util.regex.Pattern;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.ParseException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.mime.MultipartEntity;
import org.apache.http.entity.mime.content.StringBody;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;
import org.json.JSONException;
import org.json.JSONObject;

import com.coollive.launch.R;
import com.coollive.launch.common.AppContext;
import com.coollive.launch.common.SysUtil;
import com.coollive.launch.sms.SmsContent;
import com.coollive.launch.util.NetworkConnectUtil;

import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.view.Menu;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;

public class Register extends Activity {

	private EditText phoneEditText;
	private EditText usernameEditText;
	private EditText passwdEditText;
	private EditText passwdConfirmEditText;
	private EditText checkcodeEditText;

	private ProgressDialog progressDialog = null;
	private RegisterTask registerTask = null;
	
	private ProgressDialog checkProgressDialog = null;
	private GetCheckCodeThread getCheckCodeThread = null;
	private SmsContent smsContent = null;
	
	public static final int REGISTER_FAILED = 8;
	public static final int REGISTER_OK = 9;
	public static final int REGISTER_WARNNING_INFO = 0;
	public static final int REGISTER_SEND_CHECKCODE_SUCCESS = 0;
	public static final int REGISTER_GET_CHECKCODE = 10;
	
	private Handler handler = new Handler() {
		@Override
		public void handleMessage(Message paramMessage) {
			super.handleMessage(paramMessage);
			
			if(Register.this.checkProgressDialog != null) {
				Register.this.checkProgressDialog.dismiss();
			}			
			switch (paramMessage.what) {			
			case REGISTER_FAILED:
				Toast.makeText(Register.this, "请输入有效的手机号码", 0).show();
				return;
			case REGISTER_OK:
				Register.this.startActivity(new Intent(Register.this, Login.class));
				return;
			case REGISTER_WARNNING_INFO:
				if (paramMessage.obj != null) {
					Toast.makeText(Register.this, (String) paramMessage.obj, 0)
							.show();
				}
				return;
			case REGISTER_GET_CHECKCODE:
				if (paramMessage.obj != null) {
					((EditText) findViewById(R.id.checkcode)).setText(String.valueOf(paramMessage.obj));
				}
				return;
			default:
				if (paramMessage.obj != null) {
					Toast.makeText(Register.this, (String) paramMessage.obj, 0)
							.show();
					return;
				}
				return;
			}			
		}
	};

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_register);

		this.phoneEditText = ((EditText) findViewById(R.id.register_mobile_ET));
		this.usernameEditText = ((EditText) findViewById(R.id.register_username_ET));
		this.passwdEditText = ((EditText) findViewById(R.id.register_password_ET));
		this.passwdConfirmEditText = ((EditText) findViewById(R.id.register_password_confirm_ET));
		this.checkcodeEditText = ((EditText) findViewById(R.id.checkcode));

		findViewById(R.id.register_register_IV).setOnClickListener(
				btnRegisterTVListener);
		findViewById(R.id.topback_IV).setOnClickListener(btnTopbackTVListener);
		
		findViewById(R.id.checkcode_TV).setOnClickListener(checkcode_TVListener);
		
		
		this.progressDialog = new ProgressDialog(this);
		this.progressDialog.setMessage("正在注册");
		this.progressDialog.setTitle("请稍后...");
		this.progressDialog
				.setOnDismissListener(new DialogInterface.OnDismissListener() {
					@Override
					public void onDismiss(DialogInterface paramDialogInterface) {
						if (Register.this.registerTask != null) {
							try {
								Register.this.registerTask.cancel(true);
								return;
							} catch (Exception localException) {
							}
						}						
					}
				});
		
		this.checkProgressDialog = new ProgressDialog(this);
		this.checkProgressDialog.setTitle("请稍后...");
		this.checkProgressDialog.setMessage("正在获取验证码");
		this.checkProgressDialog
				.setOnDismissListener(new DialogInterface.OnDismissListener() {
					@Override
					public void onDismiss(DialogInterface paramDialogInterface) {
						if (Register.this.getCheckCodeThread != null)
							Register.this.getCheckCodeThread.stopReset();
					}
				});
		
		smsContent = new SmsContent(Register.this, Register.this.handler,
				((EditText) findViewById(R.id.checkcode)));
	}

	private View.OnClickListener btnRegisterTVListener = new View.OnClickListener() {

		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			if (Register.this.checkInfo()) {
				Register.this.progressDialog.show();
				if (registerTask != null) {					
					registerTask.cancel(true);
				}	
				
				try {
					String str = AppContext.inetAddr
							+ AppContext.registerURL;
					MultipartEntity entity = new MultipartEntity();
					entity.addPart("username", new StringBody(
							Register.this.usernameEditText.getText().toString()
									.trim()));
					entity.addPart("mobile",
							new StringBody(Register.this.phoneEditText.getText()
									.toString().trim()));
					entity.addPart("password", new StringBody(
							Register.this.passwdEditText.getText().toString()
									.trim()));
					entity.addPart("confirmpwd", new StringBody(
							Register.this.passwdConfirmEditText.getText().toString()
									.trim()));
					entity.addPart("sms", new StringBody(
							Register.this.checkcodeEditText.getText().toString()
									.trim()));
					
					registerTask = new RegisterTask(Register.this, str,
							entity);
					Integer[] arrayOfInteger = new Integer[1];
					arrayOfInteger[0] = Integer.valueOf(0);
					registerTask.execute(arrayOfInteger);
					return;
				} catch (Exception localException) {
					localException.printStackTrace();
				}
			}

		}
	};

	private View.OnClickListener btnTopbackTVListener = new View.OnClickListener() {

		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			finish();
			return;
		}
	};
	
	private View.OnClickListener checkcode_TVListener = new View.OnClickListener() {

		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			if (Register.this.getCheckCodeThread != null)
				Register.this.getCheckCodeThread.stopReset();
			
			Register.this.checkProgressDialog.show();
			Register.this.getCheckCodeThread = new GetCheckCodeThread(Register.this);
			Register.this.getCheckCodeThread.start();
			return;	
		}
	};
	

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.register, menu);
		return true;
	}

	public static boolean checkEmail(String paramString) {
		try {
			boolean bool = Pattern
					.compile(
							"^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$")
					.matcher(paramString).matches();
			return bool;
		} catch (Exception localException) {
		}
		return false;
	}
	
	public static boolean checkPhone(String paramString) {
		return true;
	}

	private class RegisterTask extends AsyncTask<Integer, Integer, Integer> {
		private String resultString = null;
		private String str = null;
		private HttpEntity entity = null;
		private Context context = null;

		private RegisterTask(Context context, String url, HttpEntity entity) {
			this.context = context;
			this.str = url;
			this.entity = entity;
		}

		@Override
		protected Integer doInBackground(Integer[] paramArrayOfInteger) {
			int i = 0;
			HttpResponse localHttpResponse = null;
			DefaultHttpClient localDefaultHttpClient = null;

			try {
				SysUtil.samlog("registr url = " + str);
				HttpPost localHttpPost = new HttpPost(str);
				localHttpPost.setEntity(entity);// 设置请求参数

				localDefaultHttpClient = new DefaultHttpClient();
				localDefaultHttpClient.getParams().setParameter(
						"http.connection.timeout", Integer.valueOf(20000));
				localDefaultHttpClient.getParams().setParameter(
						"http.socket.timeout", Integer.valueOf(20000));
				localHttpResponse = localDefaultHttpClient
						.execute(localHttpPost);

				i = localHttpResponse.getStatusLine().getStatusCode();
				SysUtil.samlog("statuscode = " + i);

				System.out.println("http status code:"+localHttpResponse.getStatusLine().getStatusCode());
				if (localHttpResponse.getStatusLine().getStatusCode() == 200) {
					JSONObject localJSONObject2 = new JSONObject(
							EntityUtils.toString(localHttpResponse.getEntity()));
					SysUtil.samlog("register result = " + localJSONObject2);

					if(localJSONObject2.getBoolean("result")) {
						JSONObject user = localJSONObject2.getJSONObject("data");
						
						SharedPreferences.Editor localEditor = Register.this
								.getSharedPreferences("pref", 0).edit();
						
						localEditor.putInt("userid", user.getInt("uid"));						
						localEditor.putString("userphone",
								Register.this.phoneEditText.getText().toString()
										.trim());
						localEditor.putString("userpasswd",
								Register.this.passwdEditText.getText().toString()
										.trim());
						localEditor.commit();
					}else {
						i = 500;
						this.resultString = localJSONObject2.getString("error");
					}					
				}
			} catch (Exception localException1) {
				try {
					entity.consumeContent();
					localHttpResponse.getEntity().consumeContent();
					localDefaultHttpClient.getConnectionManager().shutdown();

				} catch (UnsupportedOperationException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			return i;
		}

		@Override
		protected void onPostExecute(Integer paramInteger) {
			super.onPostExecute(paramInteger);
			if(Register.this.progressDialog != null) {
				Register.this.progressDialog.dismiss();
			}			
			if (paramInteger.intValue() == 200) {
				Register.this.startActivity(new Intent(Register.this,
						Login.class));
				Register.this.finish();
				return;
			}else {
				Toast.makeText(Register.this, this.resultString, 0).show();
			}			
		}

		@Override
		protected void onPreExecute() {
			super.onPreExecute();
		}
	}

	private boolean checkInfo() {        
		// check network state
		NetworkConnectUtil networkstate = new NetworkConnectUtil(Register.this);
		if (networkstate.checkGprsState() == false
				&& networkstate.checkWifiState() == false) {
			new AlertDialog.Builder(Register.this)
					.setMessage(R.string.textview_network_error)
					.setPositiveButton(R.string.dialog_ok,
							new DialogInterface.OnClickListener() {

								@Override
								public void onClick(DialogInterface dialog,
										int which) {
									// TODO Auto-generated method stub
									dialog.dismiss();
								}
							}).show();
			return false;
		}

		// check input value
		if (SysUtil.isStringEmpty(phoneEditText.getText().toString())) {
			Toast.makeText(Register.this, "手机号码不能为空", 0).show();
			return false;
		}
		if (!checkPhone(phoneEditText.getText().toString())) {
			Toast.makeText(Register.this, "手机格式错误", 0).show();
			return false;
		}
		/*
		if (SysUtil.isStringEmpty(usernameEditText.getText().toString())) {
			Toast.makeText(Register.this, "用户名不能为空", 0).show();
			return false;
		}
		*/
		if (SysUtil.isStringEmpty(passwdEditText.getText().toString())) {
			Toast.makeText(Register.this, "密码不能为空", 0).show();
			return false;
		}
		if (!passwdEditText.getText().toString()
				.equals(passwdConfirmEditText.getText().toString())) {
			Toast.makeText(Register.this, "两次输入密码不一致", 0).show();
			return false;
		}
		if (SysUtil.isStringEmpty(this.checkcodeEditText.getText().toString())) {
			Toast.makeText(Register.this, "尚未填写效验码", 0).show();
			return false;
		}
		/*
		String email = Register.this.phoneEditText.getText().toString();
		String password = Register.this.passwdEditText.getText().toString();
		if (email.equals("") || password.equals("")) {
			new AlertDialog.Builder(Register.this)
					.setMessage(R.string.textview_empty)
					.setPositiveButton(R.string.dialog_ok,
							new DialogInterface.OnClickListener() {

								public void onClick(DialogInterface dialog,
										int which) {
									// TODO Auto-generated method stub
									dialog.dismiss();
								}
							}).show();
			return false;
		}
		*/
		return true;
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
			Register.this.getContentResolver().registerContentObserver(Uri.parse("content://sms/"), true, Register.this.smsContent);
			
			this.flag = true;
			String str1 = Register.this.phoneEditText.getText().toString().trim();
			String str2 = AppContext.inetAddr + AppContext.sendCheckcode + "mobile=" + str1 + "&source=signup_mobile";
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
					
					String ret = EntityUtils.toString(localHttpResponse.getEntity());
					if (AppContext.isDebugMode)
						SysUtil.samlog(ret);
					JSONObject resultJSONObject = new JSONObject(ret);
					if(!resultJSONObject.getBoolean("result")) {
						Register.this.handler.obtainMessage(REGISTER_WARNNING_INFO, resultJSONObject.getString("error")).sendToTarget();
					}else {
						Register.this.handler.obtainMessage(REGISTER_SEND_CHECKCODE_SUCCESS).sendToTarget();
					}
					return;
				}
			} catch (Exception localException) {
				if (AppContext.isDebugMode)
					localException.printStackTrace();
				Register.this.handler.obtainMessage(REGISTER_WARNNING_INFO, "系统错误！").sendToTarget();
				return;
			}						
		}

		public void stopReset() {
			this.flag = true;
		}
	}
}
