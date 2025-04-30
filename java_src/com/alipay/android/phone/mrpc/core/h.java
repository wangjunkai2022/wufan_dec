package com.alipay.android.phone.mrpc.core;

import java.lang.reflect.Proxy;
/* loaded from: classes2.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    u f9463a;

    /* renamed from: b  reason: collision with root package name */
    j f9464b = new j(this);

    public h(u uVar) {
        this.f9463a = uVar;
    }

    private u a() {
        return this.f9463a;
    }

    private <T> T b(Class<T> cls) {
        return (T) Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new i(this.f9463a, cls, this.f9464b));
    }
}
