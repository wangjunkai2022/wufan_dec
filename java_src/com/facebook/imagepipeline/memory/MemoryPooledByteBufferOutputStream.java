package com.facebook.imagepipeline.memory;

import com.facebook.common.internal.VisibleForTesting;
import java.io.IOException;
import javax.annotation.concurrent.NotThreadSafe;
@NotThreadSafe
/* loaded from: classes2.dex */
public class MemoryPooledByteBufferOutputStream extends com.facebook.common.memory.i {

    /* renamed from: a  reason: collision with root package name */
    private final u f12793a;

    /* renamed from: b  reason: collision with root package name */
    private com.facebook.common.references.a<t> f12794b;

    /* renamed from: c  reason: collision with root package name */
    private int f12795c;

    /* loaded from: classes2.dex */
    public static class InvalidStreamException extends RuntimeException {
        public InvalidStreamException() {
            super("OutputStream no longer valid");
        }
    }

    public MemoryPooledByteBufferOutputStream(u uVar) {
        this(uVar, uVar.C());
    }

    private void b() {
        if (!com.facebook.common.references.a.o(this.f12794b)) {
            throw new InvalidStreamException();
        }
    }

    @Override // com.facebook.common.memory.i, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        com.facebook.common.references.a.g(this.f12794b);
        this.f12794b = null;
        this.f12795c = -1;
        super.close();
    }

    @VisibleForTesting
    void d(int i2) {
        b();
        if (i2 <= this.f12794b.i().getSize()) {
            return;
        }
        t tVar = this.f12793a.get(i2);
        this.f12794b.i().o(0, tVar, 0, this.f12795c);
        this.f12794b.close();
        this.f12794b = com.facebook.common.references.a.q(tVar, this.f12793a);
    }

    @Override // com.facebook.common.memory.i
    /* renamed from: e */
    public w a() {
        b();
        return new w(this.f12794b, this.f12795c);
    }

    @Override // com.facebook.common.memory.i
    public int size() {
        return this.f12795c;
    }

    @Override // java.io.OutputStream
    public void write(int i2) throws IOException {
        write(new byte[]{(byte) i2});
    }

    public MemoryPooledByteBufferOutputStream(u uVar, int i2) {
        com.facebook.common.internal.h.d(i2 > 0);
        u uVar2 = (u) com.facebook.common.internal.h.i(uVar);
        this.f12793a = uVar2;
        this.f12795c = 0;
        this.f12794b = com.facebook.common.references.a.q(uVar2.get(i2), uVar2);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i2, int i4) throws IOException {
        if (i2 >= 0 && i4 >= 0 && i2 + i4 <= bArr.length) {
            b();
            d(this.f12795c + i4);
            this.f12794b.i().n(this.f12795c, bArr, i2, i4);
            this.f12795c += i4;
            return;
        }
        throw new ArrayIndexOutOfBoundsException("length=" + bArr.length + "; regionStart=" + i2 + "; regionLength=" + i4);
    }
}
