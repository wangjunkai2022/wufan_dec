package com.facebook.imagepipeline.postprocessors;

import android.graphics.Bitmap;
import com.facebook.cache.common.i;
import com.facebook.common.internal.h;
import com.facebook.imagepipeline.nativecode.NativeBlurFilter;
import javax.annotation.Nullable;
/* compiled from: IterativeBoxBlurPostProcessor.java */
/* loaded from: classes.dex */
public class b extends com.facebook.imagepipeline.request.a {

    /* renamed from: e  reason: collision with root package name */
    private static final int f12946e = 3;

    /* renamed from: b  reason: collision with root package name */
    private final int f12947b;

    /* renamed from: c  reason: collision with root package name */
    private final int f12948c;

    /* renamed from: d  reason: collision with root package name */
    private com.facebook.cache.common.c f12949d;

    public b(int i2) {
        this(3, i2);
    }

    @Override // com.facebook.imagepipeline.request.a, com.facebook.imagepipeline.request.d
    @Nullable
    public com.facebook.cache.common.c a() {
        if (this.f12949d == null) {
            this.f12949d = new i(String.format(null, "i%dr%d", Integer.valueOf(this.f12947b), Integer.valueOf(this.f12948c)));
        }
        return this.f12949d;
    }

    @Override // com.facebook.imagepipeline.request.a
    public void e(Bitmap bitmap) {
        NativeBlurFilter.a(bitmap, this.f12947b, this.f12948c);
    }

    public b(int i2, int i4) {
        h.d(i2 > 0);
        h.d(i4 > 0);
        this.f12947b = i2;
        this.f12948c = i4;
    }
}
