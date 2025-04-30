package com.papa91.arc.http.utils;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.provider.Settings;
import androidx.core.content.ContextCompat;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.papa91.arc.util.MD5Util;
import com.papa91.arc.util.StringUtils;
/* loaded from: classes4.dex */
public class RequestUtil {
    private static String androidId = null;
    private static String androidIdx = null;
    private static String channel_num = null;
    private static String end = null;
    private static String imei = null;
    private static String ip_address = null;
    private static String mac = null;
    private static String mobile_phone_model = null;
    private static RequestUtil ourInstance = null;
    private static int targetvVersion = 0;
    private static String versionAndVersionName = "1_1.0";
    private String ad;

    private RequestUtil(Context context) {
        if (ContextCompat.checkSelfPermission(context, "android.permission.READ_PHONE_STATE") != 0) {
            sendPermissonBroadcast(context, "android.permission.READ_PHONE_STATE");
        }
        this.ad = MetaUtils.getAd(context);
        targetvVersion = MetaUtils.getTargetVersion(context);
        androidIdx = Settings.System.getString(context.getContentResolver(), "android_id");
        String str = androidIdx + "gzRN53VWRF9BYUXomg2014";
        end = MD5Util.stringToMD5(str);
        StringBuilder sb = new StringBuilder();
        sb.append("imei   shi ");
        sb.append(imei);
        sb.append("  md5String=  ");
        sb.append(str);
        sb.append("   end=");
        sb.append(end);
        channel_num = MetaUtils.getAd(context);
        mobile_phone_model = "";
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            versionAndVersionName = packageInfo.versionCode + "_" + packageInfo.versionName;
        } catch (PackageManager.NameNotFoundException e4) {
            e4.printStackTrace();
        }
    }

    public static String getAndroidId() {
        return androidIdx;
    }

    public static String getChannel_num() {
        return channel_num;
    }

    public static String getEnd() {
        return end;
    }

    public static String getImei() {
        return imei;
    }

    public static RequestUtil getInstance(Context context) {
        if (ourInstance == null) {
            ourInstance = new RequestUtil(context);
        }
        try {
            if (StringUtils.isNotEmpty(androidIdx)) {
                end = MD5Util.stringToMD5(androidIdx + "gzRN53VWRF9BYUXomg2014");
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return ourInstance;
    }

    public static String getIp_address() {
        return ip_address;
    }

    public static String getMac() {
        return mac;
    }

    public static String getMobile_phone_model() {
        return mobile_phone_model;
    }

    public static int getTargetvVersion() {
        return targetvVersion;
    }

    public static String getVersionAndVersionName() {
        return versionAndVersionName;
    }

    private void sendPermissonBroadcast(Context context, String str) {
        Intent intent = new Intent();
        intent.setAction("com.wufun.get.permission");
        intent.putExtra("permission", str);
        LocalBroadcastManager.getInstance(context).sendBroadcast(intent);
    }

    public static void setImei(String str) {
        imei = str;
    }

    public static void setMobile_phone_model(String str) {
        mobile_phone_model = str;
    }

    public String getAd() {
        return this.ad;
    }
}
