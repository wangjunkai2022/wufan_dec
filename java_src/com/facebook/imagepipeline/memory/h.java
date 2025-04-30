package com.facebook.imagepipeline.memory;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;
/* compiled from: BucketsBitmapPool.java */
@ThreadSafe
@TargetApi(21)
/* loaded from: classes.dex */
public class h extends BasePool<Bitmap> implements d {
    public h(com.facebook.common.memory.c cVar, e0 e0Var, f0 f0Var) {
        super(cVar, e0Var, f0Var);
        o();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    /* renamed from: A */
    public void f(Bitmap bitmap) {
        com.facebook.common.internal.h.i(bitmap);
        bitmap.recycle();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    /* renamed from: B */
    public int j(Bitmap bitmap) {
        com.facebook.common.internal.h.i(bitmap);
        return bitmap.getAllocationByteCount();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    @Nullable
    /* renamed from: C */
    public Bitmap m(f<Bitmap> fVar) {
        Bitmap bitmap = (Bitmap) super.m(fVar);
        if (bitmap != null) {
            bitmap.eraseColor(0);
        }
        return bitmap;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    /* renamed from: D */
    public boolean q(Bitmap bitmap) {
        com.facebook.common.internal.h.i(bitmap);
        return !bitmap.isRecycled() && bitmap.isMutable();
    }

    @Override // com.facebook.imagepipeline.memory.BasePool
    protected int i(int i2) {
        return i2;
    }

    @Override // com.facebook.imagepipeline.memory.BasePool
    protected int k(int i2) {
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    /* renamed from: z */
    public Bitmap a(int i2) {
        double d4 = i2;
        Double.isNaN(d4);
        return Bitmap.createBitmap(1, (int) Math.ceil(d4 / 2.0d), Bitmap.Config.RGB_565);
    }
}
