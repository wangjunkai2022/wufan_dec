package com.danikula.videocache;
/* compiled from: Cache.java */
/* loaded from: classes2.dex */
public interface c {
    void a(byte[] bArr, int i2) throws ProxyCacheException;

    long available() throws ProxyCacheException;

    int b(byte[] bArr, long j4, int i2) throws ProxyCacheException;

    void close() throws ProxyCacheException;

    void complete() throws ProxyCacheException;

    boolean isCompleted();
}
