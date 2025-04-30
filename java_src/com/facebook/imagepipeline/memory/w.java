package com.facebook.imagepipeline.memory;

import com.facebook.common.internal.VisibleForTesting;
import com.facebook.common.memory.PooledByteBuffer;
import java.nio.ByteBuffer;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;
/* compiled from: MemoryPooledByteBuffer.java */
@ThreadSafe
/* loaded from: classes.dex */
public class w implements PooledByteBuffer {

    /* renamed from: a  reason: collision with root package name */
    private final int f12913a;
    @VisibleForTesting
    @GuardedBy("this")

    /* renamed from: b  reason: collision with root package name */
    com.facebook.common.references.a<t> f12914b;

    public w(com.facebook.common.references.a<t> aVar, int i2) {
        com.facebook.common.internal.h.i(aVar);
        com.facebook.common.internal.h.d(i2 >= 0 && i2 <= aVar.i().getSize());
        this.f12914b = aVar.clone();
        this.f12913a = i2;
    }

    synchronized void a() {
        if (isClosed()) {
            throw new PooledByteBuffer.ClosedException();
        }
    }

    @Override // com.facebook.common.memory.PooledByteBuffer
    public synchronized int c(int i2, byte[] bArr, int i4, int i5) {
        a();
        com.facebook.common.internal.h.d(i2 + i5 <= this.f12913a);
        return this.f12914b.i().c(i2, bArr, i4, i5);
    }

    @Override // com.facebook.common.memory.PooledByteBuffer, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        com.facebook.common.references.a.g(this.f12914b);
        this.f12914b = null;
    }

    @Override // com.facebook.common.memory.PooledByteBuffer
    @Nullable
    public synchronized ByteBuffer f() {
        return this.f12914b.i().f();
    }

    @Override // com.facebook.common.memory.PooledByteBuffer
    public synchronized boolean isClosed() {
        return !com.facebook.common.references.a.o(this.f12914b);
    }

    @Override // com.facebook.common.memory.PooledByteBuffer
    public synchronized byte j(int i2) {
        a();
        boolean z3 = true;
        com.facebook.common.internal.h.d(i2 >= 0);
        if (i2 >= this.f12913a) {
            z3 = false;
        }
        com.facebook.common.internal.h.d(z3);
        return this.f12914b.i().j(i2);
    }

    @Override // com.facebook.common.memory.PooledByteBuffer
    public synchronized long l() throws UnsupportedOperationException {
        a();
        return this.f12914b.i().l();
    }

    @Override // com.facebook.common.memory.PooledByteBuffer
    public synchronized int size() {
        a();
        return this.f12913a;
    }
}
