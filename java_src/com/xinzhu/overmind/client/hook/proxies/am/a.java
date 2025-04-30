package com.xinzhu.overmind.client.hook.proxies.am;

import android.os.IInterface;
import com.xinzhu.haunted.android.app.b;
import com.xinzhu.overmind.client.hook.proxies.am.d;
import com.xinzhu.overmind.utils.e;
/* compiled from: ActivityClientControllerStub.java */
/* loaded from: classes.dex */
public class a extends com.xinzhu.overmind.client.hook.c {

    /* renamed from: e  reason: collision with root package name */
    public static IInterface f64148e;

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return com.xinzhu.haunted.android.app.b.c();
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        if (com.xinzhu.haunted.android.app.b.a()) {
            new com.xinzhu.haunted.android.util.b(com.xinzhu.haunted.android.app.b.d()).e(proxyInvocation);
            b.a aVar = new b.a(com.xinzhu.haunted.android.app.b.d());
            if (aVar.a()) {
                aVar.c((IInterface) proxyInvocation);
            }
            f64148e = (IInterface) proxyInvocation;
        }
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void k() {
        d(new d.a());
        d(new d.b());
        d(new d.c());
        d(new d.C0407d());
        d(new d.n());
        d(new d.m());
        d(new d.f());
        d(new d.g());
        d(new d.l());
        d(new d.e());
        d(new d.k());
        if (e.s()) {
            d(new com.xinzhu.overmind.client.hook.common.c("startAppLockService", 0));
        }
    }
}
