package com.coollive.launch.settings;

import android.app.Activity;
import android.app.ProgressDialog;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
public class ShareApp extends Activity
  implements View.OnClickListener, TextWatcher
{
 
  private ProgressDialog sendsmsProgressDialog = null;
  


  @Override
public void afterTextChanged(Editable paramEditable)
  {
  }

  @Override
public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  @Override
public void finish()
  {
    super.finish();
    try
    {
      this.sendsmsProgressDialog.dismiss();
      return;
    }
    catch (Exception localException)
    {
    }
  }



  @Override
protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getWindow().setSoftInputMode(32);
    setContentView(2130903067);
  }

@Override
public void onClick(View v) {
	// TODO Auto-generated method stub
	
}

@Override
public void onTextChanged(CharSequence s, int start, int before, int count) {
	// TODO Auto-generated method stub
	
}
}

/* Location:           D:\apk_unbuild\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.rayclear.videomessage.ui.settings.ShareApp
 * JD-Core Version:    0.6.0
 */