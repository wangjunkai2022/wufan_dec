package com.efs.sdk.base.core.e.a;
/* loaded from: classes2.dex */
public final class f extends a {
    @Override // com.efs.sdk.base.core.e.a.a
    public final void a(com.efs.sdk.base.core.d.b bVar) {
        Double d4;
        com.efs.sdk.base.core.config.a.c a4 = com.efs.sdk.base.core.config.a.c.a();
        String str = bVar.f11349a.f11342a;
        com.efs.sdk.base.core.config.a.b bVar2 = a4.f11319d;
        if (com.efs.sdk.base.core.config.a.c.f11316a.nextDouble() * 100.0d <= ((!bVar2.f11313d.containsKey(str) || (d4 = bVar2.f11313d.get(str)) == null) ? 100.0d : d4.doubleValue())) {
            b(bVar);
        }
    }
}
