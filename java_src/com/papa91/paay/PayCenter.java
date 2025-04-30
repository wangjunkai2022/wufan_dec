package com.papa91.paay;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import com.bytedance.sdk.openadsdk.live.TTLiveConstants;
import com.google.gson.Gson;
import java.util.ArrayList;
import java.util.HashMap;
import org.apache.http.message.BasicNameValuePair;
import org.ppsspp.ppsspp.NativeActivity;
/* loaded from: classes4.dex */
public class PayCenter {
    public static final String ACTION_LOGIN_SUCCESS = "com.join.android.app.mgsim.broadcast.action_login_success";
    public static final String ACTION_UPDATE_USER_PURCHASE_INFO = "com.join.android.app.mgsim.broadcast.action_update_user_purchase_info";
    private static final String TAG = "PayCenter";
    private static Context mContext = null;
    private static Gson mGson = new Gson();
    private static Handler mHandler = new Handler() { // from class: com.papa91.paay.PayCenter.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (PayCenter.payResponse != null) {
                if (PayCenter.payResponse.getError() != 701) {
                    PayCenter.payListener.onResult(PayCenter.payResponse);
                } else {
                    PayCenter.redirectLogin();
                }
            }
        }
    };
    private static PayListener payListener = null;
    private static PayResponse payResponse = null;
    private static final String root = "http://payv1.papa91.com";

    public static void buyCheat(Context context, final String str, final String str2, final String str3, PayListener payListener2) {
        payListener = payListener2;
        mContext = context;
        if (str != null && !str.equals("") && !str.equals("0")) {
            new Thread() { // from class: com.papa91.paay.PayCenter.5
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    super.run();
                    ArrayList arrayList = new ArrayList(0);
                    arrayList.add(new BasicNameValuePair("uid", str));
                    arrayList.add(new BasicNameValuePair("token", str2));
                    arrayList.add(new BasicNameValuePair("game_id", str3));
                    NetUtils.postRequest("http://payv1.papa91.com/pay/emulator/open_cheat_permission", arrayList, new NetWorkListener() { // from class: com.papa91.paay.PayCenter.5.1
                        @Override // com.papa91.paay.NetWorkListener
                        public void onFailed(String str4) {
                            PayResponse payResponse2 = new PayResponse();
                            PayResponseData payResponseData = new PayResponseData();
                            payResponseData.setBuy_error_message(str4);
                            payResponse2.setData(payResponseData);
                            payResponse2.setError(-1);
                            PayResponse unused = PayCenter.payResponse = payResponse2;
                            PayCenter.mHandler.sendEmptyMessage(1);
                        }

                        @Override // com.papa91.paay.NetWorkListener
                        public void onSuccess(String str4) {
                            PayResponse unused = PayCenter.payResponse = (PayResponse) PayCenter.mGson.fromJson(str4, (Class<Object>) PayResponse.class);
                            PayCenter.mHandler.sendEmptyMessage(0);
                            PayCenter.mContext.sendBroadcast(new Intent(PayCenter.ACTION_UPDATE_USER_PURCHASE_INFO));
                        }
                    });
                }
            }.start();
        } else {
            redirectLogin();
        }
    }

    public static void buyCoin(Context context, final String str, final String str2, final String str3, PayListener payListener2) {
        payListener = payListener2;
        mContext = context;
        if (str != null && !str.equals("") && !str.equals("0")) {
            new Thread() { // from class: com.papa91.paay.PayCenter.7
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    super.run();
                    ArrayList arrayList = new ArrayList(0);
                    arrayList.add(new BasicNameValuePair("uid", str));
                    arrayList.add(new BasicNameValuePair("token", str2));
                    arrayList.add(new BasicNameValuePair("game_id", str3));
                    NetUtils.postRequest("http://payv1.papa91.com/pay/emulator/buy_game_coin", arrayList, new NetWorkListener() { // from class: com.papa91.paay.PayCenter.7.1
                        @Override // com.papa91.paay.NetWorkListener
                        public void onFailed(String str4) {
                            PayResponse payResponse2 = new PayResponse();
                            PayResponseData payResponseData = new PayResponseData();
                            payResponseData.setBuy_error_message(str4);
                            payResponse2.setData(payResponseData);
                            payResponse2.setError(-1);
                            PayResponse unused = PayCenter.payResponse = payResponse2;
                            PayCenter.mHandler.sendEmptyMessage(1);
                        }

                        @Override // com.papa91.paay.NetWorkListener
                        public void onSuccess(String str4) {
                            PayResponse unused = PayCenter.payResponse = (PayResponse) PayCenter.mGson.fromJson(str4, (Class<Object>) PayResponse.class);
                            PayCenter.mHandler.sendEmptyMessage(0);
                            PayCenter.mContext.sendBroadcast(new Intent(PayCenter.ACTION_UPDATE_USER_PURCHASE_INFO));
                        }
                    });
                }
            }.start();
        } else {
            redirectLogin();
        }
    }

    public static void buySP(Context context, final String str, final String str2, final String str3, PayListener payListener2) {
        payListener = payListener2;
        mContext = context;
        if (str != null && !str.equals("") && !str.equals("0")) {
            new Thread() { // from class: com.papa91.paay.PayCenter.6
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    super.run();
                    ArrayList arrayList = new ArrayList(0);
                    arrayList.add(new BasicNameValuePair("uid", str));
                    arrayList.add(new BasicNameValuePair("token", str2));
                    arrayList.add(new BasicNameValuePair("game_id", str3));
                    NetUtils.postRequest("http://payv1.papa91.com/pay/emulator/open_sp_permission", arrayList, new NetWorkListener() { // from class: com.papa91.paay.PayCenter.6.1
                        @Override // com.papa91.paay.NetWorkListener
                        public void onFailed(String str4) {
                            PayResponse payResponse2 = new PayResponse();
                            PayResponseData payResponseData = new PayResponseData();
                            payResponseData.setBuy_error_message(str4);
                            payResponse2.setData(payResponseData);
                            payResponse2.setError(-1);
                            PayResponse unused = PayCenter.payResponse = payResponse2;
                            PayCenter.mHandler.sendEmptyMessage(1);
                        }

                        @Override // com.papa91.paay.NetWorkListener
                        public void onSuccess(String str4) {
                            PayResponse unused = PayCenter.payResponse = (PayResponse) PayCenter.mGson.fromJson(str4, (Class<Object>) PayResponse.class);
                            PayCenter.mHandler.sendEmptyMessage(0);
                            PayCenter.mContext.sendBroadcast(new Intent(PayCenter.ACTION_UPDATE_USER_PURCHASE_INFO));
                        }
                    });
                }
            }.start();
        } else {
            redirectLogin();
        }
    }

    public static void inquiryCheat(Context context, final String str, final String str2, final String str3, PayListener payListener2) {
        payListener = payListener2;
        mContext = context;
        if (str != null && !str.equals("") && !str.equals("0")) {
            new Thread() { // from class: com.papa91.paay.PayCenter.2
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    super.run();
                    ArrayList arrayList = new ArrayList(0);
                    arrayList.add(new BasicNameValuePair("uid", str));
                    arrayList.add(new BasicNameValuePair("token", str2));
                    arrayList.add(new BasicNameValuePair("game_id", str3));
                    NetUtils.postRequest("http://payv1.papa91.com/pay/emulator/cheat_permission_info", arrayList, new NetWorkListener() { // from class: com.papa91.paay.PayCenter.2.1
                        @Override // com.papa91.paay.NetWorkListener
                        public void onFailed(String str4) {
                            PayResponse payResponse2 = new PayResponse();
                            PayResponseData payResponseData = new PayResponseData();
                            payResponseData.setBuy_error_message(str4);
                            payResponse2.setData(payResponseData);
                            payResponse2.setError(-1);
                            PayResponse unused = PayCenter.payResponse = payResponse2;
                            PayCenter.mHandler.sendEmptyMessage(1);
                        }

                        @Override // com.papa91.paay.NetWorkListener
                        public void onSuccess(String str4) {
                            PayResponse unused = PayCenter.payResponse = (PayResponse) PayCenter.mGson.fromJson(str4, (Class<Object>) PayResponse.class);
                            PayCenter.mHandler.sendEmptyMessage(0);
                        }
                    });
                }
            }.start();
        } else {
            redirectLogin();
        }
    }

    public static void inquiryCoinInfo(Context context, final String str, final String str2, final String str3, PayListener payListener2) {
        payListener = payListener2;
        mContext = context;
        if (str != null && !str.equals("") && !str.equals("0")) {
            new Thread() { // from class: com.papa91.paay.PayCenter.4
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    super.run();
                    ArrayList arrayList = new ArrayList(0);
                    arrayList.add(new BasicNameValuePair("uid", str));
                    arrayList.add(new BasicNameValuePair("token", str2));
                    arrayList.add(new BasicNameValuePair("game_id", str3));
                    NetUtils.postRequest("http://payv1.papa91.com/pay/emulator/coin_permission_info", arrayList, new NetWorkListener() { // from class: com.papa91.paay.PayCenter.4.1
                        @Override // com.papa91.paay.NetWorkListener
                        public void onFailed(String str4) {
                            PayResponse payResponse2 = new PayResponse();
                            PayResponseData payResponseData = new PayResponseData();
                            payResponseData.setBuy_error_message(str4);
                            payResponse2.setData(payResponseData);
                            payResponse2.setError(-1);
                            PayResponse unused = PayCenter.payResponse = payResponse2;
                            PayCenter.mHandler.sendEmptyMessage(1);
                        }

                        @Override // com.papa91.paay.NetWorkListener
                        public void onSuccess(String str4) {
                            PayResponse unused = PayCenter.payResponse = (PayResponse) PayCenter.mGson.fromJson(str4, (Class<Object>) PayResponse.class);
                            PayCenter.mHandler.sendEmptyMessage(0);
                        }
                    });
                }
            }.start();
        } else {
            redirectLogin();
        }
    }

    public static void inquirySP(Context context, final String str, final String str2, final String str3, PayListener payListener2) {
        payListener = payListener2;
        mContext = context;
        if (str != null && !str.equals("") && !str.equals("0")) {
            new Thread() { // from class: com.papa91.paay.PayCenter.3
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    super.run();
                    ArrayList arrayList = new ArrayList(0);
                    arrayList.add(new BasicNameValuePair("uid", str));
                    arrayList.add(new BasicNameValuePair("token", str2));
                    arrayList.add(new BasicNameValuePair("game_id", str3));
                    NetUtils.postRequest("http://payv1.papa91.com/pay/emulator/sp_permission_info", arrayList, new NetWorkListener() { // from class: com.papa91.paay.PayCenter.3.1
                        @Override // com.papa91.paay.NetWorkListener
                        public void onFailed(String str4) {
                            PayResponse payResponse2 = new PayResponse();
                            PayResponseData payResponseData = new PayResponseData();
                            payResponseData.setBuy_error_message(str4);
                            payResponse2.setData(payResponseData);
                            payResponse2.setError(-1);
                            PayResponse unused = PayCenter.payResponse = payResponse2;
                            PayCenter.mHandler.sendEmptyMessage(1);
                        }

                        @Override // com.papa91.paay.NetWorkListener
                        public void onSuccess(String str4) {
                            PayResponse unused = PayCenter.payResponse = (PayResponse) PayCenter.mGson.fromJson(str4, (Class<Object>) PayResponse.class);
                            PayCenter.mHandler.sendEmptyMessage(0);
                        }
                    });
                }
            }.start();
        } else {
            redirectLogin();
        }
    }

    public static void lobbyPlayCheck(Context context, final String str, final String str2, final String str3, final String str4, final String str5, PayListener payListener2) {
        mContext = context;
        payListener = payListener2;
        if (str != null && !str.equals("") && !str.equals("0")) {
            new Thread() { // from class: com.papa91.paay.PayCenter.9
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    super.run();
                    HashMap hashMap = new HashMap(0);
                    hashMap.put("uid", str);
                    hashMap.put("game_id", str3);
                    hashMap.put("token", str2);
                    hashMap.put("role", str4);
                    hashMap.put(TTLiveConstants.ROOMID_KEY, str5);
                    String request = NetUtils.getRequest("http://anv3btapi.papa91.com/netbattle/lobby_play_check", hashMap);
                    if (request != null) {
                        PayResponse unused = PayCenter.payResponse = (PayResponse) PayCenter.mGson.fromJson(request, (Class<Object>) PayResponse.class);
                        PayCenter.mHandler.sendEmptyMessage(0);
                        return;
                    }
                    PayResponse payResponse2 = new PayResponse();
                    PayResponseData payResponseData = new PayResponseData();
                    payResponseData.setBuy_error_message("网络异常");
                    payResponse2.setData(payResponseData);
                    payResponse2.setError(-1);
                    PayResponse unused2 = PayCenter.payResponse = payResponse2;
                    PayCenter.mHandler.sendEmptyMessage(1);
                }
            }.start();
        } else {
            redirectLogin();
        }
    }

    public static void redirectLogin() {
        PayResponse payResponse2 = new PayResponse();
        payResponse = payResponse2;
        payResponse2.setError(701);
        payListener.onResult(payResponse);
        Intent intent = new Intent();
        intent.putExtra("intentFrom", 5);
        intent.setComponent(new ComponentName(NativeActivity.appPackName_mgsim, "com.join.mgps.activity.MyAccountCenterActivity_"));
        intent.setAction("android.intent.action.VIEW");
        intent.setAction("android.intent.action.VIEW");
        mContext.startActivity(intent);
    }

    public static void startLobby(Context context, final String str, final String str2, final String str3, final String str4, final String str5, PayListener payListener2) {
        mContext = context;
        payListener = payListener2;
        if (str != null && !str.equals("") && !str.equals("0")) {
            new Thread() { // from class: com.papa91.paay.PayCenter.8
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    super.run();
                    HashMap hashMap = new HashMap(0);
                    hashMap.put("uid", str);
                    hashMap.put("game_id", str3);
                    hashMap.put("token", str2);
                    hashMap.put("role", str4);
                    hashMap.put(TTLiveConstants.ROOMID_KEY, str5);
                    String request = NetUtils.getRequest("http://anv3btapi.papa91.com/netbattle/start_lobby_game", hashMap);
                    if (request != null) {
                        PayResponse unused = PayCenter.payResponse = (PayResponse) PayCenter.mGson.fromJson(request, (Class<Object>) PayResponse.class);
                        PayCenter.mHandler.sendEmptyMessage(0);
                        return;
                    }
                    PayResponse payResponse2 = new PayResponse();
                    PayResponseData payResponseData = new PayResponseData();
                    payResponseData.setBuy_error_message("网络异常");
                    payResponse2.setData(payResponseData);
                    payResponse2.setError(-1);
                    PayResponse unused2 = PayCenter.payResponse = payResponse2;
                    PayCenter.mHandler.sendEmptyMessage(1);
                }
            }.start();
        } else {
            redirectLogin();
        }
    }
}
