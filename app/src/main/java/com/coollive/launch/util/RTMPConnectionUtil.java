package com.coollive.launch.util;

import java.util.Date;
import java.util.Map;

import com.coollive.launch.data.User;
import android.content.Context;
import android.content.Intent;
import android.os.Message;
import android.util.Log;

import com.smaxe.uv.ObjectEncoding;
import com.smaxe.uv.Responder;
import com.smaxe.uv.client.INetConnection;
import com.smaxe.uv.client.INetStream;

public class RTMPConnectionUtil {
	
	//private static final String red5_url = "rtmp://10.3.12.118";
	//private static final String red5_url = "rtmp://live.labake.cn:1935/live";//101.79.7.71
	private static final String red5_url = "rtmp://live.labake.cn:1935/live";//101.79.7.71
	
	
	public static UltraNetConnection connection;
	public static UltraNetStream netStream;
	
	public static String message;
	
	public static void ConnectRed5(Context context) {
//		License.setKey("63140-D023C-D7420-00B15-91FC7");
		connection = new UltraNetConnection();
		
		connection.configuration().put(UltraNetConnection.Configuration.INACTIVITY_TIMEOUT, -1);
        connection.configuration().put(UltraNetConnection.Configuration.RECEIVE_BUFFER_SIZE, 256 * 1024);
        connection.configuration().put(UltraNetConnection.Configuration.SEND_BUFFER_SIZE, 256 * 1024);
        
        connection.objectEncoding(ObjectEncoding.AMF0);
        
		connection.client(new ClientHandler(context));
		connection.addEventListener(new NetConnectionListener());
		Log.d("DEBUG", User.id + " - " + User.phone);
		connection.connect(red5_url);
	}
	
	/**
     *  接收服务器回调的函数 
     * @author WUQING
     *
     */
	private static class ClientHandler extends Object {
		
		private Context context;
		
		ClientHandler(Context context) {
			this.context = context;
		};
		
		//Server invoke this method
		public void getVideoInfo(String fromUserId, String fromUserName,String message) {
			System.out.println(fromUserId + " ++ " + fromUserName + " ++ " +  message);
			RTMPConnectionUtil.message = message;
			Intent intent = new Intent(context, ChatActivity.class);
			intent.putExtra("state", "callyou");
			intent.putExtra("who", fromUserName);
			context.startActivity(intent);
		}
		
		//Server invoke this method when receiver reject
		public void rejected(String userid, String username) {
			System.out.println(userid + " ++ " + username);
			Message msg = ChatActivity.handler.obtainMessage();
			msg.arg1 = 0; //receiver reject
			msg.sendToTarget();
		}
		
		//Server invoke this method when receiver receive call
		public void addMember(String userId, String userName) {
			System.out.println(userId + " ++ " + userName);
			
			Message msg = ChatActivity.handler.obtainMessage();
			msg.arg1 = 1;
			msg.sendToTarget();
			
			Log.d("DEBUG", "addMember()");
			
		}
		
		//Server invoke this method when receiver is not login
		public void Info(String information) {
			System.out.println("Info" + information);
			
			Message msg = ChatActivity.handler.obtainMessage();
			if (information.equals("client is not login the Red5 Server")) {
				msg.arg1 = 2;
				msg.sendToTarget();
			} else if (information.equals("the client is calling, please try again")) {
				msg.arg1 = 3;
				msg.sendToTarget();
			}
		}
		
	  public void onBWDone()
		  {
			  
		  }

	  public void onBWDone(Object[] paramArrayOfObject)
		  {
			  
		  }
	}
	
	/**
     *  大厅状�?侦听
     * @author Bingle
     *
     */
	private static class NetConnectionListener extends UltraNetConnection.ListenerAdapter {
		public NetConnectionListener() {}
		
		@Override
		public void onAsyncError(final INetConnection source, final String message, final Exception e) {
			System.out.println("NetConnection#onAsyncError: " + message + " "+ e);
		}

		@Override
		public void onIOError(final INetConnection source, final String message) {
			System.out.println("NetConnection#onIOError: " + message);
		}

		@Override
		public void onNetStatus(final INetConnection source, final Map<String, Object> info) {
			System.out.println("NetConnection#onNetStatus: " + info);
			final Object code = info.get("code");
			if (INetConnection.CONNECT_SUCCESS.equals(code)) {
				source.call("testConnection", new Responder() {
					@Override
					public void onResult(final Object result) {
						System.out.println("Method testConnection result: " + result);
					}

					@Override
					public void onStatus(final Map<String, Object> status) {
						System.out.println("Method testConnection status: " + status);
					}
				});
			}
		}
	}// NetConnectionListener
	
	//invoke server method createMeeting
	public static void invokeMethodFormRed5(String toUserId) {
		Date nowDate = new Date();
		String time = nowDate.getTime() +  "" + (int)((Math.random()*100)%100);
		message = time;
		connection.call("createMeeting", responder, User.id + "", toUserId, message);
		Log.d("DEBUG", "call createMeeting");
	}
	
	 /**
     *  侦听服务器调用的方法
     */
	private static Responder responder = new Responder() {


		@Override
		public void onResult(Object arg0) {
			// TODO Auto-generated method stub
			System.out.println("Method createMeeting result: " + arg0);
			callback_createMeeting();
		}


		@Override
		public void onStatus(Map<String, Object> arg0) {
			// TODO Auto-generated method stub
			System.out.println("Method createMeetiong status: " + arg0);
		}
		
	};
	
	//invoke server method reject
	public static void invokeRejectMethod() {
		connection.call("reject", null, message, User.id);
	}
	
	private static void callback_createMeeting() {		
		startVideo();
	}
	
	
	private static void startVideo() {		
		Log.d("DEBUG", "startVideo()");
		netStream = new UltraNetStream(connection);
		netStream.addEventListener(new UltraNetStream.ListenerAdapter() {
			@Override
            public void onNetStatus(final INetStream source, final Map<String, Object> info){
                System.out.println("Publisher#NetStream#onNetStatus: " + info);
                Log.d("DEBUG", "Publisher#NetStream#onNetStatus: " + info);
                
                final Object code = info.get("code");
                
                if (INetStream.PUBLISH_START.equals(code)) {
                    if (VideoActivity.aCamera != null) {
                        netStream.attachCamera(VideoActivity.aCamera, -1 /*snapshotMilliseconds*/);
                        Log.d("DEBUG", "aCamera.start()");
                        VideoActivity.aCamera.start();
                    } else {
                    	Log.d("DEBUG", "camera == null");
                    }
                }    
            }
			
		});
		
		Log.i("DEBUG", "User.id:"+User.id+" message"+message);
		netStream.publish(User.id + message, INetStream.LIVE);//"mp4:"+User.id + message+".mp4"
		//netStream.publish("demo", UltraNetStream.RECORD);//"mp4:"+User.id + message+".mp4"
	}
	
	
	//invoke server method enterMeeting
	public static void invokeEnterMeetingMethod() {
		connection.call("enterMeeting", enterResp, message, User.id);
	}
	
	private static Responder enterResp = new Responder() {


		@Override
		public void onResult(Object arg0) {
			// TODO Auto-generated method stub
			System.out.println("Method enterMeeting result: " + arg0);
			callback_enterMeeting();
		}


		@Override
		public void onStatus(Map<String, Object> arg0) {
			// TODO Auto-generated method stub
			System.out.println("Method enterMeetiong status: " + arg0);
		}
		
	};
	
	private static void callback_enterMeeting() {
		Message msg = ChatActivity.handler.obtainMessage();
		msg.arg1 = 1;
		msg.sendToTarget();
		
		startVideo();
	}
}
