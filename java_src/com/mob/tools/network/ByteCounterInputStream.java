package com.mob.tools.network;

import com.mob.tools.proguard.PublicMemberKeeper;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes4.dex */
public class ByteCounterInputStream extends InputStream implements PublicMemberKeeper {

    /* renamed from: a  reason: collision with root package name */
    private InputStream f53858a;

    /* renamed from: b  reason: collision with root package name */
    private long f53859b;

    /* renamed from: c  reason: collision with root package name */
    private OnReadListener f53860c;

    public ByteCounterInputStream(InputStream inputStream) {
        this.f53858a = inputStream;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f53858a.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f53858a.close();
    }

    @Override // java.io.InputStream
    public void mark(int i2) {
        this.f53858a.mark(i2);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f53858a.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int read = this.f53858a.read();
        if (read >= 0) {
            long j4 = this.f53859b + 1;
            this.f53859b = j4;
            OnReadListener onReadListener = this.f53860c;
            if (onReadListener != null) {
                onReadListener.onRead(j4);
            }
        }
        return read;
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        this.f53858a.reset();
        this.f53859b = 0L;
    }

    public void setOnInputStreamReadListener(OnReadListener onReadListener) {
        this.f53860c = onReadListener;
    }

    @Override // java.io.InputStream
    public long skip(long j4) throws IOException {
        return this.f53858a.skip(j4);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i2, int i4) throws IOException {
        int read = this.f53858a.read(bArr, i2, i4);
        if (read > 0) {
            long j4 = this.f53859b + read;
            this.f53859b = j4;
            OnReadListener onReadListener = this.f53860c;
            if (onReadListener != null) {
                onReadListener.onRead(j4);
            }
        }
        return read;
    }
}
