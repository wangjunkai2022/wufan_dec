package com.efs.sdk.base.core.e.a;

import com.efs.sdk.base.core.b.a;
import com.efs.sdk.base.core.controller.ControllerCenter;
import com.efs.sdk.base.core.f.f;
/* loaded from: classes2.dex */
public final class b extends a {
    @Override // com.efs.sdk.base.core.e.a.a
    public final void a(com.efs.sdk.base.core.d.b bVar) {
        com.efs.sdk.base.core.b.e a4;
        byte[] bArr;
        if (bVar.f11350b.f11353a) {
            b(bVar);
            return;
        }
        com.efs.sdk.base.core.b.a a5 = a.b.a();
        if (!"wa".equals(bVar.f11349a.f11342a) && !com.efs.sdk.base.core.b.c.a().f11263a) {
            if (!a5.f11257a) {
                com.efs.sdk.base.core.f.f a6 = f.a.a();
                int i2 = com.efs.sdk.base.core.config.a.c.a().f11319d.f11310a;
                if (a6.f11377b != null || ControllerCenter.getGlobalEnvStruct().isEnableWaStat()) {
                    a6.f11377b.send(a6.a("disk_limit", i2));
                }
            }
            a5.f11257a = true;
            return;
        }
        com.efs.sdk.base.core.d.a aVar = bVar.f11349a;
        if ((aVar.f11344c == 0 && ((bArr = bVar.f11351c) == null || bArr.length == 0)) || (a4 = a5.f11259c.a(aVar.f11343b)) == null) {
            return;
        }
        a4.a(bVar);
    }
}
