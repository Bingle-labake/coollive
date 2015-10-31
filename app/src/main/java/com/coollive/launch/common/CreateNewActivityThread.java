package com.coollive.launch.common;

import android.os.Handler;
import java.io.IOException;
import java.nio.charset.Charset;

import org.apache.http.HttpResponse;
import org.apache.http.ParseException;
import org.apache.http.client.CookieStore;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.mime.MultipartEntity;
import org.apache.http.entity.mime.content.StringBody;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;
import org.json.JSONObject;

public class CreateNewActivityThread extends Thread {
	private CookieStore cookie;
	private long duration = 0L;
	private int failedMessage = -1;
	public volatile boolean flag = true;
	private Handler handler = null;
	private boolean is_tmp = false;
	private long join_num = 0L;
	private int okMessage = -1;
	private String passwd = "";
	private long startTime = 0L;
	private String title = "";
	private int user_id = -1;

	public CreateNewActivityThread(CookieStore paramCookieStore, int paramInt1,
			Handler paramHandler, int paramInt2, int paramInt3,
			String paramString1, long paramLong1, long paramLong2,
			int paramInt4, String paramString2, boolean paramBoolean) {
		this.handler = paramHandler;
		this.okMessage = paramInt2;// 1
		this.failedMessage = paramInt3;// 2
		this.title = paramString1;
		this.startTime = paramLong1;
		this.duration = paramLong2;
		this.join_num = paramInt4;
		this.passwd = paramString2;
		this.is_tmp = paramBoolean;
		this.cookie = paramCookieStore;
		this.user_id = paramInt1;
	}

	@Override
	public void run() {
		super.run();
		HttpResponse localHttpResponse;
		try {
			this.flag = true;
			String str1 = AppContext.inetAddr + AppContext.createNewActivityURL;
			SysUtil.samlog(str1 + ",title = " + this.title);
			HttpPost localHttpPost = new HttpPost(str1);

			MultipartEntity entity = new MultipartEntity();

			entity.addPart("user_id",
					new StringBody(String.valueOf(this.user_id)));
			entity.addPart("title", new StringBody(this.title, Charset.forName("UTF-8")));
			entity.addPart("start_time",
					new StringBody(String.valueOf(this.startTime)));
			System.out.println("startTime:"+this.startTime);
			entity.addPart("duration",
					new StringBody(String.valueOf(this.duration)));
			entity.addPart("join_num",
					new StringBody(String.valueOf(this.join_num)));
			entity.addPart("passwd", new StringBody(this.passwd, Charset.forName("UTF-8")));
			entity.addPart("is_tmp",
					new StringBody(String.valueOf(this.is_tmp)));

			localHttpPost.setEntity(entity);
			DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient();
			localDefaultHttpClient.getParams().setParameter(
					"http.connection.timeout", Integer.valueOf(20000));
			localDefaultHttpClient.getParams().setParameter(
					"http.socket.timeout", Integer.valueOf(20000));
			localDefaultHttpClient.setCookieStore(this.cookie);
			localHttpResponse = localDefaultHttpClient.execute(localHttpPost);
			if (!this.flag)
				return;
			int i = localHttpResponse.getStatusLine().getStatusCode();
			SysUtil.samlog("getStatusCode = " + i);
			if (i == 200) {
				String str2 = EntityUtils.toString(localHttpResponse
						.getEntity());
				SysUtil.samlog(str2);
				JSONObject ret = new JSONObject(str2);
				if(ret.getBoolean("result")) {
					this.handler.obtainMessage(this.okMessage, str2).sendToTarget();
				}else {
					this.handler.obtainMessage(this.failedMessage).sendToTarget();
				}				
				return;
			}
		} catch (Exception localException) {
			localException.printStackTrace();
			this.handler.obtainMessage(this.failedMessage).sendToTarget();
			return;
		}
		String str3;
		try {
			str3 = EntityUtils.toString(localHttpResponse.getEntity());
			this.handler.obtainMessage(this.failedMessage, str3).sendToTarget();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}

/*
 * Location: D:\apk_unbuild\dex2jar-0.0.9.15\classes_dex2jar.jar Qualified Name:
 * com.rayclear.videomessage.common.CreateNewActivityThread JD-Core Version:
 * 0.6.0
 */