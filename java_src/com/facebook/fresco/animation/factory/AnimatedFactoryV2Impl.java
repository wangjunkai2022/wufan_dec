package com.facebook.fresco.animation.factory;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import com.facebook.common.executors.i;
import com.facebook.common.internal.DoNotStrip;
import com.facebook.common.internal.k;
import com.facebook.common.time.RealtimeSinceBootClock;
import com.facebook.imagepipeline.cache.h;
import javax.annotation.Nullable;
import javax.annotation.concurrent.NotThreadSafe;
@DoNotStrip
@NotThreadSafe
/* loaded from: classes.dex */
public class AnimatedFactoryV2Impl implements com.facebook.imagepipeline.animated.factory.a {

    /* renamed from: h  reason: collision with root package name */
    private static final int f12320h = 3;

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.imagepipeline.bitmaps.f f12321a;

    /* renamed from: b  reason: collision with root package name */
    private final com.facebook.imagepipeline.core.e f12322b;

    /* renamed from: c  reason: collision with root package name */
    private final h<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> f12323c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private com.facebook.imagepipeline.animated.factory.d f12324d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private com.facebook.imagepipeline.animated.impl.b f12325e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private o0.a f12326f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private p0.a f12327g;

    /* loaded from: classes2.dex */
    class a implements com.facebook.imagepipeline.decoder.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Bitmap.Config f12328a;

        a(Bitmap.Config config) {
            this.f12328a = config;
        }

        @Override // com.facebook.imagepipeline.decoder.b
        public com.facebook.imagepipeline.image.c a(com.facebook.imagepipeline.image.e eVar, int i2, com.facebook.imagepipeline.image.h hVar, com.facebook.imagepipeline.common.b bVar) {
            return AnimatedFactoryV2Impl.this.j().a(eVar, bVar, this.f12328a);
        }
    }

    /* loaded from: classes2.dex */
    class b implements com.facebook.imagepipeline.decoder.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Bitmap.Config f12330a;

        b(Bitmap.Config config) {
            this.f12330a = config;
        }

        @Override // com.facebook.imagepipeline.decoder.b
        public com.facebook.imagepipeline.image.c a(com.facebook.imagepipeline.image.e eVar, int i2, com.facebook.imagepipeline.image.h hVar, com.facebook.imagepipeline.common.b bVar) {
            return AnimatedFactoryV2Impl.this.j().b(eVar, bVar, this.f12330a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c implements k<Integer> {
        c() {
        }

        @Override // com.facebook.common.internal.k
        /* renamed from: a */
        public Integer get() {
            return 2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d implements k<Integer> {
        d() {
        }

        @Override // com.facebook.common.internal.k
        /* renamed from: a */
        public Integer get() {
            return 3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class e implements com.facebook.imagepipeline.animated.impl.b {
        e() {
        }

        @Override // com.facebook.imagepipeline.animated.impl.b
        public com.facebook.imagepipeline.animated.base.a a(com.facebook.imagepipeline.animated.base.f fVar, Rect rect) {
            return new com.facebook.imagepipeline.animated.impl.a(AnimatedFactoryV2Impl.this.i(), fVar, rect);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class f implements com.facebook.imagepipeline.animated.impl.b {
        f() {
        }

        @Override // com.facebook.imagepipeline.animated.impl.b
        public com.facebook.imagepipeline.animated.base.a a(com.facebook.imagepipeline.animated.base.f fVar, Rect rect) {
            return new com.facebook.imagepipeline.animated.impl.a(AnimatedFactoryV2Impl.this.i(), fVar, rect);
        }
    }

    @DoNotStrip
    public AnimatedFactoryV2Impl(com.facebook.imagepipeline.bitmaps.f fVar, com.facebook.imagepipeline.core.e eVar, h<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> hVar) {
        this.f12321a = fVar;
        this.f12322b = eVar;
        this.f12323c = hVar;
    }

    private com.facebook.imagepipeline.animated.factory.d f() {
        return new com.facebook.imagepipeline.animated.factory.e(new f(), this.f12321a);
    }

    private com.facebook.fresco.animation.factory.a g() {
        c cVar = new c();
        return new com.facebook.fresco.animation.factory.a(h(), i.f(), new com.facebook.common.executors.c(this.f12322b.c()), RealtimeSinceBootClock.get(), this.f12321a, this.f12323c, cVar, new d());
    }

    private com.facebook.imagepipeline.animated.impl.b h() {
        if (this.f12325e == null) {
            this.f12325e = new e();
        }
        return this.f12325e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public o0.a i() {
        if (this.f12326f == null) {
            this.f12326f = new o0.a();
        }
        return this.f12326f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.facebook.imagepipeline.animated.factory.d j() {
        if (this.f12324d == null) {
            this.f12324d = f();
        }
        return this.f12324d;
    }

    @Override // com.facebook.imagepipeline.animated.factory.a
    @Nullable
    public p0.a a(Context context) {
        if (this.f12327g == null) {
            this.f12327g = g();
        }
        return this.f12327g;
    }

    @Override // com.facebook.imagepipeline.animated.factory.a
    public com.facebook.imagepipeline.decoder.b b(Bitmap.Config config) {
        return new a(config);
    }

    @Override // com.facebook.imagepipeline.animated.factory.a
    public com.facebook.imagepipeline.decoder.b c(Bitmap.Config config) {
        return new b(config);
    }
}
