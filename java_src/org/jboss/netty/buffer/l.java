package org.jboss.netty.buffer;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;
import java.util.Objects;
/* compiled from: DynamicChannelBuffer.java */
/* loaded from: classes5.dex */
public class l extends a {

    /* renamed from: e  reason: collision with root package name */
    private final f f73392e;

    /* renamed from: f  reason: collision with root package name */
    private final ByteOrder f73393f;

    /* renamed from: g  reason: collision with root package name */
    private e f73394g;

    public l(int i2) {
        this(ByteOrder.BIG_ENDIAN, i2);
    }

    @Override // org.jboss.netty.buffer.a, org.jboss.netty.buffer.e
    public void A0(ByteBuffer byteBuffer) {
        C0(byteBuffer.remaining());
        super.A0(byteBuffer);
    }

    @Override // org.jboss.netty.buffer.a, org.jboss.netty.buffer.e
    public void C0(int i2) {
        if (i2 <= writableBytes()) {
            return;
        }
        int capacity = capacity() == 0 ? 1 : capacity();
        int writerIndex = writerIndex() + i2;
        while (capacity < writerIndex) {
            capacity <<= 1;
            if (capacity == 0) {
                throw new IllegalStateException("Maximum size of 2gb exceeded");
            }
        }
        e f4 = factory().f(order(), capacity);
        f4.L(this.f73394g, 0, writerIndex());
        this.f73394g = f4;
    }

    @Override // org.jboss.netty.buffer.e
    public void E(int i2, OutputStream outputStream, int i4) throws IOException {
        this.f73394g.E(i2, outputStream, i4);
    }

    @Override // org.jboss.netty.buffer.e
    public void G0(int i2, ByteBuffer byteBuffer) {
        this.f73394g.G0(i2, byteBuffer);
    }

    @Override // org.jboss.netty.buffer.a, org.jboss.netty.buffer.e
    public void L(e eVar, int i2, int i4) {
        C0(i4);
        super.L(eVar, i2, i4);
    }

    @Override // org.jboss.netty.buffer.e
    public e M(int i2, int i4) {
        l lVar = new l(order(), Math.max(i4, 64), factory());
        lVar.f73394g = this.f73394g.M(i2, i4);
        lVar.r0(0, i4);
        return lVar;
    }

    @Override // org.jboss.netty.buffer.e
    public ByteBuffer R(int i2, int i4) {
        return this.f73394g.R(i2, i4);
    }

    @Override // org.jboss.netty.buffer.e
    public void T(int i2, int i4) {
        this.f73394g.T(i2, i4);
    }

    @Override // org.jboss.netty.buffer.e
    public void V(int i2, byte[] bArr, int i4, int i5) {
        this.f73394g.V(i2, bArr, i4, i5);
    }

    @Override // org.jboss.netty.buffer.e
    public void X(int i2, int i4) {
        this.f73394g.X(i2, i4);
    }

    @Override // org.jboss.netty.buffer.a, org.jboss.netty.buffer.e
    public void Z(byte[] bArr, int i2, int i4) {
        C0(i4);
        super.Z(bArr, i2, i4);
    }

    @Override // org.jboss.netty.buffer.e
    public e a(int i2, int i4) {
        if (i2 == 0) {
            if (i4 == 0) {
                return h.f73374c;
            }
            return new r(this, i4);
        } else if (i4 == 0) {
            return h.f73374c;
        } else {
            return new q(this, i2, i4);
        }
    }

    @Override // org.jboss.netty.buffer.e
    public byte[] array() {
        return this.f73394g.array();
    }

    @Override // org.jboss.netty.buffer.e
    public int arrayOffset() {
        return this.f73394g.arrayOffset();
    }

    @Override // org.jboss.netty.buffer.e
    public int capacity() {
        return this.f73394g.capacity();
    }

    @Override // org.jboss.netty.buffer.e
    public e duplicate() {
        return new k(this);
    }

    @Override // org.jboss.netty.buffer.e
    public f factory() {
        return this.f73392e;
    }

    @Override // org.jboss.netty.buffer.e
    public byte getByte(int i2) {
        return this.f73394g.getByte(i2);
    }

    @Override // org.jboss.netty.buffer.e
    public int getBytes(int i2, GatheringByteChannel gatheringByteChannel, int i4) throws IOException {
        return this.f73394g.getBytes(i2, gatheringByteChannel, i4);
    }

    @Override // org.jboss.netty.buffer.e
    public int getInt(int i2) {
        return this.f73394g.getInt(i2);
    }

