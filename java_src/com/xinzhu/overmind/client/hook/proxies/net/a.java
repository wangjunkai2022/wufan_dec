package com.xinzhu.overmind.client.hook.proxies.net;

import com.xinzhu.haunted.android.net.a;
import com.xinzhu.haunted.android.os.q;
import java.lang.reflect.Method;
/* compiled from: ConnectivityManagerStub.java */
/* loaded from: classes.dex */
public class a extends com.xinzhu.overmind.client.hook.b {
    public a() {
        super(q.h("connectivity"));
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return a.C0380a.a(q.h("connectivity"));
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        m("connectivity");
    }

    @Override // com.xinzhu.overmind.client.hook.c, java.lang.reflect.InvocationHandler
    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
        com.xinzhu.overmind.utils.helpers.a.c(args);
        return super.invoke(proxy, method, args);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.b, com.xinzhu.overmind.client.hook.c
    public void k() {
        super.k();
        d(new com.xinzhu.overmind.client.hook.common.c("isTetheringSupported", Boolean.TRUE));
    }
}
