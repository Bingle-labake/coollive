package com.coollive.launch.websockets;

import org.java_websocket.client.WebSocketClient;
import org.java_websocket.drafts.Draft;
import org.java_websocket.handshake.ServerHandshake;
import org.json.JSONException;
import org.json.JSONObject;

import java.net.URI;
import java.nio.ByteBuffer;
import java.util.*;

/**
 * Created with IntelliJ IDEA.
 * User: jiangzm
 * Date: 13-8-8
 * Time: 下午10:04
 * To change this template use File | Settings | File Templates.
 */
public class ChatClient extends WebSocketClient {
    public static final String HANDSHAKE_RES_HOST_KEY = "host";
    public static final String HANDSHAKE_RES_PORT_KEY = "port";
    public static final String HANDSHAKE_RES_CODE_KEY = "code";

    //private Map<Integer, OnDataHandler> onDataHandlerMap = new HashMap<Integer, OnDataHandler>();
    private OnDataHandler onDataHandler;
    
    private boolean isConnected;

    private OnHandshakeSuccessHandler onHandshakeSuccessHandler;
    private OnErrorHandler onErrorHandler;
    private OnCloseHandler onCloseHandler;

    public ChatClient(URI serverURI) {
        super(serverURI);
    }

    public ChatClient(URI serverUri, Draft draft) {
        super(serverUri, draft);
    }

    public ChatClient(URI serverUri, Draft draft, Map<String, String> headers, int connecttimeout) {
        super(serverUri, draft, headers, connecttimeout);
    }

    public void connect() {
    	System.out.println("####### super.connect()....1");
        super.connect();
    }

    @Override
    public void close() {
        isConnected = false;
        super.close();
    }

    public boolean isConnected() {
        return isConnected;
    }

    @Override
    public void onOpen(ServerHandshake serverHandshake) {
        System.out.println("ChatClient::onOpen().....opened connection");
        try {        	
            JSONObject jsonObject = HandshakeProvider.handshakeObject();            
            send(jsonObject.toString());
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    @Override
    public void onMessage(String message) {
        System.out.println("###ChatClient():onMessage(String):received: " + message);
        try {
	        JSONObject data = new JSONObject(message);
	        
	        if(data.getString("cmd").equals("handshake")) {
	        	if (onHandshakeSuccessHandler != null) {
		            onHandshakeSuccessHandler.onSuccess(this, data);
		        }else {
		        	System.out.println("###ChatClient():onMessage(String):received: ");
		        }
	        }else {
	        	try {
                    onData(message);
                    System.out.println("###4");
                } catch (JSONException e) {
                    e.printStackTrace();
                }
	        }	        
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void onMessage(ByteBuffer buffer) {
        System.out.println("###ChatClient():onMessage(ByteBuffer):received: " + buffer);
        
    }

    public void request(String msg, OnDataHandler onDataHandler) throws JSONException {
        sendMessage(msg);
        this.onDataHandler = onDataHandler;         
    }

    public void sendMessage(String msg) throws JSONException {
        send(msg);
    }

    private void onData(String msg) throws JSONException {
    	JSONObject message = new JSONObject(msg);
        //int client_id = message.getInt("fd");
        if (this.onDataHandler != null) {
        	this.onDataHandler.onData(message);
        } else {
            System.out.println("can not find onDataHander for msg:" + message.toString());
        }
        System.out.println("onData msg :" + msg);
    }
  
    @Override
    public void onClose(int code, String msg, boolean remote) {
        System.out.println("Connection closed by " + (remote ? "remote peer" : "us"));
        if (onCloseHandler != null) {
            onCloseHandler.onClose(code, msg, remote);
        }
    }

    @Override
    public void onError(Exception e) {
        if (onErrorHandler != null) {
            onErrorHandler.onError(e);
        }
    }

    public OnErrorHandler getOnErrorHandler() {
        return onErrorHandler;
    }

    public void setOnErrorHandler(OnErrorHandler onErrorHandler) {
        this.onErrorHandler = onErrorHandler;
    }

    public OnHandshakeSuccessHandler getOnHandshakeSuccessHandler() {
        return onHandshakeSuccessHandler;
    }

    public void setOnHandshakeSuccessHandler(OnHandshakeSuccessHandler onHandshakeSuccessHandler) {
        this.onHandshakeSuccessHandler = onHandshakeSuccessHandler;
    }

    public OnCloseHandler getOnCloseHandler() {
        return onCloseHandler;
    }

    public void setOnCloseHandler(OnCloseHandler onCloseHandler) {
        this.onCloseHandler = onCloseHandler;
    }

}
