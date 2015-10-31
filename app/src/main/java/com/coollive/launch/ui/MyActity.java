package com.coollive.launch.ui;

import java.io.IOException;
import java.util.Vector;

import org.apache.http.HttpResponse;
import org.apache.http.ParseException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.coollive.launch.R;
import com.coollive.launch.common.AppContext;
import com.coollive.launch.common.SysUtil;
import com.coollive.launch.model.PartyModel;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

public class MyActity extends Activity implements View.OnClickListener,
		AdapterView.OnItemClickListener {
	private GetMyActivitiesThread getMyActivitiesThread = null;
	private ActityListAdapter actityListAdapter = null;
	private ListView listView = null;
	private Vector<PartyModel> partyModels = new Vector();
	private ProgressDialog progressDialog = null;

	private Handler handler = new Handler() {
		@Override
		public void handleMessage(Message paramMessage) {
			switch (paramMessage.what) {
			case 0:
				try {
					Toast.makeText(MyActity.this, (String) paramMessage.obj, 0)
							.show();
					return;
				} catch (Exception localException2) {
					return;
				}
			case 1:
				MyActity.this.progressDialog.dismiss();
				MyActity.this.partyModels.clear();
				try {
					JSONArray localJSONArray;
					JSONObject ret = new JSONObject((String) paramMessage.obj);
					if (ret.getBoolean("result")) {
						localJSONArray = ret.getJSONArray("data");
						int j = 0;
						int i = localJSONArray.length();
						
						while (true) {
							try {								
								if (j >= i) {
									MyActity.this.actityListAdapter
											.notifyDataSetChanged();
									break;
								}
								JSONObject localJSONObject = localJSONArray
										.getJSONObject(j);

								PartyModel localPartyModel = new PartyModel();
								localPartyModel.duration = localJSONObject
										.getLong("duration");
								localPartyModel.id = localJSONObject
										.getInt("id");
								localPartyModel.istmp = localJSONObject
										.getBoolean("is_tmp");
								localPartyModel.joinNum = localJSONObject
										.getInt("join_num");
								localPartyModel.passwd = localJSONObject
										.getString("passwd");
								localPartyModel.shareMessage = localJSONObject
										.getString("message");
								localPartyModel.starttime = localJSONObject
										.getLong("start_time");
								localPartyModel.title = localJSONObject
										.getString("title");
								localPartyModel.urlToken = localJSONObject
										.getString("token");
								localPartyModel.rtmpUrl = localJSONObject
										.getString("rtmp_url");
								localPartyModel.description = localJSONObject
										.getString("des");
								localPartyModel.thumburl = localJSONObject
										.getString("thumb");

								if (!localPartyModel.istmp)
									MyActity.this.partyModels
											.add(localPartyModel);
								j++;
							} catch (JSONException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
								return;
							}
						}
						return;
					} else {
						MyActity.this.progressDialog.dismiss();
						Toast.makeText(MyActity.this, ret.getString("error"), 0).show();
						return;
					}
				} catch (Exception localException1) {
					localException1.printStackTrace();
					return;
				}
			case 2:
				MyActity.this.progressDialog.dismiss();
				Toast.makeText(MyActity.this, "获取列表失败", 0).show();
				return;
			default:
				return;
			}

		}
	};

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_my_actity);

		findViewById(R.id.topback_IV).setOnClickListener(this);

		this.listView = ((ListView) findViewById(R.id.my_actity_listLV));

		this.actityListAdapter = new ActityListAdapter(MyActity.this);
		this.listView.setAdapter(this.actityListAdapter);
		this.listView.setOnItemClickListener(this);
		this.actityListAdapter.notifyDataSetChanged();// 强制调用getView

		this.progressDialog = new ProgressDialog(this);
		this.progressDialog.setTitle("请稍后...");
		this.progressDialog.setMessage("正在更新我的活动");
		this.progressDialog
				.setOnDismissListener(new DialogInterface.OnDismissListener() {
					@Override
					public void onDismiss(DialogInterface paramDialogInterface) {
						if (MyActity.this.getMyActivitiesThread != null)
							MyActity.this.getMyActivitiesThread.flag = false;
					}
				});
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.my_actity, menu);
		return true;
	}

	private class GetMyActivitiesThread extends Thread {
		public volatile boolean flag = true;
		private Context context;

		private GetMyActivitiesThread(Context context) {
			super();
			this.context = context;
		}

		@Override
		public void run() {
			super.run();
			HttpResponse localHttpResponse;
			try {
				String str1 = AppContext.inetAddr
						+ AppContext.getMyActivitiesURL + "user_id="
						+ AppContext.getUserID(MyActity.this);

				SysUtil.samlog(str1);
				HttpGet localHttpGet = new HttpGet(str1);
				DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient();
				localDefaultHttpClient.setCookieStore(AppContext
						.getCookieStore(MyActity.this));
				localDefaultHttpClient.getParams().setParameter(
						"http.connection.timeout", Integer.valueOf(20000));
				localDefaultHttpClient.getParams().setParameter(
						"http.socket.timeout", Integer.valueOf(20000));
				localHttpResponse = localDefaultHttpClient
						.execute(localHttpGet);
				if (!this.flag)
					return;
				int i = localHttpResponse.getStatusLine().getStatusCode();
				SysUtil.samlog("getStatusCode = " + i);
				if (i == 200) {
					String str2 = EntityUtils.toString(localHttpResponse
							.getEntity());
					SysUtil.samlog(str2);

					MyActity.this.handler.obtainMessage(1, str2).sendToTarget();
					return;
				}
			} catch (Exception localException) {
				localException.printStackTrace();
				MyActity.this.handler.obtainMessage(2).sendToTarget();
				return;
			}
			String str3;
			try {
				str3 = EntityUtils.toString(localHttpResponse.getEntity());
				MyActity.this.handler.obtainMessage(2, str3).sendToTarget();
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
	}

	// 活动列表适配器
	private class ActityListAdapter extends BaseAdapter {
		private Context context;

		private ActityListAdapter(Context context) {
			super();
			this.context = context;
		}

		@Override
		public int getCount() {
			return MyActity.this.partyModels.size();
		}

		@Override
		public Object getItem(int paramInt) {
			return paramInt;
		}

		@Override
		public long getItemId(int paramInt) {
			return paramInt;
		}

		@Override
		public View getView(int paramInt, View paramView,
				ViewGroup paramViewGroup) {
			if (paramView == null)
				paramView = LayoutInflater.from(MyActity.this).inflate(
						R.layout.myactity_list_dingle, null);
			PartyModel localPartyModel = MyActity.this.partyModels
					.elementAt(paramInt);
			((TextView) paramView
					.findViewById(R.id.myactity_list_single_starttimeTV))
					.setText(SysUtil
							.getPartyFormatDate(localPartyModel.starttime)
							+ " "
							+ SysUtil
									.getPartyFormatTime(localPartyModel.starttime));
			((TextView) paramView
					.findViewById(R.id.myactity_list_single_titleTV))
					.setText("主题:" + localPartyModel.title);
			((TextView) paramView.findViewById(R.id.myactity_list_single_urlTV))
					.setText("活动ID: " + localPartyModel.urlToken);
			return paramView;
		}
	}

	@Override
	public void onItemClick(AdapterView<?> paramAdapterView, View paramView,
			int paramInt, long paramLong) {
		SysUtil.samlog("position = " + paramInt);

		AppContext.savePartyModel(MyActity.this, this.partyModels.elementAt(paramInt));
		startActivity(new Intent(MyActity.this, ActityInfo.class));
	}

	@Override
	protected void onResume() {
		super.onResume();
		this.progressDialog.show();
		if (this.getMyActivitiesThread != null)
			this.getMyActivitiesThread.flag = false;

		this.getMyActivitiesThread = new GetMyActivitiesThread(MyActity.this);
		this.getMyActivitiesThread.start();
	}

	@Override
	public void onClick(View v) {
		// TODO Auto-generated method stub
		switch (v.getId()) {
		default:
			return;
		case R.id.topback_IV:
			finish();
		}
	}

}
