package com.facebook.imagepipeline.memory;

import android.graphics.Bitmap;
import javax.annotation.concurrent.GuardedBy;
/* compiled from: BitmapCounter.java */
/* loaded from: classes2.dex */
public class a {
    @GuardedBy("this")

    /* renamed from: a  reason: collision with root package name */
    private int f12800a;
    @GuardedBy("this")

    /* renamed from: b  reason: collision with root package name */
    private long f12801b;

    /* renamed from: c  reason: collision with root package name */
    private final int f12802c;

    /* renamed from: d  reason: collision with root package name */
    private final int f12803d;

    /* renamed from: e  reason: collision with root package name */
    private final com.facebook.common.references.c<Bitmap> f12804e;

    /* compiled from: BitmapCounter.java */
    /* renamed from: com.facebook.imagepipeline.memory.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    class C0080a implements com.facebook.common.references.c<Bitmap> {
        C0080a() {
        }

        @Override // com.facebook.common.references.c
        /* renamed from: a */
        public void release(Bitmap bitmap) {
            try {
                a.this.a(bitmap);
            } finally {
                bitmap.recycle();
            }
        }
    }

    public a(int i2, int i4) {
        com.facebook.common.internal.h.d(i2 > 0);
        com.facebook.common.internal.h.d(i4 > 0);
        this.f12802c = i2;
        this.f12803d = i4;
        this.f12804e = new C0080a();
    }

    public synchronized void a(Bitmap bitmap) {
        int g4 = com.facebook.imageutils.a.g(bitmap);
        com.facebook.common.internal.h.e(this.f12800a > 0, "No bitmaps registered.");
        long j4 = g4;
        com.facebook.common.internal.h.f(j4 <= this.f12801b, "Bitmap size bigger than the total registered size: %d, %d", Integer.valueOf(g4), Long.valueOf(this.f12801b));
        this.f12801b -= j4;
        this.f12800a--;
    }

    public synchronized int b() {
        return this.f12800a;
    }

    public synchronized int c() {
        return this.f12802c;
    }

    public synchronized int d() {
        return this.f12803d;
    }

    public com.facebook.common.references.c<Bitmap> e() {
        return this.f12804e;
    }

    public synchronized long f() {
        return this.f12801b;
    }

    public synchronized boolean g(Bitmap bitmap) {
        int g4 = com.facebook.imageutils.a.g(bitmap);
        int i2 = this.f12800a;
        if (i2 < this.f12802c) {
            long j4 = this.f12801b;
            long j5 = g4;
            if (j4 + j5 <= this.f12803d) {
                this.f12800a = i2 + 1;
                this.f12801b = j4 + j5;
                return true;
            }
        }
        return false;
    }
}
