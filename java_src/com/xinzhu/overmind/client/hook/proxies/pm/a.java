package com.xinzhu.overmind.client.hook.proxies.pm;

import com.xinzhu.haunted.android.content.pm.c;
import com.xinzhu.haunted.android.os.q;
import java.lang.reflect.Method;
/* compiled from: CrossProfileAppsStub.java */
/* loaded from: classes.dex */
public class a extends com.xinzhu.overmind.client.hook.b {
    public a() {
        super(q.h("crossprofileapps"));
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return c.a.a(q.h("crossprofileapps"));
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        m("crossprofileapps");
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
        d(new com.xinzhu.overmind.client.hook.common.c("startActivityAsUser", null));
    }
}
