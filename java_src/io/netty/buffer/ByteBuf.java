package io.netty.buffer;

import io.netty.util.ByteProcessor;
import io.netty.util.ReferenceCounted;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;
import java.nio.charset.Charset;
/* loaded from: classes5.dex */
public abstract class ByteBuf implements ReferenceCounted, Comparable<ByteBuf> {
    public abstract ByteBufAllocator alloc();

    public abstract byte[] array();

    public abstract int arrayOffset();

    public abstract ByteBuf asReadOnly();

    public abstract int bytesBefore(byte b4);

    public abstract int bytesBefore(int i2, byte b4);

    public abstract int bytesBefore(int i2, int i4, byte b4);

    public abstract int capacity();

    public abstract ByteBuf capacity(int i2);

    public abstract ByteBuf clear();

    @Override // java.lang.Comparable
    public abstract int compareTo(ByteBuf byteBuf);

    public abstract ByteBuf copy();

    public abstract ByteBuf copy(int i2, int i4);

    public abstract ByteBuf discardReadBytes();

    public abstract ByteBuf discardSomeReadBytes();

    public abstract ByteBuf duplicate();

    public abstract int ensureWritable(int i2, boolean z3);

    public abstract ByteBuf ensureWritable(int i2);

    public abstract boolean equals(Object obj);

    public abstract int forEachByte(int i2, int i4, ByteProcessor byteProcessor);

    public abstract int forEachByte(ByteProcessor byteProcessor);

    public abstract int forEachByteDesc(int i2, int i4, ByteProcessor byteProcessor);

    public abstract int forEachByteDesc(ByteProcessor byteProcessor);

    public abstract boolean getBoolean(int i2);

    public abstract byte getByte(int i2);

    public abstract int getBytes(int i2, FileChannel fileChannel, long j4, int i4) throws IOException;

    public abstract int getBytes(int i2, GatheringByteChannel gatheringByteChannel, int i4) throws IOException;

    public abstract ByteBuf getBytes(int i2, ByteBuf byteBuf);

    public abstract ByteBuf getBytes(int i2, ByteBuf byteBuf, int i4);

    public abstract ByteBuf getBytes(int i2, ByteBuf byteBuf, int i4, int i5);

    public abstract ByteBuf getBytes(int i2, OutputStream outputStream, int i4) throws IOException;

    public abstract ByteBuf getBytes(int i2, ByteBuffer byteBuffer);

    public abstract ByteBuf getBytes(int i2, byte[] bArr);

    public abstract ByteBuf getBytes(int i2, byte[] bArr, int i4, int i5);

    public abstract char getChar(int i2);

    public abstract CharSequence getCharSequence(int i2, int i4, Charset charset);

    public abstract double getDouble(int i2);

    public double getDoubleLE(int i2) {
        return Double.longBitsToDouble(getLongLE(i2));
    }

    public abstract float getFloat(int i2);

    public float getFloatLE(int i2) {
        return Float.intBitsToFloat(getIntLE(i2));
    }

    public abstract int getInt(int i2);

    public abstract int getIntLE(int i2);

    public abstract long getLong(int i2);

    public abstract long getLongLE(int i2);

    public abstract int getMedium(int i2);

    public abstract int getMediumLE(int i2);

    public abstract short getShort(int i2);

    public abstract short getShortLE(int i2);

    public abstract short getUnsignedByte(int i2);

    public abstract long getUnsignedInt(int i2);

    public abstract long getUnsignedIntLE(int i2);

    public abstract int getUnsignedMedium(int i2);

    public abstract int getUnsignedMediumLE(int i2);

    public abstract int getUnsignedShort(int i2);

    public abstract int getUnsignedShortLE(int i2);

    public abstract boolean hasArray();

    public abstract boolean hasMemoryAddress();

    public abstract int hashCode();

    public abstract int indexOf(int i2, int i4, byte b4);

    public abstract ByteBuffer internalNioBuffer(int i2, int i4);

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isAccessible() {
        return refCnt() != 0;
    }

    public boolean isContiguous() {
        return false;
    }

