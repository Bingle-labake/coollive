package com.coollive.launch.common;

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import android.util.Log;
import java.io.File;

public class SDcardUtil {
	private static final String LOGS_DIR_NAME = "logs";
	private static final String PHOTO_DIR_NAME = "photos";
	private static final String ROOT_DIR_NAME = "coollive";
	private static final String SHARE_THUMB_DIR_NAME = "sharethumb";
	private static final String THUMBNAILS_DIR_NAME = "thumbs";
	private static final String VIDEO_DIR_NAME = "videos";
	private Context context = null;
	public File logsDir = null;
	public File photoDir = null;
	public File rootDir = null;
	public File sharethumbDir = null;
	public boolean sysFileStateOK = false;
	public File thumbsDir = null;
	public File videoDir = null;

	public SDcardUtil(Context paramContext) {
		this.context = paramContext;
		try {
			this.rootDir = new File(getSDCardFile(), ROOT_DIR_NAME);
			if (!this.rootDir.exists())
				this.rootDir.mkdir();

			this.videoDir = new File(this.rootDir, VIDEO_DIR_NAME);
			if (!this.videoDir.exists())
				this.videoDir.mkdir();

			this.photoDir = new File(this.rootDir, PHOTO_DIR_NAME);
			if (!this.photoDir.exists())
				this.photoDir.mkdir();

			this.thumbsDir = new File(this.rootDir, THUMBNAILS_DIR_NAME);
			if (!this.thumbsDir.exists())
				this.thumbsDir.mkdir();

			this.logsDir = new File(this.rootDir, LOGS_DIR_NAME);
			if (!this.logsDir.exists())
				this.logsDir.mkdir();

			this.sharethumbDir = new File(this.rootDir, SHARE_THUMB_DIR_NAME);
			if (!this.sharethumbDir.exists())
				this.sharethumbDir.mkdir();

			this.sysFileStateOK = true;
			this.context = null;
			return;
		} catch (Exception localException) {
			if (AppContext.isDebugMode)
				Log.e("tryAndCheckFileSys", localException.toString());
			this.sysFileStateOK = false;
		}
	}

	public static int getSDCardAvableSpaceMb(String paramString) {
		try {
			StatFs localStatFs = new StatFs(paramString);
			long l = localStatFs.getBlockSize()
					* localStatFs.getAvailableBlocks() / 1024L / 1024L;
			return (int) l;
		} catch (Exception localException) {
			if (AppContext.isDebugMode)
				Log.e("getSDCardAvableSpaceMb", localException.toString());
		}
		return 0;
	}

	public File getSDCardFile() {
		if (!Environment.getExternalStorageState().equals(
				Environment.MEDIA_MOUNTED)) {
			SysUtil.samlog("使用内部存储!!");
			return this.context.getFilesDir();
		}

		Object localObject = Environment.getExternalStorageDirectory();
		File[] arrayOfFile = ((File) localObject).getParentFile().listFiles();
		SysUtil.samlog("Environment.getExternalStorageState() = "
				+ Environment.getExternalStorageState());

		int i = arrayOfFile.length;
		int j = 0;

		while (true) {
			if (j >= i) {
				SysUtil.samlog("final choose sdcard = " + localObject);
				return (File) localObject;
			} else {
				File localFile = arrayOfFile[j];
				localObject = localFile;

				if ((!localFile.isDirectory()) || (!localFile.exists())
						|| (!localFile.canWrite())) {
					break;
				}
				j++;

				String[] arrayOfString = localFile.list();
				if ((arrayOfString == null)
						|| (arrayOfString.length == 0)
						|| (localFile.getAbsolutePath().equals(Environment
								.getExternalStorageDirectory()
								.getAbsolutePath())))
					continue;
			}
		}
		return (File) localObject;

	}
}