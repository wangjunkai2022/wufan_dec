package com.facebook.imagepipeline.animated.base;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import javax.annotation.Nullable;
/* compiled from: AnimatedDrawableBackend.java */
/* loaded from: classes.dex */
public interface a {
    int a();

    int b();

    int c();

    int d();

    void e();

    AnimatedDrawableFrameInfo f(int i2);

    void g(int i2, Canvas canvas);

    int getHeight();

    a h(Rect rect);

    boolean i(int i2);

    int j(int i2);

    @Nullable
    com.facebook.common.references.a<Bitmap> k(int i2);

    int l(int i2);

    int m();

    int n(int i2);

    int o();

    int p();

    int q();

    f r();
}
