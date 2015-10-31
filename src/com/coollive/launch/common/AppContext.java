package com.coollive.launch.common;

import android.content.Context;
import android.content.SharedPreferences;
import com.coollive.launch.model.PartyModel;
import java.util.List;
import org.apache.http.client.CookieStore;
import org.apache.http.cookie.Cookie;
import org.apache.http.impl.client.BasicCookieStore;
import org.apache.http.impl.cookie.BasicClientCookie;
import org.json.JSONArray;

public class AppContext {
	public static final int APP_UPGRADE_LEVEL_MUST_UPGRADE = 2;
	public static final int APP_UPGRADE_LEVEL_NEW_THERE = 1;
	public static final int APP_UPGRADE_LEVEL_NONE = 0;
	public static final String APP_VERSION = "a0000111";
	public static final boolean DEBUG = true;
	public static final int NOTIFY_TYPE_APP_LAUNCH = 1;
	public static final int NOTIFY_TYPE_MESSAGE = 2;
	public static final int RECORD_MODE_HARD_ENCODE = 1;
	public static final int RECORD_MODE_NOT_SURE_ENCODE = 2;
	public static final int RECORD_MODE_SOFT_ENCODE = 0;
	public static int apkSize = 0;
	private static CookieStore cookieStore;
	public static final String createNewActivityURL = "/api/live/new_act";
	public static final String deleteActivityURL = "/api/live/del_act?";
	public static final String editActivityURL = "/api/live/edit_act?";
	public static final String upActivityState = "/api/live/state_act?";
	public static int encode_mode = 0;
	public static final String my_program_videos = "/api%s/live/my_program_videos?device=ios&id=%s";
	public static final String endActivityURL = "/api/live/close_act/%d?";
	public static final String forget_passwdURL = "/api/coollive/password/get?";
	public static final String getMyActivitiesURL = "/api/live/my_act?";
	public static final String addVideos = "/api/live/live_add_video?";
	public static final String sendCheckcode = "/api/users/send_sms?";	
	public static final String resetPasswd = "/api/users/reset?";	
	
	public static final String receiveSmsNum = "10690123540314";	
	
	public static String webSocketHost = "42.120.4.50";
	public static int webSocketPort = 9505;
	
	public static final String getServerAddrAndPortURL = "http://coollive.labake.cn/server?code=coollive";
	public static String hostAddr;
	public static int hostPort = 0;
	public static String inetAddr = "http://coollive.labake.cn:80";
	public static boolean isDebugMode = false;
	private static boolean isUserAvailable = false;
	public static final String loginURL = "/api/users/sign_in";
	public static JSONArray newfeatures;
	private static PartyModel partyModel;
	public static final String registerURL = "/api/users/registrations?";
	private static String serverAddress;
	private static String serverAppName;
	private static int serverPort;
	public static String ss_key;
	private static String unAvailableReason;
	public static int upgradeState;
	public static String upgradeUrl;
	public static String userNickNameString;
	private static int userServerId;
	private static String usernameString;

	static {
		hostAddr = "demo.api.saiku.com.cn";
		hostPort = 80;
		partyModel = null;
		encode_mode = 2;
		serverAddress = "";
		serverPort = -1;
		serverAppName = "";
		ss_key = "";
		isUserAvailable = false;
		unAvailableReason = "";
		isDebugMode = true;
		cookieStore = null;
		userServerId = -1;
		userNickNameString = null;
		usernameString = null;
		upgradeState = -1;
		upgradeUrl = null;
		newfeatures = null;
		apkSize = 0;
	}

