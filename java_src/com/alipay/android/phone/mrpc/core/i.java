package com.alipay.android.phone.mrpc.core;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
/* loaded from: classes2.dex */
public final class i implements InvocationHandler {

    /* renamed from: a  reason: collision with root package name */
    protected u f9465a;

    /* renamed from: b  reason: collision with root package name */
    protected Class<?> f9466b;

    /* renamed from: c  reason: collision with root package name */
    protected j f9467c;

    public i(u uVar, Class<?> cls, j jVar) {
        this.f9465a = uVar;
        this.f9466b = cls;
        this.f9467c = jVar;
    }

    @Override // java.lang.reflect.InvocationHandler
    public final Object invoke(Object obj, Method method, Object[] objArr) {
        return this.f9467c.a(method, objArr);
    }
}
