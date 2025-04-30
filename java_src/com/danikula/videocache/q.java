package com.danikula.videocache;
/* compiled from: Source.java */
/* loaded from: classes2.dex */
public interface q {
    void a(long j4) throws ProxyCacheException;

    void close() throws ProxyCacheException;

    long length() throws ProxyCacheException;

    int read(byte[] bArr) throws ProxyCacheException;
}
