package com.coollive.launch.ui.video;

import android.annotation.TargetApi;
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
import android.hardware.Camera;
import android.hardware.Camera.Parameters;
import android.media.AudioManager;
import android.media.AudioRecord;
import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.os.Process;
import android.content.ClipboardManager;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
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

import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;
import org.json.JSONException;
import org.json.JSONObject;

import com.coollive.launch.R;
import com.coollive.launch.camera.CameraProvider;
import com.coollive.launch.common.AppContext;
import com.coollive.launch.common.CreateNewActivityThread;
import com.coollive.launch.common.SDcardUtil;
import com.coollive.launch.common.SamSeek;
import com.coollive.launch.common.SysUtil;
import com.coollive.launch.model.PartyModel;
import com.coollive.launch.model.SamMediaFrame;
import com.coollive.launch.settings.Setting;
import com.rayclear.jni.RTMPH264SegmentMuxer;
import com.rayclear.jni.SWScaleUtil;
import com.tencent.mm.sdk.openapi.IWXAPI;
import com.tencent.mm.sdk.openapi.SendMessageToWX;
import com.tencent.mm.sdk.openapi.WXAPIFactory;
import com.tencent.mm.sdk.openapi.WXMediaMessage;
import com.tencent.mm.sdk.openapi.WXWebpageObject;

