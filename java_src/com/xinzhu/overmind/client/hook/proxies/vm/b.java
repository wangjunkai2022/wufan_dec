package com.xinzhu.overmind.client.hook.proxies.vm;

import android.annotation.SuppressLint;
import android.os.IInterface;
import android.view.WindowManager;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.hook.g;
import com.xinzhu.overmind.utils.e;
import java.lang.reflect.Method;
/* compiled from: WindowSessionStub.java */
/* loaded from: classes.dex */
public class b extends com.xinzhu.overmind.client.hook.b {

    /* renamed from: g  reason: collision with root package name */
    public static final String f64241g = "WindowSessionStub";

    /* renamed from: f  reason: collision with root package name */
    private IInterface f64242f;

    /* compiled from: WindowSessionStub.java */
    /* loaded from: classes3.dex */
    public static class a extends g {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "addToDisplay";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            if (args != null) {
                for (Object obj : args) {
                    if (obj != null && (obj instanceof WindowManager.LayoutParams)) {
                        ((WindowManager.LayoutParams) obj).packageName = Overmind.getHostPkg();
                    }
                }
            }
            return method.invoke(who, args);
        }
    }

    /* compiled from: WindowSessionStub.java */
    /* renamed from: com.xinzhu.overmind.client.hook.proxies.vm.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static class C0425b extends a {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.proxies.vm.b.a, com.xinzhu.overmind.client.hook.g
        public String c() {
            return "addToDisplayAsUser";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.proxies.vm.b.a, com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            int i2;
            if (e.h()) {
                i2 = 4;
            } else {
                i2 = e.g() ? 5 : -1;
            }
            e(args, i2);
            return super.d(who, method, args);
        }
    }

    public b(IInterface session) {
        super(session.asBinder());
        this.f64242f = session;
    }

    @SuppressLint({"InlinedApi"})
    public static void n(WindowManager.LayoutParams layoutParams) {
        int i2 = layoutParams.type;
        if ((i2 == 2002 || i2 == 2003 || i2 == 2006 || i2 == 2007 || i2 == 2010 || i2 == 2038) && e.v()) {
            layoutParams.type = 2038;
        }
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    public Object g() {
        return super.g();
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return this.f64242f;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
    }

    @Override // com.xinzhu.overmind.client.hook.c, java.lang.reflect.InvocationHandler
    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
        int a4;
        if (args != null && args.length != 0 && (a4 = com.xinzhu.overmind.utils.helpers.a.a(args, WindowManager.LayoutParams.class)) > 0) {
            WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) args[a4];
            n(layoutParams);
            args[a4] = layoutParams;
        }
        return super.invoke(proxy, method, args);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.b, com.xinzhu.overmind.client.hook.c
    public void k() {
        super.k();
        d(new a());
        d(new C0425b());
    }
}
