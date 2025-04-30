package io.netty.buffer;

import io.netty.util.ByteProcessor;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.StringUtil;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;
import java.nio.charset.Charset;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class WrappedByteBuf extends ByteBuf {
    protected final ByteBuf buf;

    /* JADX INFO: Access modifiers changed from: protected */
    public WrappedByteBuf(ByteBuf byteBuf) {
        this.buf = (ByteBuf) ObjectUtil.checkNotNull(byteBuf, "buf");
    }

    @Override // io.netty.buffer.ByteBuf
    public final ByteBufAllocator alloc() {
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
        return this.buf.asReadOnly();
    }

    @Override // io.netty.buffer.ByteBuf
    public int bytesBefore(byte b4) {
        return this.buf.bytesBefore(b4);
    }

    @Override // io.netty.buffer.ByteBuf
    public final int capacity() {
        return this.buf.capacity();
    }

    @Override // io.netty.buffer.ByteBuf
    public final ByteBuf clear() {
        this.buf.clear();
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf copy() {
        return this.buf.copy();
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
        return this.buf.duplicate();
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf ensureWritable(int i2) {
        this.buf.ensureWritable(i2);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean equals(Object obj) {
        return this.buf.equals(obj);
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
        return this.buf.getChar(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public CharSequence getCharSequence(int i2, int i4, Charset charset) {
        return this.buf.getCharSequence(i2, i4, charset);
    }

    @Override // io.netty.buffer.ByteBuf
    public double getDouble(int i2) {
        return this.buf.getDouble(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public float getFloat(int i2) {
        return this.buf.getFloat(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public int getInt(int i2) {
        return this.buf.getInt(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public int getIntLE(int i2) {
        return this.buf.getIntLE(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public long getLong(int i2) {
        return this.buf.getLong(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public long getLongLE(int i2) {
        return this.buf.getLongLE(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public int getMedium(int i2) {
        return this.buf.getMedium(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public int getMediumLE(int i2) {
        return this.buf.getMediumLE(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public short getShort(int i2) {
        return this.buf.getShort(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public short getShortLE(int i2) {
        return this.buf.getShortLE(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public short getUnsignedByte(int i2) {
        return this.buf.getUnsignedByte(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public long getUnsignedInt(int i2) {
        return this.buf.getUnsignedInt(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public long getUnsignedIntLE(int i2) {
        return this.buf.getUnsignedIntLE(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public int getUnsignedMedium(int i2) {
        return this.buf.getUnsignedMedium(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public int getUnsignedMediumLE(int i2) {
        return this.buf.getUnsignedMediumLE(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public int getUnsignedShort(int i2) {
        return this.buf.getUnsignedShort(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public int getUnsignedShortLE(int i2) {
        return this.buf.getUnsignedShortLE(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean hasArray() {
        return this.buf.hasArray();
    }

    @Override // io.netty.buffer.ByteBuf
    public final boolean hasMemoryAddress() {
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
        return this.buf.internalNioBuffer(i2, i4);
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
    public final boolean isDirect() {
        return this.buf.isDirect();
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean isReadOnly() {
        return this.buf.isReadOnly();
    }

    @Override // io.netty.buffer.ByteBuf
    public final boolean isReadable() {
        return this.buf.isReadable();
    }

    @Override // io.netty.buffer.ByteBuf
    public final boolean isWritable() {
        return this.buf.isWritable();
    }

    @Override // io.netty.buffer.ByteBuf
    public final ByteBuf markReaderIndex() {
        this.buf.markReaderIndex();
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public final ByteBuf markWriterIndex() {
        this.buf.markWriterIndex();
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public final int maxCapacity() {
        return this.buf.maxCapacity();
    }

    @Override // io.netty.buffer.ByteBuf
    public int maxFastWritableBytes() {
        return this.buf.maxFastWritableBytes();
    }

    @Override // io.netty.buffer.ByteBuf
    public final int maxWritableBytes() {
        return this.buf.maxWritableBytes();
    }

    @Override // io.netty.buffer.ByteBuf
    public final long memoryAddress() {
        return this.buf.memoryAddress();
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuffer nioBuffer() {
        return this.buf.nioBuffer();
    }

    @Override // io.netty.buffer.ByteBuf
    public int nioBufferCount() {
        return this.buf.nioBufferCount();
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuffer[] nioBuffers() {
        return this.buf.nioBuffers();
    }

    @Override // io.netty.buffer.ByteBuf
    public final ByteOrder order() {
        return this.buf.order();
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
        return this.buf.readBytes(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public char readChar() {
        return this.buf.readChar();
    }

    @Override // io.netty.buffer.ByteBuf
    public CharSequence readCharSequence(int i2, Charset charset) {
        return this.buf.readCharSequence(i2, charset);
    }

    @Override // io.netty.buffer.ByteBuf
    public double readDouble() {
        return this.buf.readDouble();
    }

    @Override // io.netty.buffer.ByteBuf
    public float readFloat() {
        return this.buf.readFloat();
    }

    @Override // io.netty.buffer.ByteBuf
    public int readInt() {
        return this.buf.readInt();
    }

    @Override // io.netty.buffer.ByteBuf
    public int readIntLE() {
        return this.buf.readIntLE();
    }

    @Override // io.netty.buffer.ByteBuf
    public long readLong() {
        return this.buf.readLong();
    }

    @Override // io.netty.buffer.ByteBuf
    public long readLongLE() {
        return this.buf.readLongLE();
    }

    @Override // io.netty.buffer.ByteBuf
    public int readMedium() {
        return this.buf.readMedium();
    }

    @Override // io.netty.buffer.ByteBuf
    public int readMediumLE() {
        return this.buf.readMediumLE();
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf readRetainedSlice(int i2) {
        return this.buf.readRetainedSlice(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public short readShort() {
        return this.buf.readShort();
    }

    @Override // io.netty.buffer.ByteBuf
    public short readShortLE() {
        return this.buf.readShortLE();
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf readSlice(int i2) {
        return this.buf.readSlice(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public short readUnsignedByte() {
        return this.buf.readUnsignedByte();
    }

    @Override // io.netty.buffer.ByteBuf
    public long readUnsignedInt() {
        return this.buf.readUnsignedInt();
    }

    @Override // io.netty.buffer.ByteBuf
    public long readUnsignedIntLE() {
        return this.buf.readUnsignedIntLE();
    }

    @Override // io.netty.buffer.ByteBuf
    public int readUnsignedMedium() {
        return this.buf.readUnsignedMedium();
    }

    @Override // io.netty.buffer.ByteBuf
    public int readUnsignedMediumLE() {
        return this.buf.readUnsignedMediumLE();
    }

    @Override // io.netty.buffer.ByteBuf
    public int readUnsignedShort() {
        return this.buf.readUnsignedShort();
    }

    @Override // io.netty.buffer.ByteBuf
    public int readUnsignedShortLE() {
        return this.buf.readUnsignedShortLE();
    }

    @Override // io.netty.buffer.ByteBuf
    public final int readableBytes() {
        return this.buf.readableBytes();
    }

    @Override // io.netty.buffer.ByteBuf
    public final int readerIndex() {
        return this.buf.readerIndex();
    }

    @Override // io.netty.util.ReferenceCounted
    public final int refCnt() {
        return this.buf.refCnt();
    }

    @Override // io.netty.util.ReferenceCounted
    public boolean release() {
        return this.buf.release();
    }

    @Override // io.netty.buffer.ByteBuf
    public final ByteBuf resetReaderIndex() {
        this.buf.resetReaderIndex();
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public final ByteBuf resetWriterIndex() {
        this.buf.resetWriterIndex();
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf retainedDuplicate() {
        return this.buf.retainedDuplicate();
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf retainedSlice() {
        return this.buf.retainedSlice();
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
        this.buf.setChar(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public int setCharSequence(int i2, CharSequence charSequence, Charset charset) {
        return this.buf.setCharSequence(i2, charSequence, charset);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setDouble(int i2, double d4) {
        this.buf.setDouble(i2, d4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setFloat(int i2, float f4) {
        this.buf.setFloat(i2, f4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setIndex(int i2, int i4) {
        this.buf.setIndex(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setInt(int i2, int i4) {
        this.buf.setInt(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setIntLE(int i2, int i4) {
        this.buf.setIntLE(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setLong(int i2, long j4) {
        this.buf.setLong(i2, j4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setLongLE(int i2, long j4) {
        this.buf.setLongLE(i2, j4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setMedium(int i2, int i4) {
        this.buf.setMedium(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setMediumLE(int i2, int i4) {
        this.buf.setMediumLE(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setShort(int i2, int i4) {
        this.buf.setShort(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setShortLE(int i2, int i4) {
        this.buf.setShortLE(i2, i4);
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
        return this.buf.slice();
    }

    @Override // io.netty.buffer.ByteBuf
    public String toString(Charset charset) {
        return this.buf.toString(charset);
    }

    @Override // io.netty.buffer.ByteBuf
    public final ByteBuf unwrap() {
        return this.buf;
    }

    @Override // io.netty.buffer.ByteBuf
    public final int writableBytes() {
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
        this.buf.writeChar(i2);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public int writeCharSequence(CharSequence charSequence, Charset charset) {
        return this.buf.writeCharSequence(charSequence, charset);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeDouble(double d4) {
        this.buf.writeDouble(d4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeFloat(float f4) {
        this.buf.writeFloat(f4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeInt(int i2) {
        this.buf.writeInt(i2);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeIntLE(int i2) {
        this.buf.writeIntLE(i2);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeLong(long j4) {
        this.buf.writeLong(j4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeLongLE(long j4) {
        this.buf.writeLongLE(j4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeMedium(int i2) {
        this.buf.writeMedium(i2);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeMediumLE(int i2) {
        this.buf.writeMediumLE(i2);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeShort(int i2) {
        this.buf.writeShort(i2);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeShortLE(int i2) {
        this.buf.writeShortLE(i2);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeZero(int i2) {
        this.buf.writeZero(i2);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public final int writerIndex() {
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
        return this.buf.compareTo(byteBuf);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf copy(int i2, int i4) {
        return this.buf.copy(i2, i4);
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
    public final boolean isReadable(int i2) {
        return this.buf.isReadable(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public final boolean isWritable(int i2) {
        return this.buf.isWritable(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuffer nioBuffer(int i2, int i4) {
        return this.buf.nioBuffer(i2, i4);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuffer[] nioBuffers(int i2, int i4) {
        return this.buf.nioBuffers(i2, i4);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf order(ByteOrder byteOrder) {
        return this.buf.order(byteOrder);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf readBytes(ByteBuf byteBuf) {
        this.buf.readBytes(byteBuf);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public final ByteBuf readerIndex(int i2) {
        this.buf.readerIndex(i2);
        return this;
    }

    @Override // io.netty.util.ReferenceCounted
    public boolean release(int i2) {
        return this.buf.release(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf retainedSlice(int i2, int i4) {
        return this.buf.retainedSlice(i2, i4);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setBytes(int i2, ByteBuf byteBuf, int i4) {
        this.buf.setBytes(i2, byteBuf, i4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf slice(int i2, int i4) {
        return this.buf.slice(i2, i4);
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
    public final ByteBuf writerIndex(int i2) {
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
    public ByteBuf retain(int i2) {
        this.buf.retain(i2);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setBytes(int i2, ByteBuf byteBuf, int i4, int i5) {
        this.buf.setBytes(i2, byteBuf, i4, i5);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public String toString() {
        return StringUtil.simpleClassName(this) + '(' + this.buf.toString() + ')';
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
    public ByteBuf readBytes(ByteBuf byteBuf, int i2, int i4) {
        this.buf.readBytes(byteBuf, i2, i4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf, io.netty.util.ReferenceCounted
    public ByteBuf retain() {
        this.buf.retain();
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