    @Override // org.jboss.netty.buffer.e
    public long getLong(int i2) {
        return this.f73394g.getLong(i2);
    }

    @Override // org.jboss.netty.buffer.e
    public short getShort(int i2) {
        return this.f73394g.getShort(i2);
    }

    @Override // org.jboss.netty.buffer.e
    public int getUnsignedMedium(int i2) {
        return this.f73394g.getUnsignedMedium(i2);
    }

    @Override // org.jboss.netty.buffer.a, org.jboss.netty.buffer.e
    public void h0(int i2) {
        C0(i2);
        super.h0(i2);
    }

    @Override // org.jboss.netty.buffer.e
    public boolean hasArray() {
        return this.f73394g.hasArray();
    }

    @Override // org.jboss.netty.buffer.e
    public boolean isDirect() {
        return this.f73394g.isDirect();
    }

    @Override // org.jboss.netty.buffer.e
    public void l0(int i2, e eVar, int i4, int i5) {
        this.f73394g.l0(i2, eVar, i4, i5);
    }

    @Override // org.jboss.netty.buffer.a, org.jboss.netty.buffer.e
    public void o0(int i2) {
        C0(3);
        super.o0(i2);
    }

    @Override // org.jboss.netty.buffer.e
    public ByteOrder order() {
        return this.f73393f;
    }

    @Override // org.jboss.netty.buffer.e
    public void p(int i2, byte[] bArr, int i4, int i5) {
        this.f73394g.p(i2, bArr, i4, i5);
    }

    @Override // org.jboss.netty.buffer.e
    public void q0(int i2, int i4) {
        this.f73394g.q0(i2, i4);
    }

    @Override // org.jboss.netty.buffer.e
    public int setBytes(int i2, InputStream inputStream, int i4) throws IOException {
        return this.f73394g.setBytes(i2, inputStream, i4);
    }

    @Override // org.jboss.netty.buffer.e
    public void setInt(int i2, int i4) {
        this.f73394g.setInt(i2, i4);
    }

    @Override // org.jboss.netty.buffer.e
    public void setLong(int i2, long j4) {
        this.f73394g.setLong(i2, j4);
    }

    @Override // org.jboss.netty.buffer.e
    public void w(int i2, e eVar, int i4, int i5) {
        this.f73394g.w(i2, eVar, i4, i5);
    }

    @Override // org.jboss.netty.buffer.e
    public void w0(int i2, ByteBuffer byteBuffer) {
        this.f73394g.w0(i2, byteBuffer);
    }

    @Override // org.jboss.netty.buffer.a, org.jboss.netty.buffer.e
    public void writeByte(int i2) {
        C0(1);
        super.writeByte(i2);
    }

    @Override // org.jboss.netty.buffer.a, org.jboss.netty.buffer.e
    public int writeBytes(InputStream inputStream, int i2) throws IOException {
        C0(i2);
        return super.writeBytes(inputStream, i2);
    }

    @Override // org.jboss.netty.buffer.a, org.jboss.netty.buffer.e
    public void writeInt(int i2) {
        C0(4);
        super.writeInt(i2);
    }

    @Override // org.jboss.netty.buffer.a, org.jboss.netty.buffer.e
    public void writeLong(long j4) {
        C0(8);
        super.writeLong(j4);
    }

    @Override // org.jboss.netty.buffer.a, org.jboss.netty.buffer.e
    public void writeShort(int i2) {
        C0(2);
        super.writeShort(i2);
    }

    public l(ByteOrder byteOrder, int i2) {
        this(byteOrder, i2, n.h(byteOrder));
    }

    @Override // org.jboss.netty.buffer.e
    public int setBytes(int i2, ScatteringByteChannel scatteringByteChannel, int i4) throws IOException {
        return this.f73394g.setBytes(i2, scatteringByteChannel, i4);
    }

    public l(ByteOrder byteOrder, int i2, f fVar) {
        if (i2 >= 0) {
            Objects.requireNonNull(byteOrder, "endianness");
            Objects.requireNonNull(fVar, "factory");
            this.f73392e = fVar;
            this.f73393f = byteOrder;
            this.f73394g = fVar.f(order(), i2);
            return;
        }
        throw new IllegalArgumentException("estimatedLength: " + i2);
    }

    @Override // org.jboss.netty.buffer.a, org.jboss.netty.buffer.e
    public int writeBytes(ScatteringByteChannel scatteringByteChannel, int i2) throws IOException {
        C0(i2);
        return super.writeBytes(scatteringByteChannel, i2);
    }
}
