package com.alipay.apmobilesecuritysdk.b;

import com.alipay.security.mobile.module.commonutils.d;
/* loaded from: classes2.dex */
public final class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ b f9529a;

    public c(b bVar) {
        this.f9529a = bVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f9529a.b();
        } catch (Throwable th) {
            d.c(th);
        }
    }
}
