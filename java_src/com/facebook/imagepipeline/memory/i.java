package com.facebook.imagepipeline.memory;

import java.io.Closeable;
import java.nio.ByteBuffer;
import javax.annotation.Nullable;
/* compiled from: BufferMemoryChunk.java */
/* loaded from: classes.dex */
public class i implements t, Closeable {

    /* renamed from: d  reason: collision with root package name */
    private static final String f12886d = "BufferMemoryChunk";

    /* renamed from: a  reason: collision with root package name */
    private ByteBuffer f12887a;

    /* renamed from: b  reason: collision with root package name */
    private final int f12888b;

    /* renamed from: c  reason: collision with root package name */
    private final long f12889c = System.identityHashCode(this);

    public i(int i2) {
        this.f12887a = ByteBuffer.allocateDirect(i2);
        this.f12888b = i2;
    }

    private void a(int i2, t tVar, int i4, int i5) {
        if (tVar instanceof i) {
            com.facebook.common.internal.h.o(!isClosed());
            com.facebook.common.internal.h.o(!tVar.isClosed());
            v.b(i2, tVar.getSize(), i4, i5, this.f12888b);
            this.f12887a.position(i2);
            tVar.f().position(i4);
            byte[] bArr = new byte[i5];
            this.f12887a.get(bArr, 0, i5);
            tVar.f().put(bArr, 0, i5);
            return;
        }
        throw new IllegalArgumentException("Cannot copy two incompatible MemoryChunks");
    }

    @Override // com.facebook.imagepipeline.memory.t
    public synchronized int c(int i2, byte[] bArr, int i4, int i5) {
        int a4;
        com.facebook.common.internal.h.i(bArr);
        com.facebook.common.internal.h.o(!isClosed());
        a4 = v.a(i2, i5, this.f12888b);
        v.b(i2, bArr.length, i4, a4, this.f12888b);
        this.f12887a.position(i2);
        this.f12887a.get(bArr, i4, a4);
        return a4;
    }

    @Override // com.facebook.imagepipeline.memory.t, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        this.f12887a = null;
    }

    @Override // com.facebook.imagepipeline.memory.t
    @Nullable
    public synchronized ByteBuffer f() {
        return this.f12887a;
    }

    @Override // com.facebook.imagepipeline.memory.t
    public int getSize() {
        return this.f12888b;
    }

    @Override // com.facebook.imagepipeline.memory.t
    public synchronized boolean isClosed() {
        return this.f12887a == null;
    }

    @Override // com.facebook.imagepipeline.memory.t
    public synchronized byte j(int i2) {
        boolean z3 = true;
        com.facebook.common.internal.h.o(!isClosed());
        com.facebook.common.internal.h.d(i2 >= 0);
        if (i2 >= this.f12888b) {
            z3 = false;
        }
        com.facebook.common.internal.h.d(z3);
        return this.f12887a.get(i2);
    }

    @Override // com.facebook.imagepipeline.memory.t
    public long l() {
        throw new UnsupportedOperationException("Cannot get the pointer of a BufferMemoryChunk");
    }

    @Override // com.facebook.imagepipeline.memory.t
    public long m() {
        return this.f12889c;
    }

    @Override // com.facebook.imagepipeline.memory.t
    public synchronized int n(int i2, byte[] bArr, int i4, int i5) {
        int a4;
        com.facebook.common.internal.h.i(bArr);
        com.facebook.common.internal.h.o(!isClosed());
        a4 = v.a(i2, i5, this.f12888b);
        v.b(i2, bArr.length, i4, a4, this.f12888b);
        this.f12887a.position(i2);
        this.f12887a.put(bArr, i4, a4);
        return a4;
    }

    @Override // com.facebook.imagepipeline.memory.t
    public void o(int i2, t tVar, int i4, int i5) {
        com.facebook.common.internal.h.i(tVar);
        if (tVar.m() == m()) {
            StringBuilder sb = new StringBuilder();
            sb.append("Copying from BufferMemoryChunk ");
            sb.append(Long.toHexString(m()));
            sb.append(" to BufferMemoryChunk ");
            sb.append(Long.toHexString(tVar.m()));
            sb.append(" which are the same ");
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
}
