package com.danikula.videocache;

import java.io.ByteArrayInputStream;
import java.util.Arrays;
/* compiled from: ByteArrayCache.java */
/* loaded from: classes2.dex */
public class a implements c {

    /* renamed from: a  reason: collision with root package name */
    private volatile byte[] f11076a;

    /* renamed from: b  reason: collision with root package name */
    private volatile boolean f11077b;

    public a() {
        this(new byte[0]);
    }

    @Override // com.danikula.videocache.c
    public void a(byte[] bArr, int i2) throws ProxyCacheException {
        n.d(this.f11076a);
        n.b(i2 >= 0 && i2 <= bArr.length);
        byte[] copyOf = Arrays.copyOf(this.f11076a, this.f11076a.length + i2);
        System.arraycopy(bArr, 0, copyOf, this.f11076a.length, i2);
        this.f11076a = copyOf;
    }

    @Override // com.danikula.videocache.c
    public long available() throws ProxyCacheException {
        return this.f11076a.length;
    }

    @Override // com.danikula.videocache.c
    public int b(byte[] bArr, long j4, int i2) throws ProxyCacheException {
        if (j4 >= this.f11076a.length) {
            return -1;
        }
        if (j4 <= 2147483647L) {
            return new ByteArrayInputStream(this.f11076a).read(bArr, (int) j4, i2);
        }
        throw new IllegalArgumentException("Too long offset for memory cache " + j4);
    }

    @Override // com.danikula.videocache.c
    public void close() throws ProxyCacheException {
    }

    @Override // com.danikula.videocache.c
    public void complete() {
        this.f11077b = true;
    }

    @Override // com.danikula.videocache.c
    public boolean isCompleted() {
        return this.f11077b;
    }

    public a(byte[] bArr) {
        this.f11076a = (byte[]) n.d(bArr);
    }
}
