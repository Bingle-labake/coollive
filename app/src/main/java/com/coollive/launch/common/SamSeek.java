package com.coollive.launch.common;

import java.io.RandomAccessFile;

public class SamSeek {
	public static int bufferSeek(byte[] buff, byte[] key, int beginPosition) {	
		//.line 64
		if (beginPosition < buff.length) {	//if-lt beginPosition, buff.length, :cond_1	
			int i = beginPosition;		
			for (;i < (buff.length - key.length); i++) {//if-lt i, v4, :cond_2
				int seekSuccess = 1;
				int j = 0;
				for (; j < key.length ; j++) {//if-lt j, key.length, :cond_3
					if(buff[(i + j)] != key[j]) {//-->:cond_4
						seekSuccess = 0;
						break;
					}
							
				}
				if(seekSuccess != 0) {//if-nez seekSuccess, :cond_0
					return i;
				}
			}						
		}
		return -1;
	}

	public static int fileSeek(RandomAccessFile paramRandomAccessFile,
			byte[] paramArrayOfByte, int paramInt) {
		
		if ((paramRandomAccessFile != null) && (paramArrayOfByte != null))
			;
		while (true) {
			try {
				if (paramRandomAccessFile.length() < paramArrayOfByte.length) {
					return -1;
				}
				long l1 = paramInt;
				long l2 = paramRandomAccessFile.length();
				if (l1 >= l2)
					return -1;
			} catch (Exception localException1) {
				localException1.printStackTrace();
				return -1;
			}
			byte[] arrayOfByte = new byte[1000];
			int i = paramInt;
			int j = 0;
			long l3 = paramInt;
			try {
				paramRandomAccessFile.seek(l3);
				while (j >= 0) {
					j = paramRandomAccessFile.read(arrayOfByte);
					if (j < 0)
						break;
					int k = bufferSeek(arrayOfByte, paramArrayOfByte, 0);
					if (k >= j)
						break;
					if (k >= 0)
						return i + k;
					if (j < arrayOfByte.length)
						break;
					i = i + j - paramArrayOfByte.length;
					paramRandomAccessFile.seek(i);
				}
			} catch (Exception localException2) {
				localException2.printStackTrace();
			}
		}
	}
}

/*
 * Location: D:\apk_unbuild\dex2jar-0.0.9.15\classes_dex2jar.jar Qualified Name:
 * com.rayclear.videomessage.common.SamSeek JD-Core Version: 0.6.0
 */