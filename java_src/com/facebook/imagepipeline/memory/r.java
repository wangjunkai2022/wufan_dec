package com.facebook.imagepipeline.memory;

import android.graphics.Bitmap;
import androidx.annotation.Nullable;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.common.memory.MemoryTrimType;
/* compiled from: LruBitmapPool.java */
/* loaded from: classes2.dex */
public class r implements d {

    /* renamed from: a  reason: collision with root package name */
    protected final b0<Bitmap> f12905a = new e();

    /* renamed from: b  reason: collision with root package name */
    private final int f12906b;

    /* renamed from: c  reason: collision with root package name */
    private int f12907c;

    /* renamed from: d  reason: collision with root package name */
    private final f0 f12908d;

    /* renamed from: e  reason: collision with root package name */
    private int f12909e;

    public r(int i2, int i4, f0 f0Var, @Nullable com.facebook.common.memory.c cVar) {
        this.f12906b = i2;
        this.f12907c = i4;
        this.f12908d = f0Var;
        if (cVar != null) {
            cVar.a(this);
        }
    }

    @VisibleForTesting
    private Bitmap a(int i2) {
        this.f12908d.d(i2);
        return Bitmap.createBitmap(1, i2, Bitmap.Config.ALPHA_8);
    }

    private synchronized void e(int i2) {
        Bitmap pop;
        while (this.f12909e > i2 && (pop = this.f12905a.pop()) != null) {
            int a4 = this.f12905a.a(pop);
            this.f12909e -= a4;
            this.f12908d.b(a4);
        }
    }

    @Override // com.facebook.common.memory.e
    /* renamed from: b */
    public synchronized Bitmap get(int i2) {
        int i4 = this.f12909e;
        int i5 = this.f12906b;
        if (i4 > i5) {
            e(i5);
        }
        Bitmap bitmap = this.f12905a.get(i2);
        if (bitmap != null) {
            int a4 = this.f12905a.a(bitmap);
            this.f12909e -= a4;
            this.f12908d.e(a4);
            return bitmap;
        }
        return a(i2);
    }

    @Override // com.facebook.common.memory.e, com.facebook.common.references.c
    /* renamed from: c */
    public void release(Bitmap bitmap) {
        int a4 = this.f12905a.a(bitmap);
        if (a4 <= this.f12907c) {
            this.f12908d.c(a4);
            this.f12905a.put(bitmap);
            synchronized (this) {
                this.f12909e += a4;
            }
        }
    }

    @Override // com.facebook.common.memory.b
    public void d(MemoryTrimType memoryTrimType) {
        double d4 = this.f12906b;
        Double.isNaN(d4);
        e((int) (d4 * (1.0d - memoryTrimType.getSuggestedTrimRatio())));
    }
}
