package com.efs.sdk.base.core.e.a;
/* loaded from: classes2.dex */
public final class c extends a {
    private static boolean c(com.efs.sdk.base.core.d.b bVar) {
        if (!bVar.b()) {
            com.efs.sdk.base.core.d.a aVar = bVar.f11349a;
            if ((1 != aVar.f11343b || bVar.f11350b.f11353a) && 1 != aVar.f11344c) {
                return false;
            }
        }
        return true;
    }

    @Override // com.efs.sdk.base.core.e.a.a
    public final void a(com.efs.sdk.base.core.d.b bVar) {
        if (c(bVar)) {
            b(bVar);
            return;
        }
        byte[] a4 = com.efs.sdk.base.core.util.c.a(bVar.f11351c);
        if (a4 == null) {
            com.efs.sdk.base.core.util.d.a("efs.base", "gzip error", null);
            b(bVar);
            return;
        }
        bVar.a(a4);
        bVar.a("gzip");
        b(bVar);
    }
}
