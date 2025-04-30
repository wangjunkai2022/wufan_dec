package com.facebook.imagepipeline.core;

import android.content.Context;
import android.os.Build;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.imagepipeline.cache.m;
import com.facebook.imagepipeline.cache.o;
import com.facebook.imagepipeline.producers.u0;
import javax.annotation.Nullable;
import javax.annotation.concurrent.NotThreadSafe;
/* compiled from: ImagePipelineFactory.java */
@NotThreadSafe
/* loaded from: classes.dex */
public class i {

    /* renamed from: s  reason: collision with root package name */
    private static final Class<?> f12645s = i.class;

    /* renamed from: t  reason: collision with root package name */
    private static i f12646t;

    /* renamed from: a  reason: collision with root package name */
    private final u0 f12647a;

    /* renamed from: b  reason: collision with root package name */
    private final ImagePipelineConfig f12648b;

    /* renamed from: c  reason: collision with root package name */
    private com.facebook.imagepipeline.cache.h<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> f12649c;

    /* renamed from: d  reason: collision with root package name */
    private o<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> f12650d;

    /* renamed from: e  reason: collision with root package name */
    private com.facebook.imagepipeline.cache.h<com.facebook.cache.common.c, PooledByteBuffer> f12651e;

    /* renamed from: f  reason: collision with root package name */
    private o<com.facebook.cache.common.c, PooledByteBuffer> f12652f;

    /* renamed from: g  reason: collision with root package name */
    private com.facebook.imagepipeline.cache.e f12653g;

    /* renamed from: h  reason: collision with root package name */
    private com.facebook.cache.disk.h f12654h;

    /* renamed from: i  reason: collision with root package name */
    private com.facebook.imagepipeline.decoder.b f12655i;

    /* renamed from: j  reason: collision with root package name */
    private g f12656j;

    /* renamed from: k  reason: collision with root package name */
    private com.facebook.imagepipeline.transcoder.d f12657k;

    /* renamed from: l  reason: collision with root package name */
    private k f12658l;

    /* renamed from: m  reason: collision with root package name */
    private l f12659m;

    /* renamed from: n  reason: collision with root package name */
    private com.facebook.imagepipeline.cache.e f12660n;

    /* renamed from: o  reason: collision with root package name */
    private com.facebook.cache.disk.h f12661o;

    /* renamed from: p  reason: collision with root package name */
    private com.facebook.imagepipeline.bitmaps.f f12662p;

    /* renamed from: q  reason: collision with root package name */
    private com.facebook.imagepipeline.platform.f f12663q;

    /* renamed from: r  reason: collision with root package name */
    private com.facebook.imagepipeline.animated.factory.a f12664r;

