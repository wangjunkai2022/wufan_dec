package com.facebook.fresco.animation.factory;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.net.Uri;
import com.facebook.common.internal.k;
import com.facebook.common.time.c;
import com.facebook.fresco.animation.bitmap.BitmapAnimationBackend;
import com.facebook.imagepipeline.animated.base.d;
import com.facebook.imagepipeline.animated.impl.b;
import com.facebook.imagepipeline.bitmaps.f;
import com.facebook.imagepipeline.cache.h;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
/* compiled from: ExperimentalBitmapAnimationDrawableFactory.java */
/* loaded from: classes2.dex */
public class a implements p0.a {

    /* renamed from: i  reason: collision with root package name */
    public static final int f12336i = 0;

    /* renamed from: j  reason: collision with root package name */
    public static final int f12337j = 1;

    /* renamed from: k  reason: collision with root package name */
    public static final int f12338k = 2;

    /* renamed from: l  reason: collision with root package name */
    public static final int f12339l = 3;

    /* renamed from: a  reason: collision with root package name */
    private final b f12340a;

    /* renamed from: b  reason: collision with root package name */
    private final ScheduledExecutorService f12341b;

    /* renamed from: c  reason: collision with root package name */
    private final ExecutorService f12342c;

    /* renamed from: d  reason: collision with root package name */
    private final c f12343d;

    /* renamed from: e  reason: collision with root package name */
    private final f f12344e;

    /* renamed from: f  reason: collision with root package name */
    private final h<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> f12345f;

    /* renamed from: g  reason: collision with root package name */
    private final k<Integer> f12346g;

    /* renamed from: h  reason: collision with root package name */
    private final k<Integer> f12347h;

    /* compiled from: ExperimentalBitmapAnimationDrawableFactory.java */
    /* renamed from: com.facebook.fresco.animation.factory.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0074a implements com.facebook.cache.common.c {

        /* renamed from: b  reason: collision with root package name */
        private static final String f12348b = "anim://";

        /* renamed from: a  reason: collision with root package name */
        private final String f12349a;

        public C0074a(int i2) {
            this.f12349a = f12348b + i2;
        }

        @Override // com.facebook.cache.common.c
        public String a() {
            return this.f12349a;
        }

        @Override // com.facebook.cache.common.c
        public boolean b(Uri uri) {
            return uri.toString().startsWith(this.f12349a);
        }
    }

    public a(b bVar, ScheduledExecutorService scheduledExecutorService, ExecutorService executorService, c cVar, f fVar, h<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> hVar, k<Integer> kVar, k<Integer> kVar2) {
        this.f12340a = bVar;
        this.f12341b = scheduledExecutorService;
        this.f12342c = executorService;
        this.f12343d = cVar;
        this.f12344e = fVar;
        this.f12345f = hVar;
        this.f12346g = kVar;
        this.f12347h = kVar2;
    }

    private com.facebook.imagepipeline.animated.base.a c(com.facebook.imagepipeline.animated.base.f fVar) {
        d e4 = fVar.e();
        return this.f12340a.a(fVar, new Rect(0, 0, e4.a(), e4.getHeight()));
    }

    private com.facebook.imagepipeline.animated.impl.c d(com.facebook.imagepipeline.animated.base.f fVar) {
        return new com.facebook.imagepipeline.animated.impl.c(new C0074a(fVar.hashCode()), this.f12345f);
    }

    private com.facebook.fresco.animation.backend.a e(com.facebook.imagepipeline.animated.base.f fVar) {
        com.facebook.fresco.animation.bitmap.preparation.d dVar;
        com.facebook.fresco.animation.bitmap.preparation.b bVar;
        com.facebook.imagepipeline.animated.base.a c4 = c(fVar);
        com.facebook.fresco.animation.bitmap.a f4 = f(fVar);
        com.facebook.fresco.animation.bitmap.wrapper.b bVar2 = new com.facebook.fresco.animation.bitmap.wrapper.b(f4, c4);
        int intValue = this.f12347h.get().intValue();
        if (intValue > 0) {
            com.facebook.fresco.animation.bitmap.preparation.d dVar2 = new com.facebook.fresco.animation.bitmap.preparation.d(intValue);
            bVar = g(bVar2);
            dVar = dVar2;
        } else {
            dVar = null;
            bVar = null;
        }
        return com.facebook.fresco.animation.backend.c.r(new BitmapAnimationBackend(this.f12344e, f4, new com.facebook.fresco.animation.bitmap.wrapper.a(c4), bVar2, dVar, bVar), this.f12343d, this.f12341b);
    }

    private com.facebook.fresco.animation.bitmap.a f(com.facebook.imagepipeline.animated.base.f fVar) {
        int intValue = this.f12346g.get().intValue();
        if (intValue != 1) {
            if (intValue != 2) {
                if (intValue != 3) {
                    return new com.facebook.fresco.animation.bitmap.cache.c();
                }
                return new com.facebook.fresco.animation.bitmap.cache.b();
            }
            return new com.facebook.fresco.animation.bitmap.cache.a(d(fVar), false);
        }
        return new com.facebook.fresco.animation.bitmap.cache.a(d(fVar), true);
    }

    private com.facebook.fresco.animation.bitmap.preparation.b g(com.facebook.fresco.animation.bitmap.b bVar) {
        return new com.facebook.fresco.animation.bitmap.preparation.c(this.f12344e, bVar, Bitmap.Config.ARGB_8888, this.f12342c);
    }

    @Override // p0.a
    public boolean a(com.facebook.imagepipeline.image.c cVar) {
        return cVar instanceof com.facebook.imagepipeline.image.a;
    }

    @Override // p0.a
    /* renamed from: h */
    public com.facebook.fresco.animation.drawable.a b(com.facebook.imagepipeline.image.c cVar) {
        return new com.facebook.fresco.animation.drawable.a(e(((com.facebook.imagepipeline.image.a) cVar).h()));
    }
}
