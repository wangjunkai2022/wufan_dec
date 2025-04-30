package com.xinzhu.overmind.client.hook.proxies.vm;

import android.os.IInterface;
import com.xinzhu.haunted.android.os.q;
import com.xinzhu.haunted.android.view.c;
import com.xinzhu.haunted.android.view.d;
import com.xinzhu.overmind.client.hook.g;
import java.lang.reflect.Method;
/* compiled from: WindowManagerStub.java */
/* loaded from: classes.dex */
public class a extends com.xinzhu.overmind.client.hook.b {

    /* renamed from: f  reason: collision with root package name */
    public static final String f64240f = "WindowManagerStub";

    /* compiled from: WindowManagerStub.java */
    /* renamed from: com.xinzhu.overmind.client.hook.proxies.vm.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static class C0424a extends g {
        C0424a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "openSession";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            b bVar = new b((IInterface) method.invoke(who, args));
            bVar.c();
            return bVar.g();
        }
    }

    public a() {
        super(q.h("window"));
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return c.a.a(q.h("window"));
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        m("window");
        d.f(null);
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
        d(new C0424a());
        d(new com.xinzhu.overmind.client.hook.common.d("setForcedDisplayDensityForUser", com.xinzhu.overmind.client.hook.common.d.f64083e, com.xinzhu.overmind.client.hook.common.d.f64085g));
        d(new com.xinzhu.overmind.client.hook.common.d("clearForcedDisplayDensityForUser", com.xinzhu.overmind.client.hook.common.d.f64083e, com.xinzhu.overmind.client.hook.common.d.f64085g));
        d(new com.xinzhu.overmind.client.hook.common.d("disableKeyguard", com.xinzhu.overmind.client.hook.common.d.f64083e, com.xinzhu.overmind.client.hook.common.d.f64085g));
        d(new com.xinzhu.overmind.client.hook.common.d("reenableKeyguard", com.xinzhu.overmind.client.hook.common.d.f64083e, com.xinzhu.overmind.client.hook.common.d.f64085g));
        d(new com.xinzhu.overmind.client.hook.common.d("isKeyguardSecure", com.xinzhu.overmind.client.hook.common.d.f64083e, com.xinzhu.overmind.client.hook.common.d.f64085g));
        d(new com.xinzhu.overmind.client.hook.common.d("refreshScreenCaptureDisabled", com.xinzhu.overmind.client.hook.common.d.f64083e, com.xinzhu.overmind.client.hook.common.d.f64085g));
    }
}