    public abstract boolean isDirect();

    public abstract boolean isReadOnly();

    public abstract boolean isReadable();

    public abstract boolean isReadable(int i2);

    public abstract boolean isWritable();

    public abstract boolean isWritable(int i2);

    public abstract ByteBuf markReaderIndex();

    public abstract ByteBuf markWriterIndex();

    public abstract int maxCapacity();

    public int maxFastWritableBytes() {
        return writableBytes();
    }

    public abstract int maxWritableBytes();

    public abstract long memoryAddress();

    public abstract ByteBuffer nioBuffer();

    public abstract ByteBuffer nioBuffer(int i2, int i4);

    public abstract int nioBufferCount();

    public abstract ByteBuffer[] nioBuffers();

    public abstract ByteBuffer[] nioBuffers(int i2, int i4);

    @Deprecated
    public abstract ByteBuf order(ByteOrder byteOrder);

    @Deprecated
    public abstract ByteOrder order();

    public abstract boolean readBoolean();

    public abstract byte readByte();

    public abstract int readBytes(FileChannel fileChannel, long j4, int i2) throws IOException;

    public abstract int readBytes(GatheringByteChannel gatheringByteChannel, int i2) throws IOException;

    public abstract ByteBuf readBytes(int i2);

    public abstract ByteBuf readBytes(ByteBuf byteBuf);

    public abstract ByteBuf readBytes(ByteBuf byteBuf, int i2);

    public abstract ByteBuf readBytes(ByteBuf byteBuf, int i2, int i4);

    public abstract ByteBuf readBytes(OutputStream outputStream, int i2) throws IOException;

    public abstract ByteBuf readBytes(ByteBuffer byteBuffer);

    public abstract ByteBuf readBytes(byte[] bArr);

    public abstract ByteBuf readBytes(byte[] bArr, int i2, int i4);

    public abstract char readChar();

    public abstract CharSequence readCharSequence(int i2, Charset charset);

    public abstract double readDouble();

    public double readDoubleLE() {
        return Double.longBitsToDouble(readLongLE());
    }

    public abstract float readFloat();

    public float readFloatLE() {
        return Float.intBitsToFloat(readIntLE());
    }

    public abstract int readInt();

    public abstract int readIntLE();

    public abstract long readLong();

    public abstract long readLongLE();

    public abstract int readMedium();

    public abstract int readMediumLE();

    public abstract ByteBuf readRetainedSlice(int i2);

    public abstract short readShort();

    public abstract short readShortLE();

    public abstract ByteBuf readSlice(int i2);

    public abstract short readUnsignedByte();

    public abstract long readUnsignedInt();

    public abstract long readUnsignedIntLE();

    public abstract int readUnsignedMedium();

    public abstract int readUnsignedMediumLE();

    public abstract int readUnsignedShort();

    public abstract int readUnsignedShortLE();

    public abstract int readableBytes();

    public abstract int readerIndex();

    public abstract ByteBuf readerIndex(int i2);

    public abstract ByteBuf resetReaderIndex();

    public abstract ByteBuf resetWriterIndex();

    @Override // io.netty.util.ReferenceCounted
    public abstract ByteBuf retain();

    @Override // io.netty.util.ReferenceCounted
    public abstract ByteBuf retain(int i2);

    public abstract ByteBuf retainedDuplicate();

    public abstract ByteBuf retainedSlice();

    public abstract ByteBuf retainedSlice(int i2, int i4);

    public abstract ByteBuf setBoolean(int i2, boolean z3);

    public abstract ByteBuf setByte(int i2, int i4);

    public abstract int setBytes(int i2, InputStream inputStream, int i4) throws IOException;

    public abstract int setBytes(int i2, FileChannel fileChannel, long j4, int i4) throws IOException;

    public abstract int setBytes(int i2, ScatteringByteChannel scatteringByteChannel, int i4) throws IOException;

    public abstract ByteBuf setBytes(int i2, ByteBuf byteBuf);

    public abstract ByteBuf setBytes(int i2, ByteBuf byteBuf, int i4);

