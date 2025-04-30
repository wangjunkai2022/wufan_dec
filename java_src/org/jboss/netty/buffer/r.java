package org.jboss.netty.buffer;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;
/* compiled from: TruncatedChannelBuffer.java */
/* loaded from: classes5.dex */
public class r extends a implements s {

    /* renamed from: e  reason: collision with root package name */
    private final e f73402e;

    /* renamed from: f  reason: collision with root package name */
    private final int f73403f;

    public r(e eVar, int i2) {
        if (i2 <= eVar.capacity()) {
            this.f73402e = eVar;
            this.f73403f = i2;
            u0(i2);
            return;
        }
        throw new IndexOutOfBoundsException("Length is too large, got " + i2 + " but can't go higher than " + eVar.capacity());
    }

    private void s(int i2) {
        if (i2 < 0 || i2 >= capacity()) {
            throw new IndexOutOfBoundsException("Invalid index of " + i2 + ", maximum is " + capacity());
        }
    }

    private void x(int i2, int i4) {
        if (i4 >= 0) {
            int i5 = i2 + i4;
            if (i5 <= capacity()) {
                return;
            }
            throw new IndexOutOfBoundsException("Invalid index of " + i5 + ", maximum is " + capacity());
        }
        throw new IllegalArgumentException("length is negative: " + i4);
    }

    @Override // org.jboss.netty.buffer.e
    public void E(int i2, OutputStream outputStream, int i4) throws IOException {
        x(i2, i4);
        this.f73402e.E(i2, outputStream, i4);
    }

    @Override // org.jboss.netty.buffer.e
    public void G0(int i2, ByteBuffer byteBuffer) {
        x(i2, byteBuffer.remaining());
        this.f73402e.G0(i2, byteBuffer);
    }

    @Override // org.jboss.netty.buffer.e
    public e M(int i2, int i4) {
        x(i2, i4);
        return this.f73402e.M(i2, i4);
    }

    @Override // org.jboss.netty.buffer.e
    public ByteBuffer R(int i2, int i4) {
        x(i2, i4);
        return this.f73402e.R(i2, i4);
    }

    @Override // org.jboss.netty.buffer.e
    public void T(int i2, int i4) {
        s(i2);
        this.f73402e.T(i2, i4);
    }

    @Override // org.jboss.netty.buffer.e
    public void V(int i2, byte[] bArr, int i4, int i5) {
        x(i2, i5);
        this.f73402e.V(i2, bArr, i4, i5);
    }

    @Override // org.jboss.netty.buffer.e
    public void X(int i2, int i4) {
        x(i2, 3);
        this.f73402e.X(i2, i4);
    }

    @Override // org.jboss.netty.buffer.e
    public e a(int i2, int i4) {
        x(i2, i4);
        if (i4 == 0) {
            return h.f73374c;
        }
        return this.f73402e.a(i2, i4);
    }

    @Override // org.jboss.netty.buffer.e
    public byte[] array() {
        return this.f73402e.array();
    }

    @Override // org.jboss.netty.buffer.e
    public int arrayOffset() {
        return this.f73402e.arrayOffset();
    }

    @Override // org.jboss.netty.buffer.e
    public int capacity() {
        return this.f73403f;
    }

    @Override // org.jboss.netty.buffer.e
    public e duplicate() {
        r rVar = new r(this.f73402e, this.f73403f);
        rVar.r0(readerIndex(), writerIndex());
        return rVar;
    }

    @Override // org.jboss.netty.buffer.e
    public f factory() {
        return this.f73402e.factory();
    }

    @Override // org.jboss.netty.buffer.e
    public byte getByte(int i2) {
        s(i2);
        return this.f73402e.getByte(i2);
    }

    @Override // org.jboss.netty.buffer.e
    public int getBytes(int i2, GatheringByteChannel gatheringByteChannel, int i4) throws IOException {
        x(i2, i4);
        return this.f73402e.getBytes(i2, gatheringByteChannel, i4);
    }

    @Override // org.jboss.netty.buffer.e
    public int getInt(int i2) {
        x(i2, 4);
        return this.f73402e.getInt(i2);
    }

    @Override // org.jboss.netty.buffer.e
    public long getLong(int i2) {
        x(i2, 8);
        return this.f73402e.getLong(i2);
    }

    @Override // org.jboss.netty.buffer.e
    public short getShort(int i2) {
        x(i2, 2);
        return this.f73402e.getShort(i2);
    }

    @Override // org.jboss.netty.buffer.e
    public int getUnsignedMedium(int i2) {
        x(i2, 3);
        return this.f73402e.getUnsignedMedium(i2);
    }

    @Override // org.jboss.netty.buffer.e
    public boolean hasArray() {
        return this.f73402e.hasArray();
    }

    @Override // org.jboss.netty.buffer.e
    public boolean isDirect() {
        return this.f73402e.isDirect();
    }

    @Override // org.jboss.netty.buffer.e
    public void l0(int i2, e eVar, int i4, int i5) {
        x(i2, i5);
        this.f73402e.l0(i2, eVar, i4, i5);
    }

    @Override // org.jboss.netty.buffer.e
    public ByteOrder order() {
        return this.f73402e.order();
    }

    @Override // org.jboss.netty.buffer.e
    public void p(int i2, byte[] bArr, int i4, int i5) {
        x(i2, i5);
        this.f73402e.p(i2, bArr, i4, i5);
    }

    @Override // org.jboss.netty.buffer.e
    public void q0(int i2, int i4) {
        x(i2, 2);
        this.f73402e.q0(i2, i4);
    }

    @Override // org.jboss.netty.buffer.e
    public int setBytes(int i2, InputStream inputStream, int i4) throws IOException {
        x(i2, i4);
        return this.f73402e.setBytes(i2, inputStream, i4);
    }

    @Override // org.jboss.netty.buffer.e
    public void setInt(int i2, int i4) {
        x(i2, 4);
        this.f73402e.setInt(i2, i4);
    }

    @Override // org.jboss.netty.buffer.e
    public void setLong(int i2, long j4) {
        x(i2, 8);
        this.f73402e.setLong(i2, j4);
    }

    @Override // org.jboss.netty.buffer.e
    public void w(int i2, e eVar, int i4, int i5) {
        x(i2, i5);
        this.f73402e.w(i2, eVar, i4, i5);
    }

    @Override // org.jboss.netty.buffer.e
    public void w0(int i2, ByteBuffer byteBuffer) {
        x(i2, byteBuffer.remaining());
        this.f73402e.w0(i2, byteBuffer);
    }

    @Override // org.jboss.netty.buffer.s
    public e y() {
        return this.f73402e;
    }

    @Override // org.jboss.netty.buffer.e
    public int setBytes(int i2, ScatteringByteChannel scatteringByteChannel, int i4) throws IOException {
        x(i2, i4);
        return this.f73402e.setBytes(i2, scatteringByteChannel, i4);
    }
}
