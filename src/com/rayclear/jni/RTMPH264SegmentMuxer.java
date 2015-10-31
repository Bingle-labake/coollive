package com.rayclear.jni;

public class RTMPH264SegmentMuxer
{
  public static native boolean connectRTMP(String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, byte[] paramArrayOfByte, int paramInt7);

  public static native void disConnectRTMP();

  public static native boolean doWriteAudio(byte[] paramArrayOfByte, int paramInt, long paramLong);

  public static native boolean doWriteVideo(byte[] paramArrayOfByte, int paramInt, long paramLong);

  public static native byte[] encodeAudioFrame(byte[] paramArrayOfByte, int paramInt);

  public static native boolean initContext(int paramInt1, int paramInt2);

  public static native void releaseContext();
}

/* Location:           D:\apk_unbuild\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.rayclear.jni.RTMPH264SegmentMuxer
 * JD-Core Version:    0.6.0
 */