package com.coollive.launch.model;

public class SamMediaFrame
{
  public static final int MEDIA_TYPE_AUDIO = 0;
  public static final int MEDIA_TYPE_VIDEO = 1;
  public long cachedFragmentOffset = 0L;
  public long cachedFragmentSize = 0L;
  public byte[] data;
  public long timestamp = 0L;
  public int type = 0;
}

/* Location:           D:\apk_unbuild\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.rayclear.videomessage.model.SamMediaFrame
 * JD-Core Version:    0.6.0
 */