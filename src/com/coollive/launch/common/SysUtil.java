package com.coollive.launch.common;

import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.media.MediaPlayer;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.List;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.cookie.Cookie;
import org.apache.http.entity.mime.MultipartEntity;
import org.apache.http.entity.mime.content.StringBody;
import org.apache.http.impl.client.BasicCookieStore;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.cookie.BasicClientCookie;
import org.apache.http.params.HttpParams;
import org.apache.http.util.EntityUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.coollive.launch.R;

public class SysUtil {
	public static final String KEY_REASON = "reason";
	public static final String KEY_RESULT_CODE = "result";

	public static byte[] MakeStreamInfo(short paramShort1, short paramShort2,
			int paramInt1, String paramString1, int paramInt2,
			String paramString2) {
		return null;
	}

	public static void debugPrintByteArray(byte[] paramArrayOfByte, int paramInt) {
		if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0)
				|| (paramInt < 1)) {
			samlog("Hex is empty!");
			return;
		}

		StringBuffer localStringBuffer = new StringBuffer();
		int i = 0;
		int m = 0;

		while (true) {
			int n = 0;
			int k;

			try {
				int j = paramArrayOfByte.length;
				k = paramArrayOfByte.length;

				if (paramInt >= j)
					k = paramInt;

				if (i < k)
					samlog(localStringBuffer.toString());

				if ((i <= 0) || (i % 8 != 0))
					localStringBuffer.append("   ");

				if ((i <= 0) || (i % 16 != 0))
					localStringBuffer.append("\n");

				if (m < 2)
					localStringBuffer.append(" ");
				i++;

				if (m != 0)
					continue;

				n = 0xF & paramArrayOfByte[i] >> 4;
				n = 0xF & paramArrayOfByte[i];

			} catch (Exception localException) {
				localException.printStackTrace();
			}

			switch (n) {
			case 0:
				localStringBuffer.append("0");
			case 1:
				localStringBuffer.append("1");
			case 2:
				localStringBuffer.append("2");
			case 3:
				localStringBuffer.append("3");
			case 4:
				localStringBuffer.append("4");
			case 5:
				localStringBuffer.append("5");
			case 6:
				localStringBuffer.append("6");
			case 7:
				localStringBuffer.append("7");
			case 8:
				localStringBuffer.append("8");
			case 9:
				localStringBuffer.append("9");
			case 10:
				localStringBuffer.append("A");
			case 11:
				localStringBuffer.append("B");
			case 12:
				localStringBuffer.append("C");
			case 13:
				localStringBuffer.append("D");
			case 14:
				localStringBuffer.append("E");
			case 15:
				localStringBuffer.append("F");
			}
			m++;
		}
	}

	public static void clearApp(Context paramContext) {
		SharedPreferences.Editor localEditor = paramContext
				.getSharedPreferences("testcrash", 0).edit();
		localEditor.putBoolean("isquitbyuser", true);
		localEditor.commit();
	}

	public static String deleteExtraComma(String paramString) {
		if (isStringEmpty(paramString))
			return "";
		StringBuffer localStringBuffer = new StringBuffer();
		String[] arrayOfString = paramString.split(",");
		int i = arrayOfString.length;
		for (int j = 0;; j++) {
			if (j >= i) {
				if (localStringBuffer.length() > 0)
					localStringBuffer.deleteCharAt(0);
				return localStringBuffer.toString();
			}
			String str = arrayOfString[j];
			if (isStringEmpty(str))
				continue;
			localStringBuffer.append(",").append(str);
		}
	}

	public static String formatFileSize(long paramLong) {
		StringBuffer localStringBuffer = new StringBuffer();
		if (paramLong / 1048576L > 0L) {
			localStringBuffer.append(new DecimalFormat("0.00")
					.format(paramLong / 1048576.0F));
			localStringBuffer.append("Mb");
		} else {
			localStringBuffer.append(paramLong / 1024L);
			localStringBuffer.append("Kb");
		}
		return localStringBuffer.toString();
	}

	public static String formatSpaceMb(int paramInt) {
		if (paramInt < 10)
			return "<10M";
		if (paramInt >= 1000) {
			Object[] arrayOfObject2 = new Object[1];
			arrayOfObject2[0] = Double.valueOf(paramInt / 1000.0D);
			return String.format("剩余%2.2fG", arrayOfObject2);
		}
		Object[] arrayOfObject1 = new Object[1];
		arrayOfObject1[0] = Integer.valueOf(paramInt);
		return String.format("剩余%dMb", arrayOfObject1);
	}

	public static final byte[] get2LengthBytesFromInt(int paramInt) {
		byte[] arrayOfByte = new byte[2];
		arrayOfByte[0] = (byte) (0xFF & paramInt >> 8);
		arrayOfByte[1] = (byte) (0xFF & paramInt >> 0);
		return arrayOfByte;
	}

	public static final byte[] get4LengthBytesFromInt(int paramInt) {
		byte[] arrayOfByte = new byte[4];
		arrayOfByte[0] = (byte) (0xFF & paramInt >> 24);
		arrayOfByte[1] = (byte) (0xFF & paramInt >> 16);
		arrayOfByte[2] = (byte) (0xFF & paramInt >> 8);
		arrayOfByte[3] = (byte) (0xFF & paramInt >> 0);
		return arrayOfByte;
	}

	public static int getAppVersionInt(Context paramContext) {
		try {
			int i = paramContext.getPackageManager().getPackageInfo(
					paramContext.getPackageName(), 0).versionCode;
			return i;
		} catch (Exception localException) {
		}
		return -1;
	}

	public static String getDateStringFromMilliTime(long paramLong) {
		StringBuffer localStringBuffer = new StringBuffer();
		Calendar localCalendar = Calendar.getInstance();
		int i, j;
		if (paramLong <= 0L) {
			localCalendar.setTimeInMillis(System.currentTimeMillis());			
		} else {
			localCalendar.setTimeInMillis(paramLong);
		}
		
		localStringBuffer.append(localCalendar.get(1));
		localStringBuffer.append("-");
		localStringBuffer.append(1 + localCalendar.get(2));
		localStringBuffer.append("-");
		localStringBuffer.append(localCalendar.get(5));
		localStringBuffer.append("");
		localStringBuffer.append(" ");

		i = localCalendar.get(11);
		if (i >= 10) {
			localStringBuffer.append(i);
		}else {
			localStringBuffer.append("0");
			localStringBuffer.append(i);
		}		
		localStringBuffer.append(":");
		j = localCalendar.get(12);

		if (j >= 10) {
			localStringBuffer.append(j);
		}else {
			localStringBuffer.append("0");
			localStringBuffer.append(j);
		}
		return localStringBuffer.toString();
	}

	public static String getFormatDate(long paramLong) {
		StringBuffer localStringBuffer = new StringBuffer();
		Calendar localCalendar = Calendar.getInstance();
		if (paramLong < 0L)
			localCalendar.setTimeInMillis(System.currentTimeMillis());
		else {
			localCalendar.setTimeInMillis(paramLong);

			localStringBuffer.append(localCalendar.get(1));
			localStringBuffer.append("-");
			localStringBuffer.append(1 + localCalendar.get(2));
			localStringBuffer.append("-");
			localStringBuffer.append(localCalendar.get(5));
		}
		return localStringBuffer.toString();
	}

	public static String getFormatLagTime(long paramLong) {
		long l1 = paramLong / 60000L;
		long l2 = paramLong / 1000L % 60L;
		StringBuffer localStringBuffer = new StringBuffer();
		if (l1 < 10L)
			localStringBuffer.append("0");
		localStringBuffer.append(l1);
		localStringBuffer.append(":");
		if (l2 < 10L)
			localStringBuffer.append("0");
		localStringBuffer.append(l2);
		return localStringBuffer.toString();
	}

	public static String getFormatVideoDuration(File paramFile) {
		if ((paramFile == null) || (!paramFile.exists()))
			return "未知大小";
		try {
			MediaPlayer localMediaPlayer = new MediaPlayer();
			localMediaPlayer.setDataSource(paramFile.getAbsolutePath());
			localMediaPlayer.prepare();
			int i = localMediaPlayer.getDuration();
			localMediaPlayer.release();

			int j = i / 1000;
			int k = j / 3600;
			int m = j % 3600 / 60;
			int n = j % 60;
			String str1 = "";
			if (k > 9)
				str1 = str1 + k + ":";
			if ((k <= 9) && (k > 0))
				str1 = str1 + "0" + k + ":";
			if (k == 0)
				str1 = str1 + "00:";

			if (m < 10) {
				String str2 = str1 + "0" + m + ":";
			}

			String str2 = "";
			if (n >= 10) {
				str2 = str1 + m + ":";
				return str2 + n;
			} else {
				String str3 = str2 + "0" + n;
				return str3;
			}
		} catch (Exception localException) {
		}
		return "未知大小";
	}

	public static final int getIntFrom4LengthBytes(byte[] paramArrayOfByte,
			int paramInt) {
		return 0xFF000000 & paramArrayOfByte[(paramInt + 0)] << 24 | 0xFF0000
				& paramArrayOfByte[(paramInt + 1)] << 16 | 0xFF00
				& paramArrayOfByte[(paramInt + 2)] << 8 | 0xFF
				& paramArrayOfByte[(paramInt + 3)] << 0;
	}

	public static String getPartyDurationString(long paramLong) {
		long l1 = paramLong / 1000L;
		StringBuffer localStringBuffer = new StringBuffer();
		long l2 = l1 / 3600L;
		long l3 = l1 % 3600L / 60L;
		localStringBuffer.append(l2).append("小时").append(l3).append("分钟");
		return localStringBuffer.toString();
	}

	public static String getPartyFormatDate(long paramLong) {
		StringBuffer localStringBuffer = new StringBuffer();
		Calendar localCalendar = Calendar.getInstance();
		if (paramLong < 0L)
			localCalendar.setTimeInMillis(System.currentTimeMillis());

		localCalendar.setTimeInMillis(paramLong);

		localStringBuffer.append(localCalendar.get(1));
		localStringBuffer.append("-");
		localStringBuffer.append(1 + localCalendar.get(2));
		localStringBuffer.append("-");
		localStringBuffer.append(localCalendar.get(5));

		return localStringBuffer.toString();
	}

	//显示小时：分
	public static String getPartyFormatTime(long paramLong) {
		StringBuffer localStringBuffer = new StringBuffer();
		Calendar localCalendar = Calendar.getInstance();
		int i, j;
		if (paramLong < 0L) {
			localCalendar.setTimeInMillis(System.currentTimeMillis());
		} else {
			localCalendar.setTimeInMillis(paramLong);			
		}

		i = localCalendar.get(11);
		if (i >= 10) {
			localStringBuffer.append(i);
		}else {
			localStringBuffer.append("0");
			localStringBuffer.append(i);
		}		
		localStringBuffer.append(":");
		j = localCalendar.get(12);
		if (j >= 10) {
			localStringBuffer.append(j);
		}else {
			localStringBuffer.append("0");
			localStringBuffer.append(j);
		}
		localStringBuffer.append(":00");

		return localStringBuffer.toString();
	}

	public static String getPhoneNums(JSONArray paramJSONArray,
			String paramString) {
		if (paramJSONArray == null)
			return "";
		try {
			StringBuffer localStringBuffer = new StringBuffer();
			int i = 0;
			while (true) {
				if (i >= paramJSONArray.length()) {
					localStringBuffer.deleteCharAt(-1
							+ localStringBuffer.length());
					String str = localStringBuffer.toString();
					return str;
				}
				try {
					localStringBuffer.append(
							paramJSONArray.getJSONObject(i).getString("phone")
									.replace(" ", "")).append(paramString);
					i++;
				} catch (Exception localException2) {
					while (true)
						localException2.printStackTrace();
				}
			}
		} catch (Exception localException1) {
		}
		return "";
	}

	public static Bitmap getPlayThumbNailBitmap(Context paramContext,
			Bitmap paramBitmap) {
		try {
			int i = paramBitmap.getWidth();
			int j = paramBitmap.getHeight();
			Bitmap localBitmap1 = Bitmap.createBitmap(i, j,
					Bitmap.Config.ARGB_8888);
			Canvas localCanvas = new Canvas(localBitmap1);
			Paint localPaint = new Paint();
			localCanvas.drawBitmap(paramBitmap, 0.0F, 0.0F, localPaint);
			Bitmap localBitmap2 = BitmapZoom.bitmapZoomByHeight(BitmapFactory
					.decodeResource(paramContext.getResources(), 2130837704),
					j * 1 / 4);
			int k = localBitmap2.getWidth();
			int m = localBitmap2.getHeight();
			localCanvas.drawBitmap(localBitmap2, i / 2 - k / 2, j / 2 - m / 2,
					localPaint);
			return localBitmap1;
		} catch (Exception localException) {
		}
		return null;
	}

	public static final String getRealTimeStamp(long paramLong) {
		return paramLong / 1000L / 60L + ":" + paramLong / 1000L % 60L + "."
				+ paramLong % 1000L;
	}

	public static byte[] getShareThumbFromUrl(Context paramContext,
			String paramString) {
		byte[] arrayOfByte1 = null;
		byte[] arrayOfByte2;
		try {
			samlog("get thumb = " + paramString);
			String str = Uri.encode(paramString);
			File localFile1 = new File(
					new SDcardUtil(paramContext).sharethumbDir, str);
			if (localFile1.exists()) {
				arrayOfByte1 = new byte[(int) localFile1.length()];
				FileInputStream localFileInputStream2 = new FileInputStream(
						localFile1);
				localFileInputStream2.read(arrayOfByte1);
				localFileInputStream2.close();
				return arrayOfByte1;
			}
			File localFile2 = new File(new SDcardUtil(paramContext).thumbsDir,
					str);
			boolean bool1 = localFile2.exists();
			arrayOfByte2 = null;
			if (bool1) {
				boolean bool2 = localFile2.length() < 0L;
				arrayOfByte2 = null;
				if (bool2) {
					Bitmap localBitmap = BitmapZoom.bitmapZoomByWidth(
							BitmapFactory.decodeFile(localFile2
									.getAbsolutePath()), 160);
					localFile1.createNewFile();
					localBitmap.compress(Bitmap.CompressFormat.JPEG, 100,
							new FileOutputStream(localFile1));
					arrayOfByte1 = new byte[(int) localFile1.length()];
					FileInputStream localFileInputStream1 = new FileInputStream(
							localFile1);
					localFileInputStream1.read(arrayOfByte1);
					localFileInputStream1.close();
					return arrayOfByte1;
				}
			}
		} catch (Exception localException) {
			localException.printStackTrace();
			arrayOfByte2 = arrayOfByte1;
		}
		return arrayOfByte2;
	}

	public static Bitmap getThumbCacheWithUrl(Context paramContext,
			String paramString) {
		if (isStringEmpty(paramString))
			return null;

		try {
			String str = Uri.encode(paramString);
			File localFile = new File(
					new SDcardUtil(paramContext).thumbsDir, str);
			samlog("getThumbCache path = " + localFile.getAbsolutePath());
			
			if ((!localFile.exists()) || (localFile.length() <= 0L)) {
				return null;
			}else {
				Bitmap localBitmap = BitmapUtil.getThumbFromCache(
						localFile.getAbsolutePath(), 400);
				return localBitmap;
			}
		} catch (Exception localException) {
			localException.printStackTrace();
			return null;
		}
	}

	public static byte[] getThumbFromUrl(Context paramContext,
			String paramString) {
		try {
			samlog("get thumb = " + paramString);
			String str = Uri.encode(paramString);
			File localFile = new File(new SDcardUtil(paramContext).thumbsDir,
					str);
			if ((localFile.exists()) && (localFile.length() != 0L)) {
				byte[] arrayOfByte = new byte[(int) localFile.length()];
				FileInputStream localFileInputStream = new FileInputStream(
						localFile);
				localFileInputStream.read(arrayOfByte);
				localFileInputStream.close();
				return arrayOfByte;
			}
		} catch (Exception localException) {
			localException.printStackTrace();
			return null;
		}
		return null;
	}

	public static String getTokenFromMessage(String paramString) {
		if (paramString == null)
			return "";
		String[] arrayOfString = paramString.split("/");
		if (arrayOfString != null)
			return arrayOfString[(-1 + arrayOfString.length)];
		return "";
	}

	public static void insertSMSToBox(String paramString1, String paramString2,
			Context paramContext) {
		try {
			ContentValues localContentValues = new ContentValues();
			localContentValues.put("date",
					Long.valueOf(System.currentTimeMillis()));
			localContentValues.put("read", Integer.valueOf(0));
			localContentValues.put("type", Integer.valueOf(2));
			localContentValues.put("address", paramString1);
			localContentValues.put("body", paramString2);
			paramContext.getContentResolver().insert(
					Uri.parse("content://sms"), localContentValues);
			return;
		} catch (Exception localException) {
		}
	}

	public static JSONObject doLogin(Context paramContext) {
		// v16
		JSONObject jsonObject = new JSONObject();
		SharedPreferences sharedPreferences = paramContext
				.getSharedPreferences("pref", 0);
		// v25 .line 88
		String userphone = sharedPreferences.getString("userphone", "");
		// v20 .line 89
		String password = sharedPreferences.getString("userpasswd", "");
		// .line 90
		AppContext.saveUserName(paramContext, userphone);
		// .line 91
		// .local v23
		String url = AppContext.inetAddr + AppContext.loginURL;
		if (AppContext.isDebugMode) {
			System.out.println("login url:" + url);
		}
		HttpPost httpPost = new HttpPost(url);
		MultipartEntity entity = new MultipartEntity();
		try {
			entity.addPart("user[phone]", new StringBody(userphone));
			entity.addPart("user[password]", new StringBody(password));
			entity.addPart("ver", new StringBody("a0000111"));
			entity.addPart("device", new StringBody(Build.DEVICE));
			entity.addPart("rom_id", new StringBody(Build.DISPLAY));

			httpPost.setEntity(entity);
			DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
			HttpParams v27 = defaultHttpClient.getParams();
			v27.setParameter("http.connection.timeout", 20000);
			v27.setParameter("http.socket.timeout", 20000);

			HttpResponse httpResponse = null;
			try {
				httpResponse = defaultHttpClient.execute(httpPost);
				int v271 = httpResponse.getStatusLine().getStatusCode();
				if (v271 == 200) {
					System.out.println("result success");
					HttpEntity result = httpResponse.getEntity();
					String loginresultString = EntityUtils.toString(result);
					// v19
					JSONObject ret = new JSONObject(loginresultString);
					if (AppContext.isDebugMode) {
						// //.line 118
						System.out.println("login result = "
								+ loginresultString);
					}

					if (ret.getBoolean("result")) {
						JSONObject object = ret.getJSONObject("data");
						
						//初始化登录状态
						SysUtil.init_login_state(paramContext, object, httpResponse);
						// :cond_3
						// .line 180
						jsonObject.put("result", 200);
						System.out.println("jsonObject[result]:"
								+ jsonObject.getInt("result"));
					} else {
						jsonObject.put("result", 500);
						jsonObject.put("season", ret.getString("error"));
					}
				} else {
					jsonObject.put("result", v271);
					jsonObject.put("season", "登录失败");
				}
			} catch (ClientProtocolException e2) {
				// TODO Auto-generated catch block
				e2.printStackTrace();
			} catch (IOException e2) {
				// TODO Auto-generated catch block
				e2.printStackTrace();
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return jsonObject;
	}
	
	public static JSONObject doLogin(Context paramContext, String userphone, String password) {
		// v16
		JSONObject jsonObject = new JSONObject();
		SharedPreferences sharedPreferences = paramContext
				.getSharedPreferences("pref", 0);
		// .line 90
		AppContext.saveUserName(paramContext, userphone);
		// .line 91
		// .local v23
		String url = AppContext.inetAddr + AppContext.loginURL;
		if (AppContext.isDebugMode) {
			System.out.println("login url:" + url);
		}
		HttpPost httpPost = new HttpPost(url);
		MultipartEntity entity = new MultipartEntity();
		try {
			entity.addPart("user[phone]", new StringBody(userphone));
			entity.addPart("user[password]", new StringBody(password));
			entity.addPart("ver", new StringBody("a0000111"));
			entity.addPart("device", new StringBody(Build.DEVICE));
			entity.addPart("rom_id", new StringBody(Build.DISPLAY));

			httpPost.setEntity(entity);
			DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
			HttpParams v27 = defaultHttpClient.getParams();
			v27.setParameter("http.connection.timeout", 20000);
			v27.setParameter("http.socket.timeout", 20000);

			HttpResponse httpResponse = null;
			try {
				httpResponse = defaultHttpClient.execute(httpPost);
				int v271 = httpResponse.getStatusLine().getStatusCode();
				if (v271 == 200) {
					System.out.println("result success");
					HttpEntity result = httpResponse.getEntity();
					String loginresultString = EntityUtils.toString(result);
					// v19
					JSONObject ret = new JSONObject(loginresultString);
					if (AppContext.isDebugMode) {
						// //.line 118
						System.out.println("login result = "
								+ loginresultString);
					}

					if (ret.getBoolean("result")) {
						JSONObject object = ret.getJSONObject("data");
						
						//初始化登录状态
						SysUtil.init_login_state(paramContext, object, httpResponse);
						// :cond_3
						// .line 180
						jsonObject.put("result", 200);
						System.out.println("jsonObject[result]:"
								+ jsonObject.getInt("result"));
					} else {
						jsonObject.put("result", 500);
						jsonObject.put("season", ret.getString("error"));
					}
				} else {
					jsonObject.put("result", v271);
					jsonObject.put("season", "登录失败");
				}
			} catch (ClientProtocolException e2) {
				// TODO Auto-generated catch block
				e2.printStackTrace();
			} catch (IOException e2) {
				// TODO Auto-generated catch block
				e2.printStackTrace();
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return jsonObject;
	}
	
	public static void init_login_state(Context paramContext, JSONObject object, HttpResponse httpResponse) {
		try {
			AppContext.ss_key = object.getString("ss_key");
		
		AppContext.setServerAddress(paramContext,
				object.getString("ss_ip"));
		AppContext.setServerPort(paramContext,
				object.getInt("ss_port"));
		AppContext.setServerAppName(paramContext,
				object.getString("ss_app"));
		AppContext.setUserAvaiable(paramContext,
				object.getBoolean("available"));
		AppContext.setUnavailableReason(paramContext,
				object.getString("unavailable_reason"));

		JSONObject userJsonObject = object
				.getJSONObject("user");
		AppContext.saveUserID(paramContext,
				userJsonObject.getInt("id"));

		AppContext.encode_mode = object.getInt("encode_mode");
		AppContext.userNickNameString = userJsonObject
				.getString("username");

		Header[] headers = httpResponse.getAllHeaders();
		String cookieString = "";

		for (int i = 0; i < headers.length; i++) {
			Header header = headers[i];
			System.out.println("header name = "
					+ header.getName());
			System.out.println("header value = "
					+ header.getValue());

			if (header.getName().toLowerCase()
					.contains("cookie")) {
				String value = header.getValue();
				// v14
				int index1 = value.indexOf("=");
				// v15
				int index2 = value.indexOf(";");
				cookieString = value.substring(index1 + 1,
						index2);
			}
		}
		BasicClientCookie basicClientCookie = new BasicClientCookie(
				"_sms_session", cookieString);
		basicClientCookie.setDomain(AppContext.hostAddr);
		basicClientCookie.setVersion(0);
		basicClientCookie.setPath("/");

		// v4
		BasicCookieStore basicCookieStore = new BasicCookieStore();
		basicCookieStore.addCookie(basicClientCookie);
		AppContext.saveCookieStore(paramContext,
				basicCookieStore);

		// .line 161
		if (basicCookieStore != null) {
			// .line 163
			if (AppContext.isDebugMode) {
				// .line 165
				System.out.println("cookie store is:"
						+ basicCookieStore.toString());
				// ..line 166
				// v7 .line 167
				List<Cookie> cookies = basicCookieStore
						.getCookies();
				System.out.println("cookies num = "
						+ cookies.size());

				List<Cookie> v27_21 = basicCookieStore
						.getCookies();
				// v5
				Cookie cookie = v27_21.get(0);
				System.out.println(cookie.getName() + "="
						+ cookie.getValue());
				// .line 172
			}
		}

		JSONObject updateJsonObject = object
				.getJSONObject("soft");
		AppContext.upgradeState = updateJsonObject
				.getInt("upgrade");

		if (AppContext.upgradeState != 0) {
			AppContext.upgradeUrl = updateJsonObject
					.getString("url");
			AppContext.newfeatures = updateJsonObject
					.getJSONArray("feature");
			AppContext.apkSize = updateJsonObject
					.getInt("size");
		}
		
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public static boolean isDeviceSumSungCamera() {
		samlog("android.os.Build.MODEL = " + Build.MODEL);
		try {
			if ((!Build.MODEL.toLowerCase().contains("ek-gc"))
					&& (!Build.MODEL.toLowerCase().contains("ek-gn"))) {
				boolean bool = Build.MODEL.toLowerCase().contains("sm-c1116");
				if (!bool)
					return false;
			}
			return true;
		} catch (Exception localException) {
			return false;
		}
	}

	public static boolean isFileImage(String paramString) {
		String str;
		if (isStringEmpty(paramString))
			return false;
		if (new File(paramString).length() < 1L)
			return false;

		str = paramString.toLowerCase();
		if (str.endsWith("png"))
			return true;
		if (str.endsWith("jpg"))
			return true;
		if (str.endsWith("jpeg"))
			return true;
		if (str.endsWith("gif"))
			return true;
		if (!str.endsWith("bmp"))
			;
		return true;
	}

	public static boolean isFileVideo(String paramString) {
		if (isStringEmpty(paramString))
			return false;

		String str;
		if (new File(paramString).length() < 1L)
			return false;

		str = paramString.toLowerCase();
		if (str.endsWith("mov"))
			return true;
		if (str.endsWith("mp4"))
			return true;
		if (str.endsWith("mpg"))
			return true;
		if (str.endsWith("mpeg"))
			return true;
		if (str.endsWith("mpe"))
			return true;
		if (str.endsWith("3gp"))
			return true;
		if (str.endsWith("m4v"))
			return true;
		if (!str.endsWith("avi"))
			;
		return true;
	}

	public static boolean isNetworkConnected(Context paramContext) {
		try {
			ConnectivityManager localConnectivityManager = (ConnectivityManager) paramContext
					.getSystemService("connectivity");
			if (localConnectivityManager == null) {
				samlog("ConnectivityManager = null....");
				return true;
			}
			NetworkInfo[] arrayOfNetworkInfo = localConnectivityManager
					.getAllNetworkInfo();
			if (arrayOfNetworkInfo == null) {
				samlog("networkinfos = null");
				return true;
			}
			if (arrayOfNetworkInfo.length == 0) {
				samlog("networkinfos.length = 0");
				return true;
			}
			samlog("networkInfos.length = " + arrayOfNetworkInfo.length);
			int i = arrayOfNetworkInfo.length;
			for (int j = 0; j < i; j++) {
				NetworkInfo localNetworkInfo = arrayOfNetworkInfo[j];
				samlog("check network " + localNetworkInfo.getTypeName());
				NetworkInfo.State localState1 = localNetworkInfo.getState();
				NetworkInfo.State localState2 = NetworkInfo.State.CONNECTED;
				if (localState1 == localState2)
					return true;
			}
		} catch (Exception localException) {
			localException.printStackTrace();
		}
		return false;
	}

	public static boolean isStringEmpty(String paramString) {
		if (paramString == null)
			return true;
		if (paramString.length() == 0)
			return true;

		return false;
	}

	public static String makeVideoTid(String paramString1, String paramString2,
			int paramInt1, int paramInt2, int paramInt3) {
		Object[] arrayOfObject = new Object[5];
		arrayOfObject[0] = paramString1;
		arrayOfObject[1] = paramString2;
		arrayOfObject[2] = Integer.valueOf(paramInt1);
		arrayOfObject[3] = Integer.valueOf(paramInt2);
		arrayOfObject[4] = Integer.valueOf(paramInt3);
		String str = String.format("%s_%s_%d_%d_%d", arrayOfObject);
		samlog(str);
		return str;
	}

	public static void samlog(String paramString) {
		if (paramString == null)
			return;
		System.out.println(paramString);
	}

	public static void saveThumbUrlToFile(Context paramContext,
			String paramString) {
		try {
			samlog("to get thumb = " + paramString);
			String str = Uri.encode(paramString);
			File localFile = new File(new SDcardUtil(paramContext).thumbsDir, str);
			samlog("save path = " + localFile.getAbsolutePath());
			if ((!localFile.exists()) || (localFile.length() == 0L)) {
				localFile.createNewFile();
				HttpGet localHttpGet = new HttpGet(paramString);
				HttpResponse localHttpResponse = new DefaultHttpClient()
						.execute(localHttpGet);
				samlog("get thumb result = "
						+ localHttpResponse.getStatusLine().getStatusCode());
				InputStream localInputStream = localHttpResponse.getEntity()
						.getContent();
				FileOutputStream localFileOutputStream = new FileOutputStream(
						localFile);
				byte[] arrayOfByte = new byte[3000];
				while (true) {
					int i = localInputStream.read(arrayOfByte);
					if (i <= 0) {
						localInputStream.close();
						localFileOutputStream.close();
						localHttpResponse.getEntity().consumeContent();
						return;
					}
					samlog("thumb read lengh = " + i);
					localFileOutputStream.write(arrayOfByte, 0, i);
				}
			}
		} catch (Exception localException) {
			localException.printStackTrace();
			return;
		}
		samlog("thumb already exists");
	}

	public static String getFormatedRecordTime(int paramInt) {
		int i = paramInt / 3600;// hour
		int j = paramInt % 3600;
		int k = j / 60;// 分
		int m = j % 60;// 秒
		String str1 = String.valueOf(i);
		String str2 = String.valueOf(k);
		String str3 = String.valueOf(m);
		StringBuilder localStringBuilder2;
		if (i < 10) {
			str1 = "0" + i;
		}
		StringBuilder localStringBuilder1 = new StringBuilder(
				String.valueOf(str1)).append(":");
		if (k < 10) {
			str2 = "0" + k;
		}
		localStringBuilder2 = localStringBuilder1.append(str2).append(":");
		if (m < 10) {
			str3 = "0" + m;
		}
		localStringBuilder2.append(str3);

		return localStringBuilder2.toString();
	}
	
	/*
	 * Convert byte[] to hex string.这里我们可以将byte转换成int，然后利用Integer.toHexString(int)来转换成16进制字符串。  
	 * @param src byte[] data  
	 * @return hex string  
	 */     
	public static String bytesToHexString(byte[] src){  
	    StringBuilder stringBuilder = new StringBuilder("");  
	    if (src == null || src.length <= 0) {  
	        return null;  
	    }  
	    for (int i = 0; i < src.length; i++) {  
	        int v = src[i] & 0xFF;  
	        String hv = Integer.toHexString(v);  
	        if (hv.length() < 2) {  
	            stringBuilder.append(0);  
	        }  
	        stringBuilder.append(hv);  
	    }  
	    return stringBuilder.toString();  
	}  
	/** 
	 * Convert hex string to byte[] 
	 * @param hexString the hex string 
	 * @return byte[] 
	 */  
	public static byte[] hexStringToBytes(String hexString) {  
	    if (hexString == null || hexString.equals("")) {  
	        return null;  
	    }  
	    hexString = hexString.toUpperCase();  
	    int length = hexString.length() / 2;  
	    char[] hexChars = hexString.toCharArray();  
	    byte[] d = new byte[length];  
	    for (int i = 0; i < length; i++) {  
	        int pos = i * 2;  
	        d[i] = (byte) (charToByte(hexChars[pos]) << 4 | charToByte(hexChars[pos + 1]));  
	    }  
	    return d;  
	}  
	
	/** 
	 * Convert char to byte 
	 * @param c char 
	 * @return byte 
	 */  
	 static private byte charToByte(char c) {  
	    return (byte) "0123456789ABCDEF".indexOf(c);  
	}
	 
	 public static int getResourceId(String name) {  
	    try {  
	        // 根据资源的ID的变量名获得Field的对象,使用反射机制来实现的  
	        Field field = R.drawable.class.getField(name);  
	        // 取得并返回资源的id的字段(静态变量)的值，使用反射机制  
	        return Integer.parseInt(field.get(null).toString());  
	    } catch (Exception e) {  
	        // TODO: handle exception  
	    	System.out.println("R.drawable.class.getField(name)....failed.");
	    }  
	    return 0;  
	}  
}

/*
 * Location: D:\apk_unbuild\dex2jar-0.0.9.15\classes_dex2jar.jar Qualified Name:
 * com.rayclear.videomessage.common.SysUtil JD-Core Version: 0.6.0
 */