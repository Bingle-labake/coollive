package com.coollive.launch.ui;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

import com.coollive.launch.R;
import com.coollive.launch.camera.CameraProvider;
import com.coollive.launch.common.AppContext;
import com.coollive.launch.common.SysUtil;
import com.coollive.launch.model.VideoModel;
import com.coollive.launch.ui.video.VideoRecordRtmpFLV;
import com.coollive.launch.ui.video.VideoRecordRtmpH264;
import com.tencent.mm.sdk.openapi.IWXAPI;
import com.tencent.mm.sdk.openapi.SendMessageToWX;
import com.tencent.mm.sdk.openapi.WXAPIFactory;
import com.tencent.mm.sdk.openapi.WXMediaMessage;
import com.tencent.mm.sdk.openapi.WXTextObject;
import com.tencent.mm.sdk.openapi.WXWebpageObject;

import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ActityInfo extends Activity implements View.OnClickListener {
	private DeleteTask deleteTask = null;
	private TextView durationTextView = null;
	private EndActivityTask endActivityTask = null;
	private GetThumbThread getThumbThread = null;
	private GetVideosTask getVideosTask = null;

	private Handler handler = new Handler() {
		@Override
		public void handleMessage(Message paramMessage) {
			switch (paramMessage.what) {			
			case 0:
				ActityInfo.this.videoListAdapter.notifyDataSetChanged();
				break;
			default:
				return;
			}
			
		}
	};
	private TextView httpurlTextView = null;
	private boolean isShowingSharePanel = false;
	private ListView listView = null;
	private ProgressDialog progressDialog = null;
	private TextView rtmpurlTextView = null;
	private int screenOritation = 0;
	private TextView starttimeTextView = null;
	private TextView titleTextView = null;
	private TextView tokenTextView = null;
	private VideoListAdapter videoListAdapter = null;
	private Vector<VideoModel> videos = new Vector();

	private void initContentView() {
		SysUtil.samlog("当前屏幕方向 = "	+ getResources().getConfiguration().orientation);
		this.screenOritation = getResources().getConfiguration().orientation;
		SysUtil.samlog("initContentView");
		View localView = LayoutInflater.from(this).inflate(
				R.layout.actity_info_headerview, null);

		this.starttimeTextView = ((TextView) localView
				.findViewById(R.id.actity_info_startdateTV));
		this.titleTextView = ((TextView) localView
				.findViewById(R.id.actity_info_titleTV));
		this.tokenTextView = ((TextView) localView
				.findViewById(R.id.actity_info_tokenTV));
		this.durationTextView = ((TextView) localView
				.findViewById(R.id.actity_info_durationTV));
		this.httpurlTextView = ((TextView) localView
				.findViewById(R.id.actity_info_httpurlTV));
		this.rtmpurlTextView = ((TextView) localView
				.findViewById(R.id.actity_info_rtmpTV));

		localView.findViewById(R.id.actity_info_delBTN)
				.setOnClickListener(this);
		localView.findViewById(R.id.actity_info_endactivityBTN)
				.setOnClickListener(this);
		localView.findViewById(R.id.actity_info_shareBTN).setOnClickListener(
				this);
		localView.findViewById(R.id.actity_info_startBTN).setOnClickListener(
				this);

		findViewById(R.id.topback_IV).setOnClickListener(this);
		findViewById(R.id.topdone_IV).setOnClickListener(this);
		findViewById(R.id.share_panel_circleIV).setOnClickListener(this);
		findViewById(R.id.share_panel_emailIV).setOnClickListener(this);
		findViewById(R.id.share_panel_sinaIV).setOnClickListener(this);
		findViewById(R.id.share_panel_smsIV).setOnClickListener(this);
		findViewById(R.id.share_panel_weixinIV).setOnClickListener(this);
		findViewById(R.id.share_panel_copyIV).setOnClickListener(this);
		findViewById(R.id.sharepanel_doneBTN).setOnClickListener(this);
		findViewById(R.id.sharepanel_mask).setOnClickListener(this);
		findViewById(R.id.share_panel_copyIV).setOnClickListener(this);

		this.starttimeTextView
				.setText(SysUtil.getDateStringFromMilliTime(AppContext
						.getPartyModel(this).starttime));

		System.out.println("starttime:"
				+ AppContext.getPartyModel(this).starttime);
		this.titleTextView.setText(AppContext.getPartyModel(this).title);
		this.tokenTextView.setText(AppContext.getPartyModel(this).urlToken);
		this.durationTextView.setText(SysUtil.getPartyDurationString(AppContext
				.getPartyModel(this).duration));
		this.httpurlTextView
				.setText(AppContext.getPartyModel(this).shareMessage);
		this.rtmpurlTextView.setText(AppContext.getPartyModel(this).rtmpUrl);

		this.listView = ((ListView) findViewById(R.id.activityinfo_listviewLV));
		this.listView.addHeaderView(localView);

		this.videoListAdapter = new VideoListAdapter(ActityInfo.this);
		this.listView.setAdapter(this.videoListAdapter);
		this.videoListAdapter.notifyDataSetChanged();
	}

	private void shareToEmail() {
		Intent localIntent = new Intent("android.intent.action.SEND");
		localIntent.putExtra(
				"android.intent.extra.TEXT",
				"《" + AppContext.getPartyModel(this).title
						+ "》我的直播，我就任性!!!酷Live在这里： "
						+ AppContext.getPartyModel(this).shareMessage);
		localIntent.putExtra("android.intent.extra.SUBJECT",
				AppContext.getPartyModel(this).title);
		localIntent.setType("text/plain");
		Iterator localIterator = getPackageManager().queryIntentActivities(
				localIntent, 65536).iterator();
		
		boolean is_find = false;
		while (localIterator.hasNext()) {
			ResolveInfo localResolveInfo = (ResolveInfo) localIterator.next();
			if (localResolveInfo != null) {
				SysUtil.samlog("match activity:");
				SysUtil.samlog(localResolveInfo.activityInfo.packageName);
				SysUtil.samlog(localResolveInfo.activityInfo.name);

				if (localResolveInfo.activityInfo.packageName.contains("mail")) {
					is_find = true;
					localIntent.setClassName(
							localResolveInfo.activityInfo.packageName,
							localResolveInfo.activityInfo.name);
					startActivity(localIntent);
					return;
				}
			}
		}		
		if(!is_find) {
			new AlertDialog.Builder(this).setTitle("提示")
			.setMessage("没有找到邮件应用").setPositiveButton("确定", null)
			.create().show();
		}
		return ;
	}

	private void shareToSinaWeibo() {
		Intent localIntent = new Intent("android.intent.action.SEND");
		localIntent.putExtra(
				"android.intent.extra.TEXT",
				"《" + AppContext.getPartyModel(this).title
						+ "》我的直播，我就任性!!!酷Live在这里: "
						+ AppContext.getPartyModel(this).shareMessage);
		localIntent.setType("text/plain");
		List localList = getPackageManager().queryIntentActivities(localIntent,
				65536);
		Iterator localIterator = localList.iterator();

		boolean is_install = false;
		while (localIterator.hasNext()) {
			ResolveInfo localResolveInfo = (ResolveInfo) localIterator.next();

			if (localResolveInfo != null) {
				SysUtil.samlog("match activity:");
				SysUtil.samlog(localResolveInfo.activityInfo.packageName);
				SysUtil.samlog(localResolveInfo.activityInfo.name);

				if (localResolveInfo.activityInfo.packageName
						.contains("com.sina.weibo")) {

					is_install = true;
					localIntent.setClassName(
							localResolveInfo.activityInfo.packageName,
							localResolveInfo.activityInfo.name);
					startActivity(localIntent);
					return;
				}
			}
		}
		
		if(!is_install) {
			new AlertDialog.Builder(this).setTitle("提示")
			.setMessage("您尚未安装新浪微").setPositiveButton("确定", null)
			.create().show();
		}
		return;
	}

	private void shareToSms() {
		Intent localIntent = new Intent("android.intent.action.SEND");
		localIntent.putExtra(
				"android.intent.extra.TEXT",
				"《" + AppContext.getPartyModel(this).title
						+ "》我的直播，我就任性!!!酷Live在这里： "
						+ AppContext.getPartyModel(this).shareMessage);
		localIntent.setType("text/plain");
		Iterator localIterator = getPackageManager().queryIntentActivities(
				localIntent, 65536).iterator();
		boolean is_find = false;
		while (localIterator.hasNext()) {
			ResolveInfo localResolveInfo = (ResolveInfo) localIterator.next();

			if (localResolveInfo != null) {
				SysUtil.samlog("match activity:");
				SysUtil.samlog(localResolveInfo.activityInfo.packageName);
				SysUtil.samlog(localResolveInfo.activityInfo.name);

				if (localResolveInfo.activityInfo.packageName.contains("contacts") || 
						localResolveInfo.activityInfo.packageName.contains("mms")) {
					is_find = true;
					localIntent.setClassName(
							localResolveInfo.activityInfo.packageName,
							localResolveInfo.activityInfo.name);
					startActivity(localIntent);
					return;
				}
			}
		}
		
		if(!is_find) {
			new AlertDialog.Builder(this).setTitle("提示")
			.setMessage("没有找到短信应用").setPositiveButton("确定", null)
			.create().show();	
		}
		return;
	}

	private void shareToWeixin() {
		SysUtil.samlog("shareToWeixin");
		Intent localIntent = new Intent("android.intent.action.SEND");
		localIntent.putExtra(
				"android.intent.extra.TEXT",
				"《" + AppContext.getPartyModel(this).title
						+ "》我的直播，我就任性!!!酷Live在这里: "
						+ AppContext.getPartyModel(this).shareMessage);
		localIntent.setType("text/plain");
		Iterator localIterator = getPackageManager().queryIntentActivities(
				localIntent, 65536).iterator();
		
		boolean is_find = false;
		while (localIterator.hasNext()) {
			ResolveInfo localResolveInfo = (ResolveInfo) localIterator.next();
			if (localResolveInfo != null) {
				SysUtil.samlog("match activity:");
				SysUtil.samlog(localResolveInfo.activityInfo.packageName);
				SysUtil.samlog(localResolveInfo.activityInfo.name);
				if (localResolveInfo.activityInfo.packageName
						.contains("com.tencent.mm")) {

					is_find = true;
					IWXAPI localIWXAPI = WXAPIFactory.createWXAPI(ActityInfo.this, null);
					localIWXAPI.registerApp("wxea83dc12ba2e5438");

					SysUtil.samlog("iwxapi.getWXAppSupportAPI() = "
							+ localIWXAPI.getWXAppSupportAPI());
					WXWebpageObject localWXWebpageObject = new WXWebpageObject();
					localWXWebpageObject.webpageUrl = AppContext
							.getPartyModel(this).shareMessage;
					WXMediaMessage localWXMediaMessage = new WXMediaMessage();
					localWXMediaMessage.mediaObject = localWXWebpageObject;
					localWXMediaMessage.description = AppContext
							.getPartyModel(this).description;

					if (SysUtil.isStringEmpty(localWXMediaMessage.description))
						localWXMediaMessage.description = "正在直播活动";
					localWXMediaMessage.title = AppContext.getPartyModel(this).title;
					try {
						localWXMediaMessage.thumbData = SysUtil
								.getShareThumbFromUrl(this,
										AppContext.getPartyModel(this).thumburl);
						SendMessageToWX.Req localReq = new SendMessageToWX.Req();
						localReq.transaction = String.valueOf(System
								.currentTimeMillis());
						localReq.message = localWXMediaMessage;
						localReq.scene = 0;
						localIWXAPI.sendReq(localReq);

						return;
					} catch (Exception localException) {
						localException.printStackTrace();
						return;
					}
				}
			}
		}
		
		if(!is_find) {
			new AlertDialog.Builder(this).setTitle("提示")
			.setMessage("没有安装微信").setPositiveButton("确定", null)
			.create().show();
		}
		return;
	}

	private void shareToWeixinCircle() {
		Intent localIntent = new Intent("android.intent.action.SEND");
		localIntent.putExtra(
				"android.intent.extra.TEXT",
				"《" + AppContext.getPartyModel(this).title
						+ "》我的直播，我就任性!!!酷Live在这里："
						+ AppContext.getPartyModel(this).shareMessage);
		localIntent.setType("text/plain");
		Iterator localIterator = getPackageManager().queryIntentActivities(
				localIntent, 65536).iterator();
		
		boolean is_find = false;
		while (localIterator.hasNext()) {
			ResolveInfo localResolveInfo = (ResolveInfo) localIterator.next();
			if (localResolveInfo != null) {
				SysUtil.samlog("match activity:");
				SysUtil.samlog(localResolveInfo.activityInfo.packageName);
				SysUtil.samlog(localResolveInfo.activityInfo.name);
				if (localResolveInfo.activityInfo.packageName
						.contains("com.tencent.mm")) {

					is_find = true;					
					IWXAPI localIWXAPI = WXAPIFactory.createWXAPI(ActityInfo.this, null);
					localIWXAPI.registerApp("wxea83dc12ba2e5438");
					SysUtil.samlog("iwxapi.getWXAppSupportAPI() = "
							+ localIWXAPI.getWXAppSupportAPI());
					
					WXTextObject localWXTextObject = new WXTextObject();
					localWXTextObject.text = AppContext.getPartyModel(this).shareMessage;
					WXMediaMessage localWXMediaMessage = new WXMediaMessage();
					localWXMediaMessage.mediaObject = localWXTextObject;
					localWXMediaMessage.description = AppContext
							.getPartyModel(this).description;
					
					if (SysUtil.isStringEmpty(localWXMediaMessage.description))
						localWXMediaMessage.description = "正在直播活动";
					
					localWXMediaMessage.title = AppContext.getPartyModel(this).title;
					SendMessageToWX.Req localReq = new SendMessageToWX.Req();
					localReq.transaction = String.valueOf(System
							.currentTimeMillis());
					localReq.message = localWXMediaMessage;
					localReq.scene = 1;
					localIWXAPI.sendReq(localReq);

					return;
				}
			}
		}
		
		if(!is_find) {
			new AlertDialog.Builder(this).setTitle("提示")
			.setMessage("没有安装微信").setPositiveButton("确定", null)
			.create().show();
		}
		return;
	}

	@Override
	public void finish() {
		super.finish();
		if (this.getThumbThread != null)
			this.getThumbThread.flag = false;
		if (this.getVideosTask != null) {
			this.getVideosTask.cancel(true);
			this.getVideosTask = null;
		}
	}

	// 返回键执行
	@Override
	public void onBackPressed() {
		if (findViewById(R.id.share_panel).getVisibility() == 0) {
			findViewById(R.id.share_panel).setVisibility(8);
			this.isShowingSharePanel = false;
			return;
		}
		super.onBackPressed();
	}

	@SuppressLint("NewApi")
	@Override
	public void onClick(View paramView) {
		SysUtil.samlog("onclick");

		switch (paramView.getId()) {
		case R.id.topback_IV:
			finish();
			return;
		case R.id.topdone_IV:
			startActivity(new Intent(this, EditActity.class));
			return;
		case R.id.sharepanel_doneBTN:
			findViewById(R.id.share_panel).setVisibility(8);
			this.isShowingSharePanel = false;
			return;
		case R.id.actity_info_endactivityBTN:
			new AlertDialog.Builder(this)
					.setTitle("提示")
					.setMessage("是否结束该活动")
					.setPositiveButton("结束",
							new DialogInterface.OnClickListener() {
								@Override
								public void onClick(
										DialogInterface paramDialogInterface,
										int paramInt) {
									ActityInfo.this.progressDialog
											.setMessage("正在结束活动");
									ActityInfo.this.progressDialog.show();
									if (ActityInfo.this.endActivityTask != null) {
										ActityInfo.this.endActivityTask
												.cancel(true);
										return;
									} else {
										try {
											ActityInfo.this.endActivityTask = new ActityInfo.EndActivityTask(
													ActityInfo.this, null);
											ActityInfo.EndActivityTask localEndActivityTask = ActityInfo.this.endActivityTask;
											Integer[] arrayOfInteger = new Integer[1];
											arrayOfInteger[0] = Integer
													.valueOf(0);
											localEndActivityTask
													.execute(arrayOfInteger);
											return;
										} catch (Exception localException) {
											localException.printStackTrace();
										}
									}
								}
							}).setNegativeButton("取消", null).create().show();
			return;
		case R.id.actity_info_delBTN:
			new AlertDialog.Builder(this)
					.setTitle("提示")
					.setMessage("是否删除该活动")
					.setPositiveButton("删除",
							new DialogInterface.OnClickListener() {
								@Override
								public void onClick(
										DialogInterface paramDialogInterface,
										int paramInt) {
									ActityInfo.this.progressDialog
											.setMessage("正在删除活动");
									ActityInfo.this.progressDialog.show();
									if (ActityInfo.this.deleteTask != null) {
										ActityInfo.this.deleteTask.cancel(true);
									}else {
										try {
											ActityInfo.this.deleteTask = new ActityInfo.DeleteTask(
													ActityInfo.this, null);
											ActityInfo.DeleteTask localDeleteTask = ActityInfo.this.deleteTask;
											Integer[] arrayOfInteger = new Integer[1];
											arrayOfInteger[0] = Integer.valueOf(0);
											localDeleteTask.execute(arrayOfInteger);
											return;
										} catch (Exception localException) {
											localException.printStackTrace();
										}
									}									
								}
							}).setNegativeButton("取消", null).create().show();
			return;
		case R.id.actity_info_shareBTN:
			findViewById(R.id.share_panel).setVisibility(0);
			this.isShowingSharePanel = true;
			return;
		case R.id.actity_info_startBTN:
			if (CameraProvider.canUseAdvancedCodec(this)) {
				startActivity(new Intent(ActityInfo.this, VideoRecordRtmpH264.class));
			} else {
				startActivity(new Intent(ActityInfo.this, VideoRecordRtmpFLV.class));
			}
			return;
		case R.id.share_panel_emailIV:
			shareToEmail();
			return;
		case R.id.share_panel_smsIV:
			shareToSms();
			return;
		case R.id.share_panel_sinaIV:
			shareToSinaWeibo();
			return;
		case R.id.share_panel_weixinIV:
			shareToWeixin();
			return;
		case R.id.share_panel_circleIV:
			shareToWeixinCircle();
			return;
		case R.id.share_panel_copyIV:
			ClipboardManager clipboardManager = (ClipboardManager)getSystemService(Context.CLIPBOARD_SERVICE);  
			clipboardManager.setText("《"
					+ AppContext.getPartyModel(this).title
					+ "》我的直播，我就任性!!!酷Live在这里："
					+ AppContext.getPartyModel(this).shareMessage);  
			Toast.makeText(this, "已复制到粘贴", 0).show();
			return;
		case R.id.videoinfo_single_landleft_thumbIV:
		case R.id.videoinfo_single_landleft_playiconIV:
		case R.id.videoinfo_single_landright_thumbIV:
		case R.id.videoinfo_single_landright_playiconIV:
		case R.id.videoinfo_single_port_thumbIV:
		case R.id.videoinfo_single_port_playiconIV:
		case R.id.activityinfo_listviewLV:
			int i = ((Integer) paramView.getTag()).intValue();

			SysUtil.samlog("onItemClick = " + i);
			VideoModel localVideoModel = this.videos.elementAt(i);
			SysUtil.samlog("video url:");
			SysUtil.samlog(localVideoModel.videourl_android);
			SysUtil.samlog(localVideoModel.videourl_ios);
			Intent localIntent = new Intent("android.intent.action.VIEW");
			localIntent.setDataAndType(Uri.parse(localVideoModel.videourl_ios),	"video/*");
			Iterator localIterator = getPackageManager().queryIntentActivities(localIntent, 65536).iterator();
			
			while (localIterator.hasNext()) {
				ResolveInfo localResolveInfo = (ResolveInfo) localIterator.next();
				if (localResolveInfo != null) {
					SysUtil.samlog("match activity:");
					SysUtil.samlog(localResolveInfo.activityInfo.packageName);
					SysUtil.samlog(localResolveInfo.activityInfo.name);

					if (!localResolveInfo.activityInfo.packageName
							.contains("com.sec.android.app.videoplayer")) {

						localIntent.setClassName(localResolveInfo.activityInfo.packageName,	localResolveInfo.activityInfo.name);
						startActivity(localIntent);
						return;
					}
				} else {
					new AlertDialog.Builder(this).setTitle("提示")
							.setMessage("没有安装播放器")
							.setPositiveButton("确定", null).create().show();
					return;
				}
			}
		}
	}

	@Override
	public void onConfigurationChanged(Configuration paramConfiguration) {
		super.onConfigurationChanged(paramConfiguration);
		setContentView(R.layout.actity_info);
		initContentView();
		if (this.isShowingSharePanel)
			findViewById(R.layout.share_panel).setVisibility(0);
	}

	@Override
	protected void onCreate(Bundle paramBundle) {
		super.onCreate(paramBundle);
		setContentView(R.layout.actity_info);

		SysUtil.samlog("actityInfo oncreate");
		initContentView();

		this.progressDialog = new ProgressDialog(this);
		this.progressDialog.setTitle("请稍等...");
		this.progressDialog.setMessage("正在删除活动");
		this.progressDialog
				.setOnDismissListener(new DialogInterface.OnDismissListener() {
					@Override
					public void onDismiss(DialogInterface paramDialogInterface) {
						try {
							if (ActityInfo.this.deleteTask != null)
								ActityInfo.this.deleteTask.cancel(true);
							
							if (ActityInfo.this.endActivityTask != null)
								ActityInfo.this.endActivityTask.cancel(true);
								
							if (ActityInfo.this.getThumbThread != null)
								ActityInfo.this.getThumbThread.flag = false;
								
							return;							
						} catch (Exception localException1) {
							localException1.printStackTrace();
							return;			
						}
					}
				});

		new Thread() {
			@Override
			public void run() {
				SysUtil.saveThumbUrlToFile(
						ActityInfo.this.getApplicationContext(),
						AppContext.getPartyModel(ActityInfo.this).thumburl);
			}
		}.start();	
		this.videos = new Vector();
		SysUtil.isDeviceSumSungCamera();
		
		//调用视频
		new GetVideosTask().execute(1000);
	}

	@Override
	protected void onResume() {
		super.onResume();
		SysUtil.samlog("activity info on resume");
	}

	private class DeleteTask extends AsyncTask<Integer, Integer, Integer> {
		private DeleteTask(Context context, Object obj) {
		}

		@Override
		protected Integer doInBackground(Integer[] paramArrayOfInteger) {
			try {
				String str = AppContext.inetAddr + AppContext.deleteActivityURL
						+ "rid=" + AppContext.getPartyModel(ActityInfo.this).id;
				SysUtil.samlog(str);
				HttpPost localHttpPost = new HttpPost(str);
				DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient();
				localDefaultHttpClient.setCookieStore(AppContext
						.getCookieStore(ActityInfo.this));
				HttpResponse localHttpResponse = localDefaultHttpClient
						.execute(localHttpPost);
				SysUtil.samlog("getStatusCode = "
						+ localHttpResponse.getStatusLine().getStatusCode());
				Integer localInteger = Integer.valueOf(localHttpResponse
						.getStatusLine().getStatusCode());
				return localInteger;
			} catch (Exception localException) {
				localException.printStackTrace();
			}
			return Integer.valueOf(0);
		}

		@Override
		protected void onPostExecute(Integer paramInteger) {
			super.onPostExecute(paramInteger);
			ActityInfo.this.progressDialog.dismiss();
			if (paramInteger.intValue() == 200) {
				Toast.makeText(ActityInfo.this, "已删除活动", 0).show();
				ActityInfo.this.finish();
				return;
			}
			Toast.makeText(ActityInfo.this, "删除活动失败", 0).show();
		}
	}

	private class EndActivityTask extends AsyncTask<Integer, Integer, Integer> {
		private EndActivityTask(Context context, Object obj) {
		}

		@Override
		protected Integer doInBackground(Integer[] paramArrayOfInteger) {
			try {
				String str1 = AppContext.inetAddr + AppContext.endActivityURL;
				Object[] arrayOfObject = new Object[1];
				arrayOfObject[0] = Integer.valueOf(AppContext
						.getPartyModel(ActityInfo.this).id);
				String str2 = String.format(str1, arrayOfObject);
				SysUtil.samlog(str2);
				HttpPost localHttpPost = new HttpPost(str2);

				DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient();
				localDefaultHttpClient.setCookieStore(AppContext
						.getCookieStore(ActityInfo.this));
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
				return localInteger;
			} catch (Exception localException) {
				localException.printStackTrace();
			}
			return Integer.valueOf(0);
		}

		@Override
		protected void onPostExecute(Integer paramInteger) {
			super.onPostExecute(paramInteger);
			ActityInfo.this.progressDialog.dismiss();
			if (paramInteger.intValue() == 200) {
				Toast.makeText(ActityInfo.this, "已结束活动", 0).show();
				ActityInfo.this.finish();
				return;
			}
			Toast.makeText(ActityInfo.this, "网络错误", 0).show();
		}
	}

	private class GetThumbThread extends Thread {
		public volatile boolean flag = true;

		private GetThumbThread(ActityInfo actityInfo, Context context) {
		}

		@Override
		public void run() {
			super.run();
			try {
				int i = ActityInfo.this.videos.size();
				for (int j = 0; j < i; j++) {
					if (!this.flag)
						return;
					VideoModel localVideoModel = ActityInfo.this.videos
							.elementAt(j);
					SysUtil.saveThumbUrlToFile(
							ActityInfo.this.getApplicationContext(),
							localVideoModel.thumbUrl);
					ActityInfo.this.handler.obtainMessage(0).sendToTarget();
				}
			} catch (Exception localException) {
				localException.printStackTrace();
			}
		}
	}

	private class GetVideosTask extends AsyncTask<Integer, Integer, String> {
		public volatile boolean flag = true;

		private GetVideosTask() {
		}

		@Override
		protected String doInBackground(Integer[] paramArrayOfInteger) {
			try {
				Object[] arrayOfObject = new Object[2];
				arrayOfObject[0] = AppContext.inetAddr;
				arrayOfObject[1] = AppContext.getPartyModel(ActityInfo.this
						.getApplicationContext()).id;
				String str1 = String.format(
						AppContext.my_program_videos,
						arrayOfObject);
				SysUtil.samlog("http url = " + str1);
				HttpGet localHttpGet = new HttpGet(str1);
				DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient();
				localDefaultHttpClient
						.setCookieStore(AppContext
								.getCookieStore(ActityInfo.this
										.getApplicationContext()));
				localDefaultHttpClient.getParams().setParameter(
						"http.connection.timeout", Integer.valueOf(20000));
				localDefaultHttpClient.getParams().setParameter(
						"http.socket.timeout", Integer.valueOf(20000));
				HttpResponse localHttpResponse = localDefaultHttpClient
						.execute(localHttpGet);
				SysUtil.samlog("httpResponse.getStatusLine().getStatusCode() = "
						+ localHttpResponse.getStatusLine().getStatusCode());
				if (localHttpResponse.getStatusLine().getStatusCode() == 200) {
					String str2 = EntityUtils.toString(localHttpResponse
							.getEntity());
					SysUtil.samlog("result = " + str2);
					localHttpResponse.getEntity().consumeContent();
					return str2;
				}
			} catch (Exception localException) {
				localException.printStackTrace();
			}
			return new JSONObject().toString();
		}

		@Override
		protected void onPostExecute(String paramString) {
			super.onPostExecute(paramString);
			if (!this.flag)
				return;
			ActityInfo.this.videos.clear();
			try {
				JSONObject res = new JSONObject(paramString);
				if(res.getBoolean("result")) {
					JSONObject data = res.getJSONObject("data");
					System.out.println("###max_watch_num:"+data.getInt("max_watch_num"));
					JSONArray localJSONArray = data.getJSONArray("videos");
			    	int i = localJSONArray.length();
			    	for(int j = 0; j<i; j++) {
			    		JSONObject localJSONObject = localJSONArray.getJSONObject(j);
						VideoModel localVideoModel = new VideoModel();
						localVideoModel.live = localJSONObject.getBoolean("live");
						localVideoModel.thumbUrl = localJSONObject
								.getString("thumb");
						localVideoModel.timestamp = localJSONObject
								.getLong("timestamp");
						localVideoModel.videourl_android = localJSONObject
								.getString("videourl_android");
						localVideoModel.videourl_ios = localJSONObject
								.getString("videourl_ios");
						ActityInfo.this.videos.add(localVideoModel);
			    	}
			    	
			    	if (this.flag) {					
						if (ActityInfo.this.videos.size() > 1) {						
							Collections.sort(ActityInfo.this.videos,
									new Comparator() {
										public int compare(
												VideoModel paramVideoModel1,
												VideoModel paramVideoModel2) {
											return (int) (paramVideoModel2.timestamp - paramVideoModel1.timestamp);
										}

										@Override
										public int compare(Object lhs,
												Object rhs) {
											// TODO Auto-generated method stub
											return 0;
										}
									});
						}
						
						ActityInfo.this.videoListAdapter.notifyDataSetChanged();
						ActityInfo.this.getThumbThread = new ActityInfo.GetThumbThread(
								ActityInfo.this, ActityInfo.this);
						
						ActityInfo.this.getThumbThread.start();
						return;
					}
				}else {
					Toast.makeText(ActityInfo.this, res.getString("error"), 0).show();
				}			    
			} catch (Exception localException) {
				localException.printStackTrace();
				return;
			}
		}
	}

	private class VideoListAdapter extends BaseAdapter {
		private Context context;

		private VideoListAdapter(Context context) {
			this.context = context;
		}

		@Override
		public int getCount() {
			if (ActityInfo.this.screenOritation == 1)
				return ActityInfo.this.videos.size();
			return ActityInfo.this.videos.size() / 2
					+ ActityInfo.this.videos.size() % 2;
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
		public View getView(int position, View convertView, ViewGroup parent) {
			if (ActityInfo.this.screenOritation == 1) {//if-ne screenOritation, 1, :cond_2				
				if (convertView == null) {//.line 765 if-nez convertView, :cond_0
					//.line 767
					convertView = LayoutInflater.from(ActityInfo.this).inflate(R.layout.videoinfo_single_port, null);
				}
				//:cond_0 .line 769				
				SysUtil.samlog("VideoListAdapter position = " + position);
				//.line 770
				VideoModel localVideoModel3 = ActityInfo.this.videos.elementAt(position);
				if(localVideoModel3.live) {
					
				}else {
					ImageView thumbImageView = (ImageView) convertView.findViewById(R.id.videoinfo_single_port_thumbIV);
					thumbImageView.setTag(Integer.valueOf(position));
					thumbImageView.setOnClickListener(ActityInfo.this);
					ImageView playiconImageView = (ImageView) convertView.findViewById(R.id.videoinfo_single_port_playiconIV);
					playiconImageView.setTag(Integer.valueOf(position));
					playiconImageView.setOnClickListener(ActityInfo.this);

					//.line 780 bitmap
					Bitmap localBitmap3 = SysUtil.getThumbCacheWithUrl(ActityInfo.this.getApplicationContext(),	localVideoModel3.thumbUrl);
					if (localBitmap3 != null) {//if-eqz v1, :cond_1
						thumbImageView.setImageBitmap(localBitmap3);
						int k = ActityInfo.this.getWindowManager().getDefaultDisplay().getWidth();
						int m = k * localBitmap3.getHeight() / localBitmap3.getWidth();
						ViewGroup.LayoutParams localLayoutParams3 = thumbImageView.getLayoutParams();
						localLayoutParams3.width = k;
						localLayoutParams3.height = m;
						thumbImageView.setLayoutParams(localLayoutParams3);		
						
					}else {
						thumbImageView.setImageResource(R.drawable.thumbdefault);
					}

					SysUtil.samlog("thumbImageView.getLayoutParams().width = "	+ thumbImageView.getLayoutParams().width);
					SysUtil.samlog("thumbImageView.getLayoutParams().height = "	+ thumbImageView.getLayoutParams().height);
					((TextView) convertView.findViewById(R.id.videoinfo_single_port_timeTV)).setText(SysUtil.getDateStringFromMilliTime(localVideoModel3.timestamp));
					thumbImageView.setImageResource(R.drawable.thumbdefault);
				}				
				return convertView;	
			}else {
				if (convertView == null) //if-nez p2, :cond_3
					convertView = LayoutInflater.from(ActityInfo.this).inflate(R.layout.videoinfo_single_land, null);// or  parent is null

				VideoModel videoModelLeft = ActityInfo.this.videos.elementAt(position * 2);	
				if(videoModelLeft.live) {
					
				}else {
					if (videoModelLeft != null) {//if-eqz videoModelLeft, :cond_4 .line 810
						ImageView thumbImageView = (ImageView) convertView.findViewById(R.id.videoinfo_single_landleft_thumbIV);
						thumbImageView.setTag(Integer.valueOf(position * 2));
						thumbImageView.setOnClickListener(ActityInfo.this);
						ImageView playiconLeftImageView = (ImageView) convertView.findViewById(R.id.videoinfo_single_landleft_playiconIV);
						playiconLeftImageView.setTag(Integer.valueOf(position * 2));
						playiconLeftImageView.setOnClickListener(ActityInfo.this);
						
						Bitmap bitmap = SysUtil.getThumbCacheWithUrl(ActityInfo.this.getApplicationContext(),videoModelLeft.thumbUrl);
						if (bitmap != null) {//if-eqz bitmap, :cond_5
							thumbImageView.setImageBitmap(bitmap);
							int j = (-40 + ActityInfo.this.getWindowManager().getDefaultDisplay().getWidth()) / 2;
							//v3
							ViewGroup.LayoutParams layoutParams = thumbImageView.getLayoutParams();						
							layoutParams.width = -1;
							layoutParams.height = (j * 9 / 16);
							thumbImageView.setLayoutParams(layoutParams);
							
							//:goto_2
							SysUtil.samlog("thumbImageView.getLayoutParams().width = "+ thumbImageView.getLayoutParams().width);
							SysUtil.samlog("thumbImageView.getLayoutParams().height = "	+ thumbImageView.getLayoutParams().height);
							//.line 834
							((TextView) convertView.findViewById(R.id.videoinfo_single_landleft_timeTV)).setText(SysUtil.getDateStringFromMilliTime(videoModelLeft.timestamp));
						}else {
							//:cond_5
							thumbImageView.setImageResource(R.drawable.thumbdefault);						
						}
					}
					
					//cond_4
					if (ActityInfo.this.videos.size() > 1 + position * 2) {//if-le v13, v14, :cond_7
						convertView.findViewById(R.id.videoinfo_single_land_rightLL).setVisibility(0);
						VideoModel videoModelRight = ActityInfo.this.videos.elementAt(1 + position * 2);
						//v9
						ImageView thumbImageView = (ImageView) convertView.findViewById(R.id.videoinfo_single_landright_thumbIV);
						thumbImageView.setTag(Integer.valueOf(1 + position * 2));
						thumbImageView.setOnClickListener(ActityInfo.this);
						ImageView playiconRightImageView = (ImageView) convertView.findViewById(R.id.videoinfo_single_landright_playiconIV);
						playiconRightImageView.setTag(Integer.valueOf(1 + position * 2));
						playiconRightImageView.setOnClickListener(ActityInfo.this);
						
						Bitmap bitmap = SysUtil.getThumbCacheWithUrl(ActityInfo.this.getApplicationContext(), videoModelRight.thumbUrl);
						
						if (bitmap != null) {//if-eqz bitmap, :cond_6
							thumbImageView.setImageBitmap(bitmap);
							int i = (-40 + ActityInfo.this.getWindowManager().getDefaultDisplay().getWidth()) / 2;
							ViewGroup.LayoutParams layoutParams = thumbImageView.getLayoutParams();
							layoutParams.width = -1;
							layoutParams.height = (i * 9 / 16);
							thumbImageView.setLayoutParams(layoutParams);						
						}else {
							thumbImageView.setImageResource(R.drawable.thumbdefault);
						}
						
						SysUtil.samlog("thumbImageView.getLayoutParams().width = " + thumbImageView.getLayoutParams().width);
						SysUtil.samlog("thumbImageView.getLayoutParams().height = "	+ thumbImageView.getLayoutParams().height);
						((TextView) convertView.findViewById(R.id.videoinfo_single_landright_timeTV)).setText(SysUtil.getDateStringFromMilliTime(videoModelRight.timestamp));
						
						return convertView;	
					}else {					
						convertView.findViewById(R.id.videoinfo_single_land_rightLL).setVisibility(4);
					}					
				}				
			}
			return convertView;
		}
	}

}

/*
 * Location: D:\apk_unbuild\dex2jar-0.0.9.15\classes_dex2jar.jar Qualified Name:
 * com.rayclear.videomessage.ui.actityInfo JD-Core Version: 0.6.0
 */