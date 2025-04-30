package com.facebook.imagepipeline.producers;

import javax.annotation.Nullable;
/* compiled from: ThreadHandoffProducer.java */
/* loaded from: classes2.dex */
public class t0<T> implements i0<T> {

    /* renamed from: c  reason: collision with root package name */
    public static final String f13230c = "BackgroundThreadHandoffProducer";

    /* renamed from: a  reason: collision with root package name */
    private final i0<T> f13231a;

    /* renamed from: b  reason: collision with root package name */
    private final u0 f13232b;

    /* compiled from: ThreadHandoffProducer.java */
    /* loaded from: classes.dex */
    class a extends r0<T> {

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ m0 f13233k;

        /* renamed from: l  reason: collision with root package name */
        final /* synthetic */ String f13234l;

        /* renamed from: m  reason: collision with root package name */
        final /* synthetic */ Consumer f13235m;

        /* renamed from: n  reason: collision with root package name */
        final /* synthetic */ k0 f13236n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Consumer consumer, m0 m0Var, String str, String str2, m0 m0Var2, String str3, Consumer consumer2, k0 k0Var) {
            super(consumer, m0Var, str, str2);
            this.f13233k = m0Var2;
            this.f13234l = str3;
            this.f13235m = consumer2;
            this.f13236n = k0Var;
        }

        @Override // com.facebook.imagepipeline.producers.r0, com.facebook.common.executors.h
        protected void b(T t3) {
        }

        @Override // com.facebook.common.executors.h
        @Nullable
        protected T c() throws Exception {
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.r0, com.facebook.common.executors.h
        public void f(T t3) {
            this.f13233k.e(this.f13234l, t0.f13230c, null);
            t0.this.f13231a.b(this.f13235m, this.f13236n);
        }
    }

    /* compiled from: ThreadHandoffProducer.java */
    /* loaded from: classes2.dex */
    class b extends e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ r0 f13238a;

        b(r0 r0Var) {
            this.f13238a = r0Var;
        }

        @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.l0
        public void b() {
            this.f13238a.a();
            t0.this.f13232b.d(this.f13238a);
        }
    }

    public t0(i0<T> i0Var, u0 u0Var) {
        this.f13231a = (i0) com.facebook.common.internal.h.i(i0Var);
        this.f13232b = u0Var;
    }

    @Override // com.facebook.imagepipeline.producers.i0
    public void b(Consumer<T> consumer, k0 k0Var) {
        m0 listener = k0Var.getListener();
        String id = k0Var.getId();
        a aVar = new a(consumer, listener, f13230c, id, listener, id, consumer, k0Var);
        k0Var.d(new b(aVar));
        this.f13232b.a(aVar);
    }
}
