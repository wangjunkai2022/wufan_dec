package com.xinzhu.overmind.client.hook;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.HashMap;
import java.util.Map;
/* compiled from: ClassInvocationStub.java */
/* loaded from: classes.dex */
public abstract class c implements InvocationHandler, e {

    /* renamed from: d  reason: collision with root package name */
    public static final String f64074d = c.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    private Map<String, g> f64075a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private Object f64076b;

    /* renamed from: c  reason: collision with root package name */
    private Object f64077c;

    private void j(Method method, Object[] args, Object result, String event) {
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public void c() {
        Object h4 = h();
        this.f64076b = h4;
        if (h4 == null) {
            String str = f64074d;
            com.xinzhu.overmind.b.c(str, "injectHook failed " + this);
            return;
        }
        Object newProxyInstance = Proxy.newProxyInstance(h4.getClass().getClassLoader(), com.xinzhu.overmind.utils.helpers.e.a(this.f64076b.getClass()), this);
        this.f64077c = newProxyInstance;
        i(this.f64076b, newProxyInstance);
        k();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void d(g methodHook) {
        this.f64075a.put(methodHook.c(), methodHook);
    }

    protected boolean e() {
        return false;
    }

    protected Object f() {
        return this.f64076b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object g() {
        return this.f64077c;
    }

    protected abstract Object h();

    protected abstract void i(Object baseInvocation, Object proxyInvocation);

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
        g gVar = this.f64075a.get(method.getName());
        if (gVar != null && method.getName().equals(gVar.c())) {
            j(method, args, null, "beforeHook");
            Object b4 = gVar.b(this.f64076b, method, args);
            if (b4 != null) {
                return b4;
            }
            Object a4 = gVar.a(gVar.d(this.f64076b, method, args));
            j(method, args, a4, "afterHook");
            return a4;
        }
        try {
            j(method, args, null, "beforeHook");
            Object invoke = method.invoke(this.f64076b, args);
            j(method, args, invoke, "afterHook");
            return invoke;
        } catch (Throwable th) {
            throw th.getCause();
        }
    }

    protected abstract void k();
}
