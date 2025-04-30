package org.jboss.netty.buffer;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* compiled from: ChannelBufferFactory.java */
/* loaded from: classes5.dex */
public interface f {
    e a(int i2);

    e b(ByteOrder byteOrder, byte[] bArr, int i2, int i4);

    e c(ByteBuffer byteBuffer);

    ByteOrder d();

    e e(byte[] bArr, int i2, int i4);

    e f(ByteOrder byteOrder, int i2);
}
