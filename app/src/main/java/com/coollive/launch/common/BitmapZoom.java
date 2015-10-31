package com.coollive.launch.common;

import android.graphics.Bitmap;
import android.graphics.Matrix;

public class BitmapZoom
{
  public static Bitmap bitmapZoomByHeight(Bitmap paramBitmap, int paramInt)
  {
    paramBitmap.getWidth();
    int i = paramBitmap.getHeight();
    float f = paramInt / i;
    return bitmapZoomByScale(paramBitmap, f, f);
  }

  public static Bitmap bitmapZoomByPercent(Bitmap paramBitmap, double paramDouble)
  {
    paramBitmap.getWidth();
    paramBitmap.getHeight();
    return bitmapZoomByScale(paramBitmap, (float)paramDouble, (float)paramDouble);
  }

  public static Bitmap bitmapZoomByScale(Bitmap paramBitmap, float paramFloat1, float paramFloat2)
  {
    int i = paramBitmap.getWidth();
    int j = paramBitmap.getHeight();
    Matrix localMatrix = new Matrix();
    localMatrix.postScale(paramFloat1, paramFloat2);
    Bitmap localBitmap = Bitmap.createBitmap(paramBitmap, 0, 0, i, j, localMatrix, true);
    if (localBitmap != null)
      return localBitmap;
    return paramBitmap;
  }

  public static Bitmap bitmapZoomBySize(Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    int i = paramBitmap.getWidth();
    int j = paramBitmap.getHeight();
    return bitmapZoomByScale(paramBitmap, paramInt1 / i, paramInt2 / j);
  }

  public static Bitmap bitmapZoomByWidth(Bitmap paramBitmap, int paramInt)
  {
    int i = paramBitmap.getWidth();
    paramBitmap.getHeight();
    float f = paramInt / i;
    return bitmapZoomByScale(paramBitmap, f, f);
  }
}

/* Location:           D:\apk_unbuild\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.rayclear.videomessage.common.BitmapZoom
 * JD-Core Version:    0.6.0
 */