package org.jboss.netty.buffer;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;
import java.util.Objects;
/* compiled from: ByteBufferBackedChannelBuffer.java */
/* loaded from: classes5.dex */
public class d extends a {

    /* renamed from: e  reason: collision with root package name */
    private final ByteBuffer f73359e;

    /* renamed from: f  reason: collision with root package name */
    private final ByteOrder f73360f;

    /* renamed from: g  reason: collision with root package name */
    private final int f73361g;

    public d(ByteBuffer byteBuffer) {
        Objects.requireNonNull(byteBuffer, "buffer");
        ByteOrder order = byteBuffer.order();
        this.f73360f = order;
        this.f73359e = byteBuffer.slice().order(order);
        int remaining = byteBuffer.remaining();
        this.f73361g = remaining;
        u0(remaining);
    }

    @Override // org.jboss.netty.buffer.e
    public void E(int i2, OutputStream outputStream, int i4) throws IOException {
        if (i4 == 0) {
            return;
        }
        if (this.f73359e.hasArray()) {
            outputStream.write(this.f73359e.array(), i2 + this.f73359e.arrayOffset(), i4);
            return;
        }
        byte[] bArr = new byte[i4];
        ((ByteBuffer) this.f73359e.duplicate().position(i2)).get(bArr);
        outputStream.write(bArr);
    }

    @Override // org.jboss.netty.buffer.e
    public void G0(int i2, ByteBuffer byteBuffer) {
        ByteBuffer duplicate = this.f73359e.duplicate();
        duplicate.limit(byteBuffer.remaining() + i2).position(i2);
        duplicate.put(byteBuffer);
    }

    @Override // org.jboss.netty.buffer.e
    public e M(int i2, int i4) {
        try {
            ByteBuffer byteBuffer = (ByteBuffer) this.f73359e.duplicate().position(i2).limit(i2 + i4);
            ByteBuffer allocateDirect = this.f73359e.isDirect() ? ByteBuffer.allocateDirect(i4) : ByteBuffer.allocate(i4);
            allocateDirect.put(byteBuffer);
            allocateDirect.order(order());
            allocateDirect.clear();
            return new d(allocateDirect);
        } catch (IllegalArgumentException unused) {
            throw new IndexOutOfBoundsException("Too many bytes to read - Need " + (i2 + i4));
        }
    }

    @Override // org.jboss.netty.buffer.e
    public ByteBuffer R(int i2, int i4) {
        if (i2 == 0 && i4 == capacity()) {
            return this.f73359e.duplicate().order(order());
        }
        return ((ByteBuffer) this.f73359e.duplicate().position(i2).limit(i2 + i4)).slice().order(order());
    }

    @Override // org.jboss.netty.buffer.e
    public void T(int i2, int i4) {
        this.f73359e.put(i2, (byte) i4);
    }

    @Override // org.jboss.netty.buffer.e
    public void V(int i2, byte[] bArr, int i4, int i5) {
        ByteBuffer duplicate = this.f73359e.duplicate();
        int i6 = i2 + i5;
        try {
            duplicate.limit(i6).position(i2);
            duplicate.get(bArr, i4, i5);
        } catch (IllegalArgumentException unused) {
            throw new IndexOutOfBoundsException("Too many bytes to read - Need " + i6 + ", maximum is " + duplicate.limit());
        }
    }

    @Override // org.jboss.netty.buffer.e
    public void X(int i2, int i4) {
        T(i2, (byte) (i4 >>> 16));
        T(i2 + 1, (byte) (i4 >>> 8));
        T(i2 + 2, (byte) i4);
    }

    @Override // org.jboss.netty.buffer.e
    public e a(int i2, int i4) {
        if (i2 == 0 && i4 == capacity()) {
            e duplicate = duplicate();
            duplicate.r0(0, i4);
            return duplicate;
        } else if (i2 >= 0 && i4 == 0) {
            return h.f73374c;
        } else {
            return new d(((ByteBuffer) this.f73359e.duplicate().position(i2).limit(i2 + i4)).order(order()));
        }
    }

    @Override // org.jboss.netty.buffer.e
    public byte[] array() {
        return this.f73359e.array();
    }

    @Override // org.jboss.netty.buffer.e
    public int arrayOffset() {
        return this.f73359e.arrayOffset();
    }

    @Override // org.jboss.netty.buffer.e
    public int capacity() {
        return this.f73361g;
    }

    @Override // org.jboss.netty.buffer.e
    public e duplicate() {
        return new d(this);
    }

    @Override // org.jboss.netty.buffer.e
    public f factory() {
        if (this.f73359e.isDirect()) {
            return j.j(order());
        }
        return n.h(order());
    }

    @Override // org.jboss.netty.buffer.e
    public byte getByte(int i2) {
        return this.f73359e.get(i2);
    }

    @Override // org.jboss.netty.buffer.e
    public int getBytes(int i2, GatheringByteChannel gatheringByteChannel, int i4) throws IOException {
        if (i4 == 0) {
            return 0;
        }
        return gatheringByteChannel.write((ByteBuffer) this.f73359e.duplicate().position(i2).limit(i2 + i4));
    }

    @Override // org.jboss.netty.buffer.e
    public int getInt(int i2) {
        return this.f73359e.getInt(i2);
    }