	public static final CookieStore getCookieStore(Context paramContext) {
		if (cookieStore == null) {
			try {
				cookieStore = new BasicCookieStore();
				SharedPreferences localSharedPreferences = paramContext
						.getSharedPreferences("appcontext", 0);
				BasicClientCookie localBasicClientCookie = new BasicClientCookie(
						localSharedPreferences.getString("cookie_name",
								"cookie_name"), localSharedPreferences.getString(
								"cookie_value", "cookie_value"));
				localBasicClientCookie.setVersion(localSharedPreferences.getInt(
						"cookie_version", 0));
				localBasicClientCookie.setDomain(localSharedPreferences.getString(
						"cookie_domain", "cookie_domain"));
				localBasicClientCookie.setPath(localSharedPreferences.getString(
						"cookie_path", "cookie_path"));
				localBasicClientCookie.setExpiryDate(null);
				cookieStore.addCookie(localBasicClientCookie);
				
			} catch (Exception localException) {
				System.out.println("@@@@@@@@@@@@@@@@");
				localException.printStackTrace();
			}
		}
		return cookieStore;		
	}

	public static final PartyModel getPartyModel(Context paramContext) {
		try {
			if (partyModel != null)
				return partyModel;
			partyModel = new PartyModel();
			SharedPreferences localSharedPreferences = paramContext
					.getSharedPreferences("appcontext", 0);
			partyModel.description = localSharedPreferences.getString(
					"party_description", "");
			partyModel.duration = localSharedPreferences.getLong(
					"party_duration", 0L);
			partyModel.id = localSharedPreferences.getInt("party_id", -1);
			partyModel.joinNum = localSharedPreferences.getInt("party_joinNum",
					0);
			partyModel.passwd = localSharedPreferences.getString(
					"party_passwd", null);
			partyModel.rtmpUrl = localSharedPreferences.getString(
					"party_rtmpUrl", "");
			partyModel.shareMessage = localSharedPreferences.getString(
					"party_shareMessage", "");
			partyModel.starttime = localSharedPreferences.getLong(
					"party_starttime", 0L);
			partyModel.thumburl = localSharedPreferences.getString(
					"party_thumburl", "");
			partyModel.title = localSharedPreferences.getString("party_title",
					"");
			partyModel.urlToken = localSharedPreferences.getString(
					"party_urlToken", "");
			return partyModel;
		} catch (Exception localException) {
			while (true)
				localException.printStackTrace();
		}
	}

	public static final String getServerAddress(Context paramContext) {
		if (SysUtil.isStringEmpty(serverAddress))
			serverAddress = paramContext.getSharedPreferences("appcontext", 0)
					.getString("serveraddr", "");
		return serverAddress;
	}

	public static final String getServerAppName(Context paramContext) {
		if (SysUtil.isStringEmpty(serverAppName))
			serverAppName = paramContext.getSharedPreferences("appcontext", 0)
					.getString("serverappname", "");
		return serverAppName;
	}

	public static final int getServerport(Context paramContext) {
		if (serverPort <= 0)
			serverPort = paramContext.getSharedPreferences("appcontext", 0)
					.getInt("serverport", 0);
		return serverPort;
	}

	public static final String getUnavailableReason(Context paramContext) {
		if (SysUtil.isStringEmpty(unAvailableReason))
			unAvailableReason = paramContext.getSharedPreferences("appcontext",
					0).getString("unAvailableReason", "");
		return unAvailableReason;
	}

	public static final boolean getUserAvailable(Context paramContext) {
		return paramContext.getSharedPreferences("appcontext", 0).getBoolean(
				"available", false);
	}

	public static final int getUserID(Context paramContext) {
		if (userServerId < 0)
			userServerId = paramContext.getSharedPreferences("appcontext", 0)
					.getInt("userid", -1);
		return userServerId;
	}

	public static final String getUserName(Context paramContext) {
		if (SysUtil.isStringEmpty(usernameString))
			usernameString = paramContext.getSharedPreferences("appcontext", 0)
					.getString("usernmae", "");
		return usernameString;
	}

