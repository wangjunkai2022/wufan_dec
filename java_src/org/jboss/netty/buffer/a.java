package org.jboss.netty.buffer;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;
import java.nio.charset.Charset;
import java.util.NoSuchElementException;
import kotlin.UShort;
/* compiled from: AbstractChannelBuffer.java */
/* loaded from: classes5.dex */
public abstract class a implements e {

    /* renamed from: a  reason: collision with root package name */
    private int f73354a;

    /* renamed from: b  reason: collision with root package name */
    private int f73355b;

    /* renamed from: c  reason: collision with root package name */
    private int f73356c;

    /* renamed from: d  reason: collision with root package name */
    private int f73357d;

    @Override // org.jboss.netty.buffer.e
    public void A0(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        G0(this.f73355b, byteBuffer);
        this.f73355b += remaining;
    }

    @Override // org.jboss.netty.buffer.e
    public void B(byte[] bArr) {
        Z(bArr, 0, bArr.length);
    }

    @Override // org.jboss.netty.buffer.e
    public void B0(e eVar, int i2) {
        if (i2 <= eVar.writableBytes()) {
            p0(eVar, eVar.writerIndex(), i2);
            eVar.u0(eVar.writerIndex() + i2);
            return;
        }
        throw new IndexOutOfBoundsException("Too many bytes to be read: Need " + i2 + ", maximum is " + eVar.writableBytes());
    }

    @Override // org.jboss.netty.buffer.e
    public boolean C() {
        return writableBytes() > 0;
    }

    @Override // org.jboss.netty.buffer.e
    public void C0(int i2) {
        if (i2 <= writableBytes()) {
            return;
        }
        throw new IndexOutOfBoundsException("Writable bytes exceeded: Got " + i2 + ", maximum is " + writableBytes());
    }

    @Override // org.jboss.netty.buffer.e
    public void D(int i2, e eVar, int i4) {
        if (i4 <= eVar.readableBytes()) {
            w(i2, eVar, eVar.readerIndex(), i4);
            eVar.O(eVar.readerIndex() + i4);
            return;
        }
        throw new IndexOutOfBoundsException("Too many bytes to write: Need " + i4 + ", maximum is " + eVar.readableBytes());
    }

    @Override // org.jboss.netty.buffer.e
    public void D0(int i2, int i4) {
        if (i4 == 0) {
            return;
        }
        if (i4 < 0) {
            throw new IllegalArgumentException("length must be 0 or greater than 0.");
        }
        int i5 = i4 & 7;
        for (int i6 = i4 >>> 3; i6 > 0; i6--) {
            setLong(i2, 0L);
            i2 += 8;
        }
        if (i5 == 4) {
            setInt(i2, 0);
        } else if (i5 < 4) {
            while (i5 > 0) {
                T(i2, 0);
                i2++;
                i5--;
            }
        } else {
            setInt(i2, 0);
            int i7 = i2 + 4;
            for (int i8 = i5 - 4; i8 > 0; i8--) {
                T(i7, 0);
                i7++;
            }
        }
    }

    @Override // org.jboss.netty.buffer.e
    public void E0(OutputStream outputStream, int i2) throws IOException {
        m(i2);
        E(this.f73354a, outputStream, i2);
        this.f73354a += i2;
    }

    @Override // org.jboss.netty.buffer.e
    public void F(int i2, e eVar, int i4) {
        if (i4 <= eVar.writableBytes()) {
            l0(i2, eVar, eVar.writerIndex(), i4);
            eVar.u0(eVar.writerIndex() + i4);
            return;
        }
        throw new IndexOutOfBoundsException("Too many bytes to be read: Need " + i4 + ", maximum is " + eVar.writableBytes());
    }

    @Override // org.jboss.netty.buffer.e
    public ByteBuffer[] F0() {
        return W(this.f73354a, readableBytes());
    }

    @Override // org.jboss.netty.buffer.e
    @Deprecated
    public String G(int i2, int i4, String str) {
        return toString(i2, i4, Charset.forName(str));
    }

    @Override // org.jboss.netty.buffer.e
    public int H(int i2, int i4, g gVar) {
        return h.R(this, i2, i4, gVar);
    }

    @Override // org.jboss.netty.buffer.e
    public e H0() {
        return a(this.f73354a, readableBytes());
    }

