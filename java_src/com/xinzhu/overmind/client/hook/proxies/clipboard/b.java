package com.xinzhu.overmind.client.hook.proxies.clipboard;

import com.xinzhu.haunted.android.os.q;
import com.xinzhu.haunted.android.sec.clipboard.a;
import java.lang.reflect.Method;
/* compiled from: SemClipboardStub.java */
/* loaded from: classes.dex */
public class b extends com.xinzhu.overmind.client.hook.b {

    /* renamed from: f  reason: collision with root package name */
    static final String f64173f = "semclipboard";

    public b() {
        super(q.h(f64173f));
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return a.C0386a.a(q.h(f64173f));
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        m(f64173f);
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
    }
}