	public static final void saveCookieStore(Context paramContext,
			CookieStore paramCookieStore) {
		if (paramCookieStore == null) {
			return;
		}

		try {
			cookieStore = paramCookieStore;
			List localList = paramCookieStore.getCookies();
			if ((localList == null) || (localList.size() == 0))
				return;
			
			Cookie localCookie = (Cookie) localList.get(0);
			int i = localCookie.getVersion();
			String str1 = localCookie.getName();
			String str2 = localCookie.getValue();
			String str3 = localCookie.getDomain();
			String str4 = localCookie.getPath();
			
			SharedPreferences.Editor localEditor = paramContext
					.getSharedPreferences("appcontext", 0).edit();
			localEditor.putInt("cookie_version", i);
			localEditor.putString("cookie_name", str1);
			localEditor.putString("cookie_value", str2);
			localEditor.putString("cookie_domain", str3);
			localEditor.putString("cookie_path", str4);
			localEditor.commit();
			return;
		} catch (Exception localException) {
			localException.printStackTrace();
			System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
		}
	}

	public static final void savePartyModel(Context paramContext,
			PartyModel paramPartyModel) {
		try {
			partyModel = paramPartyModel;
			SharedPreferences.Editor localEditor = paramContext
					.getSharedPreferences("appcontext", 0).edit();
			localEditor.putString("party_description",
					paramPartyModel.description);
			localEditor.putString("party_passwd", paramPartyModel.passwd);
			localEditor.putString("party_rtmpUrl", paramPartyModel.rtmpUrl);
			localEditor.putString("party_shareMessage",
					paramPartyModel.shareMessage);
			localEditor.putString("party_thumburl", paramPartyModel.thumburl);
			localEditor.putString("party_title", paramPartyModel.title);
			localEditor.putString("party_urlToken", paramPartyModel.urlToken);
			localEditor.putLong("party_duration", paramPartyModel.duration);
			localEditor.putInt("party_id", paramPartyModel.id);
			localEditor.putInt("party_joinNum", paramPartyModel.joinNum);
			localEditor.putLong("party_starttime", paramPartyModel.starttime);
			localEditor.commit();
			return;
		} catch (Exception localException) {
			localException.printStackTrace();
		}
	}

	public static final void saveUserID(Context paramContext, int paramInt) {
		userServerId = paramInt;
		SharedPreferences.Editor localEditor = paramContext
				.getSharedPreferences("appcontext", 0).edit();
		localEditor.putInt("userid", paramInt);
		localEditor.commit();
	}

	
	public static final void saveUserName(Context paramContext,
			String paramString) {
		usernameString = paramString;
		SharedPreferences.Editor localEditor = paramContext
				.getSharedPreferences("appcontext", 0).edit();
		localEditor.putString("usernmae", paramString);
		localEditor.commit();
	}

	public static final void setServerAddress(Context paramContext,
			String paramString) {
		serverAddress = paramString;
		SharedPreferences.Editor localEditor = paramContext
				.getSharedPreferences("appcontext", 0).edit();
		localEditor.putString("serveraddr", paramString);
		localEditor.commit();
	}

	public static final void setServerAppName(Context paramContext,
			String paramString) {
		serverAppName = paramString;
		SharedPreferences.Editor localEditor = paramContext
				.getSharedPreferences("appcontext", 0).edit();
		localEditor.putString("serverappname", paramString);
		localEditor.commit();
	}

	public static final void setServerPort(Context paramContext, int paramInt) {
		serverPort = paramInt;
		SharedPreferences.Editor localEditor = paramContext
				.getSharedPreferences("appcontext", 0).edit();
		localEditor.putInt("serverport", paramInt);
		localEditor.commit();
	}

	public static final void setUnavailableReason(Context paramContext,
			String paramString) {
		unAvailableReason = paramString;
		SharedPreferences.Editor localEditor = paramContext
				.getSharedPreferences("appcontext", 0).edit();
		localEditor.putString("unAvailableReason", paramString);
		localEditor.commit();
	}

	public static final void setUserAvaiable(Context paramContext,
			boolean paramBoolean) {
		SharedPreferences.Editor localEditor = paramContext
				.getSharedPreferences("appcontext", 0).edit();
		localEditor.putBoolean("available", paramBoolean);
		localEditor.commit();
	}
}

/*
 * Location: D:\apk_unbuild\dex2jar-0.0.9.15\classes_dex2jar.jar Qualified Name:
 * com.rayclear.videomessage.common.AppContext JD-Core Version: 0.6.0
 */