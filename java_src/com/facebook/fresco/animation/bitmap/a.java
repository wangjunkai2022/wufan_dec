package com.facebook.fresco.animation.bitmap;

import android.graphics.Bitmap;
import javax.annotation.Nullable;
/* compiled from: BitmapFrameCache.java */
/* loaded from: classes.dex */
public interface a {

    /* compiled from: BitmapFrameCache.java */
    /* renamed from: com.facebook.fresco.animation.bitmap.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0071a {
        void a(a aVar, int i2);

        void b(a aVar, int i2);
    }

    void a(int i2, com.facebook.common.references.a<Bitmap> aVar, int i4);

    void b(int i2, com.facebook.common.references.a<Bitmap> aVar, int i4);

    int c();

    void clear();

    @Nullable
    com.facebook.common.references.a<Bitmap> d(int i2);

    @Nullable
    com.facebook.common.references.a<Bitmap> e(int i2, int i4, int i5);

    void f(InterfaceC0071a interfaceC0071a);

    boolean g(int i2);

    @Nullable
    com.facebook.common.references.a<Bitmap> h(int i2);
}
