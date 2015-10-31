package com.coollive.launch.common;

public class YUV2RGB {
	/*
	public static void decodeYUV420SP(int[] paramArrayOfInt,
			byte[] paramArrayOfByte, int paramInt1, int paramInt2) {
		int i = paramInt1 * paramInt2;
		int j = 0;
		int k = 0;
		int n;
		int i1;
		int i2;
		int i3;
		
		while (true) {
			if (j >= paramInt2)
				return;
			int m = i + paramInt1 * (j >> 1);
			n = 0;
			i1 = 0;
			i2 = 0;
			i3 = m;
			if (i2 < paramInt1)
				break;
			j++;
		}
		
		int i4 = -16 + (0xFF & paramArrayOfByte[k]);
		if (i4 < 0)
			i4 = 0;
		int i11 = 0;
		if ((i2 & 0x1) == 0) {
			int i10 = i3 + 1;
			i1 = -128 + (0xFF & paramArrayOfByte[i3]);
			i11 = i10 + 1;
			n = -128 + (0xFF & paramArrayOfByte[i10]);
		}
		for (int i5 = i11;; i5 = i3) {
			int i6 = i4 * 1192;
			int i7 = i6 + i1 * 1634;
			int i8 = i6 - i1 * 833 - n * 400;
			int i9 = i6 + n * 2066;
			if (i7 < 0) {
				i7 = 0;
				label180: if (i8 >= 0)
					break label256;
				i8 = 0;
				label188: if (i9 >= 0)
					break label270;
				i9 = 0;
			}
			while (true) {
				paramArrayOfInt[k] = (0xFF000000 | 0xFF0000 & i7 << 6 | 0xFF00
						& i8 >> 2 | 0xFF & i9 >> 10);
				i2++;
				k++;
				i3 = i5;
				break;
				if (i7 <= 262143)
					break label180;
				i7 = 262143;
				
				break label180;
				
				label256: if (i8 <= 262143)
					break label188;
				i8 = 262143;
				
				break label188;
				
				label270: if (i9 <= 262143)
					continue;
				
				i9 = 262143;
			}
		}
	}
	*/
	
    static public void decodeYUV420SP(byte[] rgbBuf, byte[] yuv420sp, int width, int height) {
    	final int frameSize = width * height;
		if (rgbBuf == null)
			throw new NullPointerException("buffer 'rgbBuf' is null");
		if (rgbBuf.length < frameSize * 3)
			throw new IllegalArgumentException("buffer 'rgbBuf' size "
					+ rgbBuf.length + " < minimum " + frameSize * 3);

		if (yuv420sp == null)
			throw new NullPointerException("buffer 'yuv420sp' is null");

		if (yuv420sp.length < frameSize * 3 / 2)
			throw new IllegalArgumentException("buffer 'yuv420sp' size " + yuv420sp.length
					+ " < minimum " + frameSize * 3 / 2);
    	
    	int i = 0, y = 0;
    	int uvp = 0, u = 0, v = 0;
    	int y1192 = 0, r = 0, g = 0, b = 0;
    	
    	for (int j = 0, yp = 0; j < height; j++) {
    		uvp = frameSize + (j >> 1) * width;
    		u = 0;
    		v = 0;
    		for (i = 0; i < width; i++, yp++) {
    			y = (0xff & yuv420sp[yp]) - 16;
    			if (y < 0) y = 0;
    			if ((i & 1) == 0) {
    				v = (0xff & yuv420sp[uvp++]) - 128;
    				u = (0xff & yuv420sp[uvp++]) - 128;
    			}
    			
    			y1192 = 1192 * y;
    			r = (y1192 + 1634 * v);
    			g = (y1192 - 833 * v - 400 * u);
    			b = (y1192 + 2066 * u);
    			
    			if (r < 0) r = 0; else if (r > 262143) r = 262143;
    			if (g < 0) g = 0; else if (g > 262143) g = 262143;
    			if (b < 0) b = 0; else if (b > 262143) b = 262143;
    			
    			rgbBuf[yp * 3] = (byte)(r >> 10);
    			rgbBuf[yp * 3 + 1] = (byte)(g >> 10);
    			rgbBuf[yp * 3 + 2] = (byte)(b >> 10);
    		}
    	}
    }
}

/*
 * Location: D:\apk_unbuild\dex2jar-0.0.9.15\classes_dex2jar.jar Qualified Name:
 * com.rayclear.videomessage.common.YUV2RGB JD-Core Version: 0.6.0
 */