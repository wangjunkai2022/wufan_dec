package com.xinzhu.overmind.client.hook.proxies.appwidget;

import com.xinzhu.haunted.android.os.q;
import com.xinzhu.haunted.com.android.internal.appwidget.a;
import com.xinzhu.overmind.client.hook.b;
import com.xinzhu.overmind.utils.helpers.d;
import java.lang.reflect.Method;
/* compiled from: AppWidgetManagerStub.java */
/* loaded from: classes.dex */
public class a extends b {
    public a() {
        super(q.h("appwidget"));
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return a.C0391a.a(q.h("appwidget"));
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        m("appwidget");
    }

    @Override // com.xinzhu.overmind.client.hook.c, java.lang.reflect.InvocationHandler
    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
        if (method.getName().equals("asBinder")) {
            return super.invoke(proxy, method, args);
        }
        return d.a(method.getReturnType());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.b, com.xinzhu.overmind.client.hook.c
    public void k() {
        super.k();
    }
}
