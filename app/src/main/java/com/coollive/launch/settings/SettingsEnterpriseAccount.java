package com.coollive.launch.settings;

import com.coollive.launch.common.SysUtil;

import android.app.Activity;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;

public class SettingsEnterpriseAccount extends Activity
  implements View.OnClickListener
{
  private EditText enterpriseEditText = null;

  @Override
public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    case 2131230721:
    default:
      return;
    case 2131230720:
      finish();
      return;
    case 2131230722:
    }
    String str = this.enterpriseEditText.getEditableText().toString();
    if ((SysUtil.isStringEmpty(str)) || (str.length() != 11) || (!str.startsWith("1")))
    {
      Toast.makeText(this, "手机号码格式错误", 0).show();
      return;
    }
    SharedPreferences.Editor localEditor = getSharedPreferences("pref", 0).edit();
    localEditor.putString("enterprise_account", str);
    localEditor.commit();
    finish();
  }

  @Override
protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903065);
    findViewById(2131230720).setOnClickListener(this);
    findViewById(2131230722).setOnClickListener(this);
    this.enterpriseEditText = ((EditText)findViewById(2131230871));
  }
}

/* Location:           D:\apk_unbuild\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.rayclear.videomessage.ui.settings.SettingsEnterpriseAccount
 * JD-Core Version:    0.6.0
 */