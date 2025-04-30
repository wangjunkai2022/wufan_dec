package com.ss.android.downloadlib.addownload.compliance;

import com.ss.android.downloadlib.addownload.b.f;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: EventSender.java */
/* loaded from: classes4.dex */
public class e {
    public static void a(String str, long j4) {
        com.ss.android.downloadlib.addownload.b.e e4 = f.a().e(j4);
        if (e4.x()) {
            return;
        }
        e4.f57141c.setRefer(str);
        com.ss.android.downloadlib.d.a.a().b("lp_app_dialog_click", e4);
    }

    public static void b(String str, long j4) {
        a(str, null, j4);
    }

    public static void a(String str, JSONObject jSONObject, long j4) {
        com.ss.android.downloadlib.d.a.a().b(str, jSONObject, f.a().e(j4));
    }

    public static void a(String str, com.ss.android.downloadlib.addownload.b.e eVar) {
        com.ss.android.downloadlib.d.a.a().b(str, eVar);
    }

    public static void a(int i2, com.ss.android.downloadlib.addownload.b.e eVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("error_code", Integer.valueOf(i2));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        com.ss.android.downloadlib.d.a.a().b("lp_compliance_error", jSONObject, eVar);
    }

    public static void a(int i2, long j4) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("error_code", Integer.valueOf(i2));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        com.ss.android.downloadlib.d.a.a().b("lp_compliance_error", jSONObject, f.a().e(j4));
    }
}
