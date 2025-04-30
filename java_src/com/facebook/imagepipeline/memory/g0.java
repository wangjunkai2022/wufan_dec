package com.facebook.imagepipeline.memory;

import com.facebook.common.internal.VisibleForTesting;
import com.facebook.common.memory.MemoryTrimType;
import java.util.concurrent.Semaphore;
import javax.annotation.concurrent.ThreadSafe;
/* compiled from: SharedByteArray.java */
@ThreadSafe
/* loaded from: classes2.dex */
public class g0 implements com.facebook.common.memory.b {
    @VisibleForTesting

    /* renamed from: a  reason: collision with root package name */
    final int f12880a;
    @VisibleForTesting

    /* renamed from: b  reason: collision with root package name */
    final int f12881b;
    @VisibleForTesting

    /* renamed from: c  reason: collision with root package name */
    final com.facebook.common.references.b<byte[]> f12882c;
    @VisibleForTesting

    /* renamed from: d  reason: collision with root package name */
    final Semaphore f12883d;

    /* renamed from: e  reason: collision with root package name */
    private final com.facebook.common.references.c<byte[]> f12884e;

    /* compiled from: SharedByteArray.java */
    /* loaded from: classes2.dex */
    class a implements com.facebook.common.references.c<byte[]> {
        a() {
        }

        @Override // com.facebook.common.references.c
        /* renamed from: a */
        public void release(byte[] bArr) {
            g0.this.f12883d.release();
        }
    }

    public g0(com.facebook.common.memory.c cVar, e0 e0Var) {
        com.facebook.common.internal.h.i(cVar);
        com.facebook.common.internal.h.d(e0Var.f12855d > 0);
        com.facebook.common.internal.h.d(e0Var.f12856e >= e0Var.f12855d);
        this.f12881b = e0Var.f12856e;
        this.f12880a = e0Var.f12855d;
        this.f12882c = new com.facebook.common.references.b<>();
        this.f12883d = new Semaphore(1);
        this.f12884e = new a();
        cVar.a(this);
    }

    private synchronized byte[] a(int i2) {
        byte[] bArr;
        this.f12882c.a();
        bArr = new byte[i2];
        this.f12882c.c(bArr);
        return bArr;
    }

    private byte[] e(int i2) {
        int c4 = c(i2);
        byte[] b4 = this.f12882c.b();
        return (b4 == null || b4.length < c4) ? a(c4) : b4;
    }

    public com.facebook.common.references.a<byte[]> b(int i2) {
        com.facebook.common.internal.h.e(i2 > 0, "Size must be greater than zero");
        com.facebook.common.internal.h.e(i2 <= this.f12881b, "Requested size is too big");
        this.f12883d.acquireUninterruptibly();
        try {
            return com.facebook.common.references.a.q(e(i2), this.f12884e);
        } catch (Throwable th) {
            this.f12883d.release();
            throw com.facebook.common.internal.m.d(th);
        }
    }

    @VisibleForTesting
    int c(int i2) {
        return Integer.highestOneBit(Math.max(i2, this.f12880a) - 1) * 2;
    }

    @Override // com.facebook.common.memory.b
    public void d(MemoryTrimType memoryTrimType) {
        if (this.f12883d.tryAcquire()) {
            try {
                this.f12882c.a();
            } finally {
                this.f12883d.release();
            }
        }
    }
}
