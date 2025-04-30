package org.jboss.netty.buffer;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;
import java.nio.charset.Charset;
/* compiled from: ChannelBuffer.java */
/* loaded from: classes5.dex */
public interface e extends Comparable<e> {
    void A0(ByteBuffer byteBuffer);

    void B(byte[] bArr);

    void B0(e eVar, int i2);

    boolean C();

    void C0(int i2);

    void D(int i2, e eVar, int i4);

    void D0(int i2, int i4);

    void E(int i2, OutputStream outputStream, int i4) throws IOException;

    void E0(OutputStream outputStream, int i2) throws IOException;

    void F(int i2, e eVar, int i4);

    ByteBuffer[] F0();

    @Deprecated
    String G(int i2, int i4, String str);

    void G0(int i2, ByteBuffer byteBuffer);

    int H(int i2, int i4, g gVar);

    e H0();

    void I(e eVar, int i2);

    boolean I0();

    void J();

    @Deprecated
    e J0(g gVar);

    @Deprecated
    String K(int i2, int i4, String str, g gVar);

    @Deprecated
    int K0(g gVar);

    void L(e eVar, int i2, int i4);

    e M(int i2, int i4);

    e N(int i2);

    void O(int i2);

    int P(int i2, int i4, g gVar);

    ByteBuffer R(int i2, int i4);

    void S(ByteBuffer byteBuffer);

    void T(int i2, int i4);

    void V(int i2, byte[] bArr, int i4, int i5);

    ByteBuffer[] W(int i2, int i4);

    void X(int i2, int i4);

    void Z(byte[] bArr, int i2, int i4);

    e a(int i2, int i4);

    byte[] array();

    int arrayOffset();

    int b0(g gVar);

    int bytesBefore(byte b4);

    int bytesBefore(int i2, byte b4);

    int bytesBefore(int i2, int i4, byte b4);

    void c(int i2, int i4);

    ByteBuffer c0();

    int capacity();

    void clear();

    e copy();

    int d0(e eVar);

    e duplicate();

    boolean equals(Object obj);

    void f();

    int f0(int i2, g gVar);

    f factory();

    void g0();

    byte getByte(int i2);

    int getBytes(int i2, GatheringByteChannel gatheringByteChannel, int i4) throws IOException;

    char getChar(int i2);

    double getDouble(int i2);

    float getFloat(int i2);

    int getInt(int i2);

    long getLong(int i2);

    int getMedium(int i2);

    short getShort(int i2);

    short getUnsignedByte(int i2);

    long getUnsignedInt(int i2);

    int getUnsignedMedium(int i2);

    int getUnsignedShort(int i2);

    void h0(int i2);

    boolean hasArray();

    int hashCode();

    void i0(int i2, byte[] bArr);

    int indexOf(int i2, int i4, byte b4);

    boolean isDirect();

    @Deprecated
    String j(String str, g gVar);

    void j0(int i2, e eVar);

    @Deprecated
    e l(g gVar);

    void l0(int i2, e eVar, int i4, int i5);

    void n(int i2, byte[] bArr);

    void n0();

    e o(int i2);

    void o0(int i2);

    ByteOrder order();

    void p(int i2, byte[] bArr, int i4, int i5);

    void p0(e eVar, int i2, int i4);

    void q(e eVar);

    void q0(int i2, int i4);

    void r0(int i2, int i4);

    byte readByte();

    int readBytes(GatheringByteChannel gatheringByteChannel, int i2) throws IOException;

    char readChar();

    double readDouble();

    float readFloat();

    int readInt();

    long readLong();

    int readMedium();

    short readShort();

    short readUnsignedByte();

    long readUnsignedInt();

    int readUnsignedMedium();

    int readUnsignedShort();

    int readableBytes();

    int readerIndex();

    void s0(byte[] bArr, int i2, int i4);

    int setBytes(int i2, InputStream inputStream, int i4) throws IOException;

    int setBytes(int i2, ScatteringByteChannel scatteringByteChannel, int i4) throws IOException;

    void setDouble(int i2, double d4);

    void setFloat(int i2, float f4);

    void setInt(int i2, int i4);

    void setLong(int i2, long j4);

    void skipBytes(int i2);

    String toString();

    String toString(int i2, int i4, Charset charset);

    String toString(Charset charset);

    void u(byte[] bArr);

    void u0(int i2);

    void v(e eVar);

    void w(int i2, e eVar, int i4, int i5);

    void w0(int i2, ByteBuffer byteBuffer);

    int writableBytes();

    void writeByte(int i2);

    int writeBytes(InputStream inputStream, int i2) throws IOException;

    int writeBytes(ScatteringByteChannel scatteringByteChannel, int i2) throws IOException;

    void writeChar(int i2);

    void writeDouble(double d4);

    void writeFloat(float f4);

    void writeInt(int i2);

    void writeLong(long j4);

    void writeShort(int i2);

    int writerIndex();

    void x0();

    void z(int i2, e eVar);

    @Deprecated
    String z0(String str);
}
