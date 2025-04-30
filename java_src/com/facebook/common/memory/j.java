package com.facebook.common.memory;

import com.facebook.common.internal.VisibleForTesting;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* compiled from: PooledByteStreams.java */
/* loaded from: classes2.dex */
public class j {

    /* renamed from: c  reason: collision with root package name */
    private static final int f11727c = 16384;

    /* renamed from: a  reason: collision with root package name */
    private final int f11728a;

    /* renamed from: b  reason: collision with root package name */
    private final a f11729b;

    public j(a aVar) {
        this(aVar, 16384);
    }

    public long a(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = this.f11729b.get(this.f11728a);
        long j4 = 0;
        while (true) {
            try {
                int read = inputStream.read(bArr, 0, this.f11728a);
                if (read == -1) {
                    return j4;
                }
                outputStream.write(bArr, 0, read);
                j4 += read;
            } finally {
                this.f11729b.release(bArr);
            }
        }
    }

    public long b(InputStream inputStream, OutputStream outputStream, long j4) throws IOException {
        long j5 = 0;
        com.facebook.common.internal.h.o(j4 > 0);
        byte[] bArr = this.f11729b.get(this.f11728a);
        while (j5 < j4) {
            try {
                int read = inputStream.read(bArr, 0, (int) Math.min(this.f11728a, j4 - j5));
                if (read == -1) {
                    break;
                }
                outputStream.write(bArr, 0, read);
                j5 += read;
            } finally {
                this.f11729b.release(bArr);
            }
        }
        return j5;
    }

    @VisibleForTesting
    public j(a aVar, int i2) {
        com.facebook.common.internal.h.d(i2 > 0);
        this.f11728a = i2;
        this.f11729b = aVar;
    }
}
