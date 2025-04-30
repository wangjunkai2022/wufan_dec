package com.facebook.imagepipeline.postprocessors;

import android.graphics.Bitmap;
import com.facebook.cache.common.i;
import com.facebook.imagepipeline.nativecode.NativeRoundingFilter;
import javax.annotation.Nullable;
/* compiled from: RoundAsCirclePostprocessor.java */
/* loaded from: classes.dex */
public class c extends com.facebook.imagepipeline.request.a {

    /* renamed from: d  reason: collision with root package name */
    private static final boolean f12950d = true;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private com.facebook.cache.common.c f12951b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f12952c;

    public c() {
        this(true);
    }

    @Override // com.facebook.imagepipeline.request.a, com.facebook.imagepipeline.request.d
    @Nullable
    public com.facebook.cache.common.c a() {
        if (this.f12951b == null) {
            if (this.f12952c) {
                this.f12951b = new i("RoundAsCirclePostprocessor#AntiAliased");
            } else {
                this.f12951b = new i("RoundAsCirclePostprocessor");
            }
        }
        return this.f12951b;
    }

    @Override // com.facebook.imagepipeline.request.a
    public void e(Bitmap bitmap) {
        NativeRoundingFilter.b(bitmap, this.f12952c);
    }

    public c(boolean z3) {
        this.f12952c = z3;
    }
}
