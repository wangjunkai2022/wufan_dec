package com.facebook.imagepipeline.producers;

import java.util.Map;
import javax.annotation.Nullable;
/* compiled from: StatefulProducerRunnable.java */
/* loaded from: classes.dex */
public abstract class r0<T> extends com.facebook.common.executors.h<T> {

    /* renamed from: g  reason: collision with root package name */
    private final Consumer<T> f13209g;

    /* renamed from: h  reason: collision with root package name */
    private final m0 f13210h;

    /* renamed from: i  reason: collision with root package name */
    private final String f13211i;

    /* renamed from: j  reason: collision with root package name */
    private final String f13212j;

    public r0(Consumer<T> consumer, m0 m0Var, String str, String str2) {
        this.f13209g = consumer;
        this.f13210h = m0Var;
        this.f13211i = str;
        this.f13212j = str2;
        m0Var.b(str2, str);
    }

    @Override // com.facebook.common.executors.h
    protected abstract void b(T t3);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.common.executors.h
    public void d() {
        m0 m0Var = this.f13210h;
        String str = this.f13212j;
        m0Var.g(str, this.f13211i, m0Var.d(str) ? g() : null);
        this.f13209g.a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.common.executors.h
    public void e(Exception exc) {
        m0 m0Var = this.f13210h;
        String str = this.f13212j;
        m0Var.f(str, this.f13211i, exc, m0Var.d(str) ? h(exc) : null);
        this.f13209g.onFailure(exc);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.common.executors.h
    public void f(T t3) {
        m0 m0Var = this.f13210h;
        String str = this.f13212j;
        m0Var.e(str, this.f13211i, m0Var.d(str) ? i(t3) : null);
        this.f13209g.b(t3, 1);
    }

    @Nullable
    protected Map<String, String> g() {
        return null;
    }

    @Nullable
    protected Map<String, String> h(Exception exc) {
        return null;
    }

    @Nullable
    protected Map<String, String> i(T t3) {
        return null;
    }
}
