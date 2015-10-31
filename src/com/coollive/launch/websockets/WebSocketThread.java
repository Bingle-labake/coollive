package com.coollive.launch.websockets;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import org.json.JSONException;
import org.json.JSONObject;

import com.coollive.launch.common.AppContext;
import com.coollive.launch.ui.EditActity;

import java.net.URI;
import java.net.URISyntaxException;

public class WebSocketThread extends Thread {
    String LOG_TAG = getClass().getSimpleName();
    int client_id = 0;    
    ChatClient connector = null;
    Context context;
    Handler msgHandler;
    
    public WebSocketThread(Context context, Handler msgHandler) {
    	this.context = context;
    	this.msgHandler = msgHandler;
    }
    
    OnDataHandler dataHandler = new OnDataHandler() {

        @Override
        public void onData(JSONObject message) {
        	Log.d(LOG_TAG, message.toString());
        	
        	JSONObject data;
			try {
				data = message;
				if(data.getString("cmd").equals("getRoomsHistory")) {
					System.out.println("OnDataHandler#getRoomsHistory");					
            	}else if(data.getString("cmd").equals("joinRooms")) {
            		JSONObject joinJson = new JSONObject();
            		joinJson.put("fd", client_id);
                    joinJson.put("uid", 5);
                    joinJson.put("cmd", "getRoomsHistory");
                    joinJson.put("rid", 106);   
                    
                    connector.request(joinJson.toString(), this);
                    
            	}else if(data.getString("cmd").equals("newUser")) {
            		msgHandler.obtainMessage(225, message.toString()).sendToTarget();
            		
            		System.out.println("OnDataHandler#newUser");		
            	}else if(data.getString("cmd").equals("fromMsg")) {
            		msgHandler.obtainMessage(225, message.toString()).sendToTarget();
            		
            		System.out.println("OnDataHandler#fromMsg");		
            	}else if(data.getString("cmd").equals("offline")) {
            		msgHandler.obtainMessage(225, message.toString()).sendToTarget();
            		
            		System.out.println("OnDataHandler#offline");		
            	}else if(data.getString("cmd").equals("fromPresentGift")) {
            		msgHandler.obtainMessage(225, message.toString()).sendToTarget();
            		
            		System.out.println("OnDataHandler#fromPresentGift");		
            	}
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}                        
        }
    };

    OnHandshakeSuccessHandler onConnectorHandshakeSuccessHandler = new OnHandshakeSuccessHandler() {
        @Override
        public void onSuccess(ChatClient client, JSONObject jsonObject) {
            try {
            	System.out.println("###############LoginActivity::OnHandshakeSuccessHandler########");
            	JSONObject joinJson = new JSONObject();            	
            	
                client_id = jsonObject.getInt("client_id");
                if(client_id > 0) {
                	
                	int uid = AppContext.getUserID(context);
                	String username = AppContext.userNickNameString;
                	int rid = AppContext.getPartyModel(context).id;
                	
                	if(uid > 0 && rid > 0) {                		
                    	joinJson.put("fd", client_id);
                        joinJson.put("uid", uid);
                        joinJson.put("cmd", "joinRooms");
                        joinJson.put("rid", rid);
                        joinJson.put("name", username);
                        joinJson.put("avatar", "");
                        
                        client.request(joinJson.toString(), dataHandler);
                	}else {
                		System.out.println("uid:"+uid+", username:"+username+", rid:"+rid);
                	}
                }else {
                	System.out.println("[ERROR]###############LoginActivity::client_id:"+client_id);
                }
            } catch (JSONException e) {
                Log.e(LOG_TAG, e.getMessage(), e);
            }
        }
    };  
    
    OnErrorHandler onErrorHandler = new OnErrorHandler() {
        @Override
        public void onError(Exception e) {
            Log.e(LOG_TAG, e.getMessage(), e);
        }
    };

    public void connect() {
        try {
            Log.d(LOG_TAG, "start connector to Chat server");
            
            String wsUrl = "ws://"+AppContext.webSocketHost+":"+AppContext.webSocketPort;
            connector = new ChatClient(new URI(wsUrl));
            connector.setOnHandshakeSuccessHandler(onConnectorHandshakeSuccessHandler);
            connector.setOnErrorHandler(onErrorHandler);
            connector.connect();
            
            Log.d(LOG_TAG, "start connector to Chat ........");
        } catch (URISyntaxException e) {
            Log.e(LOG_TAG, e.getMessage(), e);
        }
    }
    
    public void run() {
    	if(connector != null) {
    		connector.close();
    	}
    	this.connect();
    }
    
    public void close() {
		if(connector != null) {
			if(!connector.isClosed()) {
				connector.close();
			}			
		}		
	}
    
}
