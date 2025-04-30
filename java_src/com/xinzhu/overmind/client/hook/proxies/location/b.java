package com.xinzhu.overmind.client.hook.proxies.location;

import com.xinzhu.haunted.android.location.a;
import com.xinzhu.haunted.android.os.q;
import com.xinzhu.overmind.client.hook.common.c;
import com.xinzhu.overmind.client.hook.g;
import java.lang.reflect.Method;
/* compiled from: LocationManagerStub.java */
/* loaded from: classes.dex */
public class b extends com.xinzhu.overmind.client.hook.b {

    /* compiled from: LocationManagerStub.java */
    /* loaded from: classes.dex */
    static class a extends g {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "isProviderEnabledForUser";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            com.xinzhu.overmind.utils.helpers.a.f(args);
            return method.invoke(who, args);
        }
    }

    public b() {
        super(q.h("location"));
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return a.C0377a.a(q.h("location"));
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        m("location");
    }

    @Override // com.xinzhu.overmind.client.hook.c, java.lang.reflect.InvocationHandler
    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
        com.xinzhu.overmind.utils.helpers.a.e(args);
        return super.invoke(proxy, method, args);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.b, com.xinzhu.overmind.client.hook.c
    public void k() {
        super.k();
        d(new a());
        d(new c("setExtraLocationControllerPackageEnabled", null));
    }
}
