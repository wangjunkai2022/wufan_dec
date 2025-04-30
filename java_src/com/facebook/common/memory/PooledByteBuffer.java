package com.facebook.common.memory;

import java.io.Closeable;
import java.nio.ByteBuffer;
import javax.annotation.Nullable;
/* loaded from: classes.dex */
public interface PooledByteBuffer extends Closeable {

    /* loaded from: classes2.dex */
    public static class ClosedException extends RuntimeException {
        public ClosedException() {
            super("Invalid bytebuf. Already closed");
        }
    }

    int c(int i2, byte[] bArr, int i4, int i5);

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    @Nullable
    ByteBuffer f();

    boolean isClosed();

    byte j(int i2);

    long l();

    int size();
}
