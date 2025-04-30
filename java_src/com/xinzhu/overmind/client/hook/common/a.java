package com.xinzhu.overmind.client.hook.common;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
/* compiled from: CallingPackageStub.java */
/* loaded from: classes3.dex */
public class a implements InvocationHandler {

    /* renamed from: b  reason: collision with root package name */
    public static final String f64078b = "CallingPackageStub";

    /* renamed from: a  reason: collision with root package name */
    private Object f64079a;

    public a(Object object) {
        this.f64079a = object;
    }

    public static Object a(Object orig) {
        return Proxy.newProxyInstance(orig.getClass().getClassLoader(), com.xinzhu.overmind.utils.helpers.e.a(orig.getClass()), new a(orig));
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
        com.xinzhu.overmind.utils.helpers.a.d(args);
        return method.invoke(this.f64079a, args);
    }
}
