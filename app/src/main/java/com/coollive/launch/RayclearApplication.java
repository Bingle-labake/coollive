package com.coollive.launch;

import android.app.Activity;
import android.app.Application;
import java.util.ArrayList;

public class RayclearApplication extends Application {
	private static ArrayList<Activity> activitys;

	static {
		System.out.println("#######################load lib###########################");
		System.loadLibrary("yuv");
		System.loadLibrary("rtmp");
		System.loadLibrary("videokit");		
		System.out.println("#######################load lib###########################");
		activitys = new ArrayList();
	}

	public static void clearActivitys() {
		try {
			if (activitys != null) {
				int i = activitys.size();
				if (i <= 0)
					return;
				activitys.remove(0).finish();
			}
		} catch (Exception localException) {
			localException.printStackTrace();
		} finally {				
		}
	}

	public static void dequeueActivity(Activity paramActivity) {
			if (activitys != null)
				activitys.remove(paramActivity);
	}

	public static void enqueueActivity(Activity paramActivity) {
		try {
			if (activitys != null)
				activitys.add(paramActivity);
		} catch (Exception localException) {
			localException.printStackTrace();
		} finally {
		}
	}

	@Override
	public void onCreate() {
		super.onCreate();
		System.out.println("#########RayclearApplication start!!!");
	}
}

/*
 * Location: D:\apk_unbuild\dex2jar-0.0.9.15\classes_dex2jar.jar Qualified Name:
 * com.rayclear.videomessage.RayclearApplication JD-Core Version: 0.6.0
 */