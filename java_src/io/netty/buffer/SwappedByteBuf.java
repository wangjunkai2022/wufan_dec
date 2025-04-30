package io.netty.buffer;

import io.netty.util.ByteProcessor;
import io.netty.util.internal.ObjectUtil;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;
import java.nio.charset.Charset;
import kotlin.UShort;
@Deprecated
/* loaded from: classes5.dex */
public class SwappedByteBuf extends ByteBuf {
    private final ByteBuf buf;
    private final ByteOrder order;

    public SwappedByteBuf(ByteBuf byteBuf) {
        this.buf = (ByteBuf) ObjectUtil.checkNotNull(byteBuf, "buf");
        ByteOrder order = byteBuf.order();
        ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
        if (order == byteOrder) {
            this.order = ByteOrder.LITTLE_ENDIAN;
        } else {
            this.order = byteOrder;
        }
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBufAllocator alloc() {
        return this.buf.alloc();
    }

    @Override // io.netty.buffer.ByteBuf
    public byte[] array() {
        return this.buf.array();
    }

    @Override // io.netty.buffer.ByteBuf
    public int arrayOffset() {
        return this.buf.arrayOffset();
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf asReadOnly() {
        return Unpooled.unmodifiableBuffer(this);
    }

    @Override // io.netty.buffer.ByteBuf
    public int bytesBefore(byte b4) {
        return this.buf.bytesBefore(b4);
    }

    @Override // io.netty.buffer.ByteBuf
    public int capacity() {
        return this.buf.capacity();
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf clear() {
        this.buf.clear();
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf copy() {
        return this.buf.copy().order(this.order);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf discardReadBytes() {
        this.buf.discardReadBytes();
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf discardSomeReadBytes() {
        this.buf.discardSomeReadBytes();
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf duplicate() {
        return this.buf.duplicate().order(this.order);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf ensureWritable(int i2) {
        this.buf.ensureWritable(i2);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ByteBuf) {
            return ByteBufUtil.equals(this, (ByteBuf) obj);
        }
        return false;
    }

    @Override // io.netty.buffer.ByteBuf
    public int forEachByte(ByteProcessor byteProcessor) {
        return this.buf.forEachByte(byteProcessor);
    }

    @Override // io.netty.buffer.ByteBuf
    public int forEachByteDesc(ByteProcessor byteProcessor) {
        return this.buf.forEachByteDesc(byteProcessor);
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean getBoolean(int i2) {
        return this.buf.getBoolean(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public byte getByte(int i2) {
        return this.buf.getByte(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int i2, ByteBuf byteBuf) {
        this.buf.getBytes(i2, byteBuf);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public char getChar(int i2) {
        return (char) getShort(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public CharSequence getCharSequence(int i2, int i4, Charset charset) {
        return this.buf.getCharSequence(i2, i4, charset);
    }

    @Override // io.netty.buffer.ByteBuf
    public double getDouble(int i2) {
        return Double.longBitsToDouble(getLong(i2));
    }

    @Override // io.netty.buffer.ByteBuf
    public float getFloat(int i2) {
        return Float.intBitsToFloat(getInt(i2));
    }

    @Override // io.netty.buffer.ByteBuf
    public int getInt(int i2) {
        return ByteBufUtil.swapInt(this.buf.getInt(i2));
    }

    @Override // io.netty.buffer.ByteBuf
    public int getIntLE(int i2) {
        return this.buf.getInt(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public long getLong(int i2) {
        return ByteBufUtil.swapLong(this.buf.getLong(i2));
    }

    @Override // io.netty.buffer.ByteBuf
    public long getLongLE(int i2) {
        return this.buf.getLong(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public int getMedium(int i2) {
        return ByteBufUtil.swapMedium(this.buf.getMedium(i2));
    }

    @Override // io.netty.buffer.ByteBuf
    public int getMediumLE(int i2) {
        return this.buf.getMedium(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public short getShort(int i2) {
        return ByteBufUtil.swapShort(this.buf.getShort(i2));
    }

    @Override // io.netty.buffer.ByteBuf
    public short getShortLE(int i2) {
        return this.buf.getShort(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public short getUnsignedByte(int i2) {
        return this.buf.getUnsignedByte(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public long getUnsignedInt(int i2) {
        return getInt(i2) & 4294967295L;
    }

    @Override // io.netty.buffer.ByteBuf
    public long getUnsignedIntLE(int i2) {
        return getIntLE(i2) & 4294967295L;
    }

    @Override // io.netty.buffer.ByteBuf
    public int getUnsignedMedium(int i2) {
        return getMedium(i2) & 16777215;
    }

    @Override // io.netty.buffer.ByteBuf
    public int getUnsignedMediumLE(int i2) {
        return getMediumLE(i2) & 16777215;
    }

    @Override // io.netty.buffer.ByteBuf
    public int getUnsignedShort(int i2) {
        return getShort(i2) & UShort.MAX_VALUE;
    }

    @Override // io.netty.buffer.ByteBuf
    public int getUnsignedShortLE(int i2) {
        return getShortLE(i2) & UShort.MAX_VALUE;
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean hasArray() {
        return this.buf.hasArray();
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean hasMemoryAddress() {
        return this.buf.hasMemoryAddress();
    }

    @Override // io.netty.buffer.ByteBuf
    public int hashCode() {
        return this.buf.hashCode();
    }

    @Override // io.netty.buffer.ByteBuf
    public int indexOf(int i2, int i4, byte b4) {
        return this.buf.indexOf(i2, i4, b4);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuffer internalNioBuffer(int i2, int i4) {
        return nioBuffer(i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // io.netty.buffer.ByteBuf
    public final boolean isAccessible() {
        return this.buf.isAccessible();
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean isContiguous() {
        return this.buf.isContiguous();
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean isDirect() {
        return this.buf.isDirect();
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean isReadOnly() {
        return this.buf.isReadOnly();
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean isReadable() {
        return this.buf.isReadable();
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean isWritable() {
        return this.buf.isWritable();
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf markReaderIndex() {
        this.buf.markReaderIndex();
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf markWriterIndex() {
        this.buf.markWriterIndex();
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public int maxCapacity() {
        return this.buf.maxCapacity();
    }

    @Override // io.netty.buffer.ByteBuf
    public int maxFastWritableBytes() {
        return this.buf.maxFastWritableBytes();
    }

    @Override // io.netty.buffer.ByteBuf
    public int maxWritableBytes() {
        return this.buf.maxWritableBytes();
    }

    @Override // io.netty.buffer.ByteBuf
    public long memoryAddress() {
        return this.buf.memoryAddress();
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuffer nioBuffer() {
        return this.buf.nioBuffer().order(this.order);
    }

    @Override // io.netty.buffer.ByteBuf
    public int nioBufferCount() {
        return this.buf.nioBufferCount();
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuffer[] nioBuffers() {
        ByteBuffer[] nioBuffers = this.buf.nioBuffers();
        for (int i2 = 0; i2 < nioBuffers.length; i2++) {
            nioBuffers[i2] = nioBuffers[i2].order(this.order);
        }
        return nioBuffers;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteOrder order() {
        return this.order;
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean readBoolean() {
        return this.buf.readBoolean();
    }

    @Override // io.netty.buffer.ByteBuf
    public byte readByte() {
        return this.buf.readByte();
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf readBytes(int i2) {
        return this.buf.readBytes(i2).order(order());
    }

    @Override // io.netty.buffer.ByteBuf
    public char readChar() {
        return (char) readShort();
    }

    @Override // io.netty.buffer.ByteBuf
    public CharSequence readCharSequence(int i2, Charset charset) {
        return this.buf.readCharSequence(i2, charset);
    }

    @Override // io.netty.buffer.ByteBuf
    public double readDouble() {
        return Double.longBitsToDouble(readLong());
    }

    @Override // io.netty.buffer.ByteBuf
    public float readFloat() {
        return Float.intBitsToFloat(readInt());
    }

    @Override // io.netty.buffer.ByteBuf
    public int readInt() {
        return ByteBufUtil.swapInt(this.buf.readInt());
    }

    @Override // io.netty.buffer.ByteBuf
    public int readIntLE() {
        return this.buf.readInt();
    }

    @Override // io.netty.buffer.ByteBuf
    public long readLong() {
        return ByteBufUtil.swapLong(this.buf.readLong());
    }

    @Override // io.netty.buffer.ByteBuf
    public long readLongLE() {
        return this.buf.readLong();
    }

    @Override // io.netty.buffer.ByteBuf
    public int readMedium() {
        return ByteBufUtil.swapMedium(this.buf.readMedium());
    }

    @Override // io.netty.buffer.ByteBuf
    public int readMediumLE() {
        return this.buf.readMedium();
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf readRetainedSlice(int i2) {
        return this.buf.readRetainedSlice(i2).order(this.order);
    }

    @Override // io.netty.buffer.ByteBuf
    public short readShort() {
        return ByteBufUtil.swapShort(this.buf.readShort());
    }

    @Override // io.netty.buffer.ByteBuf
    public short readShortLE() {
        return this.buf.readShort();
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf readSlice(int i2) {
        return this.buf.readSlice(i2).order(this.order);
    }

    @Override // io.netty.buffer.ByteBuf
    public short readUnsignedByte() {
        return this.buf.readUnsignedByte();
    }

    @Override // io.netty.buffer.ByteBuf
    public long readUnsignedInt() {
        return readInt() & 4294967295L;
    }

    @Override // io.netty.buffer.ByteBuf
    public long readUnsignedIntLE() {
        return readIntLE() & 4294967295L;
    }

    @Override // io.netty.buffer.ByteBuf
    public int readUnsignedMedium() {
        return readMedium() & 16777215;
    }

    @Override // io.netty.buffer.ByteBuf
    public int readUnsignedMediumLE() {
        return readMediumLE() & 16777215;
    }

    @Override // io.netty.buffer.ByteBuf
    public int readUnsignedShort() {
        return readShort() & UShort.MAX_VALUE;
    }

    @Override // io.netty.buffer.ByteBuf
    public int readUnsignedShortLE() {
        return readShortLE() & UShort.MAX_VALUE;
    }

    @Override // io.netty.buffer.ByteBuf
    public int readableBytes() {
        return this.buf.readableBytes();
    }

    @Override // io.netty.buffer.ByteBuf
    public int readerIndex() {
        return this.buf.readerIndex();
    }

    @Override // io.netty.util.ReferenceCounted
    public int refCnt() {
        return this.buf.refCnt();
    }

    @Override // io.netty.util.ReferenceCounted
    public boolean release() {
        return this.buf.release();
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf resetReaderIndex() {
        this.buf.resetReaderIndex();
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf resetWriterIndex() {
        this.buf.resetWriterIndex();
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf retainedDuplicate() {
        return this.buf.retainedDuplicate().order(this.order);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf retainedSlice() {
        return this.buf.retainedSlice().order(this.order);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setBoolean(int i2, boolean z3) {
        this.buf.setBoolean(i2, z3);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setByte(int i2, int i4) {
        this.buf.setByte(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setBytes(int i2, ByteBuf byteBuf) {
        this.buf.setBytes(i2, byteBuf);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setChar(int i2, int i4) {
        setShort(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public int setCharSequence(int i2, CharSequence charSequence, Charset charset) {
        return this.buf.setCharSequence(i2, charSequence, charset);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setDouble(int i2, double d4) {
        setLong(i2, Double.doubleToRawLongBits(d4));
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setFloat(int i2, float f4) {
        setInt(i2, Float.floatToRawIntBits(f4));
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setIndex(int i2, int i4) {
        this.buf.setIndex(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setInt(int i2, int i4) {
        this.buf.setInt(i2, ByteBufUtil.swapInt(i4));
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setIntLE(int i2, int i4) {
        this.buf.setInt(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setLong(int i2, long j4) {
        this.buf.setLong(i2, ByteBufUtil.swapLong(j4));
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setLongLE(int i2, long j4) {
        this.buf.setLong(i2, j4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setMedium(int i2, int i4) {
        this.buf.setMedium(i2, ByteBufUtil.swapMedium(i4));
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setMediumLE(int i2, int i4) {
        this.buf.setMedium(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setShort(int i2, int i4) {
        this.buf.setShort(i2, ByteBufUtil.swapShort((short) i4));
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setShortLE(int i2, int i4) {
        this.buf.setShort(i2, (short) i4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setZero(int i2, int i4) {
        this.buf.setZero(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf skipBytes(int i2) {
        this.buf.skipBytes(i2);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf slice() {
        return this.buf.slice().order(this.order);
    }

    @Override // io.netty.buffer.ByteBuf
    public String toString(Charset charset) {
        return this.buf.toString(charset);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf unwrap() {
        return this.buf;
    }

    @Override // io.netty.buffer.ByteBuf
    public int writableBytes() {
        return this.buf.writableBytes();
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeBoolean(boolean z3) {
        this.buf.writeBoolean(z3);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeByte(int i2) {
        this.buf.writeByte(i2);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeBytes(ByteBuf byteBuf) {
        this.buf.writeBytes(byteBuf);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeChar(int i2) {
        writeShort(i2);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public int writeCharSequence(CharSequence charSequence, Charset charset) {
        return this.buf.writeCharSequence(charSequence, charset);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeDouble(double d4) {
        writeLong(Double.doubleToRawLongBits(d4));
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeFloat(float f4) {
        writeInt(Float.floatToRawIntBits(f4));
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeInt(int i2) {
        this.buf.writeInt(ByteBufUtil.swapInt(i2));
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeIntLE(int i2) {
        this.buf.writeInt(i2);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeLong(long j4) {
        this.buf.writeLong(ByteBufUtil.swapLong(j4));
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeLongLE(long j4) {
        this.buf.writeLong(j4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeMedium(int i2) {
        this.buf.writeMedium(ByteBufUtil.swapMedium(i2));
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeMediumLE(int i2) {
        this.buf.writeMedium(i2);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeShort(int i2) {
        this.buf.writeShort(ByteBufUtil.swapShort((short) i2));
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeShortLE(int i2) {
        this.buf.writeShort((short) i2);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeZero(int i2) {
        this.buf.writeZero(i2);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public int writerIndex() {
        return this.buf.writerIndex();
    }

    @Override // io.netty.buffer.ByteBuf
    public int bytesBefore(int i2, byte b4) {
        return this.buf.bytesBefore(i2, b4);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf capacity(int i2) {
        this.buf.capacity(i2);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf, java.lang.Comparable
    public int compareTo(ByteBuf byteBuf) {
        return ByteBufUtil.compare(this, byteBuf);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf copy(int i2, int i4) {
        return this.buf.copy(i2, i4).order(this.order);
    }

    @Override // io.netty.buffer.ByteBuf
    public int ensureWritable(int i2, boolean z3) {
        return this.buf.ensureWritable(i2, z3);
    }

    @Override // io.netty.buffer.ByteBuf
    public int forEachByte(int i2, int i4, ByteProcessor byteProcessor) {
        return this.buf.forEachByte(i2, i4, byteProcessor);
    }

    @Override // io.netty.buffer.ByteBuf
    public int forEachByteDesc(int i2, int i4, ByteProcessor byteProcessor) {
        return this.buf.forEachByteDesc(i2, i4, byteProcessor);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int i2, ByteBuf byteBuf, int i4) {
        this.buf.getBytes(i2, byteBuf, i4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean isReadable(int i2) {
        return this.buf.isReadable(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean isWritable(int i2) {
        return this.buf.isWritable(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuffer nioBuffer(int i2, int i4) {
        return this.buf.nioBuffer(i2, i4).order(this.order);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf order(ByteOrder byteOrder) {
        return ObjectUtil.checkNotNull(byteOrder, "endianness") == this.order ? this : this.buf;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf readBytes(ByteBuf byteBuf) {
        this.buf.readBytes(byteBuf);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf readerIndex(int i2) {
        this.buf.readerIndex(i2);
        return this;
    }

    @Override // io.netty.util.ReferenceCounted
    public boolean release(int i2) {
        return this.buf.release(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf retainedSlice(int i2, int i4) {
        return this.buf.retainedSlice(i2, i4).order(this.order);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setBytes(int i2, ByteBuf byteBuf, int i4) {
        this.buf.setBytes(i2, byteBuf, i4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf slice(int i2, int i4) {
        return this.buf.slice(i2, i4).order(this.order);
    }

    @Override // io.netty.buffer.ByteBuf
    public String toString(int i2, int i4, Charset charset) {
        return this.buf.toString(i2, i4, charset);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeBytes(ByteBuf byteBuf, int i2) {
        this.buf.writeBytes(byteBuf, i2);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writerIndex(int i2) {
        this.buf.writerIndex(i2);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public int bytesBefore(int i2, int i4, byte b4) {
        return this.buf.bytesBefore(i2, i4, b4);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int i2, ByteBuf byteBuf, int i4, int i5) {
        this.buf.getBytes(i2, byteBuf, i4, i5);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf readBytes(ByteBuf byteBuf, int i2) {
        this.buf.readBytes(byteBuf, i2);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf, io.netty.util.ReferenceCounted
    public ByteBuf retain() {
        this.buf.retain();
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setBytes(int i2, ByteBuf byteBuf, int i4, int i5) {
        this.buf.setBytes(i2, byteBuf, i4, i5);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public String toString() {
        return "Swapped(" + this.buf + ')';
    }

    @Override // io.netty.buffer.ByteBuf, io.netty.util.ReferenceCounted
    public ByteBuf touch() {
        this.buf.touch();
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeBytes(ByteBuf byteBuf, int i2, int i4) {
        this.buf.writeBytes(byteBuf, i2, i4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int i2, byte[] bArr) {
        this.buf.getBytes(i2, bArr);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuffer[] nioBuffers(int i2, int i4) {
        ByteBuffer[] nioBuffers = this.buf.nioBuffers(i2, i4);
        for (int i5 = 0; i5 < nioBuffers.length; i5++) {
            nioBuffers[i5] = nioBuffers[i5].order(this.order);
        }
        return nioBuffers;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf readBytes(ByteBuf byteBuf, int i2, int i4) {
        this.buf.readBytes(byteBuf, i2, i4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf, io.netty.util.ReferenceCounted
    public ByteBuf retain(int i2) {
        this.buf.retain(i2);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setBytes(int i2, byte[] bArr) {
        this.buf.setBytes(i2, bArr);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf, io.netty.util.ReferenceCounted
    public ByteBuf touch(Object obj) {
        this.buf.touch(obj);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeBytes(byte[] bArr) {
        this.buf.writeBytes(bArr);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int i2, byte[] bArr, int i4, int i5) {
        this.buf.getBytes(i2, bArr, i4, i5);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf readBytes(byte[] bArr) {
        this.buf.readBytes(bArr);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setBytes(int i2, byte[] bArr, int i4, int i5) {
        this.buf.setBytes(i2, bArr, i4, i5);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeBytes(byte[] bArr, int i2, int i4) {
        this.buf.writeBytes(bArr, i2, i4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int i2, ByteBuffer byteBuffer) {
        this.buf.getBytes(i2, byteBuffer);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf readBytes(byte[] bArr, int i2, int i4) {
        this.buf.readBytes(bArr, i2, i4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setBytes(int i2, ByteBuffer byteBuffer) {
        this.buf.setBytes(i2, byteBuffer);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeBytes(ByteBuffer byteBuffer) {
        this.buf.writeBytes(byteBuffer);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int i2, OutputStream outputStream, int i4) throws IOException {
        this.buf.getBytes(i2, outputStream, i4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf readBytes(ByteBuffer byteBuffer) {
        this.buf.readBytes(byteBuffer);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public int setBytes(int i2, InputStream inputStream, int i4) throws IOException {
        return this.buf.setBytes(i2, inputStream, i4);
    }

    @Override // io.netty.buffer.ByteBuf
    public int writeBytes(InputStream inputStream, int i2) throws IOException {
        return this.buf.writeBytes(inputStream, i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public int getBytes(int i2, GatheringByteChannel gatheringByteChannel, int i4) throws IOException {
        return this.buf.getBytes(i2, gatheringByteChannel, i4);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf readBytes(OutputStream outputStream, int i2) throws IOException {
        this.buf.readBytes(outputStream, i2);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public int setBytes(int i2, ScatteringByteChannel scatteringByteChannel, int i4) throws IOException {
        return this.buf.setBytes(i2, scatteringByteChannel, i4);
    }

    @Override // io.netty.buffer.ByteBuf
    public int writeBytes(ScatteringByteChannel scatteringByteChannel, int i2) throws IOException {
        return this.buf.writeBytes(scatteringByteChannel, i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public int getBytes(int i2, FileChannel fileChannel, long j4, int i4) throws IOException {
        return this.buf.getBytes(i2, fileChannel, j4, i4);
    }

    @Override // io.netty.buffer.ByteBuf
    public int readBytes(GatheringByteChannel gatheringByteChannel, int i2) throws IOException {
        return this.buf.readBytes(gatheringByteChannel, i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public int setBytes(int i2, FileChannel fileChannel, long j4, int i4) throws IOException {
        return this.buf.setBytes(i2, fileChannel, j4, i4);
    }

    @Override // io.netty.buffer.ByteBuf
    public int writeBytes(FileChannel fileChannel, long j4, int i2) throws IOException {
        return this.buf.writeBytes(fileChannel, j4, i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public int readBytes(FileChannel fileChannel, long j4, int i2) throws IOException {
        return this.buf.readBytes(fileChannel, j4, i2);
    }
}
