package com.facebook.common.memory;

import com.facebook.common.internal.m;
import java.io.IOException;
import java.io.OutputStream;
/* compiled from: PooledByteBufferOutputStream.java */
/* loaded from: classes2.dex */
public abstract class i extends OutputStream {
    public abstract PooledByteBuffer a();

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            super.close();
        } catch (IOException e4) {
            m.d(e4);
        }
    }

    public abstract int size();
}