    public abstract ByteBuf setBytes(int i2, ByteBuf byteBuf, int i4, int i5);

    public abstract ByteBuf setBytes(int i2, ByteBuffer byteBuffer);

    public abstract ByteBuf setBytes(int i2, byte[] bArr);

    public abstract ByteBuf setBytes(int i2, byte[] bArr, int i4, int i5);

    public abstract ByteBuf setChar(int i2, int i4);

    public abstract int setCharSequence(int i2, CharSequence charSequence, Charset charset);

    public abstract ByteBuf setDouble(int i2, double d4);

    public ByteBuf setDoubleLE(int i2, double d4) {
        return setLongLE(i2, Double.doubleToRawLongBits(d4));
    }

    public abstract ByteBuf setFloat(int i2, float f4);

    public ByteBuf setFloatLE(int i2, float f4) {
        return setIntLE(i2, Float.floatToRawIntBits(f4));
    }

    public abstract ByteBuf setIndex(int i2, int i4);

    public abstract ByteBuf setInt(int i2, int i4);

    public abstract ByteBuf setIntLE(int i2, int i4);

    public abstract ByteBuf setLong(int i2, long j4);

    public abstract ByteBuf setLongLE(int i2, long j4);

    public abstract ByteBuf setMedium(int i2, int i4);

    public abstract ByteBuf setMediumLE(int i2, int i4);

    public abstract ByteBuf setShort(int i2, int i4);

    public abstract ByteBuf setShortLE(int i2, int i4);

    public abstract ByteBuf setZero(int i2, int i4);

    public abstract ByteBuf skipBytes(int i2);

    public abstract ByteBuf slice();

    public abstract ByteBuf slice(int i2, int i4);

    public abstract String toString();

    public abstract String toString(int i2, int i4, Charset charset);

    public abstract String toString(Charset charset);

    @Override // io.netty.util.ReferenceCounted
    public abstract ByteBuf touch();

    @Override // io.netty.util.ReferenceCounted
    public abstract ByteBuf touch(Object obj);

    public abstract ByteBuf unwrap();

    public abstract int writableBytes();

    public abstract ByteBuf writeBoolean(boolean z3);

    public abstract ByteBuf writeByte(int i2);

    public abstract int writeBytes(InputStream inputStream, int i2) throws IOException;

    public abstract int writeBytes(FileChannel fileChannel, long j4, int i2) throws IOException;

    public abstract int writeBytes(ScatteringByteChannel scatteringByteChannel, int i2) throws IOException;

    public abstract ByteBuf writeBytes(ByteBuf byteBuf);

    public abstract ByteBuf writeBytes(ByteBuf byteBuf, int i2);

    public abstract ByteBuf writeBytes(ByteBuf byteBuf, int i2, int i4);

    public abstract ByteBuf writeBytes(ByteBuffer byteBuffer);

    public abstract ByteBuf writeBytes(byte[] bArr);

    public abstract ByteBuf writeBytes(byte[] bArr, int i2, int i4);

    public abstract ByteBuf writeChar(int i2);

    public abstract int writeCharSequence(CharSequence charSequence, Charset charset);

    public abstract ByteBuf writeDouble(double d4);

    public ByteBuf writeDoubleLE(double d4) {
        return writeLongLE(Double.doubleToRawLongBits(d4));
    }

    public abstract ByteBuf writeFloat(float f4);

    public ByteBuf writeFloatLE(float f4) {
        return writeIntLE(Float.floatToRawIntBits(f4));
    }

    public abstract ByteBuf writeInt(int i2);

    public abstract ByteBuf writeIntLE(int i2);

    public abstract ByteBuf writeLong(long j4);

    public abstract ByteBuf writeLongLE(long j4);

    public abstract ByteBuf writeMedium(int i2);

    public abstract ByteBuf writeMediumLE(int i2);

    public abstract ByteBuf writeShort(int i2);

    public abstract ByteBuf writeShortLE(int i2);

    public abstract ByteBuf writeZero(int i2);

    public abstract int writerIndex();

    public abstract ByteBuf writerIndex(int i2);
}
