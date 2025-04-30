package com.facebook.fresco.animation.bitmap.wrapper;

import android.graphics.Bitmap;
import android.graphics.Rect;
import com.facebook.imagepipeline.animated.impl.AnimatedImageCompositor;
import javax.annotation.Nullable;
/* compiled from: AnimatedDrawableBackendFrameRenderer.java */
/* loaded from: classes.dex */
public class b implements com.facebook.fresco.animation.bitmap.b {

    /* renamed from: e  reason: collision with root package name */
    private static final Class<?> f12289e = b.class;

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.fresco.animation.bitmap.a f12290a;

    /* renamed from: b  reason: collision with root package name */
    private com.facebook.imagepipeline.animated.base.a f12291b;

    /* renamed from: c  reason: collision with root package name */
    private AnimatedImageCompositor f12292c;

    /* renamed from: d  reason: collision with root package name */
    private final AnimatedImageCompositor.b f12293d;

    /* compiled from: AnimatedDrawableBackendFrameRenderer.java */
    /* loaded from: classes.dex */
    class a implements AnimatedImageCompositor.b {
        a() {
        }

        @Override // com.facebook.imagepipeline.animated.impl.AnimatedImageCompositor.b
        public void a(int i2, Bitmap bitmap) {
        }

        @Override // com.facebook.imagepipeline.animated.impl.AnimatedImageCompositor.b
        @Nullable
        public com.facebook.common.references.a<Bitmap> b(int i2) {
            return b.this.f12290a.h(i2);
        }
    }

    public b(com.facebook.fresco.animation.bitmap.a aVar, com.facebook.imagepipeline.animated.base.a aVar2) {
        a aVar3 = new a();
        this.f12293d = aVar3;
        this.f12290a = aVar;
        this.f12291b = aVar2;
        this.f12292c = new AnimatedImageCompositor(aVar2, aVar3);
    }

    @Override // com.facebook.fresco.animation.bitmap.b
    public boolean a(int i2, Bitmap bitmap) {
        try {
            this.f12292c.f(i2, bitmap);
            return true;
        } catch (IllegalStateException e4) {
            com.facebook.common.logging.a.t(f12289e, e4, "Rendering of frame unsuccessful. Frame number: %d", Integer.valueOf(i2));
            return false;
        }
    }

    @Override // com.facebook.fresco.animation.bitmap.b
    public int e() {
        return this.f12291b.getHeight();
    }

    @Override // com.facebook.fresco.animation.bitmap.b
    public void f(@Nullable Rect rect) {
        com.facebook.imagepipeline.animated.base.a h4 = this.f12291b.h(rect);
        if (h4 != this.f12291b) {
            this.f12291b = h4;
            this.f12292c = new AnimatedImageCompositor(h4, this.f12293d);
        }
    }

    @Override // com.facebook.fresco.animation.bitmap.b
    public int g() {
        return this.f12291b.a();
    }
}
