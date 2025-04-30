package org.jboss.netty.buffer;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;
import java.util.Objects;
/* compiled from: DuplicatedChannelBuffer.java */
/* loaded from: classes5.dex */
public class k extends a implements s {

    /* renamed from: e  reason: collision with root package name */
    private final e f73391e;

    public k(e eVar) {
        Objects.requireNonNull(eVar, "buffer");
        this.f73391e = eVar;
        r0(eVar.readerIndex(), eVar.writerIndex());
    }

    @Override // org.jboss.netty.buffer.e
    public void E(int i2, OutputStream outputStream, int i4) throws IOException {
        this.f73391e.E(i2, outputStream, i4);
    }

    @Override // org.jboss.netty.buffer.e
    public void G0(int i2, ByteBuffer byteBuffer) {
        this.f73391e.G0(i2, byteBuffer);
    }

    @Override // org.jboss.netty.buffer.e
    public e M(int i2, int i4) {
        return this.f73391e.M(i2, i4);
    }

    @Override // org.jboss.netty.buffer.e
    public ByteBuffer R(int i2, int i4) {
        return this.f73391e.R(i2, i4);
    }

    @Override // org.jboss.netty.buffer.e
    public void T(int i2, int i4) {
        this.f73391e.T(i2, i4);
    }

    @Override // org.jboss.netty.buffer.e
    public void V(int i2, byte[] bArr, int i4, int i5) {
        this.f73391e.V(i2, bArr, i4, i5);
    }

    @Override // org.jboss.netty.buffer.e
    public void X(int i2, int i4) {
        this.f73391e.X(i2, i4);
    }

    @Override // org.jboss.netty.buffer.e
    public e a(int i2, int i4) {
        return this.f73391e.a(i2, i4);
    }

    @Override // org.jboss.netty.buffer.e
    public byte[] array() {
        return this.f73391e.array();
    }

    @Override // org.jboss.netty.buffer.e
    public int arrayOffset() {
        return this.f73391e.arrayOffset();
    }

    @Override // org.jboss.netty.buffer.e
    public int capacity() {
        return this.f73391e.capacity();
    }

    @Override // org.jboss.netty.buffer.e
    public e duplicate() {
        return new k(this);
    }

    @Override // org.jboss.netty.buffer.e
    public f factory() {
        return this.f73391e.factory();
    }

    @Override // org.jboss.netty.buffer.e
    public byte getByte(int i2) {
        return this.f73391e.getByte(i2);
    }

    @Override // org.jboss.netty.buffer.e
    public int getBytes(int i2, GatheringByteChannel gatheringByteChannel, int i4) throws IOException {
        return this.f73391e.getBytes(i2, gatheringByteChannel, i4);
    }

    @Override // org.jboss.netty.buffer.e
    public int getInt(int i2) {
        return this.f73391e.getInt(i2);
    }

    @Override // org.jboss.netty.buffer.e
    public long getLong(int i2) {
        return this.f73391e.getLong(i2);
    }

    @Override // org.jboss.netty.buffer.e
    public short getShort(int i2) {
        return this.f73391e.getShort(i2);
    }

    @Override // org.jboss.netty.buffer.e
    public int getUnsignedMedium(int i2) {
        return this.f73391e.getUnsignedMedium(i2);
    }

    @Override // org.jboss.netty.buffer.e
    public boolean hasArray() {
        return this.f73391e.hasArray();
    }

    @Override // org.jboss.netty.buffer.e
    public boolean isDirect() {
        return this.f73391e.isDirect();
    }

    @Override // org.jboss.netty.buffer.e
    public void l0(int i2, e eVar, int i4, int i5) {
        this.f73391e.l0(i2, eVar, i4, i5);
    }

    @Override // org.jboss.netty.buffer.e
    public ByteOrder order() {
        return this.f73391e.order();
    }

    @Override // org.jboss.netty.buffer.e
    public void p(int i2, byte[] bArr, int i4, int i5) {
        this.f73391e.p(i2, bArr, i4, i5);
    }

    @Override // org.jboss.netty.buffer.e
    public void q0(int i2, int i4) {
        this.f73391e.q0(i2, i4);
    }

    @Override // org.jboss.netty.buffer.e
    public int setBytes(int i2, InputStream inputStream, int i4) throws IOException {
        return this.f73391e.setBytes(i2, inputStream, i4);
    }

    @Override // org.jboss.netty.buffer.e
    public void setInt(int i2, int i4) {
        this.f73391e.setInt(i2, i4);
    }

    @Override // org.jboss.netty.buffer.e
    public void setLong(int i2, long j4) {
        this.f73391e.setLong(i2, j4);
    }

    @Override // org.jboss.netty.buffer.e
    public void w(int i2, e eVar, int i4, int i5) {
        this.f73391e.w(i2, eVar, i4, i5);
    }

    @Override // org.jboss.netty.buffer.e
    public void w0(int i2, ByteBuffer byteBuffer) {
        this.f73391e.w0(i2, byteBuffer);
    }

    @Override // org.jboss.netty.buffer.s
    public e y() {
        return this.f73391e;
    }

    @Override // org.jboss.netty.buffer.e
    public int setBytes(int i2, ScatteringByteChannel scatteringByteChannel, int i4) throws IOException {
        return this.f73391e.setBytes(i2, scatteringByteChannel, i4);
    }

    private k(k kVar) {
        this.f73391e = kVar.f73391e;
        r0(kVar.readerIndex(), kVar.writerIndex());
    }
}
