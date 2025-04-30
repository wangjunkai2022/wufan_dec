package org.greenrobot.eventbus;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* compiled from: EventBusBuilder.java */
/* loaded from: classes5.dex */
public class d {

    /* renamed from: l  reason: collision with root package name */
    private static final ExecutorService f73237l = Executors.newCachedThreadPool();

    /* renamed from: e  reason: collision with root package name */
    boolean f73242e;

    /* renamed from: g  reason: collision with root package name */
    boolean f73244g;

    /* renamed from: h  reason: collision with root package name */
    boolean f73245h;

    /* renamed from: j  reason: collision with root package name */
    List<Class<?>> f73247j;

    /* renamed from: k  reason: collision with root package name */
    List<org.greenrobot.eventbus.meta.d> f73248k;

    /* renamed from: a  reason: collision with root package name */
    boolean f73238a = true;

    /* renamed from: b  reason: collision with root package name */
    boolean f73239b = true;

    /* renamed from: c  reason: collision with root package name */
    boolean f73240c = true;

    /* renamed from: d  reason: collision with root package name */
    boolean f73241d = true;

    /* renamed from: f  reason: collision with root package name */
    boolean f73243f = true;

    /* renamed from: i  reason: collision with root package name */
    ExecutorService f73246i = f73237l;

    public d a(org.greenrobot.eventbus.meta.d dVar) {
        if (this.f73248k == null) {
            this.f73248k = new ArrayList();
        }
        this.f73248k.add(dVar);
        return this;
    }

    public c b() {
        return new c(this);
    }

    public d c(boolean z3) {
        this.f73243f = z3;
        return this;
    }

    public d d(ExecutorService executorService) {
        this.f73246i = executorService;
        return this;
    }

    public d e(boolean z3) {
        this.f73244g = z3;
        return this;
    }

    public c f() {
        c cVar;
        synchronized (c.class) {
            if (c.f73210r == null) {
                c.f73210r = b();
                cVar = c.f73210r;
            } else {
                throw new EventBusException("Default instance already exists. It may be only set once before it's used the first time to ensure consistent behavior.");
            }
        }
        return cVar;
    }

    public d g(boolean z3) {
        this.f73239b = z3;
        return this;
    }

    public d h(boolean z3) {
        this.f73238a = z3;
        return this;
    }

    public d i(boolean z3) {
        this.f73241d = z3;
        return this;
    }

    public d j(boolean z3) {
        this.f73240c = z3;
        return this;
    }

    public d k(Class<?> cls) {
        if (this.f73247j == null) {
            this.f73247j = new ArrayList();
        }
        this.f73247j.add(cls);
        return this;
    }

    public d l(boolean z3) {
        this.f73245h = z3;
        return this;
    }

    public d m(boolean z3) {
        this.f73242e = z3;
        return this;
    }
}
