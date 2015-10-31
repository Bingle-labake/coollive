package com.rayclear.jni;

public class SWScaleUtil
{
  public static native void formatswsscale(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2);

  public static native boolean initContext(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6);

  public static native void releaseContext();
}

/* Location:           D:\apk_unbuild\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.rayclear.jni.SWScaleUtil
 * JD-Core Version:    0.6.0
 */