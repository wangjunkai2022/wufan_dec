package com.join.mgps.Util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.os.Looper;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.widget.Toast;
import java.util.regex.Pattern;
/* compiled from: ExampleUtil.java */
/* loaded from: classes3.dex */
public class d0 {

    /* renamed from: a  reason: collision with root package name */
    public static final String f27499a = "JPUSH_EXAMPLE";

    /* renamed from: b  reason: collision with root package name */
    public static final String f27500b = "JPUSH_EXAMPLE_DAYS";

    /* renamed from: c  reason: collision with root package name */
    public static final String f27501c = "PREFS_START_TIME";

    /* renamed from: d  reason: collision with root package name */
    public static final String f27502d = "PREFS_END_TIME";

    /* renamed from: e  reason: collision with root package name */
    public static final String f27503e = "JPUSH_APPKEY";

    /* renamed from: f  reason: collision with root package name */
    private static final String f27504f = "^[+0-9][-0-9]{1,}$";

    /* compiled from: ExampleUtil.java */
    /* loaded from: classes3.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f27505a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f27506b;

        a(Context context, String str) {
            this.f27505a = context;
            this.f27506b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            Looper.prepare();
            Toast.makeText(this.f27505a, this.f27506b, 0).show();
            Looper.loop();
        }
    }

    public static String a(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException unused) {
            return "Unknown";
        }
    }

    public static String b(Context context) {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            Bundle bundle = applicationInfo != null ? applicationInfo.metaData : null;
            if (bundle != null) {
                String string = bundle.getString("JPUSH_APPKEY");
                if (string != null) {
                    try {
                        if (string.length() != 24) {
                            return null;
                        }
                    } catch (PackageManager.NameNotFoundException unused) {
                    }
                    return string;
                }
                return null;
            }
            return null;
        } catch (PackageManager.NameNotFoundException unused2) {
            return null;
        }
    }

    public static String c(Context context) {
        return "JPushInterface.getUdid(context)";
    }

    public static String d(Context context, String str) {
        String str2;
        try {
            str2 = ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
        } catch (Exception e4) {
            u0.c(d0.class.getSimpleName(), e4.getMessage());
            str2 = null;
        }
        return g(str2) ? str2 : str;
    }

    public static boolean e(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public static boolean f(String str) {
        return str == null || str.length() == 0 || str.trim().length() == 0;
    }

    private static boolean g(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            return false;
        }
        try {
            return Pattern.compile("[\\x20-\\x7E]+").matcher(charSequence).matches();
        } catch (Throwable unused) {
            return true;
        }
    }

    public static boolean h(String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        return Pattern.compile(f27504f).matcher(str).matches();
    }

    public static boolean i(String str) {
        return Pattern.compile("^[一-龥0-9a-zA-Z_!@#$&*+=.|]+$").matcher(str).matches();
    }

    public static void j(String str, Context context) {
        new Thread(new a(context, str)).start();
    }
}
