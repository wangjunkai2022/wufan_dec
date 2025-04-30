package com.ss.android.downloadlib.g;

import org.json.JSONObject;
/* compiled from: TLogger.java */
/* loaded from: classes4.dex */
public class k {
    public static void a(String str, String str2, JSONObject jSONObject) {
        com.ss.android.download.api.config.j p3 = com.ss.android.downloadlib.addownload.j.p();
        if (p3 != null) {
            p3.a(2, str, str2, jSONObject);
        }
    }

    public static void b(String str, String str2, JSONObject jSONObject) {
        com.ss.android.download.api.config.j p3 = com.ss.android.downloadlib.addownload.j.p();
        if (p3 != null) {
            p3.a(3, str, str2, jSONObject);
        }
    }

    public static void c(String str, String str2, JSONObject jSONObject) {
        com.ss.android.download.api.config.j p3 = com.ss.android.downloadlib.addownload.j.p();
        if (p3 != null) {
            p3.a(6, str, str2, jSONObject);
        }
    }

    public static void a(String str, String str2) {
        c(str, str2, null);
    }

    public static void a(String str) {
        c(null, str, null);
    }
}
