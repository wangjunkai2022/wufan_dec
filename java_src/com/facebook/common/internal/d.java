package com.facebook.common.internal;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
/* compiled from: CountingOutputStream.java */
/* loaded from: classes2.dex */
public class d extends FilterOutputStream {

    /* renamed from: a  reason: collision with root package name */
    private long f11691a;

    public d(OutputStream outputStream) {
        super(outputStream);
        this.f11691a = 0L;
    }

    public long a() {
        return this.f11691a;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        ((FilterOutputStream) this).out.close();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i2, int i4) throws IOException {
        ((FilterOutputStream) this).out.write(bArr, i2, i4);
        this.f11691a += i4;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i2) throws IOException {
        ((FilterOutputStream) this).out.write(i2);
        this.f11691a++;
    }
}
