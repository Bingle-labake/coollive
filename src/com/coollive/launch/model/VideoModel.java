package com.coollive.launch.model;

import android.graphics.Bitmap;
import java.lang.ref.SoftReference;

public class VideoModel
{
  SoftReference<Bitmap> bitmapSoftReference = new SoftReference(null);
  public boolean live = false;
  public String thumbUrl = null;
  public long timestamp = 0L;
  public String videourl_android = null;
  public String videourl_ios = null;
}

/* Location:           D:\apk_unbuild\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.rayclear.videomessage.model.VideoModel
 * JD-Core Version:    0.6.0
 */