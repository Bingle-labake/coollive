package com.rayclear.jni;

public class RTMPStreamMuxer
{
  public static final int RTMP_TYPE_AUDIO = 0;
  public static final int RTMP_TYPE_VIDEO_I = 1;
  public static final int RTMP_TYPE_VIDEO_P = 2;

  public static native boolean connectRTMP(String paramString, int paramInt1, int paramInt2, int paramInt3);

  public static native void disConnectRTMP();

  public static native boolean doWriteAudio(byte[] paramArrayOfByte, int paramInt);

  public static native boolean doWriteVideo(byte[] paramArrayOfByte, int paramInt);

  public static native byte[] encodeAudioFrame(byte[] paramArrayOfByte, int paramInt, long paramLong);

  public static native byte[] encodeVideoFrame(byte[] paramArrayOfByte, int paramInt, long paramLong);

  public static native boolean initContext(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, int paramInt9);

  public static native void releaseContext();
}

/* Location:           D:\apk_unbuild\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.rayclear.jni.RTMPStreamMuxer
 * JD-Core Version:    0.6.0
 */