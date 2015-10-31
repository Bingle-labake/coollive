package com.coollive.launch.ui.login;

import java.util.Timer;
import java.util.TimerTask;

import org.json.JSONObject;

import com.coollive.launch.R;
import com.coollive.launch.common.SysUtil;
import com.coollive.launch.ui.Home;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.view.Menu;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.Toast;

public class Login extends Activity implements View.OnClickListener {
	private ProgressDialog loginProgressDialog = null;
	private LoginThread loginThread = null;
	private EditText passwdEditText = null;
	private EditText phoneEditText = null;

	private long lastClickTime = 0L;

	private Handler loginHandler = new Handler() {
		@Override
		public void handleMessage(Message paramMessage) {
			Login.this.loginProgressDialog.dismiss();
			switch (paramMessage.what) {			
			case 0:
				   Toast.makeText(Login.this, "ÕËºÅ´íÎó", 0).show();
			       return;				
			case 1:
				   Toast.makeText(Login.this, "ÃÜÂë²»ÄÜÎª¿Õ", 0).show();
			       return;				
			case 3:				
				   Toast.makeText(Login.this, "µÇÂ½Ê§°Ü", 0).show();
				   break;
			case 2:
			       if (paramMessage.obj == null)
				       Toast.makeText(Login.this, (String) paramMessage.obj, 0).show();
				   return;
		    case 4:
		    case 5:		
		    case 7:if (paramMessage.obj != null) {
			       String str = (String) paramMessage.obj;
			       Toast.makeText(Login.this, str, 0).show();
			       return;
		       }
			
			case 6:Toast.makeText(Login.this, "ÍøÂçÁ´½Ó´íÎó", 0).show();
				
			default:
			}
			
		}
	};
	private View loginBtn;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_login);

		SharedPreferences localSharedPreferences = getSharedPreferences("pref",
				0);
		String str1 = localSharedPreferences.getString("userphone", "");
		String str2 = localSharedPreferences.getString("userpasswd", "");

		this.loginBtn = findViewById(R.id.login_login_IV);
		this.loginBtn.setOnClickListener(this);

		this.phoneEditText = ((EditText) findViewById(R.id.login_phonenu_ET));
		this.passwdEditText = ((EditText) findViewById(R.id.login_password_ET));

		findViewById(R.id.login_phonenu_ET).setOnClickListener(this);
		findViewById(R.id.login_password_ET).setOnClickListener(this);
		findViewById(R.id.topback_IV).setOnClickListener(this);		
		findViewById(R.id.login_foget_passwd_TV).setOnClickListener(this);			

		this.loginProgressDialog = new ProgressDialog(this);
		this.loginProgressDialog.setTitle("ÕýÔÚµÇÂ¼");
		this.loginProgressDialog.setMessage("ÇëÉÔºó");
		this.loginProgressDialog.setCanceledOnTouchOutside(false);
		this.loginProgressDialog
				.setOnDismissListener(new DialogInterface.OnDismissListener() {
					@Override
					public void onDismiss(DialogInterface paramDialogInterface) {
						if (Login.this.loginThread != null)
							Login.this.loginThread.stopLogin();
					}
				});

		SysUtil.samlog("login   " + str1);
		SysUtil.samlog("login   " + str2);

		this.phoneEditText.setText(str1);
		this.passwdEditText.setText(str2);

		if (!SysUtil.isNetworkConnected(this))
			Toast.makeText(this, "ÍøÂçÁ¬½Ó²»¿ÉÓÃ", 1).show();

		if (!SysUtil.isStringEmpty(str1) && !SysUtil.isStringEmpty(str2)) {
			this.loginThread = new LoginThread(Login.this, null);
			this.loginThread.start();
			this.loginProgressDialog.show();
		}
		
		//×Ô¶¯»ñÈ¡½¹µã£¬¼ÓÔØÈí¼üÅÌ
		if("".equals(this.phoneEditText.getText().toString().trim())) {
			this.phoneEditText.setFocusable(true);
			this.phoneEditText.setFocusableInTouchMode(true);
			this.phoneEditText.requestFocus();
			Timer timer = new Timer();
		    timer.schedule(new TimerTask(){
		         @Override
				public void run() {
		        	 InputMethodManager inputManager = (InputMethodManager)Login.this.phoneEditText.getContext().getSystemService(Context.INPUT_METHOD_SERVICE);
		             inputManager.showSoftInput(Login.this.phoneEditText, 0);
		         }
		     }, 600);
		}
	}

	private boolean checkPhoneValid() {
		try {
			String str1 = this.phoneEditText.getText().toString().trim();
			String str2 = this.passwdEditText.getText().toString().trim();
			if (SysUtil.isStringEmpty(str1)) {
				this.loginHandler.obtainMessage(0).sendToTarget();
				return false;
			}
			if (SysUtil.isStringEmpty(str2)) {
				this.loginHandler.obtainMessage(1).sendToTarget();
				return false;
			}
		} catch (Exception localException) {
			System.out.println((localException.getMessage()));
			return false;
		}
		return true;
	}

	@Override
	public void finish() {
		this.loginProgressDialog.dismiss();
		if (this.loginThread != null)
			this.loginThread.stopLogin();
		super.finish();
	}

	@Override
	public void onClick(View paramView) {		
		this.lastClickTime = System.currentTimeMillis();

		switch (paramView.getId()) {
		case R.id.login_login_IV:
			paramView.setEnabled(false);
			SysUtil.samlog("login_login");
			if (checkPhoneValid()) {
				SharedPreferences.Editor localEditor = getSharedPreferences(
						"pref", 0).edit();
				localEditor.putString("userphone", this.phoneEditText.getText()
						.toString().trim());
				localEditor.putString("userpasswd", this.passwdEditText
						.getText().toString().trim());
				localEditor.commit();

				this.loginThread = new LoginThread(Login.this, paramView);
				this.loginThread.start();
				this.loginProgressDialog.show();
			}
			break;
		case R.id.topback_IV:
			if (this.loginThread != null)
				this.loginThread.stopLogin();
			finish();
			break;
		case R.id.login_foget_passwd_TV:
			startActivity(new Intent(this, ResetPasswd.class));
			return ;
		default:
		}
		paramView.setEnabled(true);
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.login, menu);
		return true;
	}

	// µÇÂ¼Ïß³Ì
	private class LoginThread extends Thread {
		private volatile boolean flag = false;
        private Login login_context = null;
        private View view = null;
		private LoginThread(Login login_context, View view) {
			this.login_context = login_context;
			this.view = view;
		}

		@Override
		public void run() {
			super.run();
			this.flag = true;
			try {
				/*
				String url = AppContext.inetAddr
						+ AppContext.loginURL;
				JSONObject jsonResult = HttpConnectUtil
						.getResponseByPost(url,
								this.login_context.phoneEditText.getText().toString(), 
								this.login_context.passwdEditText.getText().toString());
				*/
				
				if (!this.flag)
					return;
				
				this.flag = false;
				JSONObject localJSONObject = SysUtil.doLogin(Login.this.getApplicationContext(), 
						this.login_context.phoneEditText.getText().toString(), 
						this.login_context.passwdEditText.getText().toString());				
				
				
				if (localJSONObject.getInt("result") == 200) {						
					Login.this.startActivity(new Intent(Login.this,
								Home.class));
					Login.this.finish();
					return;
				}else {
					this.flag = true;
					Login.this.loginHandler.obtainMessage(3, localJSONObject.getString("season")).sendToTarget();
				}	
				
				if(this.view != null) {
					this.view.setEnabled(true);
				}				
			} catch (Exception localException) {
				localException.printStackTrace();
				Login.this.loginHandler.obtainMessage(3, "µÇÂ½Ê§°Ü").sendToTarget();
				this.flag = true;
				if(this.view != null) {
					this.view.setEnabled(true);
				}
				return;
			}				
		}

		public void stopLogin() {
			this.flag = false;
		}
	}

}
