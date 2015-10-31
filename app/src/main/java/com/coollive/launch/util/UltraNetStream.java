package com.coollive.launch.util;


import java.lang.reflect.Method;
import java.util.Map;

import com.smaxe.uv.client.ICamera;
import com.smaxe.uv.client.IMicrophone;
import com.smaxe.uv.client.INetConnection;
import com.smaxe.uv.client.INetStream;
import com.smaxe.uv.client.IVideo;
import com.smaxe.uv.client.a.c;
import com.smaxe.uv.client.video.EmptyVideo;
import com.smaxe.uv.stream.MediaData;

public final class UltraNetStream extends c
  implements INetStream
{
  private com.smaxe.uv.client.a.d a = null;
  private IVideo b = new EmptyVideo();
  private volatile boolean c = false;
  private IMicrophone d = null;
  private ICamera e = null;
  private e f = null;
  private c g = null;
  private a h = null;
  private a i = null;

  public UltraNetStream(INetConnection paramINetConnection)
  {
    this.a = ((UltraNetConnection)paramINetConnection).a();
    this.a.a(paramINetConnection, this, new d());
    this.h = new a();
    this.i = new a();
  }

  @Override
public INetStream.Info getInfo()
  {
    return new INetStream.Info(this.h.a, this.h.b, this.h.c, this.i.a, this.i.b, this.i.c);
  }

  @Override
public ICamera getCamera()
  {
    return this.e;
  }

  @Override
public IMicrophone getMicrophone()
  {
    return this.d;
  }

  @Override
public IVideo getVideo()
  {
    if ((this.b instanceof b))
      return ((b)this.b).a();
    return this.b;
  }

  @Override
public double bufferLength()
  {
    return this.c ? this.a.b(this) : this.b.bufferLength();
  }

  @Override
public int bufferSize()
  {
    return this.c ? this.a.c(this) : 0;
  }

  @Override
public long bytesLoaded()
  {
    return this.b.bytesLoaded();
  }

  @Override
public long bytesTotal()
  {
    return this.b.bytesTotal();
  }

  @Override
public int clearBuffer()
  {
    return this.a.a(this);
  }

  @Override
public void attachAudio(IMicrophone paramIMicrophone)
  {
    if (this.d == paramIMicrophone)
      return;
    if (this.d != null)
    {
      this.d.removeListener(this.g);
      this.g = null;
    }
    this.d = paramIMicrophone;
    if (this.d != null)
      this.d.addListener(this.g = new c());
  }

  @Override
public void attachCamera(ICamera paramICamera, int paramInt)
  {
    if (this.e == paramICamera)
      return;
    if (this.e != null)
    {
      this.e.removeListener(this.f);
      this.f = null;
    }
    this.e = paramICamera;
    if (this.e != null)
      this.e.addListener(this.f = new e(paramInt));
  }

  @Override
public void publish(String paramString1, String paramString2)
  {
    paramString2 = paramString2 == null ? "live" : paramString2;
    if ((!"append".equalsIgnoreCase(paramString2)) && (!"live".equalsIgnoreCase(paramString2)) && (!"record".equalsIgnoreCase(paramString2)))
      throw new IllegalArgumentException("Wrong publish type '" + paramString2 + "'. Use 'live','record' or 'append' type");
    this.a.a(this, paramString1, paramString2);
    this.c = true;
  }

  @Override
public void send(String paramString, Object... paramArrayOfObject)
  {
    this.a.a(this, paramString, paramArrayOfObject);
  }

  @Override
public double currentFPS()
  {
    return this.b.fps();
  }

  @Override
public double liveDelay()
  {
    return this.b.liveDelay();
  }

  @Override
public double time()
  {
    return this.b.time();
  }

  @Override
public void play(IVideo paramIVideo, Object... paramArrayOfObject)
  {
    if (paramIVideo == null)
      throw new IllegalArgumentException("Parameter 'video' is null");
    this.b = new b(paramIVideo);
    this.a.a(this, this.b, paramArrayOfObject);
  }

  @Override
public void pause()
  {
    this.a.d(this);
  }

  @Override
public void receiveAudio(boolean paramBoolean)
  {
    this.a.a(this, paramBoolean);
  }

  @Override
public void receiveVideo(boolean paramBoolean)
  {
    this.a.b(this, paramBoolean);
  }

  @Override
public void resume()
  {
    this.a.e(this);
  }

  @Override
public void seek(double paramDouble)
  {
    this.a.a(this, paramDouble);
  }

  @Override
public void togglePause()
  {
    if (this.c)
      pause();
    else
      resume();
  }

  @Override
public void close()
  {
    attachAudio(null);
    attachCamera(null, 0);
    this.a.f(this);
    super.close();
  }

  public void _RtmpSampleAccess(boolean paramBoolean1, boolean paramBoolean2)
  {
  }
  
  static void a(UltraNetStream netstream, String s, Exception exception)
  {
      netstream.a(s, exception);
  }

  static void a(UltraNetStream netstream, String s)
  {
      netstream.a(s);
  }

  static void a(UltraNetStream netstream, Map map)
  {
      netstream.c(map);
  }

  static void b(UltraNetStream netstream, Map map)
  {
      netstream.a(map);
  }

  static IVideo a(UltraNetStream netstream)
  {
      return netstream.b;
  }

  static void c(UltraNetStream netstream, Map map)
  {
      netstream.b(map);
  }

  static void d(UltraNetStream netstream, Map map)
  {
      netstream.d(map);
  }

  static boolean b(UltraNetStream netstream)
  {
      return netstream.c;
  }

  static a c(UltraNetStream netstream)
  {
      return netstream.i;
  }

  static com.smaxe.uv.client.a.d d(UltraNetStream netstream)
  {
      return netstream.a;
  }

  static a e(UltraNetStream netstream)
  {
      return netstream.h;
  }

  private final class a
  {
    public int a = 0;
    public int b = 0;
    public int c = 0;

    public a()
    {
    }

    public MediaData a(MediaData paramMediaData)
    {
      this.a = (this.b == 0 ? 0 : this.a + paramMediaData.rtime);
      this.b += 1;
      this.c += paramMediaData.size();
      return paramMediaData;
    }
  }

  private final class b
    implements IVideo
  {
    private final IVideo b;

    public b(IVideo arg2)
    {
      this.b = arg2;
    }

    public IVideo a()
    {
      return this.b;
    }

    @Override
	public double bufferLength()
    {
      return this.b.bufferLength();
    }

    @Override
	public long bytesLoaded()
    {
      return this.b.bytesLoaded();
    }

    @Override
	public long bytesTotal()
    {
      return this.b.bytesTotal();
    }

    @Override
	public void clear()
    {
      this.b.clear();
    }

    @Override
	public void clearPlayBuffer()
    {
      this.b.clearPlayBuffer();
    }

    @Override
	public double fps()
    {
      return this.b.fps();
    }

    @Override
	public double liveDelay()
    {
      return this.b.liveDelay();
    }

    @Override
	public void reset()
    {
      this.b.reset();
    }

    @Override
	public double time()
    {
      return this.b.time();
    }

    @Override
	public void onAudioData(MediaData paramMediaData)
    {
      this.b.onAudioData(UltraNetStream.e(UltraNetStream.this).a(paramMediaData));
    }

    @Override
	public void onVideoData(MediaData paramMediaData)
    {
      this.b.onVideoData(UltraNetStream.c(UltraNetStream.this).a(paramMediaData));
    }

    @Override
	public void onFlvData(MediaData paramMediaData)
    {
      this.b.onFlvData(paramMediaData);
    }

    @Override
	public void onCuePoint(Object paramObject)
    {
      this.b.onCuePoint(paramObject);
    }

    @Override
	public void onMetaData(Object paramObject)
    {
      this.b.onMetaData(paramObject);
    }

    @Override
	public void onSetDataFrame(String paramString, Object paramObject)
    {
      this.b.onSetDataFrame(paramString, paramObject);
    }
  }

  private final class c extends IMicrophone.ListenerAdapter
  {
    public c()
    {
    }

    @Override
	public void onAudioData(MediaData paramMediaData)
    {
      if (!UltraNetStream.b(UltraNetStream.this))
        return;
      UltraNetStream.d(UltraNetStream.this).a(UltraNetStream.this, UltraNetStream.e(UltraNetStream.this).a(paramMediaData));
    }
  }

  private final class e extends ICamera.ListenerAdapter
  {
    private final int b;
    private long c = 0L;

    public e(int arg2)
    {
      this.b = arg2;
    }

    @Override
	public void onVideoData(MediaData paramMediaData)
    {
      if (!UltraNetStream.b(UltraNetStream.this))
        return;
      if (this.b > 0)
      {
    	  try {
    		  Class<?> clzF = Class.forName("com.smaxe.uv.a.a.f");
        	  Method m = clzF.getMethod("a", int.class);
        	
            long l = System.currentTimeMillis();
            if (l - this.c < this.b)
              return;
            int value = (Integer)m.invoke(clzF, paramMediaData.tag());
            switch (value)
            {
            case 1:
            case 5:
              this.c = l;
              break;
            default:
              return;
            }
    	  } catch(Exception ex) {
    		  ex.printStackTrace();
    	  }
    	  
      }
      UltraNetStream.d(UltraNetStream.this).b(UltraNetStream.this, UltraNetStream.c(UltraNetStream.this).a(paramMediaData));
    }

    @Override
	public void onFlvData(MediaData paramMediaData)
    {
      if (!UltraNetStream.b(UltraNetStream.this))
        return;
      UltraNetStream.d(UltraNetStream.this).c(UltraNetStream.this, paramMediaData);
    }
  }

  private class d extends com.smaxe.uv.client.a.d.a

  {
    public d()
    {
    }

    @Override
	public void a(String paramString, Exception paramException)
    {
      UltraNetStream.a(UltraNetStream.this, paramString, paramException);
    }

    @Override
	public void a(String paramString)
    {
      UltraNetStream.a(UltraNetStream.this, paramString);
    }

    @Override
	public void a(Map<String, Object> paramMap)
    {
      UltraNetStream.a(UltraNetStream.this, paramMap);
    }

    @Override
	public void b(Map<String, Object> paramMap)
    {
      UltraNetStream.b(UltraNetStream.this, paramMap);
      UltraNetStream.a(UltraNetStream.this).onCuePoint(paramMap);
    }

    @Override
	public void c(Map<String, Object> paramMap)
    {
      UltraNetStream.c(UltraNetStream.this, paramMap);
      UltraNetStream.a(UltraNetStream.this).onMetaData(paramMap);
    }

    @Override
	public void d(Map<String, Object> paramMap)
    {
      UltraNetStream.d(UltraNetStream.this, paramMap);
    }

    @Override
	public void a(String paramString, Map<String, Object> paramMap)
    {
      UltraNetStream.a(UltraNetStream.this).onSetDataFrame(paramString, paramMap);
    }
  }
}