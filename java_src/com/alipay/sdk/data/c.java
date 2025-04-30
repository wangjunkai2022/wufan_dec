package com.alipay.sdk.data;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.widget.TextView;
import com.alipay.sdk.util.j;
import com.efs.sdk.base.core.util.NetworkUtil;
import com.qq.e.comm.constants.ErrorCode;
import java.util.HashMap;
import java.util.Random;
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: d  reason: collision with root package name */
    private static final String f9753d = "virtualImeiAndImsi";

    /* renamed from: e  reason: collision with root package name */
    private static final String f9754e = "virtual_imei";

    /* renamed from: f  reason: collision with root package name */
    private static final String f9755f = "virtual_imsi";

    /* renamed from: g  reason: collision with root package name */
    private static c f9756g;

    /* renamed from: a  reason: collision with root package name */
    public String f9757a;

    /* renamed from: b  reason: collision with root package name */
    public String f9758b = "sdk-and-lite";

    /* renamed from: c  reason: collision with root package name */
    public String f9759c;

    private c() {
    }

    public static synchronized c a() {
        c cVar;
        synchronized (c.class) {
            if (f9756g == null) {
                f9756g = new c();
            }
            cVar = f9756g;
        }
        return cVar;
    }

    private static String b(Context context) {
        return Float.toString(new TextView(context).getTextSize());
    }

    public static String c(Context context, HashMap<String, String> hashMap) {
        try {
            return k.a.a(context, hashMap);
        } catch (Throwable unused) {
            return "";
        }
    }

    private String d(n.b bVar) {
        String b4;
        Context context = m.b.b().f72580a;
        com.alipay.sdk.util.b a4 = com.alipay.sdk.util.b.a(context);
        if (TextUtils.isEmpty(this.f9757a)) {
            String d4 = j.d();
            String k4 = j.k();
            String q3 = j.q(context);
            String str = com.alipay.sdk.cons.a.f9700a;
            String substring = str.substring(0, str.indexOf("://"));
            String s3 = j.s(context);
            String f4 = Float.toString(new TextView(context).getTextSize());
            this.f9757a = "Msp/15.0.8 (" + d4 + ";" + k4 + ";" + q3 + ";" + substring + ";" + s3 + ";" + f4;
        }
        String a5 = com.alipay.sdk.util.b.d(context).a();
        String b5 = a4.b();
        String e4 = a4.e();
        Context context2 = m.b.b().f72580a;
        SharedPreferences sharedPreferences = context2.getSharedPreferences(f9753d, 0);
        String string = sharedPreferences.getString(f9755f, null);
        if (TextUtils.isEmpty(string)) {
            if (TextUtils.isEmpty(n.b.a().f72750a)) {
                String e5 = m.b.b().e();
                b4 = TextUtils.isEmpty(e5) ? f() : e5.substring(3, 18);
            } else {
                b4 = com.alipay.sdk.util.b.a(context2).b();
            }
            string = b4;
            sharedPreferences.edit().putString(f9755f, string).commit();
        }
        Context context3 = m.b.b().f72580a;
        SharedPreferences sharedPreferences2 = context3.getSharedPreferences(f9753d, 0);
        String string2 = sharedPreferences2.getString(f9754e, null);
        if (TextUtils.isEmpty(string2)) {
            string2 = TextUtils.isEmpty(n.b.a().f72750a) ? f() : com.alipay.sdk.util.b.a(context3).e();
            sharedPreferences2.edit().putString(f9754e, string2).commit();
        }
        if (bVar != null) {
            this.f9759c = bVar.f72751b;
        }
        String replace = Build.MANUFACTURER.replace(";", " ");
        String replace2 = Build.MODEL.replace(";", " ");
        boolean d5 = m.b.d();
        String g4 = a4.g();
        WifiInfo connectionInfo = ((WifiManager) context.getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)).getConnectionInfo();
        String ssid = connectionInfo != null ? connectionInfo.getSSID() : "-1";
        WifiInfo connectionInfo2 = ((WifiManager) context.getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)).getConnectionInfo();
        String bssid = connectionInfo2 != null ? connectionInfo2.getBSSID() : "00";
        StringBuilder sb = new StringBuilder();
        sb.append(this.f9757a);
        sb.append(";");
        sb.append(a5);
        sb.append(";");
        sb.append("-1;-1");
        sb.append(";");
        sb.append("1");
        sb.append(";");
        sb.append(b5);
        sb.append(";");
        sb.append(e4);
        sb.append(";");
        sb.append(this.f9759c);
        sb.append(";");
        sb.append(replace);
        sb.append(";");
        sb.append(replace2);
        sb.append(";");
        sb.append(d5);
        sb.append(";");
        sb.append(g4);
        sb.append(";-1;-1;");
        sb.append(this.f9758b);
        sb.append(";");
        sb.append(string);
        sb.append(";");
        sb.append(string2);
        sb.append(";");
        sb.append(ssid);
        sb.append(";");
        sb.append(bssid);
        if (bVar != null) {
            HashMap hashMap = new HashMap();
            hashMap.put(com.alipay.sdk.cons.b.f9718c, bVar.f72750a);
            hashMap.put(com.alipay.sdk.cons.b.f9722g, m.b.b().e());
            String c4 = c(context, hashMap);
            if (!TextUtils.isEmpty(c4)) {
                sb.append(";");
                sb.append(c4);
            }
        }
        sb.append(")");
        return sb.toString();
    }

    public static String f() {
        String hexString = Long.toHexString(System.currentTimeMillis());
        Random random = new Random();
        return hexString + (random.nextInt(ErrorCode.PrivateError.LOAD_TIME_OUT) + 1000);
    }

    private static String g(Context context) {
        WifiInfo connectionInfo = ((WifiManager) context.getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)).getConnectionInfo();
        return connectionInfo != null ? connectionInfo.getSSID() : "-1";
    }

    private String h() {
        return this.f9759c;
    }

    private static String i(Context context) {
        WifiInfo connectionInfo = ((WifiManager) context.getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)).getConnectionInfo();
        return connectionInfo != null ? connectionInfo.getBSSID() : "00";
    }

    private static String j() {
        return "1";
    }

    private static String k() {
        return "-1;-1";
    }

    private static String l() {
        String e4;
        Context context = m.b.b().f72580a;
        SharedPreferences sharedPreferences = context.getSharedPreferences(f9753d, 0);
        String string = sharedPreferences.getString(f9754e, null);
        if (TextUtils.isEmpty(string)) {
            if (TextUtils.isEmpty(n.b.a().f72750a)) {
                e4 = f();
            } else {
                e4 = com.alipay.sdk.util.b.a(context).e();
            }
            String str = e4;
            sharedPreferences.edit().putString(f9754e, str).commit();
            return str;
        }
        return string;
    }

    private static String m() {
        String b4;
        Context context = m.b.b().f72580a;
        SharedPreferences sharedPreferences = context.getSharedPreferences(f9753d, 0);
        String string = sharedPreferences.getString(f9755f, null);
        if (TextUtils.isEmpty(string)) {
            if (TextUtils.isEmpty(n.b.a().f72750a)) {
                String e4 = m.b.b().e();
                if (TextUtils.isEmpty(e4)) {
                    b4 = f();
                } else {
                    b4 = e4.substring(3, 18);
                }
            } else {
                b4 = com.alipay.sdk.util.b.a(context).b();
            }
            String str = b4;
            sharedPreferences.edit().putString(f9755f, str).commit();
            return str;
        }
        return string;
    }

    public final synchronized void e(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        PreferenceManager.getDefaultSharedPreferences(m.b.b().f72580a).edit().putString(com.alipay.sdk.cons.b.f9724i, str).commit();
        com.alipay.sdk.cons.a.f9701b = str;
    }
}