    public i(ImagePipelineConfig imagePipelineConfig) {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("ImagePipelineConfig()");
        }
        this.f12648b = (ImagePipelineConfig) com.facebook.common.internal.h.i(imagePipelineConfig);
        this.f12647a = new u0(imagePipelineConfig.getExecutorSupplier().a());
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
    }

    @Nullable
    private com.facebook.imagepipeline.animated.factory.a b() {
        if (this.f12664r == null) {
            this.f12664r = com.facebook.imagepipeline.animated.factory.b.a(m(), this.f12648b.getExecutorSupplier(), c());
        }
        return this.f12664r;
    }

    private com.facebook.imagepipeline.decoder.b g() {
        com.facebook.imagepipeline.decoder.b bVar;
        if (this.f12655i == null) {
            if (this.f12648b.getImageDecoder() != null) {
                this.f12655i = this.f12648b.getImageDecoder();
            } else {
                com.facebook.imagepipeline.animated.factory.a b4 = b();
                com.facebook.imagepipeline.decoder.b bVar2 = null;
                if (b4 != null) {
                    bVar2 = b4.b(this.f12648b.getBitmapConfig());
                    bVar = b4.c(this.f12648b.getBitmapConfig());
                } else {
                    bVar = null;
                }
                if (this.f12648b.getImageDecoderConfig() == null) {
                    this.f12655i = new com.facebook.imagepipeline.decoder.a(bVar2, bVar, n());
                } else {
                    this.f12655i = new com.facebook.imagepipeline.decoder.a(bVar2, bVar, n(), this.f12648b.getImageDecoderConfig().a());
                    com.facebook.imageformat.d.e().g(this.f12648b.getImageDecoderConfig().b());
                }
            }
        }
        return this.f12655i;
    }

    private com.facebook.imagepipeline.transcoder.d i() {
        if (this.f12657k == null) {
            if (this.f12648b.getImageTranscoderFactory() == null && this.f12648b.getImageTranscoderType() == null && this.f12648b.getExperiments().m()) {
                this.f12657k = new com.facebook.imagepipeline.transcoder.h(this.f12648b.getExperiments().d());
            } else {
                this.f12657k = new com.facebook.imagepipeline.transcoder.f(this.f12648b.getExperiments().d(), this.f12648b.getExperiments().g(), this.f12648b.getImageTranscoderFactory(), this.f12648b.getImageTranscoderType());
            }
        }
        return this.f12657k;
    }

    public static i j() {
        return (i) com.facebook.common.internal.h.j(f12646t, "ImagePipelineFactory was not initialized!");
    }

    private k o() {
        if (this.f12658l == null) {
            this.f12658l = this.f12648b.getExperiments().e().a(this.f12648b.getContext(), this.f12648b.getPoolFactory().k(), g(), this.f12648b.getProgressiveJpegConfig(), this.f12648b.isDownsampleEnabled(), this.f12648b.isResizeAndRotateEnabledForNetwork(), this.f12648b.getExperiments().j(), this.f12648b.getExecutorSupplier(), this.f12648b.getPoolFactory().h(this.f12648b.getMemoryChunkType()), d(), f(), k(), q(), this.f12648b.getCacheKeyFactory(), m(), this.f12648b.getExperiments().c(), this.f12648b.getExperiments().b(), this.f12648b.getExperiments().a(), this.f12648b.getExperiments().d());
        }
        return this.f12658l;
    }

    private l p() {
        boolean z3 = Build.VERSION.SDK_INT >= 24 && this.f12648b.getExperiments().f();
        if (this.f12659m == null) {
            this.f12659m = new l(this.f12648b.getContext().getApplicationContext().getContentResolver(), o(), this.f12648b.getNetworkFetcher(), this.f12648b.isResizeAndRotateEnabledForNetwork(), this.f12648b.getExperiments().o(), this.f12647a, this.f12648b.isDownsampleEnabled(), z3, this.f12648b.getExperiments().n(), this.f12648b.isDiskCacheEnabled(), i());
        }
        return this.f12659m;
    }

    private com.facebook.imagepipeline.cache.e q() {
        if (this.f12660n == null) {
            this.f12660n = new com.facebook.imagepipeline.cache.e(r(), this.f12648b.getPoolFactory().h(this.f12648b.getMemoryChunkType()), this.f12648b.getPoolFactory().i(), this.f12648b.getExecutorSupplier().e(), this.f12648b.getExecutorSupplier().b(), this.f12648b.getImageCacheStatsTracker());
        }
        return this.f12660n;
    }

    public static synchronized boolean s() {
        boolean z3;
        synchronized (i.class) {
            z3 = f12646t != null;
        }
        return z3;
    }

    public static synchronized void t(Context context) {
        synchronized (i.class) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("ImagePipelineFactory#initialize");
            }
            u(ImagePipelineConfig.newBuilder(context).build());
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }

    public static synchronized void u(ImagePipelineConfig imagePipelineConfig) {
        synchronized (i.class) {
            if (f12646t != null) {
                com.facebook.common.logging.a.k0(f12645s, "ImagePipelineFactory has already been initialized! `ImagePipelineFactory.initialize(...)` should only be called once to avoid unexpected behavior.");
            }
            f12646t = new i(imagePipelineConfig);
        }
    }

    public static void v(i iVar) {
        f12646t = iVar;
    }

    public static synchronized void w() {
        synchronized (i.class) {
            i iVar = f12646t;
            if (iVar != null) {
                iVar.d().b(com.facebook.common.internal.a.b());
                f12646t.f().b(com.facebook.common.internal.a.b());
                f12646t = null;
            }
        }
    }

    @Nullable
    public p0.a a(Context context) {
        com.facebook.imagepipeline.animated.factory.a b4 = b();
        if (b4 == null) {
            return null;
        }
        return b4.a(context);
    }

    public com.facebook.imagepipeline.cache.h<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> c() {
        if (this.f12649c == null) {
            this.f12649c = com.facebook.imagepipeline.cache.a.b(this.f12648b.getBitmapMemoryCacheParamsSupplier(), this.f12648b.getMemoryTrimmableRegistry(), this.f12648b.getBitmapMemoryCacheTrimStrategy());
        }
        return this.f12649c;
    }

    public o<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> d() {
        if (this.f12650d == null) {
            this.f12650d = com.facebook.imagepipeline.cache.b.a(c(), this.f12648b.getImageCacheStatsTracker());
        }
        return this.f12650d;
    }

    public com.facebook.imagepipeline.cache.h<com.facebook.cache.common.c, PooledByteBuffer> e() {
        if (this.f12651e == null) {
            this.f12651e = com.facebook.imagepipeline.cache.l.a(this.f12648b.getEncodedMemoryCacheParamsSupplier(), this.f12648b.getMemoryTrimmableRegistry());
        }
        return this.f12651e;
    }

    public o<com.facebook.cache.common.c, PooledByteBuffer> f() {
        if (this.f12652f == null) {
            this.f12652f = m.a(e(), this.f12648b.getImageCacheStatsTracker());
        }
        return this.f12652f;
    }

    public g h() {
        if (this.f12656j == null) {
            this.f12656j = new g(p(), this.f12648b.getRequestListeners(), this.f12648b.getIsPrefetchEnabledSupplier(), d(), f(), k(), q(), this.f12648b.getCacheKeyFactory(), this.f12647a, com.facebook.common.internal.l.a(Boolean.FALSE), this.f12648b.getExperiments().l());
        }
        return this.f12656j;
    }

    public com.facebook.imagepipeline.cache.e k() {
        if (this.f12653g == null) {
            this.f12653g = new com.facebook.imagepipeline.cache.e(l(), this.f12648b.getPoolFactory().h(this.f12648b.getMemoryChunkType()), this.f12648b.getPoolFactory().i(), this.f12648b.getExecutorSupplier().e(), this.f12648b.getExecutorSupplier().b(), this.f12648b.getImageCacheStatsTracker());
        }
        return this.f12653g;
    }

    public com.facebook.cache.disk.h l() {
        if (this.f12654h == null) {
            this.f12654h = this.f12648b.getFileCacheFactory().a(this.f12648b.getMainDiskCacheConfig());
        }
        return this.f12654h;
    }

    public com.facebook.imagepipeline.bitmaps.f m() {
        if (this.f12662p == null) {
            this.f12662p = com.facebook.imagepipeline.bitmaps.g.a(this.f12648b.getPoolFactory(), n());
        }
        return this.f12662p;
    }

    public com.facebook.imagepipeline.platform.f n() {
        if (this.f12663q == null) {
            this.f12663q = com.facebook.imagepipeline.platform.g.a(this.f12648b.getPoolFactory(), this.f12648b.getExperiments().k());
        }
        return this.f12663q;
    }

    public com.facebook.cache.disk.h r() {
        if (this.f12661o == null) {
            this.f12661o = this.f12648b.getFileCacheFactory().a(this.f12648b.getSmallImageDiskCacheConfig());
        }
        return this.f12661o;
    }
}
