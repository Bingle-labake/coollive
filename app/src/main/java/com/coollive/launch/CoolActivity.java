package com.coollive.launch;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.hardware.Camera;
import android.hardware.Camera.Size;
import android.net.Uri;
import android.os.Bundle;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.coollive.launch.common.AppContext;
import com.coollive.launch.common.SDcardUtil;
import com.coollive.launch.common.SysUtil;
import com.coollive.launch.ui.Home;

public class CoolActivity extends Activity {
	private static final int MESSAGE_LOGIN_FAIL = 0;
	private static final int MESSAGE_NO_NETWORK = 1;
	private LoginThread loginThread = null;

	private void tryToGetSupportedCameraSize() {
		System.out.println("tryToGetSupportedCameraSize");
		SharedPreferences sharedPreferences = getSharedPreferences("pref", 0);
		String savedSizes = sharedPreferences.getString("camera_sizelist", "");
		
		JSONArray sizes = new JSONArray();

		if(savedSizes == "") {
			Camera camera = Camera.open();			
			if(camera != null) {
				//.line 194
				//v10
				Camera.Parameters camParams = camera.getParameters();
				 
				//v5
				List<Camera.Size> pvResolutions = camParams.getSupportedPictureSizes();
				Iterator<Size> v11_1 = pvResolutions.iterator();
				
				//:goto_0
				while(v11_1.hasNext()) {					
					Camera.Size size = v11_1.next();					
					//v4
					JSONObject object = new JSONObject();
					try {
						object.put("width", size.width);
						
						object.put("height", size.height);	
						sizes.put(object);						
						System.out.println(sizes.toString());						
						
						StringBuilder v13 = new StringBuilder(String.valueOf(size.width)); 
						v13.append("|");
						v13.append(size.height);
						
						System.out.println(v13.toString());							
					} catch (JSONException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					//goto :goto_0
				}				
				
				SharedPreferences.Editor editor = getSharedPreferences("pref", 0).edit();			    	
			    editor.putString("camera_sizelist", sizes.toString());			   
			    editor.commit();				
			    editor = null;				
				camera.release();
			}
			////:cond_4	
			if(AppContext.isDebugMode) {
				//.line 222		
				System.out.println(sizes.toString());
			}
		}else {
		    ////:cond_2
			if(!AppContext.isDebugMode) {
				System.out.println(savedSizes);			
			}
		}
		
	    return ;		
	}

	// ERROR //
	private void tryToInitServerIpAndPort() {
		//.line 144
		//v1
		String url = AppContext.getServerAddrAndPortURL;
		HttpGet httpGet = new HttpGet(url);
		System.out.println("getServerAddrAndPortURL = "+url);	    
		//v10
		DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
		try {
			//v2
			HttpResponse httpResponse = defaultHttpClient.execute(httpGet);
			//{"web":"http://yishizhibo.com:80"}
			StringBuilder v8 = new StringBuilder("get server ip code = ");
			int v7 = httpResponse.getStatusLine().getStatusCode();
			v8.append(v7);			
			System.out.println(v8.toString());
			
			if(v7 == 200) {
				HttpEntity result = httpResponse.getEntity();
				String resultString = EntityUtils.toString(result);
				try {
					JSONObject jsonObject = new JSONObject(resultString);
					if(jsonObject.getBoolean("result")) {
						JSONObject data = jsonObject.getJSONObject("data");
						String api = data.getString("api");
						Uri uri = Uri.parse(api);
						AppContext.hostAddr = uri.getHost();
						AppContext.hostPort = uri.getPort();
						
						AppContext.inetAddr = "http://"+AppContext.hostAddr + ":" + AppContext.hostPort;
						System.out.println(AppContext.inetAddr);
						
						defaultHttpClient.getConnectionManager().shutdown();
						httpResponse.getEntity().consumeContent();
					}else {
						System.out.println("##########:"+jsonObject.getString("error"));
					}
				} catch (JSONException e) {
					e.printStackTrace();
				}		
			}					
		} catch (ClientProtocolException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}        
	}

	@Override
	public void finish() {
		super.finish();
		if (this.loginThread != null)
			this.loginThread.stopLogin();
	}

	@Override
	public void onBackPressed() {
		super.onBackPressed();
		SysUtil.clearApp(this);
	}

	@Override
	public void onConfigurationChanged(Configuration paramConfiguration) {
		super.onConfigurationChanged(paramConfiguration);
		System.out.println("####onConfigurationChanged");
		if (paramConfiguration.orientation == 2) {
			System.out.println("####横屏");
			setContentView(R.layout.main);
			return;
		}
		System.out.println("####竖屏");
		setContentView(R.layout.main);
	}

	@Override
	public void onCreate(Bundle paramBundle) {
		super.onCreate(paramBundle);
		SysUtil.samlog("版本 2014.6.11");
		File localFile1 = getFilesDir();
		System.out.println("this.getFilesDir().getAbsolutePath() = "
				+ localFile1.getAbsolutePath());
		File localFile2 = new File(localFile1, "aaa.test");
		try {
			localFile2.createNewFile();
			System.out.println("onCreate!!!!!!!!!!!");

			RayclearApplication.clearActivitys();
			System.out.println("this app ver is a0000111");
			setContentView(R.layout.main);
			new SDcardUtil(this);
			tryToGetSupportedCameraSize();

			new GetWebIpThread().start();
			return;
		} catch (Exception localException) {
			while (true) {
				System.out.println("###############");
				localException.printStackTrace();
			}
		}
	}

	@Override
	protected void onNewIntent(Intent paramIntent) {
		super.onNewIntent(paramIntent);
		System.out.println("####onNewIntent");
	}

	private class GetWebIpThread extends Thread {
		private GetWebIpThread() {
		}

		@Override
		public void run() {
			super.run();			
			CoolActivity.this.tryToInitServerIpAndPort();
			
			SharedPreferences localSharedPreferences = CoolActivity.this
					.getSharedPreferences("pref", 0);
			String str1 = localSharedPreferences.getString("userphone", "");
			String str2 = localSharedPreferences.getString("userpasswd", "");			
			if ((!SysUtil.isStringEmpty(str1))
					&& (!SysUtil.isStringEmpty(str2))) {
				CoolActivity.this.loginThread = new CoolActivity.LoginThread();
				// VideoMessageActivity.this.loginThread = new
				// VideoMessageActivity.LoginThread(VideoMessageActivity.this,
				// null);
				CoolActivity.this.loginThread.start();
				return;
			}
			new Thread(new Runnable() {
				@Override
				public void run() {
					try {
						Thread.sleep(2000L);
						CoolActivity.this.startActivity(new Intent(
								CoolActivity.this, LaunchActivity.class));
						CoolActivity.this.finish();
						return;
					} catch (Exception localException) {

					}
				}
			}).start();
		}
	}

	private class LoginThread extends Thread {
		private boolean flag = false;

		private LoginThread() {
		}

		@Override
		public void run() {
			super.run();
			this.flag = true;
			try {
				Thread.sleep(2000L);
				JSONObject localJSONObject = SysUtil.doLogin(CoolActivity.this
						.getApplicationContext());
				if (!this.flag)
					return;
				
				try {
					if (localJSONObject.getInt("result") == 200) {
						CoolActivity.this.startActivity(new Intent(
								CoolActivity.this, Home.class));
						CoolActivity.this.finish();
						return;
					}
				} catch (Exception localException2) {
					localException2.printStackTrace();
					return;
				}
				CoolActivity.this.startActivity(new Intent(
						CoolActivity.this, LaunchActivity.class));
			} catch (Exception localException1) {
				localException1.printStackTrace();
				return;
			}
		}

		public void stopLogin() {
			this.flag = false;
		}
	}
}

/*
 * Location: D:\apk_unbuild\dex2jar-0.0.9.15\classes_dex2jar.jar Qualified Name:
 * com.rayclear.videomessage.VideoMessageActivity JD-Core Version: 0.6.0
 */