    @Override // org.jboss.netty.buffer.e
    public void I(e eVar, int i2) {
        if (i2 <= eVar.readableBytes()) {
            L(eVar, eVar.readerIndex(), i2);
            eVar.O(eVar.readerIndex() + i2);
            return;
        }
        throw new IndexOutOfBoundsException("Too many bytes to write - Need " + i2 + ", maximum is " + eVar.readableBytes());
    }

    @Override // org.jboss.netty.buffer.e
    public boolean I0() {
        return readableBytes() > 0;
    }

    @Override // org.jboss.netty.buffer.e
    public void J() {
        this.f73355b = this.f73357d;
    }

    @Override // org.jboss.netty.buffer.e
    @Deprecated
    public e J0(g gVar) {
        int H = H(this.f73354a, this.f73355b, gVar);
        if (H >= 0) {
            return N(H - this.f73354a);
        }
        throw new NoSuchElementException();
    }

    @Override // org.jboss.netty.buffer.e
    @Deprecated
    public String K(int i2, int i4, String str, g gVar) {
        if (gVar == null) {
            return G(i2, i4, str);
        }
        int H = H(i2, i2 + i4, gVar);
        if (H < 0) {
            return G(i2, i4, str);
        }
        return G(i2, H - i2, str);
    }

    @Override // org.jboss.netty.buffer.e
    @Deprecated
    public int K0(g gVar) {
        int i2 = this.f73354a;
        int H = H(i2, this.f73355b, gVar);
        if (H >= 0) {
            O(H);
            return H - i2;
        }
        throw new NoSuchElementException();
    }

    @Override // org.jboss.netty.buffer.e
    public void L(e eVar, int i2, int i4) {
        w(this.f73355b, eVar, i2, i4);
        this.f73355b += i4;
    }

    @Override // org.jboss.netty.buffer.e
    public e N(int i2) {
        e a4 = a(this.f73354a, i2);
        this.f73354a += i2;
        return a4;
    }

