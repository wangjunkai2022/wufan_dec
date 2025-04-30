package com.alipay.sdk.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.efs.sdk.base.core.util.NetworkUtil;
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: d  reason: collision with root package name */
    private static final String f9815d = "00:00:00:00:00:00";

    /* renamed from: e  reason: collision with root package name */
    private static b f9816e;

    /* renamed from: a  reason: collision with root package name */
    private String f9817a;

    /* renamed from: b  reason: collision with root package name */
    private String f9818b;

    /* renamed from: c  reason: collision with root package name */
    private String f9819c;

    private b(Context context) {
        try {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                f(telephonyManager.getDeviceId());
                String subscriberId = telephonyManager.getSubscriberId();
                if (subscriberId != null) {
                    subscriberId = (subscriberId + "000000000000000").substring(0, 15);
                }
                this.f9817a = subscriberId;
                String macAddress = ((WifiManager) context.getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)).getConnectionInfo().getMacAddress();
                this.f9819c = macAddress;
                if (TextUtils.isEmpty(macAddress)) {
                    this.f9819c = f9815d;
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                if (TextUtils.isEmpty(this.f9819c)) {
                    this.f9819c = f9815d;
                }
            }
        } catch (Throwable th) {
            if (TextUtils.isEmpty(this.f9819c)) {
                this.f9819c = f9815d;
            }
            throw th;
        }
    }

    public static b a(Context context) {
        if (f9816e == null) {
            f9816e = new b(context);
        }
        return f9816e;
    }

    private void c(String str) {
        if (str != null) {
            str = (str + "000000000000000").substring(0, 15);
        }
        this.f9817a = str;
    }

    public static d d(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.getType() == 0) {
                return d.a(activeNetworkInfo.getSubtype());
            }
            if (activeNetworkInfo != null && activeNetworkInfo.getType() == 1) {
                return d.WIFI;
            }
            return d.NONE;
        } catch (Exception unused) {
            return d.NONE;
        }
    }

    private void f(String str) {
        if (str != null) {
            byte[] bytes = str.getBytes();
            for (int i2 = 0; i2 < bytes.length; i2++) {
                if (bytes[i2] < 48 || bytes[i2] > 57) {
                    bytes[i2] = 48;
                }
            }
            String str2 = new String(bytes);
            str = (str2 + "000000000000000").substring(0, 15);
        }
        this.f9818b = str;
    }

    public static String h(Context context) {
        String str;
        b a4 = a(context);
        String str2 = a4.e() + "|";
        String b4 = a4.b();
        if (TextUtils.isEmpty(b4)) {
            str = str2 + "000000000000000";
        } else {
            str = str2 + b4;
        }
        return str.substring(0, 8);
    }

    private String i() {
        String str = e() + "|";
        String b4 = b();
        if (TextUtils.isEmpty(b4)) {
            return str + "000000000000000";
        }
        return str + b4;
    }

    public static String j(Context context) {
        if (context == null) {
            return "";
        }
        try {
            return context.getResources().getConfiguration().locale.toString();
        } catch (Throwable unused) {
            return "";
        }
    }

    public final String b() {
        if (TextUtils.isEmpty(this.f9817a)) {
            this.f9817a = "000000000000000";
        }
        return this.f9817a;
    }

    public final String e() {
        if (TextUtils.isEmpty(this.f9818b)) {
            this.f9818b = "000000000000000";
        }
        return this.f9818b;
    }

    public final String g() {
        return this.f9819c;
    }
}
