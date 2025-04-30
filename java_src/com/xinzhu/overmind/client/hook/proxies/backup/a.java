package com.xinzhu.overmind.client.hook.proxies.backup;

import com.xinzhu.haunted.android.app.backup.a;
import com.xinzhu.haunted.android.os.q;
import com.xinzhu.overmind.client.hook.b;
import com.xinzhu.overmind.utils.helpers.d;
import java.lang.reflect.Method;
/* compiled from: BackupManagerStub.java */
/* loaded from: classes.dex */
public class a extends b {

    /* renamed from: f  reason: collision with root package name */
    static final String f64172f = "backup";

    public a() {
        super(q.h("backup"));
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return a.C0370a.a(q.h("backup"));
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        m("backup");
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
