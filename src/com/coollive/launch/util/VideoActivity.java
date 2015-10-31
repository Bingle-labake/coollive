package com.coollive.launch.util;
//video talk with rtmpserver and rtmp push

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.Map;

import com.coollive.launch.R;
import com.coollive.launch.core.h264encoder;
import com.smaxe.io.ByteArray;
import com.smaxe.uv.client.INetStream;
import com.smaxe.uv.client.NetStream;
import com.smaxe.uv.client.camera.AbstractCamera;
import com.smaxe.uv.stream.support.MediaDataByteArray;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.hardware.Camera;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.Window;
import android.view.WindowManager;

public class VideoActivity extends Activity{
	
	final String TAG = "VideoActivity";
	
	private boolean active;
	public static AndroidCamera aCamera;
	private h264encoder mH264encoder;
	private long handle;
	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		//the window without title
		this.requestWindowFeature(Window.FEATURE_NO_TITLE);
		getWindow().setFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON, WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
		
		setContentView(R.layout.layout_chat);
		mH264encoder = new h264encoder();
		aCamera = new AndroidCamera(VideoActivity.this);
		active = true;
	}
	
	@Override
	public boolean onKeyDown(int keyCode, KeyEvent event) {
		
		if (keyCode == KeyEvent.KEYCODE_BACK) {//�?�� 
			new AlertDialog.Builder(VideoActivity.this)
			.setMessage(R.string.dialog_exit)
			.setPositiveButton(R.string.dialog_ok, new DialogInterface.OnClickListener() {
				

				@Override
				public void onClick(DialogInterface dialog, int which) {
					// TODO Auto-generated method stub
					active = false;
					finish();
				}
			})
			.setNegativeButton(R.string.dialog_cancel, new DialogInterface.OnClickListener() {
				
		
				@Override
				public void onClick(DialogInterface dialog, int which) {
					// TODO Auto-generated method stub
					dialog.dismiss();
				}
			}).show();
			return true;
		} else {
			return super.onKeyDown(keyCode, event);
		}
	}
	
	@Override
	public void onStop() {
		super.onStop();
		aCamera = null;
		if (RTMPConnectionUtil.netStream != null) {
			RTMPConnectionUtil.netStream.close();
		}
		
		Log.d("DEBUG", "onStop");
	}
	
	@Override
	public void onDestroy() {
		super.onDestroy();
		
		Log.d("DEBUG", "onDestroy()");
	}
	
	public class AndroidCamera extends AbstractCamera implements SurfaceHolder.Callback, Camera.PreviewCallback {
		
		private SurfaceView surfaceView;
		private SurfaceHolder surfaceHolder;
		private Camera camera;
		
		private int width;
		private int height;
		
		private boolean init;
		
		int blockWidth;
        int blockHeight;
        int timeBetweenFrames; // 1000 / frameRate
        int frameCounter;
        byte[] previous;
		
		public AndroidCamera(Context context) {
		       
		       
	        surfaceView = (SurfaceView)((Activity) context).findViewById(R.id.surfaceView);
			surfaceHolder = surfaceView.getHolder();
			surfaceHolder.addCallback(AndroidCamera.this);
			surfaceHolder.setType(SurfaceHolder.SURFACE_TYPE_PUSH_BUFFERS);
			
			width = 352;
			height = 288;
			
			handle = mH264encoder.initEncoder(width, height);
			
			init = false;
			Log.d("DEBUG", "AndroidCamera()");
		}
		
		private void startVideo() {
			Log.d("DEBUG", "startVideo()...");
			
			RTMPConnectionUtil.netStream = new UltraNetStream(RTMPConnectionUtil.connection);
			RTMPConnectionUtil.netStream.addEventListener(new NetStream.ListenerAdapter() {
				
				@Override
	            public void onNetStatus(final INetStream source, final Map<String, Object> info){
	                Log.d("DEBUG", "Publisher#NetStream#onNetStatus: " + info);
	                
	                final Object code = info.get("code");	                
	                if (INetStream.PUBLISH_START.equals(code)) {
	                    if (VideoActivity.aCamera != null) {
	                    	RTMPConnectionUtil.netStream.attachCamera(aCamera, -1 /*snapshotMilliseconds*/);
	                        Log.d("DEBUG", "aCamera.start()");
	                        aCamera.start();
	                    } else {
	                    	Log.d("DEBUG", "camera == null");
	                    }
	                }    
	            }
			});
			
			//RTMPConnectionUtil.netStream.publish("aaa", NetStream.RECORD);
			RTMPConnectionUtil.netStream.publish("demo", INetStream.LIVE);
		}
		
		public void start() {
			camera.startPreview();
		}
		
		public void printHexString(byte[] b) { 
			for (int i = 0; i < b.length; i++) { 
				String hex = Integer.toHexString(b[i] & 0xFF); 
				if (hex.length() == 1) { 
				hex = '0' + hex; 
			} 
				Log.i(TAG, "#########1:"+hex.toUpperCase());
			} 
	}
		

		@Override
		public void onPreviewFrame(byte[] arg0, Camera arg1) {
			// TODO Auto-generated method stub
			if (!active) return;
			if (!init) {
				blockWidth = 32;
		        blockHeight = 32;
		        timeBetweenFrames = 100; // 1000 / frameRate
		        frameCounter = 0;
		        previous = null;
				init = true;
			}
			final long ctime = System.currentTimeMillis();
			Log.i(TAG, ""+arg0.length);
			/**##########*/
            byte[] current = RemoteUtil.decodeYUV420SP2RGB(arg0, width, height);
            try {
//            		int byte_result = Decode(arg0);/**将采集到的每�?��视频数据用H264编码*/
//        			byte[] bytes1 = copyOf(out,byte_result);
//        			Log.i(TAG, "byte数组的长度："+bytes1.length);
            	 /**打包该编码后的H264数据*/
                final byte[] packet = RemoteUtil.encode(current, previous, blockWidth, blockHeight, width, height);
        		fireOnVideoData(new MediaDataByteArray(timeBetweenFrames, new ByteArray(packet)));
                previous = current;
                if (++frameCounter % 10 == 0) previous = null;
                    
            }
            catch (Exception e) {
                e.printStackTrace();
            }
            final int spent = (int) (System.currentTimeMillis() - ctime);
            try {
            	Log.i(TAG, "#####2"+Math.max(0, timeBetweenFrames - spent)+" s");
				Thread.sleep(Math.max(0, timeBetweenFrames - spent));
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		public byte[] copyOf(byte[] arr,int len)
		{
			Class type=arr.getClass().getComponentType();
			byte[] target=(byte[])Array.newInstance(type, len);
			System.arraycopy(arr, 0, target, 0, len);
			return target;
		}
		
		private byte[] out = new byte[20*1024];
		long start = 0;
		long end = 0;
		private int Decode(byte[] yuvData){
			start = System.currentTimeMillis();
			int result = mH264encoder.encodeframe(handle, -1, yuvData, yuvData.length, out);
			end = System.currentTimeMillis();
			Log.e(TAG, "encode result:"+result+"--encode time:"+(end-start));
			if(result > 0){
				try {
					FileOutputStream file_out = new FileOutputStream ("/sdcard/x264_video_activity.264",true);
					file_out.write(out,0,result);
					file_out.close();
				} catch (FileNotFoundException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
            //this.setPrewDataGetHandler();
            
			return result;
		}
		

		@Override
		public void surfaceChanged(SurfaceHolder holder, int format, int width,
				int height) {
			// TODO Auto-generated method stub
			//�?��预览直播
			camera.startPreview();
			camera.unlock();
			
			//直接直播  (注释直接直播  2014-10-15)
			//startVideo();
			//Log.d("DEBUG", "surfaceChanged()");
		}


		@Override
		public void surfaceCreated(SurfaceHolder holder) {
			// TODO Auto-generated method stub
			camera = Camera.open();
			try {
				camera.setPreviewDisplay(surfaceHolder);
				camera.setPreviewCallback(this);
				Camera.Parameters params = camera.getParameters();
				params.setPreviewSize(width, height);
				camera.setParameters(params);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				camera.release();
				camera = null;
			}
			
			Log.d("DEBUG", "surfaceCreated()");
		}


		@Override
		public void surfaceDestroyed(SurfaceHolder holder) {
			// TODO Auto-generated method stub
			if (camera != null) {
				camera.stopPreview();
				camera.release();
				camera = null;
			}
			mH264encoder.destory(handle);
			Log.d("DEBUG", "surfaceDestroy()");
		}
		
	} //AndroidCamera
}
