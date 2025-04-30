package com.xinzhu.overmind.client.hook.proxies.os;

import android.os.DropBoxManager;
import android.os.IInterface;
import com.xinzhu.haunted.android.os.q;
import com.xinzhu.haunted.com.android.internal.os.a;
import com.xinzhu.overmind.Overmind;
import java.lang.reflect.Method;
/* compiled from: DropBoxManagerStub.java */
/* loaded from: classes.dex */
public class e extends com.xinzhu.overmind.client.hook.b {

    /* renamed from: f  reason: collision with root package name */
    static final String f64205f = "dropbox";

    public e() {
        super(q.h(f64205f));
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return a.C0393a.a(q.h(f64205f));
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        com.xinzhu.haunted.android.os.b bVar = new com.xinzhu.haunted.android.os.b((DropBoxManager) Overmind.getContext().getSystemService(f64205f));
        if (bVar.a()) {
            bVar.c((IInterface) proxyInvocation);
        }
        m(f64205f);
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
