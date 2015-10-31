package com.coollive.launch.camera;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.hardware.Camera;
import android.os.Build;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

import com.coollive.launch.common.AppContext;
import com.coollive.launch.common.SysUtil;

public class CameraProvider {
	public static final int CAMERA_FACING_BACK = 0;
	public static final int CAMERA_FACING_FRONT = 1;
	public static final int FRAME_SIZE_1280_720 = 3;
	public static final int FRAME_SIZE_176_144 = 0;
	public static final int FRAME_SIZE_320_240 = 1;
	public static final int FRAME_SIZE_360_200 = 5;
	public static final int FRAME_SIZE_480_270 = 4;
	public static final int FRAME_SIZE_480_360 = 6;
	public static final int FRAME_SIZE_640_480 = 2;
	public static final int VIDEO_BITRATE_176_144 = 400000;
	public static final int VIDEO_BITRATE_320_240 = 600000;
	public static final int VIDEO_BITRATE_640_480 = 800000;
	public static int realFPS = 15;

	public static boolean canUseAdvancedCodec(Context paramContext) {
		boolean codec = false;
		SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("pref", 0);
		int is_codec = localSharedPreferences.getInt("recordtype", 0);
		if(is_codec == 1) {
			if (Build.VERSION.SDK_INT < 16) {
				System.out.println("####canUseAdvancedCodec#####################Build.VERSION.SDK_INT < 16"+Build.VERSION.SDK_INT);
				codec = false;
			}else {
				if (!SysUtil.isDeviceSumSungCamera()) {
					System.out.println("####canUseAdvancedCodec#####################!SysUtil.isDeviceSumSungCamera()");
					codec = false;
				}else {
					codec = true;
				}
			}			
			SharedPreferences.Editor localEditor = paramContext.getSharedPreferences("pref", 0).edit();
			if(codec) {
				//H264			
				localEditor.putInt("recordtype", 3);			
			}else {
				//FLV			
				localEditor.putInt("recordtype", 2);
			}
			localEditor.commit();
		}else {
			if(is_codec == 2) {
				//FLV		
				codec = false;
			}else {
				//H264			
				codec = true;
			}
		}
		return codec;
	}

	public static boolean checkIfContainFrameSize(List<Camera.Size> paramList,
			int paramInt1, int paramInt2) {
		try {
			Iterator localIterator = paramList.iterator();
			while (localIterator.hasNext()) {
				Camera.Size localSize = (Camera.Size) localIterator.next();
				if (localSize.width != paramInt1)
					continue;
				int i = localSize.height;
				if (i == paramInt2)
					return true;
			}
		} catch (Exception localException) {
		}
		return false;
	}

	public static boolean checkIfContainFrameSize(JSONArray paramJSONArray,
			int paramInt1, int paramInt2) {
		if (paramJSONArray == null)
			return false;

		int i = 0;
		while (true) {
			int j = paramJSONArray.length();
			if (i >= j)
				break;
			try {
				JSONObject localJSONObject = paramJSONArray.getJSONObject(i);
				if (localJSONObject.getInt("width") == paramInt1) {
					int k = localJSONObject.getInt("height");
					if (k == paramInt2)
						return true;
				}
			} catch (Exception localException2) {
				i++;
			}
		}
		return false;
	}

	public static int getMinSupportedSize(List<Camera.Size> paramList) {
		if (checkIfContainFrameSize(paramList, 320, 240))
			return 1;
		if (checkIfContainFrameSize(paramList, 176, 144))
			return 0;
		if (checkIfContainFrameSize(paramList, 640, 480))
			return 2;
		return -1;
	}

	public static int getMinSupportedSize(JSONArray paramJSONArray) {
		if (paramJSONArray == null)
			return 0;
			
		do {
			if (checkIfContainFrameSize(paramJSONArray, 320, 240))
				return 1;
		} while (checkIfContainFrameSize(paramJSONArray, 176, 144));
		if (checkIfContainFrameSize(paramJSONArray, 640, 480))
			return 2;
		return -1;
	}

	public static Camera.Size getPreviewSize(Camera paramCamera)
			throws Exception {
		Camera.Size localSize  = null;
		Iterator localIterator = paramCamera.getParameters()
				.getSupportedPreviewSizes().iterator();
		while (true) {
			if (!localIterator.hasNext()) {
				localSize = (Camera.Size) localIterator.next();
				
				if (localSize == null) {
					continue;
				}
				if ((localSize.width <= 600)
						|| (localSize.width >= localSize.width))
					continue;
				
				if ((localSize != null) && (localSize.width >= 600))
					break;
				throw new Exception("不支持预览格式");
			}
		}
		return localSize;
	}

	public static int getUserFrameSizeSet(Activity paramActivity) {
		SharedPreferences localSharedPreferences = paramActivity
				.getSharedPreferences("pref", 0);
		if (canUseAdvancedCodec(paramActivity))
			return localSharedPreferences.getInt("camera_quality_set", 2);
		return localSharedPreferences.getInt("camera_quality_set", 1);
	}

	public static int getUserSetVideoBps(Context paramContext) {
		SharedPreferences localSharedPreferences = paramContext
				.getSharedPreferences("pref", 0);
		if (canUseAdvancedCodec(paramContext))
			return localSharedPreferences.getInt("videobps", 600000);
		return localSharedPreferences.getInt("videobps", 400000);
	}
	
	public static int getUserSetVideoRecordType(Context paramContext) {
		SharedPreferences localSharedPreferences = paramContext
				.getSharedPreferences("pref", 0);
		if (canUseAdvancedCodec(paramContext))
			return localSharedPreferences.getInt("recordtype", 2);
		return localSharedPreferences.getInt("recordtype", 1);
	}
	

	public static boolean isDropFrameMode(Context paramContext) {
		return paramContext.getSharedPreferences("pref", 0).getBoolean(
				"isdropframe", false);
	}

	public static void setIfUse10FPS(Context paramContext, boolean paramBoolean) {
		SharedPreferences.Editor localEditor = paramContext
				.getSharedPreferences("pref", 0).edit();
		localEditor.putBoolean("shoulduse10fps", paramBoolean);
		localEditor.commit();
	}

	public static void setRecordSizePref(Context paramContext, int paramInt) {
		SysUtil.samlog("设置分辨率 = " + paramInt);
		SharedPreferences.Editor localEditor = paramContext
				.getSharedPreferences("pref", 0).edit();
		localEditor.putInt("camera_quality_set", paramInt);
		localEditor.commit();
	}

	public static boolean shouldUse10FPS(Context paramContext) {
		return paramContext.getSharedPreferences("pref", 0).getBoolean(
				"shoulduse10fps", true);
	}
}

/*
 * Location: D:\apk_unbuild\dex2jar-0.0.9.15\classes_dex2jar.jar Qualified Name:
 * com.rayclear.videomessage.camera.CameraProvider JD-Core Version: 0.6.0
 */