package com.facebook.imagepipeline.producers;

import com.facebook.imagepipeline.common.Priority;
import com.facebook.imagepipeline.request.ImageRequest;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
/* compiled from: BaseProducerContext.java */
/* loaded from: classes.dex */
public class d implements k0 {

    /* renamed from: a  reason: collision with root package name */
    private final ImageRequest f13012a;

    /* renamed from: b  reason: collision with root package name */
    private final String f13013b;

    /* renamed from: c  reason: collision with root package name */
    private final m0 f13014c;

    /* renamed from: d  reason: collision with root package name */
    private final Object f13015d;

    /* renamed from: e  reason: collision with root package name */
    private final ImageRequest.RequestLevel f13016e;
    @GuardedBy("this")

    /* renamed from: f  reason: collision with root package name */
    private boolean f13017f;
    @GuardedBy("this")

    /* renamed from: g  reason: collision with root package name */
    private Priority f13018g;
    @GuardedBy("this")

    /* renamed from: h  reason: collision with root package name */
    private boolean f13019h;
    @GuardedBy("this")

    /* renamed from: i  reason: collision with root package name */
    private boolean f13020i = false;
    @GuardedBy("this")

    /* renamed from: j  reason: collision with root package name */
    private final List<l0> f13021j = new ArrayList();

    public d(ImageRequest imageRequest, String str, m0 m0Var, Object obj, ImageRequest.RequestLevel requestLevel, boolean z3, boolean z4, Priority priority) {
        this.f13012a = imageRequest;
        this.f13013b = str;
        this.f13014c = m0Var;
        this.f13015d = obj;
        this.f13016e = requestLevel;
        this.f13017f = z3;
        this.f13018g = priority;
        this.f13019h = z4;
    }

    public static void h(@Nullable List<l0> list) {
        if (list == null) {
            return;
        }
        for (l0 l0Var : list) {
            l0Var.b();
        }
    }

    public static void i(@Nullable List<l0> list) {
        if (list == null) {
            return;
        }
        for (l0 l0Var : list) {
            l0Var.a();
        }
    }

    public static void j(@Nullable List<l0> list) {
        if (list == null) {
            return;
        }
        for (l0 l0Var : list) {
            l0Var.d();
        }
    }

    public static void k(@Nullable List<l0> list) {
        if (list == null) {
            return;
        }
        for (l0 l0Var : list) {
            l0Var.c();
        }
    }

    @Override // com.facebook.imagepipeline.producers.k0
    public synchronized Priority a() {
        return this.f13018g;
    }

    @Override // com.facebook.imagepipeline.producers.k0
    public ImageRequest b() {
        return this.f13012a;
    }

    @Override // com.facebook.imagepipeline.producers.k0
    public Object c() {
        return this.f13015d;
    }

    @Override // com.facebook.imagepipeline.producers.k0
    public void d(l0 l0Var) {
        boolean z3;
        synchronized (this) {
            this.f13021j.add(l0Var);
            z3 = this.f13020i;
        }
        if (z3) {
            l0Var.b();
        }
    }

    @Override // com.facebook.imagepipeline.producers.k0
    public synchronized boolean e() {
        return this.f13019h;
    }

    @Override // com.facebook.imagepipeline.producers.k0
    public synchronized boolean f() {
        return this.f13017f;
    }

    @Override // com.facebook.imagepipeline.producers.k0
    public ImageRequest.RequestLevel g() {
        return this.f13016e;
    }

    @Override // com.facebook.imagepipeline.producers.k0
    public String getId() {
        return this.f13013b;
    }

    @Override // com.facebook.imagepipeline.producers.k0
    public m0 getListener() {
        return this.f13014c;
    }

    public void l() {
        h(m());
    }

    @Nullable
    public synchronized List<l0> m() {
        if (this.f13020i) {
            return null;
        }
        this.f13020i = true;
        return new ArrayList(this.f13021j);
    }

    public synchronized boolean n() {
        return this.f13020i;
    }

    @Nullable
    public synchronized List<l0> o(boolean z3) {
        if (z3 == this.f13019h) {
            return null;
        }
        this.f13019h = z3;
        return new ArrayList(this.f13021j);
    }

    @Nullable
    public synchronized List<l0> p(boolean z3) {
        if (z3 == this.f13017f) {
            return null;
        }
        this.f13017f = z3;
        return new ArrayList(this.f13021j);
    }

    @Nullable
    public synchronized List<l0> q(Priority priority) {
        if (priority == this.f13018g) {
            return null;
        }
        this.f13018g = priority;
        return new ArrayList(this.f13021j);
    }
}
