package com.facebook.imagepipeline.platform;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.facebook.common.internal.h;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.imagepipeline.memory.p;
import com.facebook.imagepipeline.nativecode.DalvikPurgeableDecoder;
import javax.annotation.concurrent.ThreadSafe;
/* compiled from: KitKatPurgeableDecoder.java */
@ThreadSafe
@TargetApi(19)
/* loaded from: classes2.dex */
public class d extends DalvikPurgeableDecoder {

    /* renamed from: c  reason: collision with root package name */
    private final p f12939c;

    public d(p pVar) {
        this.f12939c = pVar;
    }

    private static void j(byte[] bArr, int i2) {
        bArr[i2] = -1;
        bArr[i2 + 1] = -39;
    }

    @Override // com.facebook.imagepipeline.nativecode.DalvikPurgeableDecoder
    protected Bitmap e(com.facebook.common.references.a<PooledByteBuffer> aVar, BitmapFactory.Options options) {
        PooledByteBuffer i2 = aVar.i();
        int size = i2.size();
        com.facebook.common.references.a<byte[]> a4 = this.f12939c.a(size);
        try {
            byte[] i4 = a4.i();
            i2.c(0, i4, 0, size);
            return (Bitmap) h.j(BitmapFactory.decodeByteArray(i4, 0, size, options), "BitmapFactory returned null");
        } finally {
            com.facebook.common.references.a.g(a4);
        }
    }

    @Override // com.facebook.imagepipeline.nativecode.DalvikPurgeableDecoder
    protected Bitmap f(com.facebook.common.references.a<PooledByteBuffer> aVar, int i2, BitmapFactory.Options options) {
        byte[] bArr = DalvikPurgeableDecoder.g(aVar, i2) ? null : DalvikPurgeableDecoder.f12918b;
        PooledByteBuffer i4 = aVar.i();
        h.d(i2 <= i4.size());
        int i5 = i2 + 2;
        com.facebook.common.references.a<byte[]> a4 = this.f12939c.a(i5);
        try {
            byte[] i6 = a4.i();
            i4.c(0, i6, 0, i2);
            if (bArr != null) {
                j(i6, i2);
                i2 = i5;
            }
            return (Bitmap) h.j(BitmapFactory.decodeByteArray(i6, 0, i2, options), "BitmapFactory returned null");
        } finally {
            com.facebook.common.references.a.g(a4);
        }
    }
}
