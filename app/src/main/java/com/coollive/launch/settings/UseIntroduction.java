package com.coollive.launch.settings;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;

public class UseIntroduction extends Activity
{
  @Override
protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903069);
    findViewById(2131230720).setOnClickListener(new View.OnClickListener()
    {
      @Override
	public void onClick(View paramView)
      {
        UseIntroduction.this.finish();
      }
    });
  }
}

/* Location:           D:\apk_unbuild\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.rayclear.videomessage.ui.settings.UseIntroduction
 * JD-Core Version:    0.6.0
 */