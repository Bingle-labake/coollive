package com.coollive.launch.ui.video;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;
import android.hardware.Camera.Parameters;
import android.media.AudioManager;
import android.media.AudioRecord;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.os.Process;
import android.text.ClipboardManager;
import android.text.Html;
import android.text.Html.ImageGetter;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.Timer;
import java.util.TimerTask;
import java.util.Vector;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;
import org.json.JSONException;
import org.json.JSONObject;

import com.coollive.launch.R;
import com.coollive.launch.camera.CameraProvider;
import com.coollive.launch.common.AppContext;
import com.coollive.launch.common.CreateNewActivityThread;
import com.coollive.launch.common.SDcardUtil;
import com.coollive.launch.common.SysUtil;
import com.coollive.launch.model.PartyModel;
import com.coollive.launch.model.SamMediaFrame;
import com.coollive.launch.settings.Setting;
import com.coollive.launch.websockets.WebSocketThread;
import com.rayclear.jni.RTMPStreamMuxer;
import com.tencent.mm.sdk.openapi.IWXAPI;
import com.tencent.mm.sdk.openapi.SendMessageToWX;
import com.tencent.mm.sdk.openapi.WXAPIFactory;
import com.tencent.mm.sdk.openapi.WXMediaMessage;
import com.tencent.mm.sdk.openapi.WXWebpageObject;

