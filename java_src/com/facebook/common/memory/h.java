package com.facebook.common.memory;

import com.facebook.common.internal.VisibleForTesting;
import java.io.InputStream;
import javax.annotation.concurrent.NotThreadSafe;
/* compiled from: PooledByteBufferInputStream.java */
@NotThreadSafe
/* loaded from: classes2.dex */
public class h extends InputStream {
    @VisibleForTesting

    /* renamed from: a  reason: collision with root package name */
    final PooledByteBuffer f11724a;
    @VisibleForTesting

    /* renamed from: b  reason: collision with root package name */
    int f11725b;
    @VisibleForTesting

    /* renamed from: c  reason: collision with root package name */
    int f11726c;

    public h(PooledByteBuffer pooledByteBuffer) {
        com.facebook.common.internal.h.d(!pooledByteBuffer.isClosed());
        this.f11724a = (PooledByteBuffer) com.facebook.common.internal.h.i(pooledByteBuffer);
        this.f11725b = 0;
        this.f11726c = 0;
    }

    @Override // java.io.InputStream
    public int available() {
        return this.f11724a.size() - this.f11725b;
    }

    @Override // java.io.InputStream
    public void mark(int i2) {
        this.f11726c = this.f11725b;
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public int read() {
        if (available() <= 0) {
            return -1;
        }
        PooledByteBuffer pooledByteBuffer = this.f11724a;
        int i2 = this.f11725b;
        this.f11725b = i2 + 1;
        return pooledByteBuffer.j(i2) & 255;
    }

    @Override // java.io.InputStream
    public void reset() {
        this.f11725b = this.f11726c;
    }

    @Override // java.io.InputStream
    public long skip(long j4) {
        com.facebook.common.internal.h.d(j4 >= 0);
        int min = Math.min((int) j4, available());
        this.f11725b += min;
        return min;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i2, int i4) {
        if (i2 >= 0 && i4 >= 0 && i2 + i4 <= bArr.length) {
            int available = available();
            if (available <= 0) {
                return -1;
            }
            if (i4 <= 0) {
                return 0;
            }
            int min = Math.min(available, i4);
            this.f11724a.c(this.f11725b, bArr, i2, min);
            this.f11725b += min;
            return min;
        }
        throw new ArrayIndexOutOfBoundsException("length=" + bArr.length + "; regionStart=" + i2 + "; regionLength=" + i4);
    }
}
