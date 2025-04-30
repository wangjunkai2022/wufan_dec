package com.ss.android.downloadlib.addownload.b;

import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: PackageManagerChecker.java */
/* loaded from: classes4.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private static volatile h f57153a;

    private h() {
    }

    public static h a() {
        if (f57153a == null) {
            synchronized (d.class) {
                if (f57153a == null) {
                    f57153a = new h();
                }
            }
        }
        return f57153a;
    }

    public void a(int i2, int i4, com.ss.android.downloadad.api.a.b bVar) {
        if (bVar == null) {
            return;
        }
        com.ss.android.socialbase.downloader.g.a a4 = com.ss.android.socialbase.downloader.g.a.a(bVar.s());
        if (a4.a("report_api_hijack", 0) == 0) {
            return;
        }
        int i5 = i4 - i2;
        if (i2 <= 0 || i5 <= a4.a("check_api_hijack_version_code_diff", 500)) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("version_code_diff", i5);
            jSONObject.put("installed_version_code", i4);
            jSONObject.put("hijack_type", 1);
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        com.ss.android.downloadlib.d.a.a().b("api_hijack", jSONObject, bVar);
    }
}
