package com.xinzhu.overmind.client.hook.proxies.telecom;

import com.xinzhu.haunted.android.os.q;
import com.xinzhu.haunted.com.android.internal.telecom.a;
import com.xinzhu.overmind.client.hook.b;
import com.xinzhu.overmind.client.hook.common.d;
import java.lang.reflect.Method;
/* compiled from: TelecomManagerStub.java */
/* loaded from: classes.dex */
public class a extends b {

    /* renamed from: f  reason: collision with root package name */
    static final String f64227f = "telecom";

    public a() {
        super(q.h(f64227f));
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return a.C0394a.a(q.h(f64227f));
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        m(f64227f);
    }

    @Override // com.xinzhu.overmind.client.hook.c, java.lang.reflect.InvocationHandler
    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
        com.xinzhu.overmind.utils.helpers.a.d(args);
        return super.invoke(proxy, method, args);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.b, com.xinzhu.overmind.client.hook.c
    public void k() {
        super.k();
        d(new d("getSimCallManagerForUser", d.f64083e, 0));
        d(new d("getDefaultDialerPackageForUser", d.f64083e, 0));
    }
}
