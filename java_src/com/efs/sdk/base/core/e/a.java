package com.efs.sdk.base.core.e;
/* loaded from: classes2.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    private com.efs.sdk.base.core.e.a.a f11356a;

    public abstract com.efs.sdk.base.core.e.a.a a();

    public final void a(com.efs.sdk.base.core.d.b bVar) {
        try {
            if (this.f11356a == null) {
                synchronized (this) {
                    if (this.f11356a == null) {
                        com.efs.sdk.base.core.e.a.a a4 = a();
                        this.f11356a = a4;
                        if (a4 == null) {
                            return;
                        }
                    }
                }
            }
            this.f11356a.a(bVar);
        } catch (Throwable th) {
            com.efs.sdk.base.core.util.d.b("efs.processor", "log handle error", th);
        }
    }
}
