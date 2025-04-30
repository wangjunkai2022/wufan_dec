package com.facebook.common.memory;

import java.io.IOException;
import java.io.InputStream;
import javax.annotation.concurrent.NotThreadSafe;
/* compiled from: PooledByteArrayBufferedInputStream.java */
@NotThreadSafe
/* loaded from: classes2.dex */
public class f extends InputStream {

    /* renamed from: g  reason: collision with root package name */
    private static final String f11717g = "PooledByteInputStream";

    /* renamed from: a  reason: collision with root package name */
    private final InputStream f11718a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f11719b;

    /* renamed from: c  reason: collision with root package name */
    private final com.facebook.common.references.c<byte[]> f11720c;

    /* renamed from: d  reason: collision with root package name */
    private int f11721d = 0;

    /* renamed from: e  reason: collision with root package name */
    private int f11722e = 0;

    /* renamed from: f  reason: collision with root package name */
    private boolean f11723f = false;

    public f(InputStream inputStream, byte[] bArr, com.facebook.common.references.c<byte[]> cVar) {
        this.f11718a = (InputStream) com.facebook.common.internal.h.i(inputStream);
        this.f11719b = (byte[]) com.facebook.common.internal.h.i(bArr);
        this.f11720c = (com.facebook.common.references.c) com.facebook.common.internal.h.i(cVar);
    }

    private boolean a() throws IOException {
        if (this.f11722e < this.f11721d) {
            return true;
        }
        int read = this.f11718a.read(this.f11719b);
        if (read <= 0) {
            return false;
        }
        this.f11721d = read;
        this.f11722e = 0;
        return true;
    }

    private void b() throws IOException {
        if (this.f11723f) {
            throw new IOException("stream already closed");
        }
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        com.facebook.common.internal.h.o(this.f11722e <= this.f11721d);
        b();
        return (this.f11721d - this.f11722e) + this.f11718a.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f11723f) {
            return;
        }
        this.f11723f = true;
        this.f11720c.release(this.f11719b);
        super.close();
    }

    protected void finalize() throws Throwable {
        if (!this.f11723f) {
            com.facebook.common.logging.a.u(f11717g, "Finalized without closing");
            close();
        }
        super.finalize();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        com.facebook.common.internal.h.o(this.f11722e <= this.f11721d);
        b();
        if (a()) {
            byte[] bArr = this.f11719b;
            int i2 = this.f11722e;
            this.f11722e = i2 + 1;
            return bArr[i2] & 255;
        }
        return -1;
    }

    @Override // java.io.InputStream
    public long skip(long j4) throws IOException {
        com.facebook.common.internal.h.o(this.f11722e <= this.f11721d);
        b();
        int i2 = this.f11721d;
        int i4 = this.f11722e;
        long j5 = i2 - i4;
        if (j5 >= j4) {
            this.f11722e = (int) (i4 + j4);
            return j4;
        }
        this.f11722e = i2;
        return j5 + this.f11718a.skip(j4 - j5);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i2, int i4) throws IOException {
        com.facebook.common.internal.h.o(this.f11722e <= this.f11721d);
        b();
        if (a()) {
            int min = Math.min(this.f11721d - this.f11722e, i4);
            System.arraycopy(this.f11719b, this.f11722e, bArr, i2, min);
            this.f11722e += min;
            return min;
        }
        return -1;
    }
}
