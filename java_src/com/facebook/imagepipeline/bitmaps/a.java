package com.facebook.imagepipeline.bitmaps;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import javax.annotation.concurrent.ThreadSafe;
/* compiled from: ArtBitmapFactory.java */
@ThreadSafe
@TargetApi(21)
/* loaded from: classes2.dex */
public class a extends f {

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.imagepipeline.memory.d f12448a;

    public a(com.facebook.imagepipeline.memory.d dVar) {
        this.f12448a = dVar;
    }

    @Override // com.facebook.imagepipeline.bitmaps.f
    public com.facebook.common.references.a<Bitmap> z(int i2, int i4, Bitmap.Config config) {
        Bitmap bitmap = this.f12448a.get(com.facebook.imageutils.a.f(i2, i4, config));
        com.facebook.common.internal.h.d(bitmap.getAllocationByteCount() >= (i2 * i4) * com.facebook.imageutils.a.e(config));
        bitmap.reconfigure(i2, i4, config);
        return com.facebook.common.references.a.q(bitmap, this.f12448a);
    }
}
