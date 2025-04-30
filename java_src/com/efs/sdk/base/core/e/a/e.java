package com.efs.sdk.base.core.e.a;

import com.efs.sdk.base.core.f.f;
import com.efs.sdk.base.http.HttpResponse;
/* loaded from: classes2.dex */
public final class e extends a {
    @Override // com.efs.sdk.base.core.e.a.a
    public final void a(com.efs.sdk.base.core.d.b bVar) {
        HttpResponse a4;
        if (!bVar.f11350b.f11353a) {
            b(bVar);
            return;
        }
        com.efs.sdk.base.core.c.d a5 = com.efs.sdk.base.core.c.d.a();
        if (bVar.f11350b.f11354b && !com.efs.sdk.base.core.c.b.a().a(bVar.f11349a.f11342a, bVar.a())) {
            a4 = new HttpResponse();
            a4.data = "flow_limit";
        } else {
            f.a.a().f11378c.b();
            f.a.a().f11378c.c();
            a4 = a5.f11279b.a(bVar, false);
        }
        bVar.f11350b.f11355c = a4;
        b(bVar);
    }
}