    @Override // org.jboss.netty.buffer.e
    public long getLong(int i2) {
        return this.f73359e.getLong(i2);
    }

    @Override // org.jboss.netty.buffer.e
    public short getShort(int i2) {
        return this.f73359e.getShort(i2);
    }

    @Override // org.jboss.netty.buffer.e
    public int getUnsignedMedium(int i2) {
        return (getByte(i2 + 2) & 255) | ((getByte(i2) & 255) << 16) | ((getByte(i2 + 1) & 255) << 8);
    }

    @Override // org.jboss.netty.buffer.e
    public boolean hasArray() {
        return this.f73359e.hasArray();
    }

    @Override // org.jboss.netty.buffer.e
    public boolean isDirect() {
        return this.f73359e.isDirect();
    }

    @Override // org.jboss.netty.buffer.e
    public void l0(int i2, e eVar, int i4, int i5) {
        if (eVar instanceof d) {
            ByteBuffer duplicate = ((d) eVar).f73359e.duplicate();
            duplicate.limit(i5 + i4).position(i4);
            w0(i2, duplicate);
        } else if (this.f73359e.hasArray()) {
            eVar.p(i4, this.f73359e.array(), i2 + this.f73359e.arrayOffset(), i5);
        } else {
            eVar.w(i4, this, i2, i5);
        }
    }

    @Override // org.jboss.netty.buffer.e
    public ByteOrder order() {
        return this.f73360f;
    }

    @Override // org.jboss.netty.buffer.e
    public void p(int i2, byte[] bArr, int i4, int i5) {
        ByteBuffer duplicate = this.f73359e.duplicate();
        duplicate.limit(i2 + i5).position(i2);
        duplicate.put(bArr, i4, i5);
    }

    @Override // org.jboss.netty.buffer.e
    public void q0(int i2, int i4) {
        this.f73359e.putShort(i2, (short) i4);
    }

    @Override // org.jboss.netty.buffer.e
    public int setBytes(int i2, InputStream inputStream, int i4) throws IOException {
        int i5 = 0;
        if (this.f73359e.hasArray()) {
            int arrayOffset = i2 + this.f73359e.arrayOffset();
            do {
                int read = inputStream.read(this.f73359e.array(), arrayOffset, i4);
                if (read < 0) {
                    if (i5 == 0) {
                        return -1;
                    }
                    return i5;
                }
                i5 += read;
                arrayOffset += read;
                i4 -= read;
            } while (i4 > 0);
            return i5;
        }
        byte[] bArr = new byte[i4];
        int i6 = 0;
        while (true) {
            int read2 = inputStream.read(bArr, i5, i4 - i5);
            if (read2 >= 0) {
                i6 += read2;
                i5 += i6;
                if (i5 >= i4) {
                    break;
                }
            } else if (i6 == 0) {
                return -1;
            }
        }
        int i7 = i6;
        ((ByteBuffer) this.f73359e.duplicate().position(i2)).put(bArr);
        return i7;
    }

    @Override // org.jboss.netty.buffer.e
    public void setInt(int i2, int i4) {
        this.f73359e.putInt(i2, i4);
    }

    @Override // org.jboss.netty.buffer.e
    public void setLong(int i2, long j4) {
        this.f73359e.putLong(i2, j4);
    }

    @Override // org.jboss.netty.buffer.e
    public void w(int i2, e eVar, int i4, int i5) {
        if (eVar instanceof d) {
            ByteBuffer duplicate = ((d) eVar).f73359e.duplicate();
            duplicate.limit(i5 + i4).position(i4);
            G0(i2, duplicate);
        } else if (this.f73359e.hasArray()) {
            eVar.V(i4, this.f73359e.array(), i2 + this.f73359e.arrayOffset(), i5);
        } else {
            eVar.l0(i4, this, i2, i5);
        }
    }

    @Override // org.jboss.netty.buffer.e
    public void w0(int i2, ByteBuffer byteBuffer) {
        ByteBuffer duplicate = this.f73359e.duplicate();
        int min = Math.min(capacity() - i2, byteBuffer.remaining()) + i2;
        try {
            duplicate.limit(min).position(i2);
            byteBuffer.put(duplicate);
        } catch (IllegalArgumentException unused) {
            throw new IndexOutOfBoundsException("Too many bytes to read - Need " + min + ", maximum is " + duplicate.limit());
        }
    }

    private d(d dVar) {
        this.f73359e = dVar.f73359e;
        this.f73360f = dVar.f73360f;
        this.f73361g = dVar.f73361g;
        r0(dVar.readerIndex(), dVar.writerIndex());
    }

    @Override // org.jboss.netty.buffer.e
    public int setBytes(int i2, ScatteringByteChannel scatteringByteChannel, int i4) throws IOException {
        int i5;
        ByteBuffer byteBuffer = (ByteBuffer) this.f73359e.duplicate().limit(i2 + i4).position(i2);
        int i6 = 0;
        while (i6 < i4) {
            try {
                i5 = scatteringByteChannel.read(byteBuffer);
            } catch (ClosedChannelException unused) {
                i5 = -1;
            }
            if (i5 < 0) {
                if (i6 == 0) {
                    return -1;
                }
                return i6;
            } else if (i5 == 0) {
                break;
            } else {
                i6 += i5;
            }
        }
        return i6;
    }
}
