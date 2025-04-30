package com.ss.android.downloadlib.e;

import android.text.TextUtils;
import android.util.Log;
import com.ss.android.downloadlib.addownload.j;
import com.ss.android.downloadlib.g.l;
import com.ss.android.socialbase.appdownloader.f.e;
import org.json.JSONObject;
/* compiled from: TTDownloaderMonitor.java */
/* loaded from: classes4.dex */
public class c implements com.ss.android.download.api.b.a {

    /* compiled from: TTDownloaderMonitor.java */
    /* loaded from: classes4.dex */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        private static c f57430a = new c();
    }

    public static c a() {
        return a.f57430a;
    }

    public static String a(Throwable th) {
        try {
            return Log.getStackTraceString(th);
        } catch (Exception unused) {
            return null;
        }
    }

    private void b(Throwable th) {
        if (e.b(j.getContext())) {
            throw new com.ss.android.downloadlib.e.a(th);
        }
    }

    private boolean b() {
        return j.i().optInt("enable_monitor", 1) != 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0000, code lost:
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String c1655219899551dc(java.lang.String r2) {
        /*
        L0:
            r0 = 73
            r1 = 96
        L4:
            switch(r0) {
                case 72: goto L26;
                case 73: goto L8;
                case 74: goto Lb;
                default: goto L7;
            }
        L7:
            goto L2b
        L8:
            switch(r1) {
                case 94: goto L0;
                case 95: goto L26;
                case 96: goto L26;
                default: goto Lb;
            }
        Lb:
            switch(r1) {
                case 55: goto Lf;
                case 56: goto L26;
                case 57: goto L26;
                default: goto Le;
            }
        Le:
            goto L0
        Lf:
            char[] r2 = r2.toCharArray()
            r0 = 0
        L14:
            int r1 = r2.length
            if (r0 >= r1) goto L20
            char r1 = r2[r0]
            r1 = r1 ^ r0
            char r1 = (char) r1
            r2[r0] = r1
            int r0 = r0 + 1
            goto L14
        L20:
            java.lang.String r0 = new java.lang.String
            r0.<init>(r2)
            return r0
        L26:
            r0 = 74
            r1 = 55
            goto L4
        L2b:
            r0 = 72
            goto L4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.downloadlib.e.c.c1655219899551dc(java.lang.String):java.lang.String");
    }

    public void a(String str) {
        a(true, str);
    }

    @Override // com.ss.android.download.api.b.a
    public void a(Throwable th, String str) {
        a(true, th, str);
    }

    public void a(boolean z3, String str) {
        if (b()) {
            return;
        }
        if (z3) {
            b(new RuntimeException(str));
        }
        JSONObject jSONObject = new JSONObject();
        l.a(jSONObject, "msg", str);
        l.a(jSONObject, "stack", a(new Throwable()));
        j.h().a("service_ttdownloader", 2, jSONObject);
    }

    public void a(boolean z3, Throwable th, String str) {
        if (b()) {
            return;
        }
        if (th == null) {
            th = new Throwable();
        }
        if (z3) {
            b(th);
        }
        JSONObject jSONObject = new JSONObject();
        if (TextUtils.isEmpty(str)) {
            str = th.getMessage();
        }
        l.a(jSONObject, "msg", str);
        l.a(jSONObject, "stack", Log.getStackTraceString(th));
        j.h().a("service_ttdownloader", 1, jSONObject);
    }

    public void b(String str) {
        b(true, str);
    }

    public void b(boolean z3, String str) {
        if (b()) {
            return;
        }
        if (z3) {
            b(new RuntimeException(str));
        }
        JSONObject jSONObject = new JSONObject();
        l.a(jSONObject, "msg", str);
        l.a(jSONObject, "stack", a(new Throwable()));
        j.h().a("service_ttdownloader", 3, jSONObject);
    }
}
