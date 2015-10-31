package com.crittercism;

import android.app.Activity;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;

public class NotificationActivity extends Activity
  implements View.OnClickListener, View.OnTouchListener
{
  @Override
public void onClick(View paramView)
  {
    finish();
  }

  @Override
protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Bundle localBundle = getIntent().getExtras();
    if ((localBundle != null) && (localBundle.containsKey("com.crittercism.notification")))
    {
      
    }
  }

  @Override
public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    finish();
    return true;
  }
}

/* Location:           D:\apk_unbuild\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.crittercism.NotificationActivity
 * JD-Core Version:    0.6.0
 */