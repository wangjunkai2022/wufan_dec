package com.facebook.imagepipeline.memory;

import java.nio.ByteBuffer;
import javax.annotation.Nullable;
/* compiled from: MemoryChunk.java */
/* loaded from: classes.dex */
public interface t {
    int c(int i2, byte[] bArr, int i4, int i5);

    void close();

    @Nullable
    ByteBuffer f();

    int getSize();

    boolean isClosed();

    byte j(int i2);

    long l() throws UnsupportedOperationException;

    long m();

    int n(int i2, byte[] bArr, int i4, int i5);

    void o(int i2, t tVar, int i4, int i5);
}
