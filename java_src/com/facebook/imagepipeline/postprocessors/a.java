package com.facebook.imagepipeline.postprocessors;

import android.content.Context;
import android.graphics.Bitmap;
import com.facebook.cache.common.i;
import com.facebook.common.internal.h;
import javax.annotation.Nullable;
/* compiled from: BlurPostProcessor.java */
/* loaded from: classes.dex */
public class a extends com.facebook.imagepipeline.request.a {

    /* renamed from: f  reason: collision with root package name */
    private static final boolean f12940f = q0.c.b();

    /* renamed from: g  reason: collision with root package name */
    private static final int f12941g = 3;

    /* renamed from: b  reason: collision with root package name */
    private final int f12942b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f12943c;

    /* renamed from: d  reason: collision with root package name */
    private final int f12944d;

    /* renamed from: e  reason: collision with root package name */
    private com.facebook.cache.common.c f12945e;

    public a(int i2, Context context, int i4) {
        h.d(i2 > 0 && i2 <= 25);
        h.d(i4 > 0);
        h.i(context);
        this.f12942b = i4;
        this.f12944d = i2;
        this.f12943c = context;
    }

    @Override // com.facebook.imagepipeline.request.a, com.facebook.imagepipeline.request.d
    @Nullable
    public com.facebook.cache.common.c a() {
        if (this.f12945e == null) {
            this.f12945e = new i(f12940f ? String.format(null, "IntrinsicBlur;%d", Integer.valueOf(this.f12944d)) : String.format(null, "IterativeBoxBlur;%d;%d", Integer.valueOf(this.f12942b), Integer.valueOf(this.f12944d)));
        }
        return this.f12945e;
    }

    @Override // com.facebook.imagepipeline.request.a
    public void e(Bitmap bitmap) {
        q0.b.b(bitmap, this.f12942b, this.f12944d);
    }

    @Override // com.facebook.imagepipeline.request.a
    public void f(Bitmap bitmap, Bitmap bitmap2) {
        if (f12940f) {
            q0.c.a(bitmap, bitmap2, this.f12943c, this.f12944d);
        } else {
            super.f(bitmap, bitmap2);
        }
    }

    public a(int i2, Context context) {
        this(i2, context, 3);
    }
}
