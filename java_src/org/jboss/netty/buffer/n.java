package org.jboss.netty.buffer;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Objects;
/* compiled from: HeapChannelBufferFactory.java */
/* loaded from: classes5.dex */
public class n extends b {

    /* renamed from: b  reason: collision with root package name */
    private static final n f73396b = new n(ByteOrder.BIG_ENDIAN);

    /* renamed from: c  reason: collision with root package name */
    private static final n f73397c = new n(ByteOrder.LITTLE_ENDIAN);

    public n() {
    }

    public static f g() {
        return f73396b;
    }

    public static f h(ByteOrder byteOrder) {
        if (byteOrder == ByteOrder.BIG_ENDIAN) {
            return f73396b;
        }
        if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
            return f73397c;
        }
        Objects.requireNonNull(byteOrder, "endianness");
        throw new IllegalStateException("Should not reach here");
    }

    @Override // org.jboss.netty.buffer.f
    public e b(ByteOrder byteOrder, byte[] bArr, int i2, int i4) {
        return h.b0(byteOrder, bArr, i2, i4);
    }

    @Override // org.jboss.netty.buffer.f
    public e c(ByteBuffer byteBuffer) {
        if (byteBuffer.hasArray()) {
            return h.Z(byteBuffer);
        }
        e f4 = f(byteBuffer.order(), byteBuffer.remaining());
        int position = byteBuffer.position();
        f4.A0(byteBuffer);
        byteBuffer.position(position);
        return f4;
    }

    @Override // org.jboss.netty.buffer.f
    public e f(ByteOrder byteOrder, int i2) {
        return h.b(byteOrder, i2);
    }

    public n(ByteOrder byteOrder) {
        super(byteOrder);
    }
}