    @Override // org.jboss.netty.buffer.e
    public void O(int i2) {
        if (i2 >= 0 && i2 <= this.f73355b) {
            this.f73354a = i2;
            return;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // org.jboss.netty.buffer.e
    public int P(int i2, int i4, g gVar) {
        int H = H(i2, i4 + i2, gVar);
        if (H < 0) {
            return -1;
        }
        return H - i2;
    }

    @Override // org.jboss.netty.buffer.e
    public void S(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        m(remaining);
        w0(this.f73354a, byteBuffer);
        this.f73354a += remaining;
    }

    @Override // org.jboss.netty.buffer.e
    public ByteBuffer[] W(int i2, int i4) {
        return new ByteBuffer[]{R(i2, i4)};
    }

    @Override // org.jboss.netty.buffer.e
    public void Z(byte[] bArr, int i2, int i4) {
        p(this.f73355b, bArr, i2, i4);
        this.f73355b += i4;
    }

    @Override // org.jboss.netty.buffer.e
    public int b0(g gVar) {
        return P(readerIndex(), readableBytes(), gVar);
    }

    @Override // org.jboss.netty.buffer.e
    public int bytesBefore(byte b4) {
        return bytesBefore(readerIndex(), readableBytes(), b4);
    }

    @Override // org.jboss.netty.buffer.e
    public void c(int i2, int i4) {
        q0(i2, i4);
    }

    @Override // org.jboss.netty.buffer.e
    public ByteBuffer c0() {
        return R(this.f73354a, readableBytes());
    }

    @Override // org.jboss.netty.buffer.e
    public void clear() {
        this.f73355b = 0;
        this.f73354a = 0;
    }

    @Override // org.jboss.netty.buffer.e
    public e copy() {
        return M(this.f73354a, readableBytes());
    }

    @Override // java.lang.Comparable
    /* renamed from: d0 */
    public int compareTo(e eVar) {
        return h.c(this, eVar);
    }

    @Override // org.jboss.netty.buffer.e
    public boolean equals(Object obj) {
        if (obj instanceof e) {
            return h.J(this, (e) obj);
        }
        return false;
    }

    @Override // org.jboss.netty.buffer.e
    public void f() {
        int i2 = this.f73354a;
        if (i2 == 0) {
            return;
        }
        w(0, this, i2, this.f73355b - i2);
        int i4 = this.f73355b;
        int i5 = this.f73354a;
        this.f73355b = i4 - i5;
        this.f73356c = Math.max(this.f73356c - i5, 0);
        this.f73357d = Math.max(this.f73357d - this.f73354a, 0);
        this.f73354a = 0;
    }

    @Override // org.jboss.netty.buffer.e
    public int f0(int i2, g gVar) {
        m(i2);
        return P(readerIndex(), i2, gVar);
    }

    @Override // org.jboss.netty.buffer.e
    public void g0() {
        this.f73356c = this.f73354a;
    }

    @Override // org.jboss.netty.buffer.e
    public char getChar(int i2) {
        return (char) getShort(i2);
    }

    @Override // org.jboss.netty.buffer.e
    public double getDouble(int i2) {
        return Double.longBitsToDouble(getLong(i2));
    }

    @Override // org.jboss.netty.buffer.e
    public float getFloat(int i2) {
        return Float.intBitsToFloat(getInt(i2));
    }

    @Override // org.jboss.netty.buffer.e
    public int getMedium(int i2) {
        int unsignedMedium = getUnsignedMedium(i2);
        return (8388608 & unsignedMedium) != 0 ? unsignedMedium | (-16777216) : unsignedMedium;
    }

    @Override // org.jboss.netty.buffer.e
    public short getUnsignedByte(int i2) {
        return (short) (getByte(i2) & 255);
    }

    @Override // org.jboss.netty.buffer.e
    public long getUnsignedInt(int i2) {
        return getInt(i2) & 4294967295L;
    }

    @Override // org.jboss.netty.buffer.e
    public int getUnsignedShort(int i2) {
        return getShort(i2) & UShort.MAX_VALUE;
    }

    @Override // org.jboss.netty.buffer.e
    public void h0(int i2) {
        if (i2 == 0) {
            return;
        }
        if (i2 < 0) {
            throw new IllegalArgumentException("length must be 0 or greater than 0.");
        }
        int i4 = i2 & 7;
        for (int i5 = i2 >>> 3; i5 > 0; i5--) {
            writeLong(0L);
        }
        if (i4 == 4) {
            writeInt(0);
        } else if (i4 < 4) {
            while (i4 > 0) {
                writeByte(0);
                i4--;
            }
        } else {
            writeInt(0);
            for (int i6 = i4 - 4; i6 > 0; i6--) {
                writeByte(0);
            }
        }
    }

    @Override // org.jboss.netty.buffer.e
    public int hashCode() {
        return h.M(this);
    }

    @Override // org.jboss.netty.buffer.e
    public void i0(int i2, byte[] bArr) {
        p(i2, bArr, 0, bArr.length);
    }

    @Override // org.jboss.netty.buffer.e
    public int indexOf(int i2, int i4, byte b4) {
        return h.Q(this, i2, i4, b4);
    }

    @Override // org.jboss.netty.buffer.e
    @Deprecated
    public String j(String str, g gVar) {
        return K(this.f73354a, readableBytes(), str, gVar);
    }

    @Override // org.jboss.netty.buffer.e
    public void j0(int i2, e eVar) {
        D(i2, eVar, eVar.readableBytes());
    }

    @Override // org.jboss.netty.buffer.e
    @Deprecated
    public e l(g gVar) {
        int H = H(this.f73354a, this.f73355b, gVar);
        if (H >= 0) {
            return o(H - this.f73354a);
        }
        throw new NoSuchElementException();
    }

    protected void m(int i2) {
        if (readableBytes() >= i2) {
            return;
        }
        throw new IndexOutOfBoundsException("Not enough readable bytes - Need " + i2 + ", maximum is " + readableBytes());
    }

    @Override // org.jboss.netty.buffer.e
    public void n(int i2, byte[] bArr) {
        V(i2, bArr, 0, bArr.length);
    }

    @Override // org.jboss.netty.buffer.e
    public void n0() {
        O(this.f73356c);
    }

    @Override // org.jboss.netty.buffer.e
    public e o(int i2) {
        m(i2);
        if (i2 == 0) {
            return h.f73374c;
        }
        e f4 = factory().f(order(), i2);
        f4.L(this, this.f73354a, i2);
        this.f73354a += i2;
        return f4;
    }

    @Override // org.jboss.netty.buffer.e
    public void o0(int i2) {
        X(this.f73355b, i2);
        this.f73355b += 3;
    }

    @Override // org.jboss.netty.buffer.e
    public void p0(e eVar, int i2, int i4) {
        m(i4);
        l0(this.f73354a, eVar, i2, i4);
        this.f73354a += i4;
    }

    @Override // org.jboss.netty.buffer.e
    public void q(e eVar) {
        I(eVar, eVar.readableBytes());
    }

    @Override // org.jboss.netty.buffer.e
    public void r0(int i2, int i4) {
        if (i2 >= 0 && i2 <= i4 && i4 <= capacity()) {
            this.f73354a = i2;
            this.f73355b = i4;
            return;
        }
        throw new IndexOutOfBoundsException("Invalid writerIndex: " + i4 + " - Maximum is " + i2 + " or " + capacity());
    }

    @Override // org.jboss.netty.buffer.e
    public byte readByte() {
        int i2 = this.f73354a;
        if (i2 != this.f73355b) {
            this.f73354a = i2 + 1;
            return getByte(i2);
        }
        throw new IndexOutOfBoundsException("Readable byte limit exceeded: " + this.f73354a);
    }

    @Override // org.jboss.netty.buffer.e
    public int readBytes(GatheringByteChannel gatheringByteChannel, int i2) throws IOException {
        m(i2);
        int bytes = getBytes(this.f73354a, gatheringByteChannel, i2);
        this.f73354a += bytes;
        return bytes;
    }

    @Override // org.jboss.netty.buffer.e
    public char readChar() {
        return (char) readShort();
    }

    @Override // org.jboss.netty.buffer.e
    public double readDouble() {
        return Double.longBitsToDouble(readLong());
    }

    @Override // org.jboss.netty.buffer.e
    public float readFloat() {
        return Float.intBitsToFloat(readInt());
    }

    @Override // org.jboss.netty.buffer.e
    public int readInt() {
        m(4);
        int i2 = getInt(this.f73354a);
        this.f73354a += 4;
        return i2;
    }

    @Override // org.jboss.netty.buffer.e
    public long readLong() {
        m(8);
        long j4 = getLong(this.f73354a);
        this.f73354a += 8;
        return j4;
    }

    @Override // org.jboss.netty.buffer.e
    public int readMedium() {
        int readUnsignedMedium = readUnsignedMedium();
        return (8388608 & readUnsignedMedium) != 0 ? readUnsignedMedium | (-16777216) : readUnsignedMedium;
    }

    @Override // org.jboss.netty.buffer.e
    public short readShort() {
        m(2);
        short s3 = getShort(this.f73354a);
        this.f73354a += 2;
        return s3;
    }

    @Override // org.jboss.netty.buffer.e
    public short readUnsignedByte() {
        return (short) (readByte() & 255);
    }

    @Override // org.jboss.netty.buffer.e
    public long readUnsignedInt() {
        return readInt() & 4294967295L;
    }

    @Override // org.jboss.netty.buffer.e
    public int readUnsignedMedium() {
        m(3);
        int unsignedMedium = getUnsignedMedium(this.f73354a);
        this.f73354a += 3;
        return unsignedMedium;
    }

    @Override // org.jboss.netty.buffer.e
    public int readUnsignedShort() {
        return readShort() & UShort.MAX_VALUE;
    }

    @Override // org.jboss.netty.buffer.e
    public int readableBytes() {
        return this.f73355b - this.f73354a;
    }

    @Override // org.jboss.netty.buffer.e
    public int readerIndex() {
        return this.f73354a;
    }

    @Override // org.jboss.netty.buffer.e
    public void s0(byte[] bArr, int i2, int i4) {
        m(i4);
        V(this.f73354a, bArr, i2, i4);
        this.f73354a += i4;
    }

    @Override // org.jboss.netty.buffer.e
    public void setDouble(int i2, double d4) {
        setLong(i2, Double.doubleToRawLongBits(d4));
    }

    @Override // org.jboss.netty.buffer.e
    public void setFloat(int i2, float f4) {
        setInt(i2, Float.floatToRawIntBits(f4));
    }

    @Override // org.jboss.netty.buffer.e
    public void skipBytes(int i2) {
        int i4 = this.f73354a + i2;
        if (i4 <= this.f73355b) {
            this.f73354a = i4;
            return;
        }
        throw new IndexOutOfBoundsException("Readable bytes exceeded - Need " + i4 + ", maximum is " + this.f73355b);
    }

    @Override // org.jboss.netty.buffer.e
    public String toString(Charset charset) {
        return toString(this.f73354a, readableBytes(), charset);
    }

    @Override // org.jboss.netty.buffer.e
    public void u(byte[] bArr) {
        s0(bArr, 0, bArr.length);
    }

    @Override // org.jboss.netty.buffer.e
    public void u0(int i2) {
        if (i2 >= this.f73354a && i2 <= capacity()) {
            this.f73355b = i2;
            return;
        }
        throw new IndexOutOfBoundsException("Invalid readerIndex: " + this.f73354a + " - Maximum is " + i2);
    }

    @Override // org.jboss.netty.buffer.e
    public void v(e eVar) {
        B0(eVar, eVar.writableBytes());
    }

    @Override // org.jboss.netty.buffer.e
    public int writableBytes() {
        return capacity() - this.f73355b;
    }

    @Override // org.jboss.netty.buffer.e
    public void writeByte(int i2) {
        int i4 = this.f73355b;
        this.f73355b = i4 + 1;
        T(i4, i2);
    }

    @Override // org.jboss.netty.buffer.e
    public int writeBytes(InputStream inputStream, int i2) throws IOException {
        int bytes = setBytes(this.f73355b, inputStream, i2);
        if (bytes > 0) {
            this.f73355b += bytes;
        }
        return bytes;
    }

    @Override // org.jboss.netty.buffer.e
    public void writeChar(int i2) {
        writeShort(i2);
    }

    @Override // org.jboss.netty.buffer.e
    public void writeDouble(double d4) {
        writeLong(Double.doubleToRawLongBits(d4));
    }

    @Override // org.jboss.netty.buffer.e
    public void writeFloat(float f4) {
        writeInt(Float.floatToRawIntBits(f4));
    }

    @Override // org.jboss.netty.buffer.e
    public void writeInt(int i2) {
        setInt(this.f73355b, i2);
        this.f73355b += 4;
    }

    @Override // org.jboss.netty.buffer.e
    public void writeLong(long j4) {
        setLong(this.f73355b, j4);
        this.f73355b += 8;
    }

    @Override // org.jboss.netty.buffer.e
    public void writeShort(int i2) {
        q0(this.f73355b, i2);
        this.f73355b += 2;
    }

    @Override // org.jboss.netty.buffer.e
    public int writerIndex() {
        return this.f73355b;
    }

    @Override // org.jboss.netty.buffer.e
    public void x0() {
        this.f73357d = this.f73355b;
    }

    @Override // org.jboss.netty.buffer.e
    public void z(int i2, e eVar) {
        F(i2, eVar, eVar.writableBytes());
    }

    @Override // org.jboss.netty.buffer.e
    @Deprecated
    public String z0(String str) {
        return toString(Charset.forName(str));
    }

    @Override // org.jboss.netty.buffer.e
    public int bytesBefore(int i2, byte b4) {
        m(i2);
        return bytesBefore(readerIndex(), i2, b4);
    }

    @Override // org.jboss.netty.buffer.e
    public String toString(int i2, int i4, Charset charset) {
        return i4 == 0 ? "" : h.z(R(i2, i4), charset);
    }

    @Override // org.jboss.netty.buffer.e
    public String toString() {
        return getClass().getSimpleName() + "(ridx=" + this.f73354a + ", widx=" + this.f73355b + ", cap=" + capacity() + ')';
    }

    @Override // org.jboss.netty.buffer.e
    public int writeBytes(ScatteringByteChannel scatteringByteChannel, int i2) throws IOException {
        int bytes = setBytes(this.f73355b, scatteringByteChannel, i2);
        if (bytes > 0) {
            this.f73355b += bytes;
        }
        return bytes;
    }

    @Override // org.jboss.netty.buffer.e
    public int bytesBefore(int i2, int i4, byte b4) {
        int indexOf = indexOf(i2, i4 + i2, b4);
        if (indexOf < 0) {
            return -1;
        }
        return indexOf - i2;
    }
}
