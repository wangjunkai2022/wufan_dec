package com.facebook.imagepipeline.memory;

import android.graphics.Bitmap;
import androidx.annotation.Nullable;
/* compiled from: BitmapPoolBackend.java */
/* loaded from: classes2.dex */
public class e extends s<Bitmap> {

    /* renamed from: c  reason: collision with root package name */
    private static final String f12850c = "BitmapPoolBackend";

    @Override // com.facebook.imagepipeline.memory.s, com.facebook.imagepipeline.memory.b0
    @Nullable
    /* renamed from: d */
    public Bitmap get(int i2) {
        Bitmap bitmap = (Bitmap) super.get(i2);
        if (bitmap == null || !f(bitmap)) {
            return null;
        }
        bitmap.eraseColor(0);
        return bitmap;
    }

    @Override // com.facebook.imagepipeline.memory.b0
    /* renamed from: e */
    public int a(Bitmap bitmap) {
        return com.facebook.imageutils.a.g(bitmap);
    }

    protected boolean f(@Nullable Bitmap bitmap) {
        if (bitmap == null) {
            return false;
        }
        if (bitmap.isRecycled()) {
            com.facebook.common.logging.a.y0(f12850c, "Cannot reuse a recycled bitmap: %s", bitmap);
            return false;
        } else if (bitmap.isMutable()) {
            return true;
        } else {
            com.facebook.common.logging.a.y0(f12850c, "Cannot reuse an immutable bitmap: %s", bitmap);
            return false;
        }
    }

    @Override // com.facebook.imagepipeline.memory.s, com.facebook.imagepipeline.memory.b0
    /* renamed from: g */
    public void put(Bitmap bitmap) {
        if (f(bitmap)) {
            super.put(bitmap);
        }
    }
}
