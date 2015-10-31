package com.coollive.launch.ui;

import com.coollive.launch.R;
import com.coollive.launch.common.SysUtil;

import android.app.Activity;
import android.net.Uri;
import android.os.Bundle;
import android.widget.MediaController;
import android.widget.VideoView;

public class VideoViewActivity extends Activity {
  public static final String KEY_URL = "url";
  private VideoView videoView = null;
  private String str = "";

  @Override
public void finish() {
    super.finish();
  }

  @Override
protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(R.layout.videoview);
    str = getIntent().getStringExtra("url");
    SysUtil.samlog("URL = " + str);
    this.videoView = ((VideoView)findViewById(R.id.videoview_videoview));
    this.videoView.setMediaController(new MediaController(this));
    this.videoView.setVideoURI(Uri.parse(str));
    this.videoView.start();
  }
}

/* Location:           D:\apk_unbuild\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.rayclear.videomessage.ui.VideoViewActivity
 * JD-Core Version:    0.6.0
 */