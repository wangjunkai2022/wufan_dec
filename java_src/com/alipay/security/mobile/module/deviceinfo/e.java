package com.alipay.security.mobile.module.deviceinfo;

import android.content.Context;
import android.net.ConnectivityManager;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import com.xinzhu.overmind.utils.t;
import java.io.File;
/* loaded from: classes2.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private static e f9905a = new e();

    private e() {
    }

    public static e a() {
        return f9905a;
    }

    private static String b(String str, String str2) {
        try {
            return (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, str2);
        } catch (Exception unused) {
            return str2;
        }
    }

    public static boolean c(Context context) {
        boolean z3;
        int length;
        try {
            if (!Build.HARDWARE.contains("goldfish") && !Build.PRODUCT.contains("sdk") && !Build.FINGERPRINT.contains("generic")) {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager != null) {
                    String deviceId = telephonyManager.getDeviceId();
                    if (deviceId != null && (length = deviceId.length()) != 0) {
                        for (int i2 = 0; i2 < length; i2++) {
                            if (!Character.isWhitespace(deviceId.charAt(i2)) && deviceId.charAt(i2) != '0') {
                                z3 = false;
                                break;
                            }
                        }
                    }
                    z3 = true;
                    if (z3) {
                        return true;
                    }
                }
                return com.alipay.security.mobile.module.commonutils.a.b(Settings.Secure.getString(context.getContentResolver(), "android_id"));
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static String d() {
        return q.a.f73954a;
    }

    private static String e(Context context) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager.getActiveNetworkInfo().isConnected()) {
                String typeName = connectivityManager.getActiveNetworkInfo().getTypeName();
                return typeName == null ? false : typeName.equalsIgnoreCase("WIFI") ? "WIFI" : connectivityManager.getActiveNetworkInfo().getExtraInfo();
            }
            return "";
        } catch (Exception unused) {
            return "";
        }
    }

    public static boolean f() {
        String[] strArr = {"/system/bin/", "/system/xbin/", "/system/sbin/", "/sbin/", "/vendor/bin/"};
        for (int i2 = 0; i2 < 5; i2++) {
            try {
                if (new File(strArr[i2] + t.f64782a).exists()) {
                    return true;
                }
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public static String g() {
        return Build.BOARD;
    }

    public static String h() {
        return Build.BRAND;
    }

    public static String i() {
        return Build.DEVICE;
    }

    public static String j() {
        return Build.DISPLAY;
    }

    public static String k() {
        return Build.VERSION.INCREMENTAL;
    }

    public static String l() {
        return Build.MANUFACTURER;
    }

    public static String m() {
        return Build.MODEL;
    }

    public static String n() {
        return Build.PRODUCT;
    }

    public static String o() {
        return Build.VERSION.RELEASE;
    }

    public static String p() {
        return Build.VERSION.SDK;
    }

    public static String q() {
        return Build.TAGS;
    }

    public static String r() {
        return b("ro.kernel.qemu", "0");
    }

    private static String s() {
        return b("gsm.sim.state", "");
    }

    private static String t() {
        return b("gsm.sim.state.2", "");
    }

    private static String u() {
        return b("wifi.interface", "");
    }

    private static String v() {
        return b("sys.usb.state", "");
    }
}
