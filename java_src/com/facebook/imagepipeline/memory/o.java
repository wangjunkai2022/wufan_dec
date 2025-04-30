package com.facebook.imagepipeline.memory;

import android.graphics.Bitmap;
import com.facebook.common.memory.MemoryTrimType;
/* compiled from: DummyBitmapPool.java */
/* loaded from: classes2.dex */
public class o implements d {
    @Override // com.facebook.common.memory.e
    /* renamed from: a */
    public Bitmap get(int i2) {
        double d4 = i2;
        Double.isNaN(d4);
        return Bitmap.createBitmap(1, (int) Math.ceil(d4 / 2.0d), Bitmap.Config.RGB_565);
    }

    @Override // com.facebook.common.memory.e, com.facebook.common.references.c
    /* renamed from: b */
    public void release(Bitmap bitmap) {
        bitmap.recycle();
    }

    @Override // com.facebook.common.memory.b
    public void d(MemoryTrimType memoryTrimType) {
    }
}