public class VideoRecordRtmpFLV extends Activity implements
		SurfaceHolder.Callback, View.OnClickListener, Camera.PreviewCallback,
		Camera.OnZoomChangeListener, View.OnTouchListener,
		Camera.AutoFocusCallback {
	private static final int ACTIVIYT_RESULT_SET_FRAME_SIZE = 1;
	private static final int MESSAGE_BANDWITH_TOO_LOW = 219;
	private static final int MESSAGE_CHANGE_RECORD_IMG = 226;
	private static final int MESSAGE_CREATE_ACTIVITY_FAIL = 231;
	private static final int MESSAGE_CREATE_ACTIVITY_OK = 230;
	private static final int MESSAGE_HIDE_RECORD_TIP = 224;
	private static final int MESSAGE_RECONNECT_OK = 205;
	private static final int MESSAGE_RECORD_TIME_CNT = 215;
	private static final int MESSAGE_RTMP_SEND_FAIL = 232;
	private static final int MESSAGE_SET_RECORD_STAT_DISRECORDING = 221;
	private static final int MESSAGE_SET_RECORD_STAT_RECORDING = 220;
	private static final int MESSAGE_SET_ZOOM_INVISIABLE = 228;
	private static final int MESSAGE_SHOW_RAW_MESSAGE = 223;
	private static final int MESSAGE_SOCKET_BREAKUP = 206;
	private static final int MESSAGE_SOCKET_MSG_RECEIVED = 225;
	private static final int MESSAGE_SOCKET_PACKET_SENDED = 222;
	private static final int MESSAGE_UPLOAD_PROGRESS = 227;
	private static final int MESSAGE_ZOOM_CAMERA = 229;
	private static final String TAG = "WebSocket";

	private static List<SpannableStringBuilder> messageStrList = new ArrayList();
	public int DES_FRAME_HEIGHT = 480;
	public int DES_FRAME_WIDTH = 640;
	public int SRC_FRAME_HEIGHT = 480;
	public int SRC_FRAME_WIDTH = 640;
	private long absoluteBeginTime = 0L;
	private EditText activityTitleEditText = null;
	private View activityTitlePanel = null;
	private AlertDialog assureQuitChatAlertDialog = null;
	private ImageView autoFocusView = null;
	private Animation autofocusAnimation = null;
	private BroadcastReceiver batteryBroadcastReceiver = new BroadcastReceiver() {
		@Override
		public void onReceive(Context paramContext, Intent paramIntent) {
			int i = paramIntent.getIntExtra("level", 0);
			int j = paramIntent.getIntExtra("scale", 100);
			int k = i * 100 / j;
			SysUtil.samlog("电池电量 = " + k);
			VideoRecordRtmpFLV.this.batteryClipDrawable.setLevel(k * 100);
		}
	};
	private ClipDrawable batteryClipDrawable = null;
	int bps = 400000;
	private Camera.Parameters camParams;
	private Camera camera = null;

	private Object chatroom = new Object();
	private TextView chatroomTextView;
	private WebSocketThread webSocket = null;

	private ProgressDialog connectingProgressDialog = null;
	private CreateNewActivityThread createNewActivityThread = null;
	private int debug_drop_count = 0;
	private EncodeVideoThread encodeVideoThread = null;
	int fps = 15;
	private ProgressDialog getChannelProgressDialog = null;
	private volatile boolean isRecording = false;
	private long lastClickTime = 0L;
	private long lastPreviewFrameComingTime = 0L;
	private int lastSendedOffset = 0;
	private long lastZoomChangeTimeStamp = 0L;
	private int maxCameraRoom = 0;
	private MyTask chatTast = null;

	private final Handler msgHandler = new Handler() {
		// ERROR //
		@Override
		public void handleMessage(Message paramMessage) {
			switch (paramMessage.what) {
			case 0:// pswitch_0
				return;
			case MESSAGE_SOCKET_BREAKUP:// pswitch_1
				new AlertDialog.Builder(VideoRecordRtmpFLV.this).setTitle("错误")
						.setMessage("连接已断开").setPositiveButton("确定", null)
						.create().show();
				return;
			case MESSAGE_CREATE_ACTIVITY_FAIL:// 活动创建失败
				VideoRecordRtmpFLV.this.getChannelProgressDialog.dismiss();
				Toast.makeText(VideoRecordRtmpFLV.this, "创建活动失败", 0).show();
				break;
			case MESSAGE_CREATE_ACTIVITY_OK:// 活动创建成功
				VideoRecordRtmpFLV.this.getChannelProgressDialog.dismiss();

				Object obj = paramMessage.obj;
				if (obj != null) {
					try {
						JSONObject v14 = new JSONObject(
								(String) paramMessage.obj);
						PartyModel localPartyModel = new PartyModel();

						JSONObject info = v14.getJSONObject("data");
						localPartyModel.shareMessage = info
								.getString("message");
						localPartyModel.urlToken = info.getString("token");
						localPartyModel.id = info.getInt("rid");

						AppContext.savePartyModel(VideoRecordRtmpFLV.this,
								localPartyModel);
					} catch (JSONException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
				VideoRecordRtmpFLV.this.activityTitlePanel.setVisibility(8);
				VideoRecordRtmpFLV.this.sharePanel.setVisibility(0);
				break;
			case MESSAGE_ZOOM_CAMERA:// pswitch_4
				Object obj1 = paramMessage.obj;
				int id = Integer.valueOf(obj1.toString());
				if (id == R.id.record_zoom_t) {
					if (VideoRecordRtmpFLV.this.zoomProgress >= VideoRecordRtmpFLV.this.maxCameraRoom) {
						VideoRecordRtmpFLV.this.zoomProgress = VideoRecordRtmpFLV.this.maxCameraRoom;
					} else {
						VideoRecordRtmpFLV.this.zoomProgress += 1;
					}

					ProgressBar v23 = VideoRecordRtmpFLV.this.zoomProgressBar;
					int v24 = VideoRecordRtmpFLV.this.zoomProgress;
					v24 *= 1000;
					v24 = v24 / VideoRecordRtmpFLV.this.maxCameraRoom;
					VideoRecordRtmpFLV.this.zoomProgressBar.setProgress(v24);

					VideoRecordRtmpFLV.this.zoomNumTextView.setText(String
							.valueOf(VideoRecordRtmpFLV.this.zoomProgress));

					if (VideoRecordRtmpFLV.this.camera != null) {
						// v13
						Parameters parameters = VideoRecordRtmpFLV.this.camera
								.getParameters();
						parameters
								.setZoom(VideoRecordRtmpFLV.this.zoomProgress);
						VideoRecordRtmpFLV.this.camera
								.setParameters(parameters);
					}
				}

				if (id == R.id.record_zoom_w) {
					if (VideoRecordRtmpFLV.this.zoomProgress <= 0) {
						VideoRecordRtmpFLV.this.zoomProgress = 0;
					} else {
						VideoRecordRtmpFLV.this.zoomProgress -= 1;
					}

					if (VideoRecordRtmpFLV.this.camera != null) {
						// v13
						Parameters parameters = VideoRecordRtmpFLV.this.camera
								.getParameters();
						parameters
								.setZoom(VideoRecordRtmpFLV.this.zoomProgress);
						VideoRecordRtmpFLV.this.camera
								.setParameters(parameters);
						// .line 358
					}

					// cond_4
					int v24 = VideoRecordRtmpFLV.this.zoomProgress;
					v24 *= 1000;
					int v25 = VideoRecordRtmpFLV.this.maxCameraRoom;
					v24 = v24 / v25;
					VideoRecordRtmpFLV.this.zoomProgressBar.setProgress(v24);
					VideoRecordRtmpFLV.this.zoomNumTextView.setText(String
							.valueOf(VideoRecordRtmpFLV.this.zoomProgress));
				}
				break;
			case MESSAGE_SET_ZOOM_INVISIABLE:// pswitch_5
				View zoomPanelView = VideoRecordRtmpFLV.this.zoomPanelView;
				zoomPanelView.setVisibility(4);
				break;
			case 6:// pswitch_6
				ProgressDialog pDialog = VideoRecordRtmpFLV.this.uploadProgressDialog;
				pDialog.setProgress(VideoRecordRtmpFLV.this.uploadProgress);
				break;
			case MESSAGE_CHANGE_RECORD_IMG:// 开始直播、图标变幻
				if (VideoRecordRtmpFLV.this.isRecording) {
					int v223 = VideoRecordRtmpFLV.this.recordTimeCnt % 2;
					if (v223 == 0) {
						VideoRecordRtmpFLV.this.recordIV
								.setImageResource(R.drawable.record_recordbtn_off);
					} else {
						VideoRecordRtmpFLV.this.recordIV
								.setImageResource(R.drawable.record_recordbtn_on);
					}
				}
				break;
			case MESSAGE_SHOW_RAW_MESSAGE:// pswitch_8 MESSAGE_SHOW_RAW_MESSAGE
				Object obj11 = paramMessage.obj;
				if (obj11 != null) {
					Toast.makeText(VideoRecordRtmpFLV.this, obj11.toString(), 1)
							.show();
				}
				break;
			case MESSAGE_SET_RECORD_STAT_RECORDING:// pswitch_9
				VideoRecordRtmpFLV.this.recordIV
						.setImageResource(R.drawable.record_recordbtn_on);

				VideoRecordRtmpFLV.this.recordTextZone.setVisibility(0);

				VideoRecordRtmpFLV.this.findViewById(R.id.record_settings_zone)
						.setVisibility(4);
				
				VideoRecordRtmpFLV.this.findViewById(R.id.record_reverse)
				.setVisibility(4);
				
				break;
			case MESSAGE_SET_RECORD_STAT_DISRECORDING:// pswitch_a
				VideoRecordRtmpFLV.this.recordIV
						.setImageResource(R.drawable.record_recordbtn_off);
				VideoRecordRtmpFLV.this.recordTextZone.setVisibility(4);
				
				VideoRecordRtmpFLV.this.findViewById(R.id.record_reverse)
				.setVisibility(0);
				VideoRecordRtmpFLV.this.recordTimeCnt = 0;
				VideoRecordRtmpFLV.this.lastSendedOffset = 0;
				VideoRecordRtmpFLV.this.showbandwidthlowcnt = 0;

				// 关闭聊天室
				if (webSocket != null) {
					webSocket.close();
				}

				break;
			case MESSAGE_BANDWITH_TOO_LOW:// pswitch_b
				String v24 = "检测到您的带宽太低，可能会影响直播效果";
				Toast.makeText(VideoRecordRtmpFLV.this, v24, 0).show();
				break;

			case MESSAGE_RECORD_TIME_CNT:// pswitch_c
				// 是否在直播
				int rid = AppContext.getPartyModel(VideoRecordRtmpFLV.this).id;
				if (VideoRecordRtmpFLV.this.isRecording) {// 否则跳转到::cond_b
					// cond_b v23 .line 366
					// v24
					StringBuilder v241 = new StringBuilder("Live[" + rid + "] ");
					String v25 = SysUtil
							.getFormatedRecordTime(VideoRecordRtmpFLV.this.recordTimeCnt);
					v241.append(v25);

					v24 = v241.toString();
					VideoRecordRtmpFLV.this.recordTimeCntTextView.setText(v24);
				} else {
					TextView textView = VideoRecordRtmpFLV.this.recordTimeCntTextView;
					StringBuilder v_24 = new StringBuilder("Live[" + rid + "] ");
					String frtime = SysUtil
							.getFormatedRecordTime(VideoRecordRtmpFLV.this.recordTimeCntAtStop);
					v_24.append(frtime);
					textView.setText(v_24.toString());
				}

				// :goto_4 .line 371
				int recordTimeCnt = VideoRecordRtmpFLV.this.recordTimeCnt % 61;
				if (recordTimeCnt > 0) {// 跳转到 :cond_7
					// :cond_7
					int v23 = VideoRecordRtmpFLV.this.recordTimeCnt;
					if (v23 >= 3) {// 否则跳转到 :cond_8
						// :cond_7
						SDcardUtil sDcardUtil = new SDcardUtil(
								VideoRecordRtmpFLV.this.getApplicationContext());// line
																					// 373
						int availablespcaeMB = SDcardUtil
								.getSDCardAvableSpaceMb(Environment
										.getDownloadCacheDirectory()
										.getAbsolutePath());// line 375
						VideoRecordRtmpFLV.this.sdcardSpaceTextView
								.setText(SysUtil
										.formatSpaceMb(availablespcaeMB));
						VideoRecordRtmpFLV.this.sdcardSpaceTextView
								.setVisibility(0);
					}
				}
				// :cond_8
				int v231 = VideoRecordRtmpFLV.this.recordTimeCnt % 2;
				if (v231 == 0) {// 不等于0跳转:cond_0
					// v19
					String speedString = "";
					// v6
					int curOffset = VideoRecordRtmpFLV.this.rtmpSendedSize;

					int v2311 = curOffset
							- VideoRecordRtmpFLV.this.lastSendedOffset;
					// v16
					int speed = v2311 / 2000;
					if (speed > 0) {
						if (speed < 6) {
							VideoRecordRtmpFLV.this.showbandwidthlowcnt += 1;
							if (VideoRecordRtmpFLV.this.showbandwidthlowcnt != 5) {
								VideoRecordRtmpFLV.this.msgHandler
										.obtainMessage(MESSAGE_BANDWITH_TOO_LOW)
										.sendToTarget();
							}
						}
					}
					// //:cond_9
					if (speed > 6) {
						if (VideoRecordRtmpFLV.this.showbandwidthlowcnt < 5) {
							VideoRecordRtmpFLV.this.showbandwidthlowcnt = 0;
						}
					}
					// :cond_a
					VideoRecordRtmpFLV.this.lastSendedOffset = curOffset;

					if (speed < 1) {// 否则跳转:cond_c
						// v17
						speedString = "正在压缩数据..";
						StringBuilder v23_s = new StringBuilder("统计速率 = ");
						int v240 = curOffset
								/ VideoRecordRtmpFLV.this.recordTimeCnt;
						v23_s = v23_s.append(v240);
						SysUtil.samlog(v23_s.toString());
						// goto/16 :goto_0
						break;
					} else {
						// :cond_c
						StringBuilder v23_111 = new StringBuilder(
								String.valueOf(speed));
						v23_111.append(" KB/s");
						// v17
						speedString = v23_111.toString();
						SysUtil.samlog(speedString);
						// goto :goto_5
					}
					VideoRecordRtmpFLV.this.recordSpeedTextView
							.setText(speedString);
				}
				break;
			case MESSAGE_RECONNECT_OK:// RTMP连接成功
				System.out.println("######MESSAGE_RECONNECT_OK");
				VideoRecordRtmpFLV.this.connectingProgressDialog.dismiss();

				new addVideoThread(VideoRecordRtmpFLV.this).start();

				break;
			case MESSAGE_RTMP_SEND_FAIL:// pswitch_e
				VideoRecordRtmpFLV.this.connectingProgressDialog.dismiss();
				VideoRecordRtmpFLV.this.msgHandler.obtainMessage(
						MESSAGE_SHOW_RAW_MESSAGE, "网络连接已断开").sendToTarget();

				if (VideoRecordRtmpFLV.this.isRecording) {
					VideoRecordRtmpFLV.this.stopRecord();
				}
				VideoRecordRtmpFLV.this.finish();
				break;
			case MESSAGE_SOCKET_MSG_RECEIVED:// pswitch_f聊天消息
				// 20
				String message = (String) paramMessage.obj;
				System.out
						.println("############################################################");
				System.out.println(message);
				System.out
						.println("############################################################");
				String substr = "";
				JSONObject msg;
				try {
					msg = new JSONObject(message);
					String cmd = msg.getString("cmd");
					SpannableStringBuilder style = new SpannableStringBuilder(
							"");
					int indexofcolon = 0;
					String Demostr = "";

					if (cmd.equals("fromMsg")) {
						substr = msg.getString("data");
						System.out.println("###receive message:" + substr);
						if (substr != "") {
							Demostr = substr.replaceAll("(\\r)*\\n", "").trim();
							indexofcolon = Demostr.indexOf(":");
							if (indexofcolon < 0) {// 否则跳转 -->:cond_10
								// v21
								String sysErr = "对方:";
								StringBuilder v23_111 = new StringBuilder(sysErr);
								
								String regEx = "#[0-9]{1,2}";
								Pattern p = Pattern.compile(regEx);
								Matcher m = p.matcher(Demostr);
								while(m.find()){ 
									String match = m.group();
									String num = match.substring(1);
									String img = "<img src='face_"+num+"'/>";
									Demostr = Demostr.replaceAll(match, img);
								}
								
								Demostr = "对方:"+Demostr;
								CharSequence charSequence = Html.fromHtml(Demostr, new ImageGetter() { 
						            @Override  
						            public Drawable getDrawable(String source) {  
						                // TODO Auto-generated method stub  
						                Drawable drawable = getResources().getDrawable(  
						                        SysUtil.getResourceId(source));  
						                drawable.setBounds(0, 0, drawable.getIntrinsicWidth(),  
					                            drawable.getIntrinsicHeight()); 						                  
						                return drawable;  
						            }  
						        }, null); 
								style = new SpannableStringBuilder(charSequence);		
								
								//v23_111.append(Demostr);
								//String v21 = v23_111.toString();
								
								int v101 = Demostr.indexOf(":");								
								//style = new SpannableStringBuilder(v21);								
								ForegroundColorSpan v2311 = new ForegroundColorSpan(-1);
								style.setSpan(v2311, 0, v101, 33);								
							} else {
								// :cond_11
								// v19
								style = new SpannableStringBuilder(Demostr);
								// v23
								ForegroundColorSpan v23111 = new ForegroundColorSpan(
										-0xff0100);
								style.setSpan(v23111, 0, indexofcolon, 33);
							}
						}
					} else if (cmd.equals("fromPresentGift")) {
						JSONObject data = msg.getJSONObject("data");
						JSONObject fuser = data.getJSONObject("fuser");
						JSONObject user = data.getJSONObject("user");
						JSONObject gift = data.getJSONObject("gift");
						
						Iterator<String> keys = gift.keys();
						JSONObject o;
						String key;
						
						Demostr = user.getString("username")+": 给你送了 ";
						while(keys.hasNext()){
							key=keys.next();
							o=(JSONObject) gift.get(key);
							String gift_class = o.getString("class").replaceAll("(\\r)*\\n", "").trim();
							Demostr += o.getInt("num")+"个<img src='gift_"+gift_class+"' alt='"+o.getString("name")+"'/>["+o.getString("name")+"],";
						}
						Demostr = Demostr.substring(0, Demostr.length() - 2);
						Demostr += ".";
						
						CharSequence charSequence = Html.fromHtml(Demostr, new ImageGetter() { 
				            @Override  
				            public Drawable getDrawable(String source) {  
				                // TODO Auto-generated method stub  
				                Drawable drawable = getResources().getDrawable(  
				                        SysUtil.getResourceId(source));  
				                if(drawable.getIntrinsicHeight()>80) {
				                	drawable.setBounds(0, 0, drawable.getIntrinsicWidth()*80/drawable.getIntrinsicHeight(),  
				                            80); 
				                }else {
				                	drawable.setBounds(0, 0, drawable.getIntrinsicWidth(),  
				                            drawable.getIntrinsicHeight()); 
				                }						                  
				                return drawable;  
				            }  
				        }, null); 
						style = new SpannableStringBuilder(charSequence);	
						
						indexofcolon = Demostr.indexOf(":");
						//style = new SpannableStringBuilder(Demostr);
						System.out.println("##.....###:"+Demostr);
						// v23
						ForegroundColorSpan v23111 = new ForegroundColorSpan(
								-0xff0100);
						style.setSpan(v23111, 0, indexofcolon, 33);
					} else if (cmd.equals("newUser")) {
						Demostr = msg.getString("name") + "上线了...";
						style = new SpannableStringBuilder(Demostr);
						// v23
						ForegroundColorSpan v23111 = new ForegroundColorSpan(
								-0xff0100);
						style.setSpan(v23111, 0, indexofcolon, 33);
					} else if (cmd.equals("offline")) {
						Demostr = msg.getString("data");
						style = new SpannableStringBuilder(Demostr);
						// v23
						ForegroundColorSpan v23111 = new ForegroundColorSpan(
								-0xff0100);
						style.setSpan(v23111, 0, indexofcolon, 33);
					} else {
						style = new SpannableStringBuilder("游客来打酱油了....");
						// v23
						ForegroundColorSpan v23111 = new ForegroundColorSpan(
								-0xff0100);
						style.setSpan(v23111, 0, indexofcolon, 33);
					}

					if (!style.equals(null) && !style.equals("")) {
						VideoRecordRtmpFLV.messageStrList.add(style);
						Object v241 = VideoRecordRtmpFLV.this.chatroom;

						if (VideoRecordRtmpFLV.this.chatroomTextView
								.getVisibility() != View.VISIBLE) {// 否则跳转-->:cond_f
							VideoRecordRtmpFLV.this.chatroomTextView
									.setVisibility(View.VISIBLE);
						}
						int lines = VideoRecordRtmpFLV.messageStrList.size();
						int startIndex = 0;
						if (lines > 5) {// 否则跳转-->:cond_10
							startIndex = lines - 5;
						}
						SpannableStringBuilder totalStyle = new SpannableStringBuilder(
								"");
						for (int i = startIndex; i < lines; i++) {// 否则跳转-->:cond_12
							SpannableStringBuilder curStyle = VideoRecordRtmpFLV.messageStrList
									.get(i);
							totalStyle.append(curStyle);

							if (i != (lines - 1)) {// 跳转-->:cond_13
								totalStyle.append("\n");
							}
						}

						System.out.println("chat_room:" + totalStyle);
						VideoRecordRtmpFLV.this.chatroomTextView.setText(totalStyle);
						
						if(chatTast == null || chatTast.cancel()) {
							chatTast = new MyTask(VideoRecordRtmpFLV.this);
							VideoRecordRtmpFLV.this.showChatContentTimer.schedule(chatTast, 10000);
						}						
					}
				} catch (JSONException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				break;
			default:
				break;
			}
		}
	};
	private RecordAACThread recordAACThread = null;
	private TextView recordBufferTextView = null;
	private ImageView recordIV = null;
	private TextView recordSpeedTextView = null;
	private View recordTextZone = null;
	private int recordTimeCnt = 0;
	private int recordTimeCntAtStop = 0;
	private TextView recordTimeCntTextView = null;
	private Timer recordTimeCntTimer = null;
	private int rtmpSendedSize = 0;
	private TextView sdcardSpaceTextView = null;
	private Vector<SamMediaFrame> sendingQueue = new Vector();
	private Lock sendingQueueLock = new ReentrantLock();
	private SendingThread sendingThread = null;
	private View sharePanel = null;
	private Timer showChatContentTimer;
	private int showbandwidthlowcnt = 0;
	int srcfmt = 0;
	private SurfaceHolder surfaceHolder = null;
	private int uploadProgress = 0;
	private ProgressDialog uploadProgressDialog = null;
	private TextView zoomNumTextView = null;
	private View zoomPanelView = null;
	private int zoomProgress = 0;
	private ProgressBar zoomProgressBar = null;
	private Timer zoomTimer = null;
	private int cameraPosition = 1;//0代表前置摄像头，1代表后置摄像头

	private void connectServer() {
		this.connectingProgressDialog.show();
		new Thread() {
			@Override
			public void run() {
				String str = ("rtmp://"
						+ AppContext.getServerAddress(VideoRecordRtmpFLV.this
								.getApplicationContext())
						+ ":"
						+ AppContext.getServerport(VideoRecordRtmpFLV.this
								.getApplicationContext())
						+ "/"
						+ AppContext.getServerAppName(VideoRecordRtmpFLV.this
								.getApplicationContext()) + "/" + AppContext
						.getPartyModel(VideoRecordRtmpFLV.this).urlToken);

				SysUtil.samlog("RTMP_PUBLISH_URL = " + str + "width:"
						+ VideoRecordRtmpFLV.this.DES_FRAME_WIDTH + " height:"
						+ VideoRecordRtmpFLV.this.DES_FRAME_HEIGHT + "  bps:"
						+ VideoRecordRtmpFLV.this.bps);
				boolean bool = RTMPStreamMuxer.connectRTMP(str,
						VideoRecordRtmpFLV.this.DES_FRAME_WIDTH,
						VideoRecordRtmpFLV.this.DES_FRAME_HEIGHT,
						VideoRecordRtmpFLV.this.bps);
				if (bool) {
					SysUtil.samlog("连接 success = " + bool);
					VideoRecordRtmpFLV.this.msgHandler.obtainMessage(
							VideoRecordRtmpFLV.MESSAGE_RECONNECT_OK)
							.sendToTarget();
				} else {
					SysUtil.samlog("连接 failed = " + bool);
					VideoRecordRtmpFLV.this.msgHandler.obtainMessage(
							VideoRecordRtmpFLV.MESSAGE_SOCKET_BREAKUP)
							.sendToTarget();
					return;
				}
			}
		}.start();
	}

	private void enqueueFrame(SamMediaFrame paramSamMediaFrame) {
		this.sendingQueueLock.lock();
		this.sendingQueue.add(paramSamMediaFrame);
		this.sendingQueueLock.unlock();
	}

	@SuppressLint("NewApi")
	private void openCamera(SurfaceHolder paramSurfaceHolder) {
		VideoRecordRtmpFLV.this.releaseCamera();
		try {
			int cameraCount = 0;
            CameraInfo cameraInfo = new CameraInfo();
            cameraCount = Camera.getNumberOfCameras();//得到摄像头的个数

            for(int i = 0; i < cameraCount;i++) {
                Camera.getCameraInfo(i, cameraInfo);//得到每一个摄像头的信息
                
                System.out.println("cameraInfo########:"+cameraInfo.facing);
                if(cameraPosition == 1) {
                    //现在是后置，变更为前置
                	System.out.println("Camera.CameraInfo.CAMERA_FACING_FRONT########:"+Camera.CameraInfo.CAMERA_FACING_FRONT);
                    if(cameraInfo.facing  == Camera.CameraInfo.CAMERA_FACING_FRONT) {//代表摄像头的方位，CAMERA_FACING_FRONT前置      CAMERA_FACING_BACK后置  
                    	//this.camera.stopPreview();//停掉原来摄像头的预览
                    	//this.camera.release();//释放资源
                    	//this.camera = null;//取消原来摄像头
                    	this.camera = Camera.open(Camera.CameraInfo.CAMERA_FACING_BACK);//打开当前选中的摄像头
                        /*
                        try {
                            camera.setPreviewDisplay(holder);//通过surfaceview显示取景画面
                        } catch (IOException e) {
                            // TODO Auto-generated catch block
                            e.printStackTrace();
                        }
                        camera.startPreview();//开始预览
                        */
                        cameraPosition = 0;
                        break;
                    }
                } else {
                    //现在是前置， 变更为后置
                	System.out.println("Camera.CameraInfo.CAMERA_FACING_FRONT########:"+Camera.CameraInfo.CAMERA_FACING_BACK);
                    if(cameraInfo.facing  == Camera.CameraInfo.CAMERA_FACING_BACK) {//代表摄像头的方位，CAMERA_FACING_FRONT前置      CAMERA_FACING_BACK后置  
                    	//this.camera.stopPreview();//停掉原来摄像头的预览
                    	//this.camera.release();//释放资源
                    	//this.camera = null;//取消原来摄像头
                    	this.camera = Camera.open(Camera.CameraInfo.CAMERA_FACING_FRONT);//打开当前选中的摄像头
                        /*
                        try {
                            camera.setPreviewDisplay(holder);//通过surfaceview显示取景画面
                        } catch (IOException e) {
                            // TODO Auto-generated catch block
                            e.printStackTrace();
                        }
                        camera.startPreview();//开始预览
                        */
                        cameraPosition = 1;
                        break;
                    }
                }

            }
            
			//this.camera = Camera.open();
			
			// .line 873 :cond_0 :goto_0
			if (this.camera == null) {
				SysUtil.samlog("camera == null");
				return;// .line 960 :goto_1
			}
		} catch (Exception localException) {
			this.camera = null;
			localException.printStackTrace();
			
			if (!AppContext.isDebugMode)
				localException.printStackTrace();
		}

		this.fps = 15;// v1 .line 875
		this.bps = CameraProvider.getUserSetVideoBps(this);// .line 883
		SysUtil.samlog("时间戳fps = " + this.fps);
		// v15
		int userquality = CameraProvider.getUserFrameSizeSet(this);
		SysUtil.samlog("userquality = " + userquality);
		// .line 889

		if ((VideoRecordRtmpFLV.this.camera == null) || (userquality < 0)) {
			this.msgHandler.obtainMessage(MESSAGE_SHOW_RAW_MESSAGE, "无法打开摄像头")
					.sendToTarget();
			return;
		}

		// .line 894 :cond_3
		switch (userquality) {
		case 0:
			this.DES_FRAME_WIDTH = 176;
			this.DES_FRAME_HEIGHT = 144;
			break;
		case 5:
			this.DES_FRAME_WIDTH = 352;
			this.DES_FRAME_HEIGHT = 198;
			break;
		case 1:
			this.DES_FRAME_WIDTH = 320;
			this.DES_FRAME_HEIGHT = 240;
			break;
		case 2:
			this.DES_FRAME_WIDTH = 640;
			this.DES_FRAME_HEIGHT = 480;
			break;
		case 3:
			this.DES_FRAME_WIDTH = 1280;
			this.DES_FRAME_HEIGHT = 720;
			break;
		case 4:
			this.DES_FRAME_WIDTH = 480;
			this.DES_FRAME_HEIGHT = 270;
			break;
		default:

		}

		// .line 925 :goto_2
		this.camParams = this.camera.getParameters();
		this.camParams.setWhiteBalance("auto");
		this.srcfmt = this.camParams.getPreviewFormat();
		this.maxCameraRoom = this.camParams.getMaxZoom();
		// .line 931
		SysUtil.samlog("maxCameraRoom = " + this.maxCameraRoom);
		// .line 932
		// if-eqz v1, :cond_4
		if (CameraProvider.checkIfContainFrameSize(
				this.camParams.getSupportedPreviewSizes(),
				this.DES_FRAME_WIDTH, this.DES_FRAME_HEIGHT)) {// 否则跳转 cond_4

			this.SRC_FRAME_WIDTH = this.DES_FRAME_WIDTH;
			this.SRC_FRAME_HEIGHT = this.DES_FRAME_HEIGHT;
		} else {
			this.SRC_FRAME_WIDTH = 640;
			this.SRC_FRAME_HEIGHT = 480;
			// goto_3
		}
		// :cond_4

		// :goto_3 .line 940
		SysUtil.samlog("SRC_FRAME_WIDTH = " + this.SRC_FRAME_WIDTH
				+ ",SRC_FRAME_HEIGHT = " + this.SRC_FRAME_HEIGHT
				+ ",DES_FRAME_WIDTH = " + this.DES_FRAME_WIDTH
				+ ",DES_FRAME_HEIGHT = " + this.DES_FRAME_HEIGHT);

		this.camParams.setPreviewSize(this.SRC_FRAME_WIDTH,
				this.SRC_FRAME_HEIGHT);
		// .line 942
		this.camera.setParameters(this.camParams);
		// .line 943
		this.camera.setZoomChangeListener(this);

		// .line 945
		try {
			this.camera.setPreviewDisplay(paramSurfaceHolder);
		} catch (IOException e) {
			e.printStackTrace();
		}

		// .line 950 :goto_4
		// v10
		int FRAME_BUFFER_Q_SIZE = 3;
		// v12
		byte[][] frameBuffer = new byte[FRAME_BUFFER_Q_SIZE][];
		int i = 0;
		// :goto_5
		while (true) {
			if (i >= FRAME_BUFFER_Q_SIZE) {// 跳转 :cond_5
				this.camera.setPreviewCallback(VideoRecordRtmpFLV.this);
				this.camera.startPreview();
				// .line 959
				RTMPStreamMuxer.initContext(this.srcfmt, this.SRC_FRAME_WIDTH,
						this.SRC_FRAME_HEIGHT, this.DES_FRAME_WIDTH,
						this.DES_FRAME_HEIGHT, this.fps, this.bps, 8000, 1);
				return;
				// goto/16 :goto_1
			} else {
				// //:cond_5
				frameBuffer[i] = new byte[2 * (this.SRC_FRAME_WIDTH * this.SRC_FRAME_HEIGHT)];
				this.camera.addCallbackBuffer(frameBuffer[i]);
				i++;
			}
		}
	}

	// 是否摄像头
	private void releaseCamera() {
		Camera v1 = VideoRecordRtmpFLV.this.camera;
		if (v1 != null) {
			SysUtil.samlog("will release camera!!!!!!!!!!");
			v1.setPreviewCallback(null);

			v1.stopPreview();
			v1.release();

			VideoRecordRtmpFLV.this.camera = null;
			RTMPStreamMuxer.releaseContext();
		}
	}

	private void shareToEmail() {
		Intent localIntent = new Intent("android.intent.action.SEND");
		localIntent.putExtra(
				"android.intent.extra.TEXT",
				"《" + AppContext.getPartyModel(this).title
						+ "》我的直播，我又任性啦~~ 赶紧来看看吧: "
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

		if (!is_find) {
			new AlertDialog.Builder(this).setTitle("提示").setMessage("没有找到邮件应用")
					.setPositiveButton("确定", null).create().show();
			return;
		}
	}

	private void shareToSinaWeibo() {
		Intent localIntent = new Intent("android.intent.action.SEND");
		localIntent.putExtra(
				"android.intent.extra.TEXT",
				"《" + AppContext.getPartyModel(this).title
						+ "》我的直播，我又任性啦~~ 赶紧来看看吧: "
						+ AppContext.getPartyModel(this).shareMessage);
		localIntent.setType("text/plain");
		List localList = getPackageManager().queryIntentActivities(localIntent,
				65536);
		Iterator localIterator = localList.iterator();
		boolean is_find = false;
		while (localIterator.hasNext()) {
			ResolveInfo localResolveInfo = (ResolveInfo) localIterator.next();
			if (localResolveInfo != null) {

				SysUtil.samlog("match activity:");
				SysUtil.samlog(localResolveInfo.activityInfo.packageName);
				SysUtil.samlog(localResolveInfo.activityInfo.name);

				if (localResolveInfo.activityInfo.packageName
						.contains("com.sina.weibo")) {
					is_find = true;
					localIntent.setClassName(
							localResolveInfo.activityInfo.packageName,
							localResolveInfo.activityInfo.name);
					startActivity(localIntent);
					return;
				}
			}
		}

		if (!is_find) {
			new AlertDialog.Builder(this).setTitle("提示")
					.setMessage("您尚未安装新浪微博").setPositiveButton("确定", null)
					.create().show();
			return;
		}
	}

	private void shareToSms() {
		Intent localIntent = new Intent("android.intent.action.SEND");
		localIntent.putExtra(
				"android.intent.extra.TEXT",
				"《" + AppContext.getPartyModel(this).title
						+ "》我的直播，我又任性啦~~ 赶紧来看看吧："
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
						.contains("contacts")
						|| localResolveInfo.activityInfo.packageName
								.contains("mms")) {
					is_find = true;
					localIntent.setClassName(
							localResolveInfo.activityInfo.packageName,
							localResolveInfo.activityInfo.name);
					startActivity(localIntent);
					return;
				}
			}
		}

		if (!is_find) {
			new AlertDialog.Builder(this).setTitle("提示").setMessage("没有找到短信应用")
					.setPositiveButton("确定", null).create().show();
			return;
		}
	}

	private void shareToWeixin() {
		Intent localIntent = new Intent("android.intent.action.SEND");
		localIntent.putExtra(
				"android.intent.extra.TEXT",
				"《" + AppContext.getPartyModel(this).title
						+ "》我的直播，我又任性啦~~ 赶紧来看看吧： "
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

					IWXAPI localIWXAPI = WXAPIFactory.createWXAPI(VideoRecordRtmpFLV.this,null);
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
					SendMessageToWX.Req localReq = new SendMessageToWX.Req();
					localReq.transaction = String.valueOf(System
							.currentTimeMillis());
					localReq.message = localWXMediaMessage;
					localReq.scene = 0;
					localIWXAPI.sendReq(localReq);
					finish();
					return;
				}
			}
		}

		if (!is_find) {
			new AlertDialog.Builder(this).setTitle("提示").setMessage("没有安装微信")
					.setPositiveButton("确定", null).create().show();
			return;
		}
	}

	private void shareToWeixinCircle() {
		Intent localIntent = new Intent("android.intent.action.SEND");
		localIntent.putExtra(
				"android.intent.extra.TEXT",
				"《" + AppContext.getPartyModel(this).title
						+ "》我的直播，我又任性啦~~ 赶紧来看看吧："
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
					IWXAPI localIWXAPI = WXAPIFactory.createWXAPI(VideoRecordRtmpFLV.this,null);
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
					SendMessageToWX.Req localReq = new SendMessageToWX.Req();
					localReq.transaction = String.valueOf(System
							.currentTimeMillis());
					localReq.message = localWXMediaMessage;
					localReq.scene = 1;
					localIWXAPI.sendReq(localReq);
					finish();
					break;
				}
			}
		}

		if (!is_find) {
			new AlertDialog.Builder(this).setTitle("提示").setMessage("没有安装微信")
					.setPositiveButton("确定", null).create().show();
			return;
		}
	}

	// RTMP连接成功..开始录制视频
	private void startRecord() {
		System.out.println("###startRecord...........");
		this.sendingQueueLock.lock();
		this.sendingQueue.clear();
		this.sendingQueueLock.unlock();

		if (this.encodeVideoThread != null)
			this.encodeVideoThread.flag = false;

		this.encodeVideoThread = new EncodeVideoThread(VideoRecordRtmpFLV.this);
		this.encodeVideoThread.start();

		if (this.recordAACThread != null)
			this.recordAACThread.flag = false;

		this.recordAACThread = new RecordAACThread(VideoRecordRtmpFLV.this);
		this.recordAACThread.start();

		if (this.sendingThread != null)
			this.sendingThread.flag = false;

		this.sendingThread = new SendingThread(VideoRecordRtmpFLV.this);
		this.sendingThread.start();

		this.absoluteBeginTime = System.currentTimeMillis();
		this.isRecording = true;
		SysUtil.samlog("重新打开");

		new Thread() {
			@Override
			public void run() {
				try {
					new StateThread(VideoRecordRtmpFLV.this, 1).start();

					// 连接聊天室
					if (webSocket == null) {
						webSocket = new WebSocketThread(
								VideoRecordRtmpFLV.this,
								VideoRecordRtmpFLV.this.msgHandler);
						webSocket.start();
					}

					while (true) {
						if (!VideoRecordRtmpFLV.this.isRecording)
							return;
						VideoRecordRtmpFLV.this.msgHandler.obtainMessage(
								MESSAGE_CHANGE_RECORD_IMG).sendToTarget();
						Thread.sleep(1000L);
					}
				} catch (Exception localException) {
				}
			}
		}.start();

		this.absoluteBeginTime = System.currentTimeMillis();
		this.msgHandler.obtainMessage(MESSAGE_SET_RECORD_STAT_RECORDING)
				.sendToTarget();

		this.recordTimeCntTimer = new Timer();
		this.recordTimeCntTimer.schedule(new TimerTask() {
			@Override
			public void run() {
				VideoRecordRtmpFLV.this.recordTimeCnt = (1 + VideoRecordRtmpFLV.this.recordTimeCnt);
				VideoRecordRtmpFLV.this.msgHandler.obtainMessage(
						MESSAGE_RECORD_TIME_CNT).sendToTarget();
			}
		}, 0L, 1000L);
	}

	private void stopRecord() {
		this.recordTimeCntAtStop = this.recordTimeCnt;
		this.isRecording = false;
		try {
			if (this.showChatContentTimer != null) {
				this.showChatContentTimer.cancel();
			}
			if (this.encodeVideoThread != null)
				this.encodeVideoThread.flag = false;

			this.encodeVideoThread = null;

			if (this.recordAACThread != null)
				this.recordAACThread.flag = false;

			this.recordAACThread = null;

			if (this.sendingThread != null)
				this.sendingThread.flag = false;
			this.sendingThread = null;

			new StateThread(VideoRecordRtmpFLV.this, 0).start();
			return;
		} catch (Exception localException) {
		}
	}

	@Override
	public void finish() {
		super.finish();

		this.uploadProgressDialog.dismiss();
		releaseCamera();
		if(chatTast != null) {
			chatTast.cancel();
		}
		if (this.recordTimeCntTimer != null) {
			try {
				this.recordTimeCntTimer.cancel();
				this.recordTimeCntTimer = null;
			} catch (Exception localException) {
			}
			return;
		}
	}

	@Override
	public void onAutoFocus(boolean paramBoolean, Camera paramCamera) {
		SysUtil.samlog("$$$$$$$$$onAutoFocus = " + paramBoolean);
		this.autoFocusView
				.setImageResource(R.drawable.record_autofocus_success);
		paramCamera.cancelAutoFocus();
		new Thread() {
			@Override
			public void run() {
				try {
					Thread.sleep(200L);
					VideoRecordRtmpFLV.this.msgHandler.post(new Runnable() {
						@Override
						public void run() {
							VideoRecordRtmpFLV.this.autoFocusView
									.setVisibility(4);
						}
					});
					return;
				} catch (Exception localException) {
				}
			}
		}.start();
	}

	@Override
	public void onBackPressed() {
		if (this.sharePanel.getVisibility() == 0) {
			this.sharePanel.setVisibility(8);
			return;
		}
		if (this.activityTitlePanel.getVisibility() == 0) {
			this.assureQuitChatAlertDialog.show();
			return;
		}
		if (this.isRecording) {
			this.assureQuitChatAlertDialog.show();
			return;
		}
		super.onBackPressed();
	}

	@Override
	public void onClick(View paramView) {
		if (System.currentTimeMillis() - this.lastClickTime < 200L)
			return;

		this.lastClickTime = System.currentTimeMillis();
		try {
			switch (paramView.getId()) {
			case R.id.share_panel_emailIV:// 分享
				shareToEmail();
				return;
			case R.id.share_panel_smsIV:// 分享
				shareToSms();
				return;
			case R.id.record_shareIV:// 显示分享层
				this.sharePanel.setVisibility(0);
				return;
			case R.id.share_panel_sinaIV:// 分享
				shareToSinaWeibo();
				return;
			case R.id.share_panel_weixinIV:// 分享
				shareToWeixin();
				return;
			case R.id.share_panel_circleIV:// 分享
				shareToWeixinCircle();
				return;
			case R.id.share_panel_copyIV:// 复制剪贴板
				((ClipboardManager) getSystemService("clipboard")).setText("《"
						+ AppContext.getPartyModel(this).title
						+ "》我的直播，我又任性啦~~ 赶紧来看看吧："
						+ AppContext.getPartyModel(this).shareMessage);
				Toast.makeText(this, "已复制到粘贴板", 0).show();
				return;
			case R.id.record_settingsIV:// 直播设置
				startActivity(new Intent(this, Setting.class));
				return;
			case R.id.sharepanel_doneBTN:// 关闭分享
				this.sharePanel.setVisibility(8);
				return;
			case R.id.record_reverse:// 切换前后置摄像头
				if(this.surfaceHolder != null) {					
					openCamera(this.surfaceHolder);
				}				
				return;					
			case R.id.activity_title_panel_doneBTN:
				this.getChannelProgressDialog.show();
				PartyModel localPartyModel = new PartyModel();
				localPartyModel.duration = 3600000L;
				localPartyModel.id = -1;
				localPartyModel.joinNum = 0;
				localPartyModel.passwd = "";
				localPartyModel.starttime = System.currentTimeMillis();
				localPartyModel.title = this.activityTitleEditText.getText()
						.toString();
				if (SysUtil.isStringEmpty(localPartyModel.title))
					localPartyModel.title = "我的直播";

				AppContext.savePartyModel(this, localPartyModel);

				this.createNewActivityThread = new CreateNewActivityThread(
						AppContext.getCookieStore(this),
						AppContext.getUserID(this), this.msgHandler,
						MESSAGE_CREATE_ACTIVITY_OK,
						MESSAGE_CREATE_ACTIVITY_FAIL,
						AppContext.getPartyModel(this).title,
						AppContext.getPartyModel(this).starttime,
						AppContext.getPartyModel(this).duration,
						AppContext.getPartyModel(this).joinNum, "", false);
				this.createNewActivityThread.start();
				return;

			case R.id.record_menu_record_IV:// 开始直播
				if (this.isRecording) {
					SysUtil.samlog("^^^^^^^^^^^^uploadProgressDialog.show();");
					new AlertDialog.Builder(this)
							.setTitle("提示")
							.setMessage("是否结束此次拍摄活动?")
							.setPositiveButton("结束",
									new DialogInterface.OnClickListener() {
										@Override
										public void onClick(
												DialogInterface paramDialogInterface,
												int paramInt) {

											VideoRecordRtmpFLV.this.recordIV
													.setEnabled(false);
											VideoRecordRtmpFLV.this
													.stopRecord();
											VideoRecordRtmpFLV.this.finish();

										}
									}).setNegativeButton("取消", null).show();
					return;
				} else {
					if (!AppContext.getUserAvailable(getApplicationContext())) {
						new AlertDialog.Builder(this)
								.setTitle("提示")
								.setMessage(
										AppContext
												.getUnavailableReason(getApplicationContext()))
								.setPositiveButton("确定", null).create().show();
						return;
					}
					connectServer();
				}
				return;
			}
		} catch (Exception localException) {
			localException.printStackTrace();
			return;
		}

	}

	@Override
	public void onCreate(Bundle paramBundle) {
		super.onCreate(paramBundle);
		SysUtil.samlog("@@@@@@@@@@");
		getWindow().addFlags(128);

		// 注册广播
		registerReceiver(this.batteryBroadcastReceiver, new IntentFilter(
				"android.intent.action.BATTERY_CHANGED"));

		setContentView(R.layout.recordtofile);
		this.recordTimeCntTextView = ((TextView) findViewById(R.id.record_timecnt_TV));
		this.recordSpeedTextView = ((TextView) findViewById(R.id.record_show_bandwidth_TV));

		this.recordBufferTextView = ((TextView) findViewById(R.id.record_show_buffer_TV));
		this.recordBufferTextView.setVisibility(8);

		this.recordTextZone = findViewById(R.id.record_text_zone);
		this.chatroomTextView = ((TextView) findViewById(R.id.record_chat_messageTV));
		this.autoFocusView = ((ImageView) findViewById(R.id.record_autofocus));
		this.showChatContentTimer = new Timer(true);

		SurfaceView localSurfaceView = (SurfaceView) findViewById(R.id.record_surface);
		SurfaceHolder localSurfaceHolder = localSurfaceView.getHolder();
		localSurfaceHolder.addCallback(this);
		localSurfaceHolder.setType(3);
		localSurfaceView.setOnTouchListener(this);

		findViewById(R.id.record_shareIV).setOnClickListener(this);
		findViewById(R.id.record_settingsIV).setOnClickListener(this);
		findViewById(R.id.sharepanel_doneBTN).setOnClickListener(this);

		this.zoomProgressBar = ((ProgressBar) findViewById(R.id.record_zoom_progress));
		this.zoomPanelView = findViewById(R.id.record_seek_panel);
		this.zoomNumTextView = ((TextView) findViewById(R.id.record_zoom_numTV));

		findViewById(R.id.record_zoom_t).setOnTouchListener(this);
		findViewById(R.id.record_zoom_w).setOnTouchListener(this);

		this.autofocusAnimation = AnimationUtils.loadAnimation(this,
				R.anim.focusanim);
		this.batteryClipDrawable = ((ClipDrawable) ((ImageView) findViewById(R.id.battery_clipIV))
				.getDrawable());
		this.sdcardSpaceTextView = ((TextView) findViewById(R.id.record_sdcardspaceTV));
		this.recordIV = ((ImageView) findViewById(R.id.record_menu_record_IV));
		this.recordIV.setOnClickListener(this);

		this.assureQuitChatAlertDialog = new AlertDialog.Builder(this)
				.setTitle("").setMessage("您确定要开始直播?")
				.setPositiveButton("确定", new DialogInterface.OnClickListener() {
					@Override
					public void onClick(DialogInterface paramDialogInterface,
							int paramInt) {
						VideoRecordRtmpFLV.this.stopRecord();
						VideoRecordRtmpFLV.this.releaseCamera();
						VideoRecordRtmpFLV.this.finish();
					}
				}).setNegativeButton("取消", null).create();
		this.uploadProgressDialog = new ProgressDialog(this);
		this.uploadProgressDialog.setProgressStyle(1);
		this.uploadProgressDialog.setMessage("正在上传剩余部分视频");
		this.uploadProgressDialog.setIndeterminate(false);
		this.uploadProgressDialog.setMax(100);
		this.uploadProgressDialog.setProgress(0);
		this.uploadProgressDialog
				.setOnDismissListener(new DialogInterface.OnDismissListener() {
					@Override
					public void onDismiss(DialogInterface paramDialogInterface) {
						SysUtil.samlog("onDismiss$$$$$$$$$$$$$$$$$$$$$$$");
						VideoRecordRtmpFLV.this.finish();
					}
				});
		this.connectingProgressDialog = new ProgressDialog(this);
		this.connectingProgressDialog.setMessage("正在连接服务器");
		this.connectingProgressDialog.setTitle("请稍等...");

		this.sharePanel = findViewById(R.id.share_panel);
		findViewById(R.id.share_panel_circleIV).setOnClickListener(this);
		findViewById(R.id.share_panel_emailIV).setOnClickListener(this);
		findViewById(R.id.share_panel_sinaIV).setOnClickListener(this);
		findViewById(R.id.share_panel_smsIV).setOnClickListener(this);
		findViewById(R.id.share_panel_weixinIV).setOnClickListener(this);

		findViewById(R.id.record_settingsIV).setOnClickListener(this);
		findViewById(R.id.record_menu_record_IV).setOnClickListener(this);
		findViewById(R.id.share_panel_copyIV).setOnClickListener(this);
		findViewById(R.id.record_reverse).setOnClickListener(this);

		this.activityTitlePanel = findViewById(R.id.activity_title_panel);
		this.activityTitleEditText = ((EditText) findViewById(R.id.record_activity_titleET));

		findViewById(R.id.activity_title_panel_doneBTN)
				.setOnClickListener(this);
		findViewById(R.id.activity_title_panel_mask).setOnClickListener(this);

		// 新建活动
		if (getIntent().getBooleanExtra("live", false)) {
			this.activityTitlePanel.setVisibility(0);
		}

		this.getChannelProgressDialog = new ProgressDialog(this);
		this.getChannelProgressDialog.setTitle("请稍等...");
		this.getChannelProgressDialog.setMessage("正在获取分享地址");
		this.getChannelProgressDialog
				.setOnDismissListener(new DialogInterface.OnDismissListener() {
					@Override
					public void onDismiss(DialogInterface paramDialogInterface) {
						if (VideoRecordRtmpFLV.this.createNewActivityThread != null)
							VideoRecordRtmpFLV.this.createNewActivityThread.flag = false;
					}
				});
		boolean bool = getSharedPreferences("pref", 0).getBoolean("bluetooth",
				false);

		SysUtil.samlog("use bluetooth = " + bool);
		if (bool) {
			try {
				BluetoothAdapter localBluetoothAdapter = BluetoothAdapter
						.getDefaultAdapter();
				if (localBluetoothAdapter == null)
					return;
				Set localSet = localBluetoothAdapter.getBondedDevices();
				if (localSet != null) {
					Iterator localIterator = localSet.iterator();
					while (true) {
						if (!localIterator.hasNext())
							return;
						BluetoothDevice localBluetoothDevice = (BluetoothDevice) localIterator
								.next();
						SysUtil.samlog("###配对的蓝牙设备："
								+ localBluetoothDevice.getName());
						SysUtil.samlog("use bluetooth!!!!!!!!!!!!");
						AudioManager localAudioManager2 = (AudioManager) getSystemService("audio");
						localAudioManager2.startBluetoothSco();
						localAudioManager2.setBluetoothScoOn(true);
					}
				}
			} catch (Exception localException2) {
				SysUtil.samlog("##############");
				localException2.printStackTrace();
				return;
			}
			Toast.makeText(this, "没有找到蓝牙设备", 0).show();
			return;
		} else {
			SysUtil.samlog("不需要蓝牙设备");
			try {
				AudioManager localAudioManager1 = (AudioManager) getSystemService("audio");
				localAudioManager1.setBluetoothScoOn(false);
				localAudioManager1.stopBluetoothSco();
				return;
			} catch (Exception localException1) {
				localException1.printStackTrace();
			}
		}
	}

	@Override
	protected void onDestroy() {
		super.onDestroy();
		unregisterReceiver(this.batteryBroadcastReceiver);
	}

	@Override
	protected void onPause() {
		super.onPause();
		stopRecord();
		releaseCamera();
		this.msgHandler.obtainMessage(MESSAGE_SET_RECORD_STAT_DISRECORDING)
				.sendToTarget();
	}

	@Override
	public void onPreviewFrame(byte[] paramArrayOfByte, Camera paramCamera) {
		try {
			if ((this.isRecording) && (this.encodeVideoThread != null)
					&& (this.encodeVideoThread.canEnqueueMoreFrame())) {
				if ((this.fps == 15)
						&& (System.currentTimeMillis()
								- this.lastPreviewFrameComingTime < 1000 / (8 + this.fps))) {
					this.debug_drop_count = (1 + this.debug_drop_count);
					SysUtil.samlog("#####,drop frame because frame interval too small,drop count = "
							+ this.debug_drop_count);
					paramCamera.addCallbackBuffer(paramArrayOfByte);
					return;
				}
				this.lastPreviewFrameComingTime = System.currentTimeMillis();
				SamMediaFrame localSamMediaFrame = new SamMediaFrame();
				localSamMediaFrame.type = 1;
				localSamMediaFrame.timestamp = (System.currentTimeMillis() - this.absoluteBeginTime);
				localSamMediaFrame.data = paramArrayOfByte;
				this.encodeVideoThread.addRawFrame(localSamMediaFrame);
				return;
			}
			paramCamera.addCallbackBuffer(paramArrayOfByte);
			return;
		} catch (Exception localException) {
			localException.printStackTrace();
		}
	}

	@Override
	protected void onResume() {
		super.onResume();
	}

	@Override
	public boolean onTouch(View paramView, MotionEvent paramMotionEvent) {
		switch (paramView.getId()) {
		case R.id.record_surface:
			SysUtil.samlog("$$$$$$ X = " + paramMotionEvent.getX() + ",Y = "
					+ paramMotionEvent.getY() + ",Action = "
					+ paramMotionEvent.getAction());

			if ((paramMotionEvent.getAction() != 0)
					|| (paramMotionEvent.getX() > 900.0F))

				this.autoFocusView.setVisibility(0);
			this.autoFocusView
					.setImageResource(R.drawable.record_autofocus_off);
			if (this.camera != null) {
				try {
					this.camParams = this.camera.getParameters();
					this.camera.setParameters(this.camParams);
					this.camera.autoFocus(this);
				} catch (Exception localException3) {
				}
			}
			return false;
		case R.id.record_zoom_w:
		case R.id.record_zoom_t:
			if (paramMotionEvent.getAction() == MotionEvent.ACTION_DOWN) {
				this.zoomPanelView.setVisibility(0);
				if (this.zoomTimer != null) {
					this.zoomTimer.cancel();
					this.zoomTimer.purge();
				}
				try {

					this.zoomTimer = new Timer();
					this.zoomTimer.schedule(new ZoomTask(paramView.getId()),
							0L, 160L);
				} catch (Exception localException2) {
				}
				return true;
			}

			if (paramMotionEvent.getAction() == MotionEvent.ACTION_UP) {
				if (this.zoomTimer != null) {
					this.zoomTimer.cancel();
					this.zoomTimer.purge();
				}
				try {
					this.zoomTimer = new Timer();
					this.zoomTimer.schedule(new TimerTask() {
						@Override
						public void run() {
							VideoRecordRtmpFLV.this.msgHandler.obtainMessage(
									MESSAGE_SET_ZOOM_INVISIABLE).sendToTarget();
						}
					}, 200L);
				} catch (Exception localException1) {

				}
				return false;
			}
		default:
		}
		return false;
	}

	@Override
	public void onZoomChange(int paramInt, boolean paramBoolean,
			Camera paramCamera) {
		SysUtil.samlog("onZoomChange,stopped = " + paramBoolean);
	}

	// 启用摄像头
	@Override
	public void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1,
			int paramInt2, int paramInt3) {
		this.surfaceHolder = paramSurfaceHolder;
		System.out.println("#####:surfaceChanged.......................");
		openCamera(paramSurfaceHolder);
	}

	@Override
	public void surfaceCreated(SurfaceHolder paramSurfaceHolder) {
		this.surfaceHolder = paramSurfaceHolder;
	}

	@Override
	public void surfaceDestroyed(SurfaceHolder paramSurfaceHolder) {
		this.surfaceHolder = paramSurfaceHolder;
	}

	private class EncodeVideoThread extends Thread {
		public volatile boolean flag = true;
		public Vector<SamMediaFrame> frames = new Vector();
		private Lock lock = new ReentrantLock();

		private EncodeVideoThread(Context context) {
		}

		public void addRawFrame(SamMediaFrame paramSamMediaFrame) {
			this.lock.lock();
			this.frames.add(paramSamMediaFrame);
			this.lock.unlock();
		}

		public boolean canEnqueueMoreFrame() {
			return this.frames.size() == 0;
		}

		@Override
		public void run() {
			super.run();

			while (true) {
				if (!this.flag)
					return;

				if (this.frames.size() <= 0) {
					try {
						Thread.sleep(30L);
						continue;
					} catch (Exception localException) {
						localException.printStackTrace();
					}
				}

				this.lock.lock();
				SamMediaFrame localSamMediaFrame = this.frames.remove(0);
				this.lock.unlock();
				byte[] arrayOfByte = RTMPStreamMuxer.encodeVideoFrame(
						localSamMediaFrame.data,
						localSamMediaFrame.data.length,
						localSamMediaFrame.timestamp);
				if (VideoRecordRtmpFLV.this.camera != null) {
					VideoRecordRtmpFLV.this.camera
							.addCallbackBuffer(localSamMediaFrame.data);

					localSamMediaFrame.data = arrayOfByte;

					SysUtil.samlog("enqueue a video frame,length = "
							+ localSamMediaFrame.data.length
							+ "timestamp = "
							+ SysUtil
									.getRealTimeStamp(localSamMediaFrame.timestamp));

					VideoRecordRtmpFLV.this.enqueueFrame(localSamMediaFrame);
				} else {
					this.flag = false;
				}
			}
		}
	}

	class MyTask extends TimerTask {
		Handler handler = new Handler();

		MyTask(Context context) {
		}

		@Override
		public void run() {
			this.handler.post(new Runnable() {
				@Override
				public void run() {
					while (true) {
						int i = 0, k = 0;
						SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder("");

						synchronized (VideoRecordRtmpFLV.messageStrList) {
							VideoRecordRtmpFLV.messageStrList.remove(0);

							synchronized (VideoRecordRtmpFLV.this.chatroomTextView) {
								i = VideoRecordRtmpFLV.messageStrList.size();
								if (i <= 0) {
									VideoRecordRtmpFLV.this.chatroomTextView
											.setVisibility(4);
									return;
								} else {
									int j = 0;
									if (i <= 5)
										continue;
									j = i - 5;
									k = j;
									localSpannableStringBuilder
											.append(VideoRecordRtmpFLV.messageStrList
													.get(k));
									if (k != i - 1) {
										localSpannableStringBuilder
												.append("\n");
										k++;
									}
								}

							}

						}

						if (k >= i)
							VideoRecordRtmpFLV.this.chatroomTextView
									.setText(localSpannableStringBuilder);

					}
				}
			});
			cancel();
		}
	}

	private class RecordAACThread extends Thread {
		private volatile int audioFrameCount = 0;
		private long audioTimeStamp = 0L;
		public volatile boolean flag = false;
		private long totalAudioLength = 0L;

		private RecordAACThread(Context context) {
		}

		@Override
		public void run() {
			super.run();
			this.flag = true;
			try {
				SysUtil.samlog("###时间戳RecordAACThread wait for frst frame");

				while (true) {
					if ((!this.flag)
							|| (VideoRecordRtmpFLV.this.absoluteBeginTime != 0L)) {
						if (this.flag)
							break;
						return;
					}
					Thread.sleep(10L);
				}
			} catch (Exception localException) {
				localException.printStackTrace();
				return;
			}

			SysUtil.samlog("###时间戳RecordAACThread start");
			this.audioTimeStamp = (System.currentTimeMillis() - VideoRecordRtmpFLV.this.absoluteBeginTime);
			Process.setThreadPriority(-19);
			int i = AudioRecord.getMinBufferSize(8000, 16, 2);
			AudioRecord localAudioRecord = new AudioRecord(1, 8000, 16, 2,
					i * 4);
			SysUtil.samlog("audioBufferSize = " + i);
			localAudioRecord.startRecording();
			byte[] arrayOfByte1 = new byte[2048];

			while (true) {
				if (!this.flag) {
					localAudioRecord.stop();
					localAudioRecord.release();
					SysUtil.samlog("stop and release audio");
					return;
				}
				SysUtil.samlog("audio read start");
				int j = localAudioRecord.read(arrayOfByte1, 0,
						arrayOfByte1.length);
				SysUtil.samlog("audio read end ,length = " + j);
				this.audioTimeStamp = (128L + this.audioTimeStamp);
				byte[] arrayOfByte2 = RTMPStreamMuxer.encodeAudioFrame(
						arrayOfByte1, arrayOfByte1.length, this.audioTimeStamp);
				SysUtil.samlog("enqueue a audio frame,timestamp = "
						+ SysUtil.getRealTimeStamp(this.audioTimeStamp));
				SamMediaFrame localSamMediaFrame = new SamMediaFrame();
				localSamMediaFrame.type = 0;
				localSamMediaFrame.data = arrayOfByte2;
				localSamMediaFrame.timestamp = this.audioTimeStamp;
				VideoRecordRtmpFLV.this.enqueueFrame(localSamMediaFrame);
				this.audioFrameCount = (1 + this.audioFrameCount);

				if ((this.audioFrameCount <= 0)
						|| (this.audioFrameCount % 2400 != 0))
					continue;

				SysUtil.samlog("!!!!!!,时隔五分钟，调整:" + this.audioTimeStamp);
				this.audioTimeStamp = (System.currentTimeMillis() - VideoRecordRtmpFLV.this.absoluteBeginTime);
				SysUtil.samlog("!!!!!!,时隔五分钟，调整:" + this.audioTimeStamp);
			}
		}
	}

	private class SendingThread extends Thread {
		public volatile boolean flag = true;

		private SendingThread(Context context) {
		}

		@Override
		public void run() {
			super.run();
			this.flag = true;
			try {
				int c = 100000;
				while (true) {
					boolean bool1 = this.flag;
					if (!bool1) {
						RTMPStreamMuxer.disConnectRTMP();
						return;
					}
					if (VideoRecordRtmpFLV.this.sendingQueue.size() != 0) {
						VideoRecordRtmpFLV.this.sendingQueueLock.lock();
						SamMediaFrame localSamMediaFrame = VideoRecordRtmpFLV.this.sendingQueue
								.remove(0);
						VideoRecordRtmpFLV.this.sendingQueueLock.unlock();
						boolean bool2 = false;
						if (localSamMediaFrame.type == 0) {
							bool2 = RTMPStreamMuxer.doWriteAudio(
									localSamMediaFrame.data,
									localSamMediaFrame.data.length);
							SysUtil.samlog("send a audio,length = "
									+ localSamMediaFrame.data.length);
						} else {
							bool2 = RTMPStreamMuxer.doWriteVideo(
									localSamMediaFrame.data,
									localSamMediaFrame.data.length);
							SysUtil.samlog("send a video,length = "
									+ localSamMediaFrame.data.length);
						}

						if (!bool2) {
							SysUtil.samlog("发送失败");

							VideoRecordRtmpFLV.this.stopRecord();
							VideoRecordRtmpFLV.this.msgHandler.obtainMessage(
									MESSAGE_RTMP_SEND_FAIL).sendToTarget();

							this.flag = false;
						} else {
							VideoRecordRtmpFLV localVideoRecordRtmpFLV = VideoRecordRtmpFLV.this;
							localVideoRecordRtmpFLV.rtmpSendedSize += localSamMediaFrame.data.length;
							SysUtil.samlog("total send size = "
									+ VideoRecordRtmpFLV.this.rtmpSendedSize);
						}
					} else {
						Thread.sleep(20L);
						if (c <= 0) {
							this.flag = false;
						} else {
							c--;
						}
					}
				}
			} catch (Exception localException) {
				localException.printStackTrace();
			}
		}
	}

	// 改变活动状态线程
	private class StateThread extends Thread {
		private volatile boolean flag = false;
		private Context context = null;
		private int state = 0;

		private StateThread(Context context, int state) {
			this.context = context;
			this.state = state;
		}

		@Override
		public void run() {
			super.run();
			try {
				String str = AppContext.inetAddr + AppContext.upActivityState
						+ "rid="
						+ AppContext.getPartyModel(VideoRecordRtmpFLV.this).id
						+ "&state=" + this.state;
				SysUtil.samlog(str);
				HttpPost localHttpPost = new HttpPost(str);
				DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient();
				localDefaultHttpClient.setCookieStore(AppContext
						.getCookieStore(VideoRecordRtmpFLV.this));
				HttpResponse localHttpResponse = localDefaultHttpClient
						.execute(localHttpPost);

				Integer localInteger = Integer.valueOf(localHttpResponse
						.getStatusLine().getStatusCode());

				String str1 = " http service 500...";
				if (localInteger == 200) {
					str1 = EntityUtils.toString(localHttpResponse.getEntity());
					SysUtil.samlog(str);

					JSONObject state = new JSONObject(str1);
					if (this.state == -1 && !state.getBoolean("result")) {
						VideoRecordRtmpFLV.this.activityTitlePanel
								.setVisibility(0);
					}
				} else {
					SysUtil.samlog(str);
				}
			} catch (Exception localException) {
				localException.printStackTrace();
			}
		}
	}

	// 新增视频列表线程
	private class addVideoThread extends Thread {
		private volatile boolean flag = false;
		private Context context = null;

		private addVideoThread(Context context) {
			this.context = context;
		}

		@Override
		public void run() {
			super.run();
			try {
				String str = AppContext.inetAddr
						+ AppContext.addVideos
						+ "rid="
						+ AppContext.getPartyModel(VideoRecordRtmpFLV.this).id
						+ "&stream="
						+ AppContext.getPartyModel(VideoRecordRtmpFLV.this).urlToken;
				SysUtil.samlog("addVideoThread:" + str);
				HttpPost localHttpPost = new HttpPost(str);
				DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient();
				localDefaultHttpClient.setCookieStore(AppContext
						.getCookieStore(VideoRecordRtmpFLV.this));
				HttpResponse localHttpResponse = localDefaultHttpClient
						.execute(localHttpPost);

				Integer localInteger = Integer.valueOf(localHttpResponse
						.getStatusLine().getStatusCode());

				String str1 = " http service 500...";
				if (localInteger == 200) {
					str1 = EntityUtils.toString(localHttpResponse.getEntity());
					SysUtil.samlog(str1);

					JSONObject state = new JSONObject(str1);
					if (state.getBoolean("result")) {
						// 连接RTMP服务器成功，并且新建视频组...开始录制
						VideoRecordRtmpFLV.this.startRecord();
					} else {
						// 创建失败
						VideoRecordRtmpFLV.this.msgHandler.obtainMessage(
								MESSAGE_SHOW_RAW_MESSAGE, "添加视频组失败...")
								.sendToTarget();
					}
				} else {
					SysUtil.samlog(str1);
					VideoRecordRtmpFLV.this.msgHandler.obtainMessage(
							MESSAGE_SHOW_RAW_MESSAGE, "添加视频组失败...")
							.sendToTarget();
				}
			} catch (Exception localException) {
				localException.printStackTrace();
			}
		}
	}

	private class ZoomTask extends TimerTask {
		private volatile boolean flag = true;
		private int zoomid = 0;

		public ZoomTask(int arg2) {
			this.zoomid = arg2;
		}

		@Override
		public void run() {
			VideoRecordRtmpFLV.this.msgHandler.obtainMessage(
					MESSAGE_ZOOM_CAMERA, Integer.valueOf(this.zoomid))
					.sendToTarget();
		}
	}
}

/*
 * Location: D:\apk_unbuild\dex2jar-0.0.9.15\classes_dex2jar.jar Qualified Name:
 * com.rayclear.videomessage.ui.video.VideoRecordRtmpFLV JD-Core Version: 0.6.0
 */