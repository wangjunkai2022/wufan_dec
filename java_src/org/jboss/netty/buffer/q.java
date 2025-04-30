package org.jboss.netty.buffer;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;
/* compiled from: SlicedChannelBuffer.java */
/* loaded from: classes5.dex */
public class q extends a implements s {

    /* renamed from: e  reason: collision with root package name */
    private final e f73399e;

    /* renamed from: f  reason: collision with root package name */
    private final int f73400f;

    /* renamed from: g  reason: collision with root package name */
    private final int f73401g;

    public q(e eVar, int i2, int i4) {
        if (i2 >= 0 && i2 <= eVar.capacity()) {
            int i5 = i2 + i4;
            if (i5 <= eVar.capacity()) {
                this.f73399e = eVar;
                this.f73400f = i2;
                this.f73401g = i4;
                u0(i4);
                return;
            }
            throw new IndexOutOfBoundsException("Invalid combined index of " + i5 + ", maximum is " + eVar.capacity());
        }
        throw new IndexOutOfBoundsException("Invalid index of " + i2 + ", maximum is " + eVar.capacity());
    }

    private void s(int i2) {
        if (i2 < 0 || i2 >= capacity()) {
            throw new IndexOutOfBoundsException("Invalid index: " + i2 + ", maximum is " + capacity());
        }
    }

    private void x(int i2, int i4) {
        if (i4 < 0) {
            throw new IllegalArgumentException("length is negative: " + i4);
        } else if (i2 >= 0) {
            int i5 = i2 + i4;
            if (i5 <= capacity()) {
                return;
            }
            throw new IndexOutOfBoundsException("Index too big - Bytes needed: " + i5 + ", maximum is " + capacity());
        } else {
            throw new IndexOutOfBoundsException("startIndex cannot be negative");
        }
    }

    @Override // org.jboss.netty.buffer.e
    public void E(int i2, OutputStream outputStream, int i4) throws IOException {
        x(i2, i4);
        this.f73399e.E(i2 + this.f73400f, outputStream, i4);
    }

    @Override // org.jboss.netty.buffer.e
    public void G0(int i2, ByteBuffer byteBuffer) {
        x(i2, byteBuffer.remaining());
        this.f73399e.G0(i2 + this.f73400f, byteBuffer);
    }

    @Override // org.jboss.netty.buffer.e
    public e M(int i2, int i4) {
        x(i2, i4);
        return this.f73399e.M(i2 + this.f73400f, i4);
    }

    @Override // org.jboss.netty.buffer.e
    public ByteBuffer R(int i2, int i4) {
        x(i2, i4);
        return this.f73399e.R(i2 + this.f73400f, i4);
    }

    @Override // org.jboss.netty.buffer.e
    public void T(int i2, int i4) {
        s(i2);
        this.f73399e.T(i2 + this.f73400f, i4);
    }

    @Override // org.jboss.netty.buffer.e
    public void V(int i2, byte[] bArr, int i4, int i5) {
        x(i2, i5);
        this.f73399e.V(i2 + this.f73400f, bArr, i4, i5);
    }

    @Override // org.jboss.netty.buffer.e
    public void X(int i2, int i4) {
        x(i2, 3);
        this.f73399e.X(i2 + this.f73400f, i4);
    }

    @Override // org.jboss.netty.buffer.e
    public e a(int i2, int i4) {
        x(i2, i4);
        if (i4 == 0) {
            return h.f73374c;
        }
        return new q(this.f73399e, i2 + this.f73400f, i4);
    }

    @Override // org.jboss.netty.buffer.e
    public byte[] array() {
        return this.f73399e.array();
    }

    @Override // org.jboss.netty.buffer.e
    public int arrayOffset() {
        return this.f73399e.arrayOffset() + this.f73400f;
    }

    @Override // org.jboss.netty.buffer.e
    public int capacity() {
        return this.f73401g;
    }

