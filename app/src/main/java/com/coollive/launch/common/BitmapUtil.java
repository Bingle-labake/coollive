package com.coollive.launch.common;

import android.graphics.Bitmap;
import android.graphics.Matrix;

public class BitmapUtil
{
  public static Bitmap clipRectBitmapByCenter(Bitmap paramBitmap, int paramInt)
  {
    try
    {
      int i = paramBitmap.getWidth();
      int j = paramBitmap.getHeight();
      if (i > j);
      for (int k = i; ; k = j) {
        Matrix localMatrix = null;
        if (k < 320) {
          if (i < j)
            paramBitmap = BitmapZoom.bitmapZoomByWidth(paramBitmap, 320);
          
          paramBitmap = BitmapZoom.bitmapZoomByHeight(paramBitmap, 320);
        } else {
          localMatrix = new Matrix();
          switch (paramInt) {
              case 3:
            	  localMatrix.postRotate(90.0F);
              case 4:
            	  localMatrix.postRotate(180.0F);
              case 5:
            	  localMatrix.postRotate(270.0F);
              case 6:
              case 7:
              case 8:
              default:
                localMatrix.postRotate(0.0F);          
          }
        }
        
          int m = paramBitmap.getWidth();
          int n = paramBitmap.getHeight();
          
          Bitmap localBitmap = Bitmap.createBitmap(paramBitmap, 0, 0, m, n, localMatrix, false);
          int i1 = localBitmap.getWidth();
          int i2 = localBitmap.getHeight();
          
          int i3 = i1;
          int i4 = i1 * 4 / 3;
          if (i4 > i2) {
            i4 = i2;
            i3 = i2 * 3 / 4;
          }
          
          
          return BitmapZoom.bitmapZoomByHeight(Bitmap.createBitmap(localBitmap, i1 / 2 - i3 / 2, i2 / 2 - i4 / 2, i3, i4), 320);
         
      }
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  // ERROR //
  public static Bitmap clipRectBitmapByCenter(java.lang.String paramString)
  {
	  return null;
  }

  // ERROR //
  public static Bitmap getThumbFromCache(java.lang.String paramString, int paramInt)
  {
	  return null;
  }
}

/* Location:           D:\apk_unbuild\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.rayclear.videomessage.common.BitmapUtil
 * JD-Core Version:    0.6.0
 */