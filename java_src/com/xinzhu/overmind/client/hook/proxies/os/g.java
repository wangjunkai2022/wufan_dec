package com.xinzhu.overmind.client.hook.proxies.os;

import com.xinzhu.haunted.android.os.j;
import com.xinzhu.haunted.android.os.q;
import java.lang.reflect.Method;
/* compiled from: StatsManagerServiceStub.java */
/* loaded from: classes.dex */
public class g extends com.xinzhu.overmind.client.hook.b {

    /* renamed from: f  reason: collision with root package name */
    static final String f64209f = "statsmanager";

    public g() {
        super(q.h(f64209f));
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return j.a.a(q.h(f64209f));
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        m(f64209f);
    }

    @Override // com.xinzhu.overmind.client.hook.c, java.lang.reflect.InvocationHandler
    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
        if (method.getName().equals("asBinder")) {
            return super.invoke(proxy, method, args);
        }
        return com.xinzhu.overmind.utils.helpers.d.a(method.getReturnType());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.b, com.xinzhu.overmind.client.hook.c
    public void k() {
        super.k();
    }
}
