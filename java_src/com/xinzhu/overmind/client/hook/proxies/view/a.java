package com.xinzhu.overmind.client.hook.proxies.view;

import android.content.ComponentName;
import com.xinzhu.haunted.android.os.q;
import com.xinzhu.haunted.android.view.a;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.e;
import com.xinzhu.overmind.client.f;
import com.xinzhu.overmind.client.hook.common.d;
import java.lang.reflect.Method;
/* compiled from: AutofillManagerStub.java */
/* loaded from: classes.dex */
public class a extends com.xinzhu.overmind.client.hook.b {

    /* renamed from: f  reason: collision with root package name */
    public static final String f64237f = "AutofillManagerStub";

    /* compiled from: AutofillManagerStub.java */
    /* renamed from: com.xinzhu.overmind.client.hook.proxies.view.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0423a extends d {
        C0423a(String name, int replace_pkg_index, int replace_userId_index) {
            super(name, replace_pkg_index, replace_userId_index);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.common.d, com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            a.o(args);
            return super.d(who, method, args);
        }
    }

    /* compiled from: AutofillManagerStub.java */
    /* loaded from: classes.dex */
    class b extends d {
        b(String name, int replace_pkg_index, int replace_userId_index) {
            super(name, replace_pkg_index, replace_userId_index);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.common.d, com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            a.o(args);
            return super.d(who, method, args);
        }
    }

    public a() {
        super(q.h("autofill"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void o(Object[] args) {
        if (args != null) {
            for (int i2 = 0; i2 < args.length; i2++) {
                if (args[i2] != null && (args[i2] instanceof ComponentName)) {
                    args[i2] = new ComponentName(e.getClientConfig().f64276i ? Overmind.getPluginPkg() : Overmind.getHostPkg(), f.e(e.getVPid()));
                }
            }
        }
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return a.C0387a.a(q.h("autofill"));
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        m("autofill");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.b, com.xinzhu.overmind.client.hook.c
    public void k() {
        super.k();
        d(new C0423a("addClient", d.f64083e, com.xinzhu.overmind.utils.e.f() ? 2 : d.f64085g));
        d(new d("removeClient", d.f64083e, d.f64085g));
        d(new b("startSession", d.f64083e, 5));
        d(new d("updateSession", d.f64083e, d.f64085g));
        d(new d("setAutofillFailure", d.f64083e, d.f64085g));
        d(new d("finishSession", d.f64083e, d.f64085g));
        d(new d("cancelSession", d.f64083e, d.f64085g));
        d(new d("setAuthenticationResult", d.f64083e, d.f64085g));
        d(new d("setHasCallback", d.f64083e, 1));
        d(new d("disableOwnedAutofillServices", d.f64083e, 0));
        d(new d("isServiceSupported", d.f64083e, 0));
        d(new d("isServiceEnabled", d.f64084f, 0));
    }
}
