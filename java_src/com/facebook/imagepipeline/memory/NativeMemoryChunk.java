package com.facebook.imagepipeline.memory;

import com.facebook.common.internal.DoNotStrip;
import com.facebook.common.internal.VisibleForTesting;
import java.io.Closeable;
import java.nio.ByteBuffer;
import javax.annotation.Nullable;
@DoNotStrip
/* loaded from: classes.dex */
public class NativeMemoryChunk implements t, Closeable {

    /* renamed from: d  reason: collision with root package name */
    private static final String f12796d = "NativeMemoryChunk";

    /* renamed from: a  reason: collision with root package name */
    private final long f12797a;

    /* renamed from: b  reason: collision with root package name */
    private final int f12798b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f12799c;

    static {
        com.facebook.imagepipeline.nativecode.a.a();
    }

    public NativeMemoryChunk(int i2) {
        com.facebook.common.internal.h.d(i2 > 0);
        this.f12798b = i2;
        this.f12797a = nativeAllocate(i2);
        this.f12799c = false;
    }

    private void a(int i2, t tVar, int i4, int i5) {
        if (tVar instanceof NativeMemoryChunk) {
            com.facebook.common.internal.h.o(!isClosed());
            com.facebook.common.internal.h.o(!tVar.isClosed());
            v.b(i2, tVar.getSize(), i4, i5, this.f12798b);
            nativeMemcpy(tVar.l() + i4, this.f12797a + i2, i5);
            return;
        }
        throw new IllegalArgumentException("Cannot copy two incompatible MemoryChunks");
    }

    @DoNotStrip
    private static native long nativeAllocate(int i2);

    @DoNotStrip
    private static native void nativeCopyFromByteArray(long j4, byte[] bArr, int i2, int i4);

    @DoNotStrip
    private static native void nativeCopyToByteArray(long j4, byte[] bArr, int i2, int i4);

    @DoNotStrip
    private static native void nativeFree(long j4);

    @DoNotStrip
    private static native void nativeMemcpy(long j4, long j5, int i2);

    @DoNotStrip
    private static native byte nativeReadByte(long j4);

    @Override // com.facebook.imagepipeline.memory.t
    public synchronized int c(int i2, byte[] bArr, int i4, int i5) {
        int a4;
        com.facebook.common.internal.h.i(bArr);
        com.facebook.common.internal.h.o(!isClosed());
        a4 = v.a(i2, i5, this.f12798b);
        v.b(i2, bArr.length, i4, a4, this.f12798b);
        nativeCopyToByteArray(this.f12797a + i2, bArr, i4, a4);
        return a4;
    }

    @Override // com.facebook.imagepipeline.memory.t, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        if (!this.f12799c) {
            this.f12799c = true;
            nativeFree(this.f12797a);
        }
    }

    @Override // com.facebook.imagepipeline.memory.t
    @Nullable
    public ByteBuffer f() {
        return null;
    }

    protected void finalize() throws Throwable {
        if (isClosed()) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("finalize: Chunk ");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" still active. ");
        try {
            close();
        } finally {
            super.finalize();
        }
    }

    @Override // com.facebook.imagepipeline.memory.t
    public int getSize() {
        return this.f12798b;
    }

    @Override // com.facebook.imagepipeline.memory.t
    public synchronized boolean isClosed() {
        return this.f12799c;
    }

    @Override // com.facebook.imagepipeline.memory.t
    public synchronized byte j(int i2) {
        boolean z3 = true;
        com.facebook.common.internal.h.o(!isClosed());
        com.facebook.common.internal.h.d(i2 >= 0);
        if (i2 >= this.f12798b) {
            z3 = false;
        }
        com.facebook.common.internal.h.d(z3);
        return nativeReadByte(this.f12797a + i2);
    }

    @Override // com.facebook.imagepipeline.memory.t
    public long l() {
        return this.f12797a;
    }

    @Override // com.facebook.imagepipeline.memory.t
    public long m() {
        return this.f12797a;
    }

    @Override // com.facebook.imagepipeline.memory.t
    public synchronized int n(int i2, byte[] bArr, int i4, int i5) {
        int a4;
        com.facebook.common.internal.h.i(bArr);
        com.facebook.common.internal.h.o(!isClosed());
        a4 = v.a(i2, i5, this.f12798b);
        v.b(i2, bArr.length, i4, a4, this.f12798b);
        nativeCopyFromByteArray(this.f12797a + i2, bArr, i4, a4);
        return a4;
    }

    @Override // com.facebook.imagepipeline.memory.t
    public void o(int i2, t tVar, int i4, int i5) {
        com.facebook.common.internal.h.i(tVar);
        if (tVar.m() == m()) {
            StringBuilder sb = new StringBuilder();
            sb.append("Copying from NativeMemoryChunk ");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" to NativeMemoryChunk ");
            sb.append(Integer.toHexString(System.identityHashCode(tVar)));
            sb.append(" which share the same address ");
            sb.append(Long.toHexString(this.f12797a));
            com.facebook.common.internal.h.d(false);
        }
        if (tVar.m() < m()) {
            synchronized (tVar) {
                synchronized (this) {
                    a(i2, tVar, i4, i5);
                }
            }
            return;
        }
        synchronized (this) {
            synchronized (tVar) {
                a(i2, tVar, i4, i5);
            }
        }
    }

    @VisibleForTesting
    public NativeMemoryChunk() {
        this.f12798b = 0;
        this.f12797a = 0L;
        this.f12799c = true;
    }
}
