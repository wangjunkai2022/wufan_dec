package com.danikula.videocache;

import java.io.ByteArrayInputStream;
/* compiled from: ByteArraySource.java */
/* loaded from: classes2.dex */
public class b implements q {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f11078a;

    /* renamed from: b  reason: collision with root package name */
    private ByteArrayInputStream f11079b;

    public b(byte[] bArr) {
        this.f11078a = bArr;
    }

    @Override // com.danikula.videocache.q
    public void a(long j4) throws ProxyCacheException {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(this.f11078a);
        this.f11079b = byteArrayInputStream;
        byteArrayInputStream.skip(j4);
    }

    @Override // com.danikula.videocache.q
    public void close() throws ProxyCacheException {
    }

    @Override // com.danikula.videocache.q
    public long length() throws ProxyCacheException {
        return this.f11078a.length;
    }

    @Override // com.danikula.videocache.q
    public int read(byte[] bArr) throws ProxyCacheException {
        return this.f11079b.read(bArr, 0, bArr.length);
    }
}
