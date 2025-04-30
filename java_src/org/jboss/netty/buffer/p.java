package org.jboss.netty.buffer;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;
import java.util.Objects;
/* compiled from: ReadOnlyChannelBuffer.java */
/* loaded from: classes5.dex */
public class p extends a implements s {

    /* renamed from: e  reason: collision with root package name */
    private final e f73398e;

    public p(e eVar) {
        Objects.requireNonNull(eVar, "buffer");
        this.f73398e = eVar;
        r0(eVar.readerIndex(), eVar.writerIndex());
    }

    @Override // org.jboss.netty.buffer.e
    public void E(int i2, OutputStream outputStream, int i4) throws IOException {
        this.f73398e.E(i2, outputStream, i4);
    }

    @Override // org.jboss.netty.buffer.e
    public void G0(int i2, ByteBuffer byteBuffer) {
        throw new ReadOnlyBufferException();
    }

    @Override // org.jboss.netty.buffer.e
    public e M(int i2, int i4) {
        return this.f73398e.M(i2, i4);
    }

    @Override // org.jboss.netty.buffer.e
    public ByteBuffer R(int i2, int i4) {
        return this.f73398e.R(i2, i4).asReadOnlyBuffer();
    }

    @Override // org.jboss.netty.buffer.e
    public void T(int i2, int i4) {
        throw new ReadOnlyBufferException();
    }

    @Override // org.jboss.netty.buffer.e
    public void V(int i2, byte[] bArr, int i4, int i5) {
        this.f73398e.V(i2, bArr, i4, i5);
    }

    @Override // org.jboss.netty.buffer.a, org.jboss.netty.buffer.e
    public ByteBuffer[] W(int i2, int i4) {
        ByteBuffer[] W = this.f73398e.W(i2, i4);
        for (int i5 = 0; i5 < W.length; i5++) {
            W[i5] = W[i5].asReadOnlyBuffer();
        }
        return W;
    }

    @Override // org.jboss.netty.buffer.e
    public void X(int i2, int i4) {
        throw new ReadOnlyBufferException();
    }

    @Override // org.jboss.netty.buffer.e
    public e a(int i2, int i4) {
        return new p(this.f73398e.a(i2, i4));
    }

    @Override // org.jboss.netty.buffer.e
    public byte[] array() {
        throw new ReadOnlyBufferException();
    }

    @Override // org.jboss.netty.buffer.e
    public int arrayOffset() {
        throw new ReadOnlyBufferException();
    }

    @Override // org.jboss.netty.buffer.e
    public int capacity() {
        return this.f73398e.capacity();
    }

    @Override // org.jboss.netty.buffer.e
    public e duplicate() {
        return new p(this);
    }

    @Override // org.jboss.netty.buffer.a, org.jboss.netty.buffer.e
    public void f() {
        throw new ReadOnlyBufferException();
    }

    @Override // org.jboss.netty.buffer.e
    public f factory() {
        return this.f73398e.factory();
    }

    @Override // org.jboss.netty.buffer.e
    public byte getByte(int i2) {
        return this.f73398e.getByte(i2);
    }

    @Override // org.jboss.netty.buffer.e
    public int getBytes(int i2, GatheringByteChannel gatheringByteChannel, int i4) throws IOException {
        return this.f73398e.getBytes(i2, gatheringByteChannel, i4);
    }

    @Override // org.jboss.netty.buffer.e
    public int getInt(int i2) {
        return this.f73398e.getInt(i2);
    }

    @Override // org.jboss.netty.buffer.e
    public long getLong(int i2) {
        return this.f73398e.getLong(i2);
    }

    @Override // org.jboss.netty.buffer.e
    public short getShort(int i2) {
        return this.f73398e.getShort(i2);
    }

    @Override // org.jboss.netty.buffer.e
    public int getUnsignedMedium(int i2) {
        return this.f73398e.getUnsignedMedium(i2);
    }

    @Override // org.jboss.netty.buffer.e
    public boolean hasArray() {
        return false;
    }

    @Override // org.jboss.netty.buffer.e
    public boolean isDirect() {
        return this.f73398e.isDirect();
    }

    @Override // org.jboss.netty.buffer.e
    public void l0(int i2, e eVar, int i4, int i5) {
        this.f73398e.l0(i2, eVar, i4, i5);
    }

    @Override // org.jboss.netty.buffer.e
    public ByteOrder order() {
        return this.f73398e.order();
    }

    @Override // org.jboss.netty.buffer.e
    public void p(int i2, byte[] bArr, int i4, int i5) {
        throw new ReadOnlyBufferException();
    }

    @Override // org.jboss.netty.buffer.e
    public void q0(int i2, int i4) {
        throw new ReadOnlyBufferException();
    }

    @Override // org.jboss.netty.buffer.e
    public int setBytes(int i2, InputStream inputStream, int i4) throws IOException {
        throw new ReadOnlyBufferException();
    }

    @Override // org.jboss.netty.buffer.e
    public void setInt(int i2, int i4) {
        throw new ReadOnlyBufferException();
    }

    @Override // org.jboss.netty.buffer.e
    public void setLong(int i2, long j4) {
        throw new ReadOnlyBufferException();
    }

    @Override // org.jboss.netty.buffer.e
    public void w(int i2, e eVar, int i4, int i5) {
        throw new ReadOnlyBufferException();
    }

    @Override // org.jboss.netty.buffer.e
    public void w0(int i2, ByteBuffer byteBuffer) {
        this.f73398e.w0(i2, byteBuffer);
    }

    @Override // org.jboss.netty.buffer.s
    public e y() {
        return this.f73398e;
    }

    @Override // org.jboss.netty.buffer.e
    public int setBytes(int i2, ScatteringByteChannel scatteringByteChannel, int i4) throws IOException {
        throw new ReadOnlyBufferException();
    }

    private p(p pVar) {
        this.f73398e = pVar.f73398e;
        r0(pVar.readerIndex(), pVar.writerIndex());
    }
}
