package com.xinzhu.overmind.client.hook.proxies.telephony;

import com.xinzhu.haunted.android.os.q;
import com.xinzhu.haunted.com.android.internal.telephony.e;
import com.xinzhu.overmind.client.hook.proxies.telephony.a;
import java.lang.reflect.Method;
/* compiled from: TelephonyManagerStub.java */
/* loaded from: classes.dex */
public class d extends com.xinzhu.overmind.client.hook.b {
    public d() {
        super(q.h("phone"));
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return e.a.a(q.h("phone"));
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        m("phone");
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
        d(new a.d());
        d(new a.C0420a());
        d(new a.b());
        d(new a.c());
        d(new com.xinzhu.overmind.client.hook.common.c("IsUserDataEnabled", Boolean.TRUE));
        d(new com.xinzhu.overmind.client.hook.common.c("setDataEnabled", 0));
        d(new com.xinzhu.overmind.client.hook.common.c("getDataEnabled", Boolean.FALSE));
    }
}
