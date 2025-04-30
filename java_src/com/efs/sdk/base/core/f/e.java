package com.efs.sdk.base.core.f;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.efs.sdk.base.core.f.f;
import com.efs.sdk.base.http.HttpResponse;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class e implements com.efs.sdk.base.core.c.c {
    private static void a(HttpResponse httpResponse) {
        if (httpResponse == null || TextUtils.isEmpty(httpResponse.data)) {
            return;
        }
        for (String str : httpResponse.data.split("`")) {
            String[] split = str.split(SimpleComparison.EQUAL_TO_OPERATION);
            if (split.length >= 2) {
                if (split[0].equalsIgnoreCase("retcode")) {
                    httpResponse.setBizCode(split[1]);
                } else {
                    ((Map) httpResponse.extra).put(split[0], split[1]);
                }
            }
        }
    }

    @Override // com.efs.sdk.base.core.c.c
    @NonNull
    public final HttpResponse a(com.efs.sdk.base.core.d.b bVar, boolean z3) {
        HttpResponse httpResponse;
        f fVar;
        try {
            fVar = f.a.f11380a;
            c cVar = fVar.f11376a;
            String valueOf = String.valueOf(System.currentTimeMillis());
            String a4 = com.efs.sdk.base.core.util.c.b.a(cVar.f11369b + cVar.f11370c + valueOf + "AppChk#2014");
            StringBuilder sb = new StringBuilder();
            String str = cVar.f11368a;
            if (str.startsWith(com.facebook.common.util.f.f11765a)) {
                sb.append(str);
                sb.append("?chk=");
            } else {
                sb.append(str);
                sb.append("?chk=");
            }
            sb.append(a4.substring(a4.length() - 8));
            sb.append("&vno=");
            sb.append(valueOf);
            sb.append("&uuid=");
            sb.append(cVar.f11370c);
            sb.append("&app=");
            sb.append(cVar.f11369b);
            sb.append("&zip=gzip");
            String sb2 = sb.toString();
            int i2 = 0;
            byte[] bArr = new byte[0];
            int i4 = bVar.f11349a.f11344c;
            if (i4 == 0) {
                bArr = bVar.f11351c;
                i2 = bArr.length;
            } else if (1 == i4) {
                bArr = com.efs.sdk.base.core.util.b.a(bVar.f11352d.getPath());
                i2 = bArr.length;
            }
            HashMap hashMap = new HashMap();
            hashMap.put("Content-Type", "application/x-www-form-urlencoded");
            hashMap.put("Content-Length", String.valueOf(i2));
            com.efs.sdk.base.core.util.b.d a5 = new com.efs.sdk.base.core.util.b.d(sb2).a(hashMap);
            a5.f11402a.f11396c = bArr;
            httpResponse = a5.a().b();
            a(httpResponse);
        } catch (Throwable th) {
            httpResponse = 0 == 0 ? new HttpResponse() : null;
            com.efs.sdk.base.core.util.d.b("efs.wa.send", "get file size error", th);
        }
        if (httpResponse.succ) {
            com.efs.sdk.base.core.util.d.a("efs.base", "wa upload succ, " + httpResponse.toString());
            com.efs.sdk.base.core.util.b.b(bVar.f11352d);
            return httpResponse;
        }
        com.efs.sdk.base.core.util.d.a("efs.base", "wa upload fail, resp is " + httpResponse.toString());
        return httpResponse;
    }
}
