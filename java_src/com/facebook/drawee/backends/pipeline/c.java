package com.facebook.drawee.backends.pipeline;

import com.facebook.common.internal.ImmutableList;
import com.facebook.common.internal.h;
import com.facebook.common.internal.k;
import com.facebook.common.internal.l;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Nullable;
/* compiled from: DraweeConfig.java */
/* loaded from: classes.dex */
public class c {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final ImmutableList<p0.a> f11832a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final g f11833b;

    /* renamed from: c  reason: collision with root package name */
    private final k<Boolean> f11834c;

    /* compiled from: DraweeConfig.java */
    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private List<p0.a> f11835a;

        /* renamed from: b  reason: collision with root package name */
        private k<Boolean> f11836b;

        /* renamed from: c  reason: collision with root package name */
        private g f11837c;

        public b d(p0.a aVar) {
            if (this.f11835a == null) {
                this.f11835a = new ArrayList();
            }
            this.f11835a.add(aVar);
            return this;
        }

        public c e() {
            return new c(this);
        }

        public b f(k<Boolean> kVar) {
            h.i(kVar);
            this.f11836b = kVar;
            return this;
        }

        public b g(boolean z3) {
            return f(l.a(Boolean.valueOf(z3)));
        }

        public b h(g gVar) {
            this.f11837c = gVar;
            return this;
        }
    }

    public static b d() {
        return new b();
    }

    @Nullable
    public ImmutableList<p0.a> a() {
        return this.f11832a;
    }

    public k<Boolean> b() {
        return this.f11834c;
    }

    @Nullable
    public g c() {
        return this.f11833b;
    }

    private c(b bVar) {
        k<Boolean> a4;
        this.f11832a = bVar.f11835a != null ? ImmutableList.a(bVar.f11835a) : null;
        if (bVar.f11836b != null) {
            a4 = bVar.f11836b;
        } else {
            a4 = l.a(Boolean.FALSE);
        }
        this.f11834c = a4;
        this.f11833b = bVar.f11837c;
    }
}
