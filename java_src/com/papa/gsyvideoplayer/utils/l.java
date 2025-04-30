package com.papa.gsyvideoplayer.utils;

import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
/* compiled from: NetworkUtils.java */
/* loaded from: classes4.dex */
public class l {

    /* renamed from: a  reason: collision with root package name */
    public static final int f55256a = 1;

    /* renamed from: b  reason: collision with root package name */
    public static final int f55257b = 4;

    /* renamed from: c  reason: collision with root package name */
    public static final int f55258c = 3;

    /* renamed from: d  reason: collision with root package name */
    public static final int f55259d = 2;

    /* renamed from: e  reason: collision with root package name */
    public static final int f55260e = 5;

    /* renamed from: f  reason: collision with root package name */
    public static final int f55261f = -1;

    /* renamed from: g  reason: collision with root package name */
    private static final int f55262g = 16;

    /* renamed from: h  reason: collision with root package name */
    private static final int f55263h = 17;

    /* renamed from: i  reason: collision with root package name */
    private static final int f55264i = 18;

    private l() {
    }

    private static NetworkInfo a(Context context) {
        return ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int b(Context context) {
        NetworkInfo a4 = a(context);
        if (a4 == null || !a4.isAvailable()) {
            return -1;
        }
        if (a4.getType() == 1) {
            return 1;
        }
        if (a4.getType() == 0) {
            switch (a4.getSubtype()) {
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                case 16:
                    return 2;
                case 3:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 12:
                case 14:
                case 15:
                case 17:
                    break;
                case 13:
                case 18:
                    return 4;
                default:
                    String subtypeName = a4.getSubtypeName();
                    if (!subtypeName.equalsIgnoreCase("TD-SCDMA") && !subtypeName.equalsIgnoreCase("WCDMA") && !subtypeName.equalsIgnoreCase("CDMA2000")) {
                        return 5;
                    }
                    break;
            }
            return 3;
        }
        return 5;
    }

    public static String c(Context context) {
        int b4 = b(context);
        return b4 != -1 ? b4 != 1 ? b4 != 2 ? b4 != 3 ? b4 != 4 ? "NETWORK_UNKNOWN" : "NETWORK_4G" : "NETWORK_3G" : "NETWORK_2G" : "NETWORK_WIFI" : "NETWORK_NO";
    }

    public static String d(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager != null) {
            return telephonyManager.getNetworkOperatorName();
        }
        return null;
    }

    public static int e(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager != null) {
            return telephonyManager.getPhoneType();
        }
        return -1;
    }

    public static boolean f(Context context) {
        NetworkInfo a4 = a(context);
        return a4 != null && a4.isAvailable() && a4.getSubtype() == 13;
    }

    public static boolean g(Context context) {
        NetworkInfo a4 = a(context);
        return a4 != null && a4.isAvailable();
    }

    public static boolean h(Context context) {
        NetworkInfo a4 = a(context);
        return a4 != null && a4.isConnected();
    }

    public static boolean i(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        return connectivityManager != null && connectivityManager.getActiveNetworkInfo().getType() == 1;
    }

    public static void j(Context context) {
        if (Build.VERSION.SDK_INT > 10) {
            context.startActivity(new Intent("android.settings.SETTINGS"));
        } else {
            context.startActivity(new Intent("android.settings.WIRELESS_SETTINGS"));
        }
    }
}
