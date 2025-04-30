package com.psk.eventmodule.net.util;

import android.content.Context;
/* loaded from: classes.dex */
public class DeviceIdUtil {
    static String TAG = "DeviceIdUtil";
    static DeviceIdUtil deviceIdUtil = null;
    static String imei = "";
    static String oaid = "";
    static String umengKey = "";
    static String wufanKey = "";
    Context mContext;

    private DeviceIdUtil(Context context) {
        this.mContext = context;
    }

    public static DeviceIdUtil getInstance(Context context) {
        if (deviceIdUtil == null) {
            deviceIdUtil = new DeviceIdUtil(context);
        }
        return deviceIdUtil;
    }

    public String getImei() {
        return imei;
    }

    public String getOaid() {
        return oaid;
    }

    public String getUmengKey() {
        return umengKey;
    }

    public String getWufanKey() {
        return wufanKey;
    }

    public void setImei(String str) {
        imei = str;
    }

    public void setOaid(String str) {
        oaid = str;
    }

    public void setUmengKey(String str) {
        umengKey = str;
    }

    public void setWufanKey(String str) {
        wufanKey = str;
    }
}
