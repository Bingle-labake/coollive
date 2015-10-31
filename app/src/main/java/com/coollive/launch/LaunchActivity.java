package com.coollive.launch;

import com.coollive.launch.ui.login.Login;
import com.coollive.launch.ui.login.Register;

import android.os.Bundle;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.view.View;
import android.widget.TextView;

public class LaunchActivity extends Activity implements View.OnClickListener {
	private TextView button_login_tv;  //TextView类型 强制转换导致 意外终止
	private TextView button_register_tv;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_launch);

		//button_login_tv = (TextView) this.findViewById(R.id.root_login_IV);
		//button_register_tv = (TextView) this.findViewById(R.id.root_register_IV);

		findViewById(R.id.root_login_IV).setOnClickListener(this);
		findViewById(R.id.root_register_IV).setOnClickListener(this);
		RayclearApplication.enqueueActivity(this);
		    
		// button_login_tv.setOnClickListener(btnLoginTVListener);
		// button_register_tv.setOnClickListener(btnRegisterTVListener);
	}

	/*
	 * private View.OnClickListener btnLoginTVListener = new
	 * View.OnClickListener() {
	 * 
	 * 
	 * public void onClick(View v) { // TODO Auto-generated method stub Intent
	 * intent = new Intent( LaunchActivity.this, Login.class);
	 * startActivity(intent); return; } };
	 * 
	 * private View.OnClickListener btnRegisterTVListener = new
	 * View.OnClickListener() {
	 * 
	 * 
	 * public void onClick(View v) { // TODO Auto-generated method stub Intent
	 * intent = new Intent( LaunchActivity.this, Register.class);
	 * startActivity(intent); return; } };
	 */

	@Override
	public void finish() {
		super.finish();
		RayclearApplication.dequeueActivity(this);
	}

	@Override
	public void onBackPressed() {
		super.onBackPressed();
	}

	@Override
	public void onConfigurationChanged(Configuration paramConfiguration) {
		super.onConfigurationChanged(paramConfiguration);
		// SysUtil.samlog("Root#onConfigurationChanged");
		setContentView(R.layout.activity_launch);
		findViewById(R.id.root_login_IV).setOnClickListener(this);
		findViewById(R.id.root_register_IV).setOnClickListener(this);
	}

	@Override
	public void onClick(View v) {
		// TODO Auto-generated method stub
		switch (v.getId()) {
		case R.id.root_login_IV:
			startActivity(new Intent(this, Login.class));
			return;
		case R.id.root_register_IV:
			startActivity(new Intent(this, Register.class));
			return;
		default:
			return;
		}

	}

}
