package com.efs.sdk.base.core.b;

import com.efs.sdk.base.core.b.a;
import java.io.File;
/* loaded from: classes2.dex */
public final class h implements f {
    @Override // com.efs.sdk.base.core.b.f
    public final boolean a(File file) {
        a unused;
        com.efs.sdk.base.core.d.b b4 = com.efs.sdk.base.core.util.b.b(file.getName());
        if (b4 != null) {
            return ("wa".equals(b4.f11349a.f11342a) || com.efs.sdk.base.core.c.b.a().a(b4.f11349a.f11342a, file.length())) ? false : true;
        }
        unused = a.b.f11261a;
        a.b(file);
        return true;
    }
}