@TargetApi(16)
public class VideoRecordRtmpH264 extends Activity implements
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

	private static List<SpannableStringBuilder> messageStrList = new ArrayList();
	public int DES_FRAME_HEIGHT = 480;
	public int DES_FRAME_WIDTH = 640;
	int DROP_GAP = 2;
	public int SRC_FRAME_HEIGHT = 480;
	public int SRC_FRAME_WIDTH = 640;
	private volatile long absoluteBeginTime = 0L;
	private EditText activityTitleEditText = null;
	private View activityTitlePanel = null;
	private AlertDialog assureQuitChatAlertDialog = null;
	private ImageView autoFocusView = null;
	private Animation autofocusAnimation = null;
	private byte[] avcc = null;

	private BroadcastReceiver batteryBroadcastReceiver = new BroadcastReceiver() {
		@Override
		public void onReceive(Context paramContext, Intent paramIntent) {
			int i = paramIntent.getIntExtra("level", 0);
			int j = paramIntent.getIntExtra("scale", 100);
			int k = i * 100 / j;
			SysUtil.samlog("电池电量 = " + k);

			VideoRecordRtmpH264.this.batteryClipDrawable.setLevel(k * 100);
		}
	};

	private ClipDrawable batteryClipDrawable = null;
	int bps = 400000;
	private Camera.Parameters camParams;
	private Camera camera = null;
	private Object chatroom = new Object();
	private TextView chatroomTextView;
	private int comingFrameCount = 0;
	private FileOutputStream completeFileOutputStream = null;
	private File completeFramesFile = null;
	private Lock completeLock = new ReentrantLock();
	private ProgressDialog connectingProgressDialog = null;
	private CreateNewActivityThread createNewActivityThread = null;
	private int debug_drop_count = 0;
	private int desMediaCodecFmt = 21;
	private EncodeVideoThread encodeVideoThread = null;
	int fps = 15;
	private ProgressDialog getChannelProgressDialog = null;
	private volatile boolean isFirstIDRGetOver = false;
	private volatile boolean isNeedFmtScale = false;
	private volatile boolean isRecording = false;
	private long lastClickTime = 0L;
	private long lastPreviewFrameComingTime = 0L;
	private int lastSendedOffset = 0;
	private long lastZoomChangeTimeStamp = 0L;
	private int maxCameraRoom = 0;
	private MediaCodec mediaCodec = null;

	private final Handler msgHandler = new Handler() {
		// ERROR //
		@Override
		public void handleMessage(Message paramMessage) {
			switch (paramMessage.what) {
			case MESSAGE_SOCKET_BREAKUP:// pswitch_1
				new AlertDialog.Builder(VideoRecordRtmpH264.this)
						.setTitle("错误").setMessage("连接已断开")
						.setPositiveButton("确定", null).create().show();
				return;
			case MESSAGE_CREATE_ACTIVITY_FAIL:// pswitch_2
				VideoRecordRtmpH264.this.getChannelProgressDialog.dismiss();
				Toast.makeText(VideoRecordRtmpH264.this, "创建活动失败", 0).show();
				break;
			case MESSAGE_CREATE_ACTIVITY_OK:// pswitch_3
				VideoRecordRtmpH264.this.getChannelProgressDialog.dismiss();

				Object obj = paramMessage.obj;
				if (obj != null) {
					JSONObject v11 = new JSONObject();
					PartyModel localPartyModel = new PartyModel();
					try {
						JSONObject v14 = new JSONObject(
								(String) paramMessage.obj);

						JSONObject info = v14.getJSONObject("data");
						localPartyModel.shareMessage = info
								.getString("message");
						localPartyModel.urlToken = info.getString("token");
						localPartyModel.id = info.getInt("rid");

						AppContext.savePartyModel(VideoRecordRtmpH264.this,
								localPartyModel);

					} catch (JSONException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}

				VideoRecordRtmpH264.this.activityTitlePanel.setVisibility(8);
				VideoRecordRtmpH264.this.sharePanel.setVisibility(0);
				break;
			case MESSAGE_ZOOM_CAMERA:// pswitch_4
				Object obj1 = paramMessage.obj;
				// v9
				int id = Integer.valueOf(obj1.toString());
				if (id == R.id.record_zoom_t) {
					if (VideoRecordRtmpH264.this.zoomProgress >= VideoRecordRtmpH264.this.maxCameraRoom) {
						VideoRecordRtmpH264.this.zoomProgress = VideoRecordRtmpH264.this.maxCameraRoom;
					} else {
						VideoRecordRtmpH264.this.zoomProgress += 1;
					}

					ProgressBar v23 = VideoRecordRtmpH264.this.zoomProgressBar;
					int v24 = VideoRecordRtmpH264.this.zoomProgress;
					v24 *= 1000;
					v24 = v24 / VideoRecordRtmpH264.this.zoomProgress;
					VideoRecordRtmpH264.this.zoomProgressBar.setProgress(v24);

					VideoRecordRtmpH264.this.zoomNumTextView.setTag(String
							.valueOf(VideoRecordRtmpH264.this.zoomProgress));

					if (VideoRecordRtmpH264.this.camera != null) {
						// v13
						Parameters parameters = VideoRecordRtmpH264.this.camera
								.getParameters();
						parameters
								.setZoom(VideoRecordRtmpH264.this.zoomProgress);
						VideoRecordRtmpH264.this.camera
								.setParameters(parameters);
					}
				}

				if (id == R.id.record_zoom_w) {
					if (VideoRecordRtmpH264.this.zoomProgress <= 0) {
						VideoRecordRtmpH264.this.zoomProgress = 0;
					} else {
						VideoRecordRtmpH264.this.zoomProgress -= 1;
					}
					if (VideoRecordRtmpH264.this.camera != null) {
						Parameters parameters = VideoRecordRtmpH264.this.camera
								.getParameters();
						parameters
								.setZoom(VideoRecordRtmpH264.this.zoomProgress);
						VideoRecordRtmpH264.this.camera
								.setParameters(parameters);
					}

					int v24 = VideoRecordRtmpH264.this.zoomProgress;
					v24 *= 1000;
					int v25 = VideoRecordRtmpH264.this.maxCameraRoom;
					v24 = v24 / v25;
					VideoRecordRtmpH264.this.zoomProgressBar.setProgress(v24);
					VideoRecordRtmpH264.this.zoomNumTextView.setText(String
							.valueOf(VideoRecordRtmpH264.this.zoomProgress));
				}
				break;
			case MESSAGE_SET_ZOOM_INVISIABLE:// pswitch_5
				View zoomPanelView = VideoRecordRtmpH264.this.zoomPanelView;
				zoomPanelView.setVisibility(4);
				break;
			case 6:// pswitch_6
				ProgressDialog pDialog = VideoRecordRtmpH264.this.uploadProgressDialog;
				pDialog.setProgress(VideoRecordRtmpH264.this.uploadProgress);
				break;
			case MESSAGE_CHANGE_RECORD_IMG:// pswitch_7
				VideoRecordRtmpH264 localVideoRecordRtmpH264 = VideoRecordRtmpH264.this;
				if (localVideoRecordRtmpH264.isRecording) {
					int v223 = localVideoRecordRtmpH264.recordTimeCnt % 2;
					if (v223 == 0) {
						VideoRecordRtmpH264.this.recordIV
								.setImageResource(R.drawable.record_recordbtn_off);
					} else {
						VideoRecordRtmpH264.this.recordIV
								.setImageResource(R.drawable.record_recordbtn_on);
					}
				}

				break;
			case 8:// pswitch_8
				Object obj11 = paramMessage.obj;
				if (obj11 != null) {
					Toast.makeText(VideoRecordRtmpH264.this, obj11.toString(),
							1).show();
				}
				break;
			case MESSAGE_SET_RECORD_STAT_RECORDING:// pswitch_9
				VideoRecordRtmpH264.this.recordIV
						.setImageResource(R.drawable.record_recordbtn_on);

				VideoRecordRtmpH264.this.recordTextZone.setVisibility(0);

				VideoRecordRtmpH264.this
						.findViewById(R.id.record_settings_zone).setVisibility(
								4);
				break;
			case MESSAGE_SET_RECORD_STAT_DISRECORDING:// pswitch_a
				VideoRecordRtmpH264.this.recordIV
						.setImageResource(R.drawable.record_recordbtn_off);
				VideoRecordRtmpH264.this.recordTextZone.setVisibility(4);
				VideoRecordRtmpH264.this.recordTimeCnt = (1 + VideoRecordRtmpH264.this.recordTimeCnt);
				VideoRecordRtmpH264.this.lastSendedOffset = 0;
				VideoRecordRtmpH264.this.showbandwidthlowcnt = 0;
				break;
			case MESSAGE_BANDWITH_TOO_LOW:// pswitch_b
				String v24 = "检测到您的带宽太低，可能会影响直播效果";
				Toast.makeText(VideoRecordRtmpH264.this, v24, 0).show();
				break;

			case MESSAGE_RECORD_TIME_CNT:// pswitch_c
				System.out.println("pswitch_c####rtmpSendedSize:"
						+ VideoRecordRtmpH264.this.rtmpSendedSize
						+ ", VideoRecordRtmpH264.this.lastSendedOffset:"
						+ VideoRecordRtmpH264.this.lastSendedOffset);
				int rid = AppContext.getPartyModel(VideoRecordRtmpH264.this).id;
				if (VideoRecordRtmpH264.this.isRecording) {// 否则跳转到::cond_c
					// v23
					StringBuilder v241 = new StringBuilder("Live[" + rid + "] ");
					String v25 = SysUtil
							.getFormatedRecordTime(VideoRecordRtmpH264.this.recordTimeCnt);
					v241.append(v25);
					v24 = v241.toString();
					VideoRecordRtmpH264.this.recordTimeCntTextView.setText(v24);
				} else {
					// :cond_c
					StringBuilder v_24 = new StringBuilder("Live[" + rid + "] ");
					TextView textView = VideoRecordRtmpH264.this.recordTimeCntTextView;
					String frtime = SysUtil
							.getFormatedRecordTime(VideoRecordRtmpH264.this.recordTimeCntAtStop);
					v_24.append(frtime);
					textView.setText(v_24.toString());
				}

				// :goto_4
				int recordTimeCnt = VideoRecordRtmpH264.this.recordTimeCnt % 61;
				if (recordTimeCnt > 0) {// 否则跳转-->:cond_7
					int v23 = VideoRecordRtmpH264.this.recordTimeCnt;
					if (v23 >= 3) {// 否则跳转到 :cond_8
						// :cond_7
						SDcardUtil sDcardUtil = new SDcardUtil(
								VideoRecordRtmpH264.this
										.getApplicationContext());// line
																	// 373
						int availablespcaeMB = SDcardUtil
								.getSDCardAvableSpaceMb(Environment
										.getDownloadCacheDirectory()
										.getAbsolutePath());// line 375
						VideoRecordRtmpH264.this.sdcardSpaceTextView
								.setText(SysUtil
										.formatSpaceMb(availablespcaeMB));
						VideoRecordRtmpH264.this.sdcardSpaceTextView
								.setVisibility(0);
					}
				}

				int v231 = VideoRecordRtmpH264.this.recordTimeCnt % 3;
				if (v231 == 0 || VideoRecordRtmpH264.this.recordTimeCnt <= 3) {
					// cond_9

					// v17
					String speedString = "";
					// v6
					int curOffset = VideoRecordRtmpH264.this.rtmpSendedSize;
					int v23_1 = VideoRecordRtmpH264.this.lastSendedOffset;
					v23_1 = curOffset - v23_1;
					// v16
					int speed = v23_1 / 3000;
					if (speed > 0) {// 否则跳转:cond_a
						if (speed < 6) {// 否则跳转::cond_a
							VideoRecordRtmpH264.this.showbandwidthlowcnt += 1;
							if (VideoRecordRtmpH264.this.showbandwidthlowcnt == 5) {// 否则跳转：cond_a
								Handler v23h = VideoRecordRtmpH264.this.msgHandler;
								v23h.obtainMessage(MESSAGE_BANDWITH_TOO_LOW)
										.sendToTarget();
							}
						}
					}
					// :cond_a
					if (speed > 6) {// 否则：:cond_b
						if (VideoRecordRtmpH264.this.showbandwidthlowcnt < 5) {// 否则::cond_b
							VideoRecordRtmpH264.this.showbandwidthlowcnt = 0;
						}
					}
					// :cond_b
					VideoRecordRtmpH264.this.lastSendedOffset = curOffset;
					if (speed < 1) {// 否则::cond_d
						// v17
						speedString = "正在压缩数据..";
						// :goto_5
						StringBuilder v23_s = new StringBuilder("统计速率 = ");
						int v240 = curOffset
								/ VideoRecordRtmpH264.this.recordTimeCnt;
						v23_s = v23_s.append(v240);
						SysUtil.samlog(v23_s.toString());

						// goto/16 :goto_0
						break;
					} else {
						// //:cond_d

						// :cond_d
						StringBuilder v23_11 = new StringBuilder(
								String.valueOf(speed));
						v23_11.append(" KB/s");
						speedString = v23_11.toString();
						SysUtil.samlog(speedString);
						// goto :goto_5
					}
					VideoRecordRtmpH264.this.recordSpeedTextView
							.setText(speedString);
				}
				// //:cond_9
				break;
			case MESSAGE_RECONNECT_OK:// pswitch_d
				VideoRecordRtmpH264.this.connectingProgressDialog.dismiss();
				VideoRecordRtmpH264.this.startRecord();
				break;
			case MESSAGE_RTMP_SEND_FAIL:// pswitch_e
				VideoRecordRtmpH264.this.connectingProgressDialog.dismiss();
				VideoRecordRtmpH264.this.msgHandler.obtainMessage(223,
						"网络连接已断开").sendToTarget();

				if (VideoRecordRtmpH264.this.isRecording) {
					VideoRecordRtmpH264.this.stopRecord();
				}
				VideoRecordRtmpH264.this.finish();
				break;
			case MESSAGE_SOCKET_MSG_RECEIVED:// pswitch_f
				// 20
				String substr = (String) paramMessage.obj;
				// v4
				String Demostr = substr.replaceAll("(\\r)*\\n", "").trim();
				// v10
				int indexofcolon = Demostr.indexOf(":");
				SpannableStringBuilder style = null;

				if (indexofcolon < 0) {// 否则跳转 -->:cond_11
					// v21
					String sysErr = "对方:";
					StringBuilder v23_111 = new StringBuilder(sysErr);
					v23_111.append(Demostr);
					String v21 = v23_111.toString();

					int v101 = v21.indexOf(":");
					// v19
					style = new SpannableStringBuilder(v21);

					// v23
					ForegroundColorSpan v2311 = new ForegroundColorSpan(-1);
					style.setSpan(v2311, 0, v101, 33);
					// :goto_6

				} else {
					// :cond_11
					// v19
					style = new SpannableStringBuilder(Demostr);
					// v23
					ForegroundColorSpan v23111 = new ForegroundColorSpan(
							-0xff0100);
					style.setSpan(v23111, 0, indexofcolon, 33);
					// :goto_6

				}
				// :goto_6
				// v24
				// v23
				VideoRecordRtmpH264.messageStrList.add(style);
				Object v241 = VideoRecordRtmpH264.this.chatroom;

				if (VideoRecordRtmpH264.this.chatroomTextView.getVisibility() == 4) {// 否则跳转-->:cond_f
					VideoRecordRtmpH264.this.chatroomTextView.setVisibility(0);
				}
				// :cond_f

				v241 = VideoRecordRtmpH264.this.chatroom;
				// v12
				int lines = VideoRecordRtmpH264.messageStrList.size();
				// v18
				int startIndex = 0;
				if (lines > 5) {// 否则跳转-->:cond_10
					startIndex = lines - 5;
				}
				// :cond_10
				// v22
				SpannableStringBuilder totalStyle = new SpannableStringBuilder(
						"");

				// v8
				int i = startIndex;
				// :goto_7

				for (; i < lines; i++) {// 否则跳转-->:cond_12
					// v7
					SpannableStringBuilder curStyle = VideoRecordRtmpH264.messageStrList
							.get(i);
					totalStyle.append(curStyle);

					if (i != (lines - 1)) {// 跳转-->:cond_13
						// String v23 = "\n";
						totalStyle.append("\n");
					}
					// :cond_13
				}

				VideoRecordRtmpH264.this.chatroomTextView.setText(totalStyle);

				VideoRecordRtmpH264.this.showChatContentTimer.schedule(
						new MyTask(VideoRecordRtmpH264.this), 0x2710);
				break;
			default:
				return;
			}
		}

		private StringBuilder StringBuilder(String string) {
			// TODO Auto-generated method stub
			return null;
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
	private int srcfmt = 0;
	private SurfaceHolder surfaceHolder = null;
	private byte[] swsScaledBuffer = null;
	private byte[] theFirstIDR = null;
	private int uploadProgress = 0;
	private ProgressDialog uploadProgressDialog = null;
	boolean useRealtime = false;
	private volatile int videosize = 0;
	private TextView zoomNumTextView = null;
	private View zoomPanelView = null;
	private int zoomProgress = 0;
	private ProgressBar zoomProgressBar = null;
	private Timer zoomTimer = null;

	private void connectServer() {
		this.connectingProgressDialog.show();
		new Thread() {
			@Override
			public void run() {
				String str = "rtmp://"
						+ AppContext.getServerAddress(VideoRecordRtmpH264.this
								.getApplicationContext())
						+ ":"
						+ AppContext.getServerport(VideoRecordRtmpH264.this
								.getApplicationContext())
						+ "/"
						+ AppContext.getServerAppName(VideoRecordRtmpH264.this
								.getApplicationContext())
						+ "/"
						+ AppContext.getPartyModel(VideoRecordRtmpH264.this).urlToken;

				SysUtil.samlog("RTMP_PUBLISH_URL = " + str + "width:"
						+ VideoRecordRtmpH264.this.DES_FRAME_WIDTH + " height:"
						+ VideoRecordRtmpH264.this.DES_FRAME_HEIGHT + "  bps:"
						+ VideoRecordRtmpH264.this.bps);
				byte[] arrayOfByte = VideoRecordRtmpH264.this.initMediaCodec();

				if (RTMPH264SegmentMuxer.connectRTMP(str,
						VideoRecordRtmpH264.this.DES_FRAME_WIDTH,
						VideoRecordRtmpH264.this.DES_FRAME_HEIGHT,
						VideoRecordRtmpH264.this.bps,
						VideoRecordRtmpH264.this.fps, 8000, 1, arrayOfByte,
						arrayOfByte.length)) {

					SysUtil.samlog("连接 success = true");
					VideoRecordRtmpH264.this.msgHandler.obtainMessage(
							MESSAGE_RECONNECT_OK).sendToTarget();
				} else {
					SysUtil.samlog("连接 success = false");
					VideoRecordRtmpH264.this.msgHandler.obtainMessage(
							MESSAGE_SOCKET_BREAKUP).sendToTarget();
				}
				return;
			}
		}.start();
	}

	private void enqueueFrame(SamMediaFrame paramSamMediaFrame) {
		this.sendingQueueLock.lock();
		this.sendingQueue.add(paramSamMediaFrame);
		if (paramSamMediaFrame.type == 1)
			this.videosize = (1 + this.videosize);
		this.sendingQueueLock.unlock();
	}

	private int[] getSupportedPixFmt() {
		System.out.println("h264########getSupportedPixFmt");
		printCodecInfo();
		int i = MediaCodecList.getCodecCount();
		int j = 0;
		while (true) {
			if (j >= i)
				return new int[0];
			try {
				MediaCodecInfo localMediaCodecInfo = MediaCodecList
						.getCodecInfoAt(j);
				if (localMediaCodecInfo.isEncoder())
					for (String str : localMediaCodecInfo.getSupportedTypes()) {
						SysUtil.samlog("codec type = " + str);

						if ((str == null)
								|| (!str.toLowerCase().contains("avc")))
							continue;

						MediaCodecInfo.CodecCapabilities localCodecCapabilities = localMediaCodecInfo
								.getCapabilitiesForType(str);
						SysUtil.samlog("colorFormats = "
								+ Arrays.toString(localCodecCapabilities.colorFormats));
						if (localCodecCapabilities.colorFormats == null)
							continue;

						int[] arrayOfInt = localCodecCapabilities.colorFormats;
						return arrayOfInt;
					}
				j++;
			} catch (Exception localException) {
				localException.printStackTrace();
			}
		}
	}

	// ERROR //初始化RTMP需要
	private byte[] initMediaCodec() {

		StringBuilder v3 = new StringBuilder("是否需要scale = ");
		v3.append(VideoRecordRtmpH264.this.isNeedFmtScale);
		SysUtil.samlog(v3.toString());

		// .line 1824
		VideoRecordRtmpH264.this.mediaCodec = MediaCodec
				.createEncoderByType("video/avc");
		// .line 1826
		// v19
		MediaFormat mediaFormat = MediaFormat.createVideoFormat("video/avc",
				VideoRecordRtmpH264.this.DES_FRAME_WIDTH,
				VideoRecordRtmpH264.this.DES_FRAME_HEIGHT);

		mediaFormat.setInteger("bitrate", VideoRecordRtmpH264.this.bps);
		mediaFormat.setInteger("frame-rate", VideoRecordRtmpH264.this.fps);
		mediaFormat.setInteger("color-format",
				VideoRecordRtmpH264.this.desMediaCodecFmt);

		// .line 1831
		boolean use10fps = CameraProvider
				.shouldUse10FPS(VideoRecordRtmpH264.this);

		if (!use10fps) {// if-eqz v3, :cond_1 != ->//:cond_1
			mediaFormat.setInteger("i-frame-interval", 5);
			// .line 1838 :goto_0
		} else {
			mediaFormat.setInteger("i-frame-interval", 5);
		}
		// :goto_0

		this.mediaCodec.configure(mediaFormat, null, null, 1);
		// .line 1839
		this.mediaCodec.start();

		// .line 1841
		v3 = new StringBuilder("像素原格式 = ");
		v3.append(this.srcfmt);
		v3.append(",mediacodec 格式 = ");
		v3.append(this.desMediaCodecFmt);
		v3.append(",是否scale = ");
		v3.append(this.isNeedFmtScale);

		SysUtil.samlog(v3.toString());

		// .line 1844
		// v10
		byte[] avcc = null;
		// .line 1845

		// v17 .line 1846
		ByteBuffer[] inputBuffers = this.mediaCodec.getInputBuffers();
		// v23 .line 1848
		ByteBuffer[] outputBuffers = this.mediaCodec.getOutputBuffers();

		// :cond_0 : goto_1 .line 1848
		while (avcc == null) { // if-eqz avcc, :cond_2
			// :cond_2
			// :try_start_2 .line 1850
			SysUtil.samlog("to get avcc");

			// .line 1851
			int inputBufferIndex = this.mediaCodec.dequeueInputBuffer(-1);
			SysUtil.samlog("#####inputBufferIndex:" + inputBufferIndex);
			// .line 1852
			if (inputBufferIndex >= 0) {// if-ltz inputBufferIndex, :cond_3
				// v16 .line 1853
				// .line 1854
				ByteBuffer inputBuffer = inputBuffers[inputBufferIndex];
				inputBuffer.clear();
				// .line 1855
				System.out.println("DES_FRAME_WIDTH:" + this.DES_FRAME_WIDTH
						+ ",  this.DES_FRAME_HEIGHT:" + this.DES_FRAME_HEIGHT);
				int v13 = this.DES_FRAME_WIDTH;
				int v15 = this.DES_FRAME_HEIGHT;
				int frameSize = v13 * v15; // v3
				// .line 1856
				int zerosize = (frameSize * 3) / 2;// v6
				byte[] yuv420 = new byte[zerosize];

				int i = 0;
				// :goto_2
				System.out.println(4 + ".....zerosize" + zerosize);
				inputBuffer.put(yuv420);
				mediaCodec.queueInputBuffer(inputBufferIndex, 0, yuv420.length,
						0, 0);
			}
			// .line 1862
			// :cond_3 .line 1863 v11
			MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
			// v22 .line 1864
			int outputBufferIndex = this.mediaCodec.dequeueOutputBuffer(
					bufferInfo, -1);
			int intervalCount = 0;// v18
			// :goto_3

			while (outputBufferIndex >= 0) {// if-ltz outputBufferIndex, :cond_0
				StringBuilder v33 = new StringBuilder("bufferInfo.size = ");
				v33.append(bufferInfo.size);
				SysUtil.samlog(v33.toString());

				// v21 .line 1868
				ByteBuffer outputBuffer = outputBuffers[outputBufferIndex];
				// .line 1869
				if (bufferInfo.size > 0) {// if-lez bufferInfo.size, :cond_5
					outputBuffer.limit(bufferInfo.size);
					// .line 1872
					outputBuffer.position(0);
					// .line 1873
					byte[] nalu = new byte[bufferInfo.size];
					outputBuffer.get(nalu);
					System.out.println(SysUtil.bytesToHexString(nalu));
					System.out.println("nalu:#################");

					// .line 1875
					SysUtil.samlog("nalu:1");
					if (null != nalu) {// if-eqz nalu, :cond_4
						// .line 1878
						// SysUtil.debugPrintByteArray(nalu, nalu.length);
					}
					// :cond_4 .line 1881
					// v10
					if (avcc == null) {// if-nez avcc, :cond_5
						// .line 1883
						byte[] v3a = new byte[4];
						v3a[3] = 1;

						// v26
						int sps_start_position = SamSeek.bufferSeek(nalu, v3a,
								0);
						SysUtil.samlog("sps_start_position:"
								+ sps_start_position);
						// .line 1884
						sps_start_position = sps_start_position + 4;
						byte[] v3b = new byte[4];
						v3b[3] = 1;
						// v24
						int pps_start_position = SamSeek.bufferSeek(nalu, v3b,
								4);
						pps_start_position = pps_start_position + 4;
						SysUtil.samlog("nalu:pps_start_position:"
								+ pps_start_position);
						// .line 1886
						// v12
						ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
						// 13 .line 1887
						DataOutputStream dataOutputStream = new DataOutputStream(
								byteArrayOutputStream);
						// .line 1888
						// v3
						int v333 = 1;
						try {
							dataOutputStream.writeByte(v333);
							v333 = sps_start_position + 1;
							// 13
							dataOutputStream.writeByte(nalu[v333]);
							v333 = sps_start_position + 2;
							dataOutputStream.writeByte(nalu[v333]);

							v333 = sps_start_position + 3;
							dataOutputStream.writeByte(nalu[v333]);

							v333 = 0xFF;
							dataOutputStream.writeByte(v333);

							v333 = 0xe1;
							dataOutputStream.writeByte(v333);

							v333 = pps_start_position - 4;
							// v27 .line 1895
							int spslength = v333 - sps_start_position;
							dataOutputStream.writeShort(spslength);
							SysUtil.samlog("nalu:121###nalu.length:"
									+ nalu.length + ", sps_start_position="
									+ sps_start_position + ", spslength:"
									+ spslength);
							dataOutputStream.write(nalu, sps_start_position,
									spslength);
							dataOutputStream.writeByte(1);
							// v25 .line 1898 .line 1899
							// int ppslength = nalu.length + pps_start_position;

							pps_start_position += 4;
							int ppslength = nalu.length - pps_start_position;

							SysUtil.samlog("nalu:12");
							// v13 .line 1900
							dataOutputStream.writeShort(ppslength);
							SysUtil.samlog("nalu:121###nalu.length:"
									+ nalu.length + ", pps_start_position="
									+ pps_start_position + ", ppslength:"
									+ ppslength);
							dataOutputStream.write(nalu, pps_start_position,
									ppslength);
							SysUtil.samlog("nalu:122");
							dataOutputStream.flush();
							SysUtil.samlog("nalu:123");

							// v10 //v12 .line 1903
							avcc = byteArrayOutputStream.toByteArray();
							// .line 1905
							SysUtil.samlog("avcc:");
							// :try_end_3
						} catch (IOException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}

						SysUtil.samlog("nalu:13");
						// :try_start_4 .line 1910
						try {
							dataOutputStream.close();
						} catch (IOException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
						// :try_end_4

						SysUtil.samlog("nalu:14");
						// :goto_4
						// :try_start_5 .line 1914
						try {
							byteArrayOutputStream.close();
						} catch (IOException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
						// :try_end_5

						// .line 1917
						// :goto_5
						if (avcc != null) {// if-eqz v10, :cond_5
							// :try_start_6 .line 1919
							// SysUtil.debugPrintByteArray(avcc, avcc.length);
							break;
							// goto/16 :goto_1
							// :try_end_6
						}

					}
				}

				SysUtil.samlog("nalu:15");
				// :cond_5 .line 1930
				outputBuffer.clear();
				VideoRecordRtmpH264.this.mediaCodec.releaseOutputBuffer(
						outputBufferIndex, false);
				// .line 1932
				SysUtil.samlog("nalu:16");
				outputBufferIndex = this.mediaCodec.dequeueOutputBuffer(
						bufferInfo, 0);
				// goto/16 :goto_3
				SysUtil.samlog("nalu:17");
			}
		}
		return avcc;
	}

	// 摄像头缩放
	private void initSwscaleContext() {
		SysUtil.samlog("###model = " + Build.MODEL.toLowerCase());
		this.isNeedFmtScale = false;

		if ((Build.MODEL != null)
				&& ((Build.MODEL.toLowerCase().contains("ek-gc110")) || (Build.MODEL
						.toLowerCase().contains("ek-gc100")))) {

			SysUtil.samlog("特殊型号 = " + Build.MODEL);

			this.desMediaCodecFmt = 21;

			if (this.SRC_FRAME_WIDTH != this.DES_FRAME_WIDTH) {
				this.isNeedFmtScale = true;
				this.swsScaledBuffer = new byte[3 * (this.DES_FRAME_WIDTH * this.DES_FRAME_HEIGHT) / 2];

				System.out.println("###SWScaleUtil.initContext");
				SWScaleUtil.initContext(0, 0, this.SRC_FRAME_WIDTH,
						this.SRC_FRAME_HEIGHT, this.DES_FRAME_WIDTH,
						this.DES_FRAME_HEIGHT);
			}
			return;
		}

		int[] arrayOfInt = getSupportedPixFmt();
		System.out.println("h264##################initSwscaleContext");

		SysUtil.samlog("硬编码支持的像素格式 = " + Arrays.toString(arrayOfInt));
		int i = 1;
		int j = 5;
		if (this.srcfmt == 17) {
			if (!isContainPixFmt(arrayOfInt, 21))
				j = 2;
		}
		for (this.desMediaCodecFmt = 21;; this.desMediaCodecFmt = 19) {
			this.isNeedFmtScale = true;
			this.swsScaledBuffer = new byte[3 * (this.DES_FRAME_WIDTH * this.DES_FRAME_HEIGHT) / 2];
			SWScaleUtil.initContext(i, j, this.SRC_FRAME_WIDTH,
					this.SRC_FRAME_HEIGHT, this.DES_FRAME_WIDTH,
					this.DES_FRAME_HEIGHT);
			return;
		}
	}

	private boolean isContainPixFmt(int[] paramArrayOfInt, int paramInt) {
		int i = paramArrayOfInt.length;
		for (int j = 0;; j++) {
			if (j >= i)
				return false;
			if (paramArrayOfInt[j] == paramInt)
				return true;
		}
	}

	private void openCamera(SurfaceHolder paramSurfaceHolder) {
		VideoRecordRtmpH264.this.releaseCamera();
		try {
			this.camera = Camera.open();
			// .line 873 :cond_0 :goto_0
			if (this.camera == null) {
				SysUtil.samlog("camera == null");
				return;// .line 960 :goto_1
			}
		} catch (Exception localException) {
			this.camera = null;
			if (!AppContext.isDebugMode)
				localException.printStackTrace();

			return;
		}

		this.useRealtime = getSharedPreferences("pref", 0).getBoolean(
				"userealtime", true);
		SysUtil.samlog("###是否实时模式 = " + this.useRealtime);

		if (!this.useRealtime) {// this.useRealtime != 0 ->:cond_2
			try {
				this.completeFramesFile = new File(new SDcardUtil(
						getApplicationContext()).rootDir, "frames"
						+ System.currentTimeMillis() + ".cache");
				this.completeFramesFile.createNewFile();
				this.completeFileOutputStream = new FileOutputStream(
						this.completeFramesFile);

			} catch (Exception localException2) {
				localException2.printStackTrace();
			}
		}

		boolean v17 = CameraProvider.shouldUse10FPS(this);
		if (!v17) {
			this.fps = 15;
		} else {
			this.fps = 10;
		}

		if (this.fps != 10) { // 否则-》:cond_6
			if ((Build.MODEL != null)// 否则-->:cond_5
					&& (Build.MODEL.toLowerCase().contains("ek-gc1"))) {
				this.DROP_GAP = 4;
				// :goto_4
			} else {
				// .line 1108 :cond_5
				this.DROP_GAP = 4;
			}
		} else {
			if ((Build.MODEL == null)
					|| (!Build.MODEL.toLowerCase().contains("ek-gc1"))) {
				this.DROP_GAP = 13;
			} else {
				// cond_7 .line 1115
				this.DROP_GAP = 9;
			}
		}

		// goto_4
		SysUtil.samlog("DROP_GAP = " + this.DROP_GAP + ", fps = " + this.fps);
		// .line 1119
		this.bps = CameraProvider.getUserSetVideoBps(this);
		// .line 1120
		SysUtil.samlog("时间戳fps = " + this.fps);
		// .line 1121
		SysUtil.samlog("时间戳bps = " + this.bps);

		// v16 .line 1122
		int userquality = CameraProvider.getUserFrameSizeSet(this);
		// .line 1123
		SysUtil.samlog("userquality = " + userquality);
		// .line 1124
		if (this.camera == null || userquality < 0) {
			this.msgHandler.obtainMessage(223, "无法打开摄像?").sendToTarget();
			return;
		}

		if (userquality >= 0) {
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
				break;
			}
		}

		this.camParams = this.camera.getParameters();
		this.camParams.setWhiteBalance("auto");

		Iterator fpsList = this.camParams.getSupportedPreviewFrameRates()
				.iterator();
		// goto_6
		while (fpsList.hasNext()) {
			// :cond_9
			Integer localInteger = (Integer) fpsList.next();
			System.out.println("SupportedPreviewFrameRate = " + localInteger);
		}

		Iterator fpsints = this.camParams.getSupportedPreviewFpsRange()
				.iterator();
		// :goto_7
		while (fpsints.hasNext()) {
			// :cond_a
			int[] arrayOfInt = (int[]) fpsints.next();
			System.out
					.println("supported range:" + Arrays.toString(arrayOfInt));
		}

		Iterator sizes = this.camParams.getSupportedPreviewSizes().iterator();
		// :goto_8
		while (sizes.hasNext()) {
			// cond_b
			Camera.Size localSize = (Camera.Size) sizes.next();
			SysUtil.samlog("supported size = " + localSize.width + ","
					+ localSize.height);
		}

		this.srcfmt = this.camParams.getPreviewFormat();
		SysUtil.samlog("getPreviewFormat = " + this.srcfmt);
		this.maxCameraRoom = this.camParams.getMaxZoom();
		SysUtil.samlog("maxCameraRoom = " + this.maxCameraRoom);

		if (!CameraProvider.checkIfContainFrameSize(
				this.camParams.getSupportedPreviewSizes(),
				this.DES_FRAME_WIDTH, this.DES_FRAME_HEIGHT)) {
			// :cond_c

			double h = 1.0D * this.DES_FRAME_HEIGHT * 16368;
			double w = h / (1.0D * this.DES_FRAME_WIDTH);
			int v1711 = 0;
			if (w > 16360) {
				v1711 = -1;
			} else if (w < 16360) {
				v1711 = 1;
			} else {
				v1711 = 0;
			}
			if (v1711 == 0) {
				SysUtil.samlog("使用4:3");
				this.SRC_FRAME_WIDTH = 640;
				this.SRC_FRAME_HEIGHT = 480;
			} else {
				SysUtil.samlog("使用16:9");
				this.SRC_FRAME_WIDTH = 1280;
				this.SRC_FRAME_HEIGHT = 720;
			}
			/*
			 * if (1.0D * this.DES_FRAME_HEIGHT / this.DES_FRAME_WIDTH == 0.75D)
			 * { SysUtil.samlog("使用4:3"); this.SRC_FRAME_WIDTH = 640;
			 * this.SRC_FRAME_HEIGHT = 480;
			 * 
			 * } else { SysUtil.samlog("使用16:9"); this.SRC_FRAME_WIDTH = 1280;
			 * this.SRC_FRAME_HEIGHT = 720; }
			 */
		} else {
			this.SRC_FRAME_WIDTH = this.DES_FRAME_WIDTH;
			this.SRC_FRAME_HEIGHT = this.DES_FRAME_HEIGHT;
		}
		// .line 1207 :goto_9
		initSwscaleContext();
		System.out.println("h264###################openCamera");
		SysUtil.samlog("SRC_FRAME_WIDTH = " + this.SRC_FRAME_WIDTH
				+ ",SRC_FRAME_HEIGHT = " + this.SRC_FRAME_HEIGHT
				+ ",DES_FRAME_WIDTH = " + this.DES_FRAME_WIDTH
				+ ",DES_FRAME_HEIGHT = " + this.DES_FRAME_HEIGHT);

		this.camParams.setPreviewSize(this.SRC_FRAME_WIDTH,
				this.SRC_FRAME_HEIGHT);
		this.camera.setParameters(this.camParams);
		this.camera.setZoomChangeListener(this);

		// .line 1215
		try {
			this.camera.setPreviewDisplay(paramSurfaceHolder);
		} catch (IOException localIOException) {
			localIOException.printStackTrace();
		}

		// .line 1220 :goto_a
		int FRAME_BUFFER_Q_SIZE = 3;
		// v12
		byte[][] frameBuffer = new byte[FRAME_BUFFER_Q_SIZE][];
		int k = 0;
		// :goto_b
		while (true) {
			if (k >= 3) {
				this.camera.setPreviewCallback(VideoRecordRtmpH264.this);
				this.camera.startPreview();
				RTMPH264SegmentMuxer.initContext(8000, 1);
				return;
			} else {
				if (this.srcfmt == 17) {
					frameBuffer[k] = new byte[3 * (this.SRC_FRAME_WIDTH * this.SRC_FRAME_HEIGHT) / 2];
				} else {
					frameBuffer[k] = new byte[2 * (this.SRC_FRAME_WIDTH * this.SRC_FRAME_HEIGHT)];
				}

				this.camera.addCallbackBuffer(frameBuffer[k]);
				k++;
			}
		}

		// goto/16 :goto_3
	}

	private void printCodecInfo() {
		SysUtil.samlog("h264#################################printCodecInfo");
		int i = 0;
		while (true) {
			if (i >= MediaCodecList.getCodecCount())
				return;
			try {
				MediaCodecInfo localMediaCodecInfo = MediaCodecList
						.getCodecInfoAt(i);

				if (localMediaCodecInfo.isEncoder()) {
					SysUtil.samlog("#################################codec begin");
					String[] arrayOfString = localMediaCodecInfo
							.getSupportedTypes();
					int j = arrayOfString.length;

					for (int k = 0; k < j; k++) {
						String str = arrayOfString[k];
						SysUtil.samlog("@@@@@@@@@@@ type = " + str);
						MediaCodecInfo.CodecCapabilities localCodecCapabilities = localMediaCodecInfo
								.getCapabilitiesForType(str);

						if (localCodecCapabilities.colorFormats != null)
							SysUtil.samlog("support colors = "
									+ Arrays.toString(localCodecCapabilities.colorFormats));

						if (localCodecCapabilities.profileLevels == null) {
							k++;
							continue;
						} else {
							MediaCodecInfo.CodecProfileLevel[] arrayOfCodecProfileLevel = localCodecCapabilities.profileLevels;
							int m = arrayOfCodecProfileLevel.length;
							for (int n = 0; i < m; i++) {
								MediaCodecInfo.CodecProfileLevel localCodecProfileLevel = arrayOfCodecProfileLevel[n];
								SysUtil.samlog("support level = "
										+ localCodecProfileLevel.level
										+ ",profile = "
										+ localCodecProfileLevel.profile);
							}
						}
					}
					SysUtil.samlog("#################################codec end");
				}
				i++;
			} catch (Exception localException) {
				localException.printStackTrace();
			}
		}
	}

	private void releaseCamera() {
		Camera v1 = VideoRecordRtmpH264.this.camera;
		if (v1 != null) {
			SysUtil.samlog("will release camera!!!!!!!!!!");
			VideoRecordRtmpH264.this.camera.setPreviewCallback(null);
			VideoRecordRtmpH264.this.camera.stopPreview();
			VideoRecordRtmpH264.this.camera.release();
			VideoRecordRtmpH264.this.camera = null;

			RTMPH264SegmentMuxer.releaseContext();
			boolean v2 = VideoRecordRtmpH264.this.isNeedFmtScale;
			if (v2) {
				SWScaleUtil.releaseContext();
			}
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

					IWXAPI localIWXAPI = WXAPIFactory.createWXAPI(this,
							"wxea83dc12ba2e5438", false);
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
					IWXAPI localIWXAPI = WXAPIFactory.createWXAPI(this,
							"wxea83dc12ba2e5438", false);
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

	private void startRecord() {
		if (this.encodeVideoThread != null)
			this.encodeVideoThread.flag = false;
		this.encodeVideoThread = new EncodeVideoThread(VideoRecordRtmpH264.this);
		this.encodeVideoThread.start();

		if (this.recordAACThread != null)
			this.recordAACThread.flag = false;
		this.recordAACThread = new RecordAACThread(VideoRecordRtmpH264.this);
		this.recordAACThread.start();

		if (this.sendingThread != null)
			this.sendingThread.flag = false;
		this.sendingThread = new SendingThread(VideoRecordRtmpH264.this);
		this.sendingThread.start();

		this.absoluteBeginTime = System.currentTimeMillis();
		this.isRecording = true;

		SysUtil.samlog("重新打开");
		new Thread() {
			@Override
			public void run() {
				new StateThread(VideoRecordRtmpH264.this, 1).start();

				try {
					while (true) {
						if (!VideoRecordRtmpH264.this.isRecording)
							return;

						VideoRecordRtmpH264.this.msgHandler.obtainMessage(226)
								.sendToTarget();
						Thread.sleep(1000L);
					}
				} catch (Exception localException) {
				}
			}
		}.start();
		this.absoluteBeginTime = System.currentTimeMillis();
		this.msgHandler.obtainMessage(220).sendToTarget();

		this.recordTimeCntTimer = new Timer();
		this.recordTimeCntTimer.schedule(new TimerTask() {
			@Override
			public void run() {
				VideoRecordRtmpH264 localVideoRecordRtmpH264 = VideoRecordRtmpH264.this;
				localVideoRecordRtmpH264.recordTimeCnt = (1 + localVideoRecordRtmpH264.recordTimeCnt);
				VideoRecordRtmpH264.this.msgHandler.obtainMessage(
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

			new StateThread(VideoRecordRtmpH264.this, 0).start();

			return;
		} catch (Exception localException) {
		}
	}

	@Override
	public void finish() {
		super.finish();

		this.uploadProgressDialog.dismiss();
		releaseCamera();
		if (this.recordTimeCntTimer != null) {
			try {
				this.recordTimeCntTimer.cancel();
				this.recordTimeCntTimer = null;

				if (this.encodeVideoThread != null)
					this.encodeVideoThread.flag = false;

				this.encodeVideoThread = null;

				if (this.recordAACThread != null)
					this.recordAACThread.flag = false;
				this.recordAACThread = null;

				if (this.sendingThread != null)
					this.sendingThread.flag = false;
				this.sendingThread = null;

				return;
			} catch (Exception localException) {
			}
		}
	}

	@Override
	public void onAutoFocus(boolean paramBoolean, Camera paramCamera) {
		SysUtil.samlog("$$$$$$$$$onAutoFocus = " + paramBoolean);
		this.autoFocusView.setImageResource(2130837620);
		paramCamera.cancelAutoFocus();
		new Thread() {
			@Override
			public void run() {
				try {
					Thread.sleep(200L);
					label6: VideoRecordRtmpH264.this.msgHandler
							.post(new Runnable() {
								@Override
								public void run() {
									VideoRecordRtmpH264.this.autoFocusView
											.setVisibility(4);
								}
							});
					return;
				} catch (Exception localException) {
				}
			}
		}.start();
	}

	// 重载方法 返回操作
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
	@SuppressWarnings("deprecation")
	public void onClick(View paramView) {
		if (System.currentTimeMillis() - this.lastClickTime < 200L)
			return;

		this.lastClickTime = System.currentTimeMillis();
		try {
			switch (paramView.getId()) {
			case R.id.share_panel_emailIV:
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
						AppContext.getUserID(this), this.msgHandler, 230, 231,
						AppContext.getPartyModel(this).title,
						AppContext.getPartyModel(this).starttime,
						AppContext.getPartyModel(this).duration,
						AppContext.getPartyModel(this).joinNum, "", false);
				this.createNewActivityThread.start();
				return;
			case R.id.record_menu_record_IV:// 开始直播
				if (this.isRecording) {
					new AlertDialog.Builder(this)
							.setTitle("提示")
							.setMessage("是否结束此次拍摄活动?")
							.setPositiveButton("结束",
									new DialogInterface.OnClickListener() {
										@Override
										public void onClick(
												DialogInterface paramDialogInterface,
												int paramInt) {
											if (!VideoRecordRtmpH264.this.useRealtime) {
												VideoRecordRtmpH264.this.recordTimeCntAtStop = VideoRecordRtmpH264.this.recordTimeCnt;
												VideoRecordRtmpH264.this.isRecording = false;
												if (VideoRecordRtmpH264.this.encodeVideoThread != null)
													VideoRecordRtmpH264.this.encodeVideoThread.flag = false;
												VideoRecordRtmpH264.this.encodeVideoThread = null;
												if (VideoRecordRtmpH264.this.recordAACThread != null)
													VideoRecordRtmpH264.this.recordAACThread.flag = false;
												VideoRecordRtmpH264.this.recordAACThread = null;
												if (VideoRecordRtmpH264.this.sendingThread != null)
													VideoRecordRtmpH264.this.sendingThread.isUploadingLastPart = true;
												VideoRecordRtmpH264.this.uploadProgressDialog
														.show();
												return;
											}
											VideoRecordRtmpH264.this.recordIV
													.setEnabled(false);
											VideoRecordRtmpH264.this
													.stopRecord();
											VideoRecordRtmpH264.this.finish();
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
					this.sendingQueueLock.lock();
					this.sendingQueue.clear();
					this.sendingQueueLock.unlock();
					connectServer();
					return;
				}
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
		getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);// 屏幕保持常亮

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
				.setTitle("").setMessage("您确定要退出直播?")
				.setPositiveButton("确定", new DialogInterface.OnClickListener() {
					@Override
					public void onClick(DialogInterface paramDialogInterface,
							int paramInt) {
						VideoRecordRtmpH264.this.stopRecord();
						VideoRecordRtmpH264.this.releaseCamera();
						VideoRecordRtmpH264.this.finish();
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
						VideoRecordRtmpH264.this.finish();
					}
				});

		this.connectingProgressDialog = new ProgressDialog(this);
		this.connectingProgressDialog.setMessage("正在连接服务...");
		this.connectingProgressDialog.setTitle("请稍等");

		this.sharePanel = findViewById(R.id.share_panel);
		findViewById(R.id.share_panel_circleIV).setOnClickListener(this);
		findViewById(R.id.share_panel_emailIV).setOnClickListener(this);
		findViewById(R.id.share_panel_sinaIV).setOnClickListener(this);
		findViewById(R.id.share_panel_smsIV).setOnClickListener(this);
		findViewById(R.id.share_panel_weixinIV).setOnClickListener(this);

		findViewById(R.id.record_settingsIV).setOnClickListener(this);
		findViewById(R.id.record_menu_record_IV).setOnClickListener(this);
		findViewById(R.id.share_panel_copyIV).setOnClickListener(this);

		findViewById(R.id.sharepanel_doneBTN).setOnClickListener(this);

		this.activityTitlePanel = findViewById(R.id.activity_title_panel);
		this.activityTitleEditText = ((EditText) findViewById(R.id.record_activity_titleET));
		findViewById(R.id.activity_title_panel_doneBTN)
				.setOnClickListener(this);
		findViewById(R.id.activity_title_panel_mask).setOnClickListener(this);

		if (getIntent().getBooleanExtra("live", false)) {
			this.activityTitlePanel.setVisibility(0);
		} else {
			new StateThread(VideoRecordRtmpH264.this, -1).start();
		}

		this.getChannelProgressDialog = new ProgressDialog(this);
		this.getChannelProgressDialog.setTitle("请稍等...");
		this.getChannelProgressDialog.setMessage("正在获取分享地址");
		this.getChannelProgressDialog
				.setOnDismissListener(new DialogInterface.OnDismissListener() {
					@Override
					public void onDismiss(DialogInterface paramDialogInterface) {
						if (VideoRecordRtmpH264.this.createNewActivityThread != null)
							VideoRecordRtmpH264.this.createNewActivityThread.flag = false;
					}
				});

		// 检车蓝牙设备
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

					if (localIterator.hasNext()) {
						BluetoothDevice localBluetoothDevice = (BluetoothDevice) localIterator
								.next();
						SysUtil.samlog("###配对的蓝牙设备###"
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
			Toast.makeText(this, "没有连接到蓝牙设备", 0).show();
			return;
		} else {
			SysUtil.samlog("不需用蓝牙");
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
		this.msgHandler.obtainMessage(221).sendToTarget();
	}

	// 重载
	@Override
	public void onPreviewFrame(byte[] paramArrayOfByte, Camera paramCamera) {
		if (this.isRecording) {
			this.comingFrameCount = (1 + this.comingFrameCount);
			SysUtil.samlog("系统出帧= "
					+ 1000
					* this.comingFrameCount
					/ (1L + (System.currentTimeMillis() - this.absoluteBeginTime)));
		}
		try {
			if ((this.isRecording) && (this.encodeVideoThread != null)
					&& (this.encodeVideoThread.canEnqueueMoreFrame())) {

				if ((this.useRealtime) && (this.videosize >= 2)) {
					this.debug_drop_count = (1 + this.debug_drop_count);
					SysUtil.samlog("#####video size = "
							+ this.videosize
							+ ",drop count = "
							+ this.debug_drop_count
							+ ",丢帧�?= "
							+ 1000
							* this.debug_drop_count
							/ (1L + (System.currentTimeMillis() - this.absoluteBeginTime)));
					paramCamera.addCallbackBuffer(paramArrayOfByte);
					return;
				}
				if (System.currentTimeMillis()
						- this.lastPreviewFrameComingTime < 1000 / (this.fps + this.DROP_GAP)) {
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
			if (!this.encodeVideoThread.canEnqueueMoreFrame())
				SysUtil.samlog("encodeVideoThread queue full,drop frame");
			paramCamera.addCallbackBuffer(paramArrayOfByte);
			return;
		} catch (Exception localException) {
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
							VideoRecordRtmpH264.this.msgHandler.obtainMessage(
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

	// 重载 打开摄像头
	@Override
	public void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1,
			int paramInt2, int paramInt3) {
		this.surfaceHolder = paramSurfaceHolder;

		openCamera(paramSurfaceHolder);
		System.out.println("h264###############################surfaceChanged");
	}

	// 重载
	@Override
	public void surfaceCreated(SurfaceHolder paramSurfaceHolder) {
		this.surfaceHolder = paramSurfaceHolder;
	}

	// 重载
	@Override
	public void surfaceDestroyed(SurfaceHolder paramSurfaceHolder) {
		this.surfaceHolder = paramSurfaceHolder;
	}

	private class EncodeVideoThread extends Thread {
		private long debugPreviousVideoTimestamp = 0L;
		public volatile boolean flag = true;
		public Vector<SamMediaFrame> frames = new Vector();
		private volatile boolean hasFirstComming = false;
		private Lock lock = new ReentrantLock();

		private EncodeVideoThread(Context context) {
		}

		private byte[] encodeFrame(SamMediaFrame paramSamMediaFrame) {
			ByteBuffer[] arrayOfByteBuffer1 = VideoRecordRtmpH264.this.mediaCodec
					.getInputBuffers();
			ByteBuffer[] arrayOfByteBuffer2 = VideoRecordRtmpH264.this.mediaCodec
					.getOutputBuffers();
			byte[] arrayOfByte = null;
			long l1 = System.currentTimeMillis();
			int i = VideoRecordRtmpH264.this.mediaCodec
					.dequeueInputBuffer(400L);
			SysUtil.samlog("dequeueInputBuffer cost = "
					+ (System.currentTimeMillis() - l1));
			if (i >= 0) {
				ByteBuffer localByteBuffer1 = arrayOfByteBuffer1[i];
				localByteBuffer1.clear();
				if (VideoRecordRtmpH264.this.isNeedFmtScale) {

					long l3 = System.currentTimeMillis();
					SWScaleUtil.formatswsscale(paramSamMediaFrame.data,
							paramSamMediaFrame.data.length,
							VideoRecordRtmpH264.this.swsScaledBuffer,
							VideoRecordRtmpH264.this.swsScaledBuffer.length);
					SysUtil.samlog("fmt scale then encode,cost = "
							+ (System.currentTimeMillis() - l3));
					localByteBuffer1.put(
							VideoRecordRtmpH264.this.swsScaledBuffer, 0,
							VideoRecordRtmpH264.this.swsScaledBuffer.length);
					VideoRecordRtmpH264.this.mediaCodec.queueInputBuffer(i, 0,
							VideoRecordRtmpH264.this.swsScaledBuffer.length,
							0L, 0);
				}
				MediaCodec.BufferInfo localBufferInfo = new MediaCodec.BufferInfo();
				long l2 = System.currentTimeMillis();
				int j = VideoRecordRtmpH264.this.mediaCodec
						.dequeueOutputBuffer(localBufferInfo, 400L);
				SysUtil.samlog("dequeueOutputBuffer cost = "
						+ (System.currentTimeMillis() - l2));
				if (j >= 0) {
					ByteBuffer localByteBuffer2 = arrayOfByteBuffer2[j];
					if (localBufferInfo.size > 0) {
						localByteBuffer2.limit(localBufferInfo.size);
						localByteBuffer2.position(0);
						arrayOfByte = new byte[localBufferInfo.size];
						localByteBuffer2.get(arrayOfByte);
					}
					localByteBuffer2.clear();
					VideoRecordRtmpH264.this.mediaCodec.releaseOutputBuffer(j,
							false);
				}

				localByteBuffer1.put(paramSamMediaFrame.data, 0,
						paramSamMediaFrame.data.length);
				VideoRecordRtmpH264.this.mediaCodec.queueInputBuffer(i, 0,
						paramSamMediaFrame.data.length, 0L, 0);
			}
			return arrayOfByte;
		}

		public void addRawFrame(SamMediaFrame paramSamMediaFrame) {
			SysUtil.samlog("add raw video frame to encode");
			if (!this.flag)
				return;
			this.lock.lock();
			this.frames.add(paramSamMediaFrame);
			this.lock.unlock();
		}

		public boolean canEnqueueMoreFrame() {
			if (!this.flag) {
				return false;
			}
			if (this.frames.size() > 1)
				return true;

			return false;
		}

		@Override
		public void run() {
			super.run();
			while (true) {
				if (((this.flag) && (!this.hasFirstComming))
						|| ((this.flag) || (VideoRecordRtmpH264.this.mediaCodec != null))) {

					try {

						if (this.frames.size() != 0) {
							this.lock.lock();
							SamMediaFrame localSamMediaFrame2 = this.frames
									.remove(0);
							this.lock.unlock();

							long l2 = System.currentTimeMillis();
							byte[] arrayOfByte2 = null;
							int i = 0;

							while (true) {
								if (VideoRecordRtmpH264.this.camera != null)
									VideoRecordRtmpH264.this.camera
											.addCallbackBuffer(localSamMediaFrame2.data);
								localSamMediaFrame2.data = arrayOfByte2;
								if (arrayOfByte2 == null)
									break;
								SysUtil.samlog("enqueue a video frame,length = "
										+ localSamMediaFrame2.data.length
										+ "interval = "
										+ (localSamMediaFrame2.timestamp - this.debugPreviousVideoTimestamp)
										+ "timestamp = "
										+ SysUtil
												.getRealTimeStamp(localSamMediaFrame2.timestamp));
								this.debugPreviousVideoTimestamp = localSamMediaFrame2.timestamp;
								if (!VideoRecordRtmpH264.this.useRealtime) {
									localSamMediaFrame2.cachedFragmentOffset = VideoRecordRtmpH264.this.completeFramesFile
											.length();
									localSamMediaFrame2.cachedFragmentSize = arrayOfByte2.length;
									VideoRecordRtmpH264.this.completeFileOutputStream
											.write(arrayOfByte2);
									VideoRecordRtmpH264.this.completeFileOutputStream
											.flush();
									SysUtil.samlog("cached frame offset = "
											+ localSamMediaFrame2.cachedFragmentOffset
											+ ",length = "
											+ localSamMediaFrame2.cachedFragmentSize);
									localSamMediaFrame2.data = null;
								}

								VideoRecordRtmpH264.this
										.enqueueFrame(localSamMediaFrame2);
								SysUtil.samlog("to find first idr cost = "
										+ (System.currentTimeMillis() - l2));
								// break; break; break; break;

								arrayOfByte2 = encodeFrame(localSamMediaFrame2);
								if ((arrayOfByte2 == null)
										|| (arrayOfByte2[4] != 101))
									continue;
								i++;
								if (i <= 1)
									continue;

								this.hasFirstComming = true;
							}

							try {
								if (this.frames.size() != 0) {
									this.lock.lock();
									SamMediaFrame localSamMediaFrame1 = this.frames
											.remove(0);
									this.lock.unlock();
									long l1 = System.currentTimeMillis();
									byte[] arrayOfByte1 = encodeFrame(localSamMediaFrame1);
									SysUtil.samlog("encode a frame cost = "
											+ (System.currentTimeMillis() - l1));
									if (VideoRecordRtmpH264.this.camera != null)
										VideoRecordRtmpH264.this.camera
												.addCallbackBuffer(localSamMediaFrame1.data);
									localSamMediaFrame1.data = arrayOfByte1;
									if (arrayOfByte1 == null)
										continue;
									SysUtil.samlog("enqueue a video frame,length = "
											+ localSamMediaFrame1.data.length
											+ "interval = "
											+ (localSamMediaFrame1.timestamp - this.debugPreviousVideoTimestamp)
											+ "timestamp = "
											+ SysUtil
													.getRealTimeStamp(localSamMediaFrame1.timestamp));
									this.debugPreviousVideoTimestamp = localSamMediaFrame1.timestamp;
									if (!VideoRecordRtmpH264.this.useRealtime) {
										localSamMediaFrame1.cachedFragmentOffset = VideoRecordRtmpH264.this.completeFramesFile
												.length();
										localSamMediaFrame1.cachedFragmentSize = arrayOfByte1.length;
										VideoRecordRtmpH264.this.completeFileOutputStream
												.write(arrayOfByte1);
										VideoRecordRtmpH264.this.completeFileOutputStream
												.flush();
										SysUtil.samlog("cached frame offset = "
												+ localSamMediaFrame1.cachedFragmentOffset
												+ ",length = "
												+ localSamMediaFrame1.cachedFragmentSize);
										localSamMediaFrame1.data = null;
									}
									VideoRecordRtmpH264.this
											.enqueueFrame(localSamMediaFrame1);

								}
							} catch (Exception localException1) {
								localException1.printStackTrace();
							}
						}
						Thread.sleep(30L);

					} catch (Exception localException2) {
						localException2.printStackTrace();
					}

				} else {
					VideoRecordRtmpH264.this.mediaCodec.stop();
					VideoRecordRtmpH264.this.mediaCodec.release();
					return;
				}

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
						+ AppContext.getPartyModel(VideoRecordRtmpH264.this).id
						+ "&state=" + this.state;
				SysUtil.samlog(str);
				HttpPost localHttpPost = new HttpPost(str);
				DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient();
				localDefaultHttpClient.setCookieStore(AppContext
						.getCookieStore(VideoRecordRtmpH264.this));
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
						VideoRecordRtmpH264.this.activityTitlePanel
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
						int i = 0, j = 0, k = 0;
						SpannableStringBuilder localSpannableStringBuilder;
						synchronized (VideoRecordRtmpH264.messageStrList) {
							VideoRecordRtmpH264.messageStrList.remove(0);
							synchronized (VideoRecordRtmpH264.this.chatroomTextView) {
								i = VideoRecordRtmpH264.messageStrList.size();
								if (i <= 5)
									continue;
								j = i - 5;
								localSpannableStringBuilder = new SpannableStringBuilder(
										"");
								k = j;
								if (k >= i)
									VideoRecordRtmpH264.this.chatroomTextView
											.setText(localSpannableStringBuilder);
							}
						}
						synchronized (VideoRecordRtmpH264.this.chatroomTextView) {
							if (VideoRecordRtmpH264.messageStrList.size() == 0) {
								VideoRecordRtmpH264.this.chatroomTextView
										.setVisibility(4);
								return;
							}

							localSpannableStringBuilder
									.append(VideoRecordRtmpH264.messageStrList
											.get(k));
							if (k != i - 1) {
								localSpannableStringBuilder.append("\n");
							}
						}
						k++;
					}
				}
			});
			cancel();
		}
	}

	private class RecordAACThread extends Thread {
		private volatile int audioFrameCount = 0;
		private long audioTimeStamp = 0L;
		private long debugPreviousAudioTimestamp = 0L;
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
							|| (VideoRecordRtmpH264.this.absoluteBeginTime != 0L)) {
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
			this.audioTimeStamp = (System.currentTimeMillis() - VideoRecordRtmpH264.this.absoluteBeginTime);
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
				localAudioRecord.read(arrayOfByte1, 0, arrayOfByte1.length);
				this.audioTimeStamp = (long) (128.0D + this.audioTimeStamp);

				byte[] arrayOfByte2 = RTMPH264SegmentMuxer.encodeAudioFrame(
						arrayOfByte1, arrayOfByte1.length);
				SysUtil.samlog("enqueue a audio frame,timestamp = "
						+ SysUtil.getRealTimeStamp(this.audioTimeStamp)
						+ ",interval = "
						+ (this.audioTimeStamp - this.debugPreviousAudioTimestamp));
				this.debugPreviousAudioTimestamp = this.audioTimeStamp;
				SamMediaFrame localSamMediaFrame = new SamMediaFrame();
				localSamMediaFrame.type = 0;
				localSamMediaFrame.data = arrayOfByte2;
				localSamMediaFrame.timestamp = this.audioTimeStamp;
				VideoRecordRtmpH264.this.enqueueFrame(localSamMediaFrame);
				this.audioFrameCount = (1 + this.audioFrameCount);
				if ((this.audioFrameCount <= 0)
						|| (this.audioFrameCount % 2400 != 0))
					continue;
				SysUtil.samlog("$$$,时隔5分钟，调整前=" + this.audioTimeStamp);
				this.audioTimeStamp = (System.currentTimeMillis() - VideoRecordRtmpH264.this.absoluteBeginTime);
				SysUtil.samlog("$$$,时隔5分钟，调整后=" + this.audioTimeStamp);
			}
		}
	}

	private class SendingThread extends Thread {
		private RandomAccessFile completeReadAccessFile = null;
		private long curCacheFileReadSize = 0L;
		private long debugAudioTimestamp = -1L;
		private long debugVideoTimestamp = -1L;
		public volatile boolean flag = true;
		public volatile boolean isUploadingLastPart = false;
		private int sendedVideoFrameCount = 0;

		private SendingThread(Context context) {
		}

		@Override
		public void run() {
			super.run();

			this.flag = true;
			try {
				if (!VideoRecordRtmpH264.this.useRealtime)
					this.completeReadAccessFile = new RandomAccessFile(
							VideoRecordRtmpH264.this.completeFramesFile, "r");

			} catch (Exception localException) {
				localException.printStackTrace();
			}
			// .line 2243 :cond_0 :goto_0
			while (true) {
				boolean bool1 = this.flag;
				if (!bool1) {// :goto_1
					RTMPH264SegmentMuxer.disConnectRTMP();
					return;
				}

				// .line 2245 :cond_1
				if (VideoRecordRtmpH264.this.sendingQueue.size() == 0) {
					try {
						if ((this.isUploadingLastPart)
								&& (!VideoRecordRtmpH264.this.useRealtime)) {
							// .line 2249
							SysUtil.samlog("缓存文件发送完毕，结束?!!!!!!");
							VideoRecordRtmpH264.this.stopRecord();
							VideoRecordRtmpH264.this.finish();
						}
						// .line 2253
						// :cond_2
						// ///:cond_2
						Thread.sleep(20L);
					} catch (Exception localException) {
						localException.printStackTrace();
					}
				} else {
					// //:cond_3
					// .line 2256
					VideoRecordRtmpH264.this.sendingQueueLock.lock();
					// .line 2257
					SamMediaFrame localSamMediaFrame = VideoRecordRtmpH264.this.sendingQueue
							.remove(0);
					// .line 2258
					if (localSamMediaFrame.type == 1) {// if-ne v6, v7, :cond_4
						// .line 2260
						VideoRecordRtmpH264 localVideoRecordRtmpH2642 = VideoRecordRtmpH264.this;
						localVideoRecordRtmpH2642.videosize = (-1 + localVideoRecordRtmpH2642.videosize);

						SysUtil.samlog("dequeue video, size = "
								+ VideoRecordRtmpH264.this.videosize);
					}
					// .line 2263 :cond_4
					VideoRecordRtmpH264.this.sendingQueueLock.unlock();
					// .line 2264
					SysUtil.samlog("video sending queue size = "
							+ VideoRecordRtmpH264.this.sendingQueue.size());
					// .line 2265
					// .line 2266 v5
					boolean result = false;
					if (localSamMediaFrame.type == 0) {// if-nez type, :cond_7
						// .line 2268
						result = RTMPH264SegmentMuxer.doWriteAudio(
								localSamMediaFrame.data,
								localSamMediaFrame.data.length,
								localSamMediaFrame.timestamp);
						// .line 2269
						SysUtil.samlog("send a audio,length = "
								+ localSamMediaFrame.data.length
								+ ",timestamp = "
								+ SysUtil
										.getRealTimeStamp(localSamMediaFrame.timestamp));
						// .line 2270
						if (localSamMediaFrame.timestamp <= this.debugAudioTimestamp)// if-gtz
																						// v6,
																						// :cond_5
							SysUtil.samlog("#########error audio timestamp!!");// .line
																				// 2272
						// .line 2274 :cond_5
						this.debugAudioTimestamp = localSamMediaFrame.timestamp;
					} else {
						// .line 2276 cond_7

						if (!VideoRecordRtmpH264.this.useRealtime) {// if-nez
																	// useRealtime,
																	// :cond_8
							// .line 2278
							localSamMediaFrame.data = new byte[(int) localSamMediaFrame.cachedFragmentSize];
							try {
								// .line 2280
								this.completeReadAccessFile
										.seek(localSamMediaFrame.cachedFragmentOffset);

								// .line 2281
								int readsize = this.completeReadAccessFile
										.read(localSamMediaFrame.data);
								SysUtil.samlog("read cached size =" + readsize
										+ ",should read = "
										+ localSamMediaFrame.cachedFragmentSize);
								// .line 2282
								this.curCacheFileReadSize = (localSamMediaFrame.cachedFragmentOffset + localSamMediaFrame.cachedFragmentSize);
								// .line 2284
							} catch (IOException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
						}
						// :cond_8

						long beforeWrite = System.currentTimeMillis();
						// .line 2285
						// .line 2286
						// SysUtil.debugPrintByteArray(localSamMediaFrame.data,
						// 30);

						// .line 2287
						result = RTMPH264SegmentMuxer.doWriteVideo(
								localSamMediaFrame.data,
								localSamMediaFrame.data.length,
								localSamMediaFrame.timestamp);

						SysUtil.samlog("send a video,length = "
								+ localSamMediaFrame.data.length
								+ ",timestamp = "
								+ SysUtil
										.getRealTimeStamp(localSamMediaFrame.timestamp)
								+ ",send cost = "
								+ (System.currentTimeMillis() - beforeWrite));
						// .line 2289
						this.sendedVideoFrameCount = (1 + this.sendedVideoFrameCount);
						// .line 2290
						if (localSamMediaFrame.timestamp <= this.debugVideoTimestamp)
							SysUtil.samlog("#########error video timestamp!!");
						// .line 2294
						this.debugVideoTimestamp = localSamMediaFrame.timestamp;
					}
					// .line 2296 :goto_2

					if (!result) {// if-eqz result, :cond_a
						SysUtil.samlog("发送失败");
						// .line 2302
						VideoRecordRtmpH264.this.stopRecord();
						// .line 2303
						VideoRecordRtmpH264.this.msgHandler.obtainMessage(
								MESSAGE_RTMP_SEND_FAIL).sendToTarget();
					} else {
						VideoRecordRtmpH264 localVideoRecordRtmpH2641 = VideoRecordRtmpH264.this;
						localVideoRecordRtmpH2641.rtmpSendedSize += localSamMediaFrame.data.length;

						// .line 2306
						if ((this.isUploadingLastPart)
								&& (!VideoRecordRtmpH264.this.useRealtime)) {// :cond_6
							// .line 2308
							VideoRecordRtmpH264.this.uploadProgress = (int) (100L * this.curCacheFileReadSize / VideoRecordRtmpH264.this.completeFramesFile
									.length());
							// //.line 2309
							VideoRecordRtmpH264.this.msgHandler.obtainMessage(
									227).sendToTarget();
							// .line 2310
							if (VideoRecordRtmpH264.this.sendingQueue.size() == 0) {// if-nez
																					// size,
																					// :cond_6
								SysUtil.samlog("缓存文件发送完毕，结束!!!!!!!");
								VideoRecordRtmpH264.this.stopRecord();
								VideoRecordRtmpH264.this.finish();
							}
						}
						// //:cond_6 .line 2318

						SysUtil.samlog("total send size = "
								+ VideoRecordRtmpH264.this.rtmpSendedSize
								+ ",统计速率 = "
								+ VideoRecordRtmpH264.this.rtmpSendedSize
								/ (1L + (System.currentTimeMillis() - VideoRecordRtmpH264.this.absoluteBeginTime))
								+ ",统计帧率 = "
								+ 1000
								* this.sendedVideoFrameCount
								/ (1L + (System.currentTimeMillis() - VideoRecordRtmpH264.this.absoluteBeginTime)));
						// goto/16 :goto_0
					}
				}
			}

		}
	}

	private class ZoomTask extends TimerTask {
		private volatile boolean flag = true;
		private int zoomid = 0;

		public ZoomTask(int i) {
			this.zoomid = i;
		}

		@Override
		public void run() {
			VideoRecordRtmpH264.this.msgHandler.obtainMessage(229,
					Integer.valueOf(this.zoomid)).sendToTarget();
		}
	}
}

/*
 * Location: D:\apk_unbuild\dex2jar-0.0.9.15\classes_dex2jar.jar Qualified Name:
 * com.rayclear.videomessage.ui.video.VideoRecordRtmpH264 JD-Core Version: 0.6.0
 */