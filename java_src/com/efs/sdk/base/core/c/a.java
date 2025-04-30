package com.efs.sdk.base.core.c;

import androidx.annotation.NonNull;
import com.efs.sdk.base.http.HttpResponse;
import java.util.HashMap;
/* loaded from: classes2.dex */
public final class a implements c {
    @Override // com.efs.sdk.base.core.c.c
    @NonNull
    public final HttpResponse a(com.efs.sdk.base.core.d.b bVar, boolean z3) {
        HttpResponse httpResponse;
        com.efs.sdk.base.core.a.c a4 = com.efs.sdk.base.core.a.c.a();
        com.efs.sdk.base.core.d.a aVar = bVar.f11349a;
        a4.f11247d = aVar.f11345d;
        a4.f11248e = aVar.f11346e;
        a4.f11250g = aVar.f11343b;
        a4.f11251h = aVar.f11342a;
        a4.f11255l = bVar.a();
        String a5 = com.efs.sdk.base.core.config.a.c.a().a(false);
        int i2 = bVar.f11349a.f11344c;
        if (i2 == 0) {
            com.efs.sdk.base.core.a.a a6 = com.efs.sdk.base.core.a.a.a();
            byte[] bArr = bVar.f11351c;
            boolean z4 = bVar.f11350b.f11354b;
            String b4 = a4.b();
            String a7 = com.efs.sdk.base.core.a.a.a(a5, a4);
            if (a6.f11241a) {
                com.efs.sdk.base.core.util.d.a("efs.px.api", "upload buffer file, url is ".concat(String.valueOf(a7)));
            }
            HashMap hashMap = new HashMap(1);
            hashMap.put("wpk-header", b4);
            com.efs.sdk.base.core.util.b.d a8 = new com.efs.sdk.base.core.util.b.d(a7).a(hashMap);
            com.efs.sdk.base.core.util.b.b bVar2 = a8.f11402a;
            bVar2.f11396c = bArr;
            bVar2.f11400g = true;
            com.efs.sdk.base.core.util.b.d a9 = a8.a("type", a4.f11251h);
            StringBuilder sb = new StringBuilder();
            sb.append(a4.f11255l);
            httpResponse = a9.a("size", sb.toString()).a("flow_limit", Boolean.toString(z4)).a(com.efs.sdk.base.core.a.d.a()).a().b();
        } else if (1 == i2) {
            httpResponse = com.efs.sdk.base.core.a.a.a().a(a5, a4, bVar.f11352d, bVar.f11350b.f11354b);
        } else {
            httpResponse = new HttpResponse();
        }
        if (httpResponse.succ && z3) {
            com.efs.sdk.base.core.util.b.b(bVar.f11352d);
        }
        return httpResponse;
    }
}
