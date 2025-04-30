package com.efs.sdk.base.core.a;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.efs.sdk.base.http.HttpResponse;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: b  reason: collision with root package name */
    private static volatile long f11240b = -1;

    /* renamed from: a  reason: collision with root package name */
    public boolean f11241a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.efs.sdk.base.core.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0052a {

        /* renamed from: a  reason: collision with root package name */
        private static final a f11242a = new a((byte) 0);
    }

    /* synthetic */ a(byte b4) {
        this();
    }

    public static a a() {
        return C0052a.f11242a;
    }

    public static long b() {
        if (f11240b == -1) {
            return System.currentTimeMillis();
        }
        return SystemClock.elapsedRealtime() + f11240b;
    }

    private a() {
        this.f11241a = true;
    }

    @NonNull
    public final HttpResponse a(String str, c cVar, File file, boolean z3) {
        String b4 = cVar.b();
        String a4 = a(str, cVar);
        if (this.f11241a) {
            com.efs.sdk.base.core.util.d.a("efs.px.api", "Upload file, url is ".concat(String.valueOf(a4)));
        }
        HashMap hashMap = new HashMap(1);
        hashMap.put("wpk-header", b4);
        com.efs.sdk.base.core.util.b.d a5 = new com.efs.sdk.base.core.util.b.d(a4).a(hashMap);
        a5.f11402a.f11397d = file;
        com.efs.sdk.base.core.util.b.d a6 = a5.a("type", cVar.f11251h);
        StringBuilder sb = new StringBuilder();
        sb.append(cVar.f11255l);
        return a6.a("size", sb.toString()).a("flow_limit", Boolean.toString(z3)).a(d.a()).a().b();
    }

    public static String a(@NonNull String str, @NonNull c cVar) {
        byte b4 = cVar.f11250g;
        String str2 = b4 != 1 ? b4 != 2 ? b4 != 3 ? "/api/v1/raw/upload" : "/api/v1/mix/upload" : "/perf_upload" : "/apm_logs";
        return str + str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(@Nullable HttpResponse httpResponse) {
        if (httpResponse == null || !httpResponse.succ || TextUtils.isEmpty(httpResponse.data)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(httpResponse.data);
            String optString = jSONObject.optString("code", "-1");
            httpResponse.setBizCode(optString);
            if (!"0".equals(optString)) {
                httpResponse.succ = false;
            }
            if (jSONObject.has("cver")) {
                ((Map) httpResponse.extra).put("cver", jSONObject.getString("cver"));
            }
            long j4 = jSONObject.getLong("stm") * 1000;
            if (Math.abs(j4 - b()) > 1500000) {
                f11240b = j4 - SystemClock.elapsedRealtime();
            }
        } catch (Throwable th) {
            com.efs.sdk.base.core.util.d.b("efs.px.api", "checkPxReturn error", th);
        }
    }
}