    @Override // org.jboss.netty.buffer.e
    public e duplicate() {
        q qVar = new q(this.f73399e, this.f73400f, this.f73401g);
        qVar.r0(readerIndex(), writerIndex());
        return qVar;
    }

    @Override // org.jboss.netty.buffer.e
    public f factory() {
        return this.f73399e.factory();
    }

    @Override // org.jboss.netty.buffer.e
    public byte getByte(int i2) {
        s(i2);
        return this.f73399e.getByte(i2 + this.f73400f);
    }

    @Override // org.jboss.netty.buffer.e
    public int getBytes(int i2, GatheringByteChannel gatheringByteChannel, int i4) throws IOException {
        x(i2, i4);
        return this.f73399e.getBytes(i2 + this.f73400f, gatheringByteChannel, i4);
    }

    @Override // org.jboss.netty.buffer.e
    public int getInt(int i2) {
        x(i2, 4);
        return this.f73399e.getInt(i2 + this.f73400f);
    }

    @Override // org.jboss.netty.buffer.e
    public long getLong(int i2) {
        x(i2, 8);
        return this.f73399e.getLong(i2 + this.f73400f);
    }

    @Override // org.jboss.netty.buffer.e
    public short getShort(int i2) {
        x(i2, 2);
        return this.f73399e.getShort(i2 + this.f73400f);
    }

    @Override // org.jboss.netty.buffer.e
    public int getUnsignedMedium(int i2) {
        x(i2, 3);
        return this.f73399e.getUnsignedMedium(i2 + this.f73400f);
    }

    @Override // org.jboss.netty.buffer.e
    public boolean hasArray() {
        return this.f73399e.hasArray();
    }

    @Override // org.jboss.netty.buffer.e
    public boolean isDirect() {
        return this.f73399e.isDirect();
    }

    @Override // org.jboss.netty.buffer.e
    public void l0(int i2, e eVar, int i4, int i5) {
        x(i2, i5);
        this.f73399e.l0(i2 + this.f73400f, eVar, i4, i5);
    }

    @Override // org.jboss.netty.buffer.e
    public ByteOrder order() {
        return this.f73399e.order();
    }

    @Override // org.jboss.netty.buffer.e
    public void p(int i2, byte[] bArr, int i4, int i5) {
        x(i2, i5);
        this.f73399e.p(i2 + this.f73400f, bArr, i4, i5);
    }

    @Override // org.jboss.netty.buffer.e
    public void q0(int i2, int i4) {
        x(i2, 2);
        this.f73399e.q0(i2 + this.f73400f, i4);
    }

    @Override // org.jboss.netty.buffer.e
    public int setBytes(int i2, InputStream inputStream, int i4) throws IOException {
        x(i2, i4);
        return this.f73399e.setBytes(i2 + this.f73400f, inputStream, i4);
    }

    @Override // org.jboss.netty.buffer.e
    public void setInt(int i2, int i4) {
        x(i2, 4);
        this.f73399e.setInt(i2 + this.f73400f, i4);
    }

    @Override // org.jboss.netty.buffer.e
    public void setLong(int i2, long j4) {
        x(i2, 8);
        this.f73399e.setLong(i2 + this.f73400f, j4);
    }

    @Override // org.jboss.netty.buffer.e
    public void w(int i2, e eVar, int i4, int i5) {
        x(i2, i5);
        this.f73399e.w(i2 + this.f73400f, eVar, i4, i5);
    }

    @Override // org.jboss.netty.buffer.e
    public void w0(int i2, ByteBuffer byteBuffer) {
        x(i2, byteBuffer.remaining());
        this.f73399e.w0(i2 + this.f73400f, byteBuffer);
    }

    @Override // org.jboss.netty.buffer.s
    public e y() {
        return this.f73399e;
    }

    @Override // org.jboss.netty.buffer.e
    public int setBytes(int i2, ScatteringByteChannel scatteringByteChannel, int i4) throws IOException {
        x(i2, i4);
        return this.f73399e.setBytes(i2 + this.f73400f, scatteringByteChannel, i4);
    }
}
