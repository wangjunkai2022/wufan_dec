package com.facebook.imagepipeline.producers;

import com.facebook.common.internal.ImmutableMap;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.imagepipeline.request.ImageRequest;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.Nullable;
/* compiled from: DiskCacheReadProducer.java */
/* loaded from: classes.dex */
public class n implements i0<com.facebook.imagepipeline.image.e> {

    /* renamed from: e  reason: collision with root package name */
    public static final String f13145e = "DiskCacheProducer";

    /* renamed from: f  reason: collision with root package name */
    public static final String f13146f = "cached_value_found";

    /* renamed from: g  reason: collision with root package name */
    public static final String f13147g = "encodedImageSize";

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.e f13148a;

    /* renamed from: b  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.e f13149b;

    /* renamed from: c  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.f f13150c;

    /* renamed from: d  reason: collision with root package name */
    private final i0<com.facebook.imagepipeline.image.e> f13151d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DiskCacheReadProducer.java */
    /* loaded from: classes2.dex */
    public class a implements bolts.g<com.facebook.imagepipeline.image.e, Void> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ m0 f13152a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f13153b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Consumer f13154c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ k0 f13155d;

        a(m0 m0Var, String str, Consumer consumer, k0 k0Var) {
            this.f13152a = m0Var;
            this.f13153b = str;
            this.f13154c = consumer;
            this.f13155d = k0Var;
        }

        @Override // bolts.g
        /* renamed from: b */
        public Void a(bolts.h<com.facebook.imagepipeline.image.e> hVar) throws Exception {
            if (n.f(hVar)) {
                this.f13152a.g(this.f13153b, n.f13145e, null);
                this.f13154c.a();
            } else if (hVar.F()) {
                this.f13152a.f(this.f13153b, n.f13145e, hVar.A(), null);
                n.this.f13151d.b(this.f13154c, this.f13155d);
            } else {
                com.facebook.imagepipeline.image.e B = hVar.B();
                if (B != null) {
                    m0 m0Var = this.f13152a;
                    String str = this.f13153b;
                    m0Var.e(str, n.f13145e, n.e(m0Var, str, true, B.s()));
                    this.f13152a.h(this.f13153b, n.f13145e, true);
                    this.f13154c.c(1.0f);
                    this.f13154c.b(B, 1);
                    B.close();
                } else {
                    m0 m0Var2 = this.f13152a;
                    String str2 = this.f13153b;
                    m0Var2.e(str2, n.f13145e, n.e(m0Var2, str2, false, 0));
                    n.this.f13151d.b(this.f13154c, this.f13155d);
                }
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DiskCacheReadProducer.java */
    /* loaded from: classes2.dex */
    public class b extends e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AtomicBoolean f13157a;

        b(AtomicBoolean atomicBoolean) {
            this.f13157a = atomicBoolean;
        }

        @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.l0
        public void b() {
            this.f13157a.set(true);
        }
    }

    public n(com.facebook.imagepipeline.cache.e eVar, com.facebook.imagepipeline.cache.e eVar2, com.facebook.imagepipeline.cache.f fVar, i0<com.facebook.imagepipeline.image.e> i0Var) {
        this.f13148a = eVar;
        this.f13149b = eVar2;
        this.f13150c = fVar;
        this.f13151d = i0Var;
    }

    @VisibleForTesting
    @Nullable
    static Map<String, String> e(m0 m0Var, String str, boolean z3, int i2) {
        if (m0Var.d(str)) {
            if (z3) {
                return ImmutableMap.of("cached_value_found", String.valueOf(z3), "encodedImageSize", String.valueOf(i2));
            }
            return ImmutableMap.of("cached_value_found", String.valueOf(z3));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean f(bolts.h<?> hVar) {
        return hVar.D() || (hVar.F() && (hVar.A() instanceof CancellationException));
    }

    private void g(Consumer<com.facebook.imagepipeline.image.e> consumer, k0 k0Var) {
        if (k0Var.g().getValue() >= ImageRequest.RequestLevel.DISK_CACHE.getValue()) {
            consumer.b(null, 1);
        } else {
            this.f13151d.b(consumer, k0Var);
        }
    }

    private bolts.g<com.facebook.imagepipeline.image.e, Void> h(Consumer<com.facebook.imagepipeline.image.e> consumer, k0 k0Var) {
        return new a(k0Var.getListener(), k0Var.getId(), consumer, k0Var);
    }

    private void i(AtomicBoolean atomicBoolean, k0 k0Var) {
        k0Var.d(new b(atomicBoolean));
    }

    @Override // com.facebook.imagepipeline.producers.i0
    public void b(Consumer<com.facebook.imagepipeline.image.e> consumer, k0 k0Var) {
        ImageRequest b4 = k0Var.b();
        if (!b4.w()) {
            g(consumer, k0Var);
            return;
        }
        k0Var.getListener().b(k0Var.getId(), f13145e);
        com.facebook.cache.common.c d4 = this.f13150c.d(b4, k0Var.c());
        com.facebook.imagepipeline.cache.e eVar = b4.f() == ImageRequest.CacheChoice.SMALL ? this.f13149b : this.f13148a;
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        eVar.p(d4, atomicBoolean).m(h(consumer, k0Var));
        i(atomicBoolean, k0Var);
    }
}
