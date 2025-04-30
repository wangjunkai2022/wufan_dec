package com.umeng.commonsdk.internal.utils;

import android.content.Context;
import android.content.SharedPreferences;
import com.umeng.commonsdk.internal.utils.a;
import com.umeng.commonsdk.statistics.common.ULog;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: InfoPreference.java */
/* loaded from: classes4.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static final String f61212a = "info";

    /* renamed from: b  reason: collision with root package name */
    private static final String f61213b = "a_dc";

    /* renamed from: c  reason: collision with root package name */
    private static final String f61214c = "bssid";

    /* renamed from: d  reason: collision with root package name */
    private static final String f61215d = "ssid";

    /* renamed from: e  reason: collision with root package name */
    private static final String f61216e = "a_fcy";

    /* renamed from: f  reason: collision with root package name */
    private static final String f61217f = "a_hssid";

    /* renamed from: g  reason: collision with root package name */
    private static final String f61218g = "a_ip";

    /* renamed from: h  reason: collision with root package name */
    private static final String f61219h = "a_ls";

    /* renamed from: i  reason: collision with root package name */
    private static final String f61220i = "a_mac";

    /* renamed from: j  reason: collision with root package name */
    private static final String f61221j = "a_nid";

    /* renamed from: k  reason: collision with root package name */
    private static final String f61222k = "rssi";

    /* renamed from: l  reason: collision with root package name */
    private static final String f61223l = "sta";

    /* renamed from: m  reason: collision with root package name */
    private static final String f61224m = "ts";

    /* renamed from: n  reason: collision with root package name */
    private static final String f61225n = "wifiinfo";

    /* renamed from: o  reason: collision with root package name */
    private static final String f61226o = "ua";

    public static JSONArray a(Context context) {
        String string;
        try {
            SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("info", 0);
            if (sharedPreferences == null || (string = sharedPreferences.getString(f61225n, null)) == null) {
                return null;
            }
            return new JSONArray(string);
        } catch (Exception e4) {
            ULog.e(e4.getMessage());
            return null;
        }
    }

    public static void b(Context context) {
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("info", 0);
        if (sharedPreferences != null) {
            sharedPreferences.edit().remove(f61225n).commit();
        }
    }

    public static String c(Context context) {
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("info", 0);
        if (sharedPreferences != null) {
            return sharedPreferences.getString(f61226o, null);
        }
        return null;
    }

    public static void a(Context context, a.b bVar) {
        JSONArray jSONArray;
        try {
            SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("info", 0);
            String str = null;
            if (sharedPreferences != null) {
                String string = sharedPreferences.getString(f61225n, null);
                if (string == null) {
                    jSONArray = new JSONArray();
                } else {
                    jSONArray = new JSONArray(string);
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(f61213b, bVar.f61172a);
                jSONObject.put(f61214c, bVar.f61173b);
                jSONObject.put("ssid", bVar.f61174c);
                jSONObject.put(f61216e, bVar.f61175d);
                jSONObject.put(f61217f, bVar.f61176e);
                jSONObject.put(f61218g, bVar.f61177f);
                jSONObject.put(f61219h, bVar.f61178g);
                jSONObject.put(f61220i, bVar.f61179h);
                jSONObject.put(f61221j, bVar.f61180i);
                jSONObject.put(f61222k, bVar.f61181j);
                jSONObject.put(f61223l, bVar.f61182k);
                jSONObject.put("ts", bVar.f61183l);
                jSONArray.put(jSONObject);
                str = jSONArray.toString();
            }
            if (str != null) {
                sharedPreferences.edit().putString(f61225n, str).commit();
            }
        } catch (Exception e4) {
            ULog.e(e4.getMessage());
        }
    }

    public static void a(Context context, String str) {
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("info", 0);
        if (sharedPreferences != null) {
            sharedPreferences.edit().putString(f61226o, str).commit();
        }
    }
}
