package io.netty.buffer;

import io.netty.util.ByteProcessor;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class WrappedCompositeByteBuf extends CompositeByteBuf {
    private final CompositeByteBuf wrapped;

    /* JADX INFO: Access modifiers changed from: package-private */
    public WrappedCompositeByteBuf(CompositeByteBuf compositeByteBuf) {
        super(compositeByteBuf.alloc());
        this.wrapped = compositeByteBuf;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf
    public final byte _getByte(int i2) {
        return this.wrapped._getByte(i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf
    public final int _getInt(int i2) {
        return this.wrapped._getInt(i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf
    public final int _getIntLE(int i2) {
        return this.wrapped._getIntLE(i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf
    public final long _getLong(int i2) {
        return this.wrapped._getLong(i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf
    public final long _getLongLE(int i2) {
        return this.wrapped._getLongLE(i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf
    public final short _getShort(int i2) {
        return this.wrapped._getShort(i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf
    public final short _getShortLE(int i2) {
        return this.wrapped._getShortLE(i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf
    public final int _getUnsignedMedium(int i2) {
        return this.wrapped._getUnsignedMedium(i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf
    public final int _getUnsignedMediumLE(int i2) {
        return this.wrapped._getUnsignedMediumLE(i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf
    public final void _setByte(int i2, int i4) {
        this.wrapped._setByte(i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf
    public final void _setInt(int i2, int i4) {
        this.wrapped._setInt(i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf
    public final void _setIntLE(int i2, int i4) {
        this.wrapped._setIntLE(i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf
    public final void _setLong(int i2, long j4) {
        this.wrapped._setLong(i2, j4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf
    public final void _setLongLE(int i2, long j4) {
        this.wrapped._setLongLE(i2, j4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf
    public final void _setMedium(int i2, int i4) {
        this.wrapped._setMedium(i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf
    public final void _setMediumLE(int i2, int i4) {
        this.wrapped._setMediumLE(i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf
    public final void _setShort(int i2, int i4) {
        this.wrapped._setShort(i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf
    public final void _setShortLE(int i2, int i4) {
        this.wrapped._setShortLE(i2, i4);
    }

    @Override // io.netty.buffer.CompositeByteBuf
    public CompositeByteBuf addComponent(ByteBuf byteBuf) {
        this.wrapped.addComponent(byteBuf);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf
    public CompositeByteBuf addComponents(ByteBuf... byteBufArr) {
        this.wrapped.addComponents(byteBufArr);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf
    public CompositeByteBuf addFlattenedComponents(boolean z3, ByteBuf byteBuf) {
        this.wrapped.addFlattenedComponents(z3, byteBuf);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.ByteBuf
    public final ByteBufAllocator alloc() {
        return this.wrapped.alloc();
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.ByteBuf
    public final byte[] array() {
        return this.wrapped.array();
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.ByteBuf
    public final int arrayOffset() {
        return this.wrapped.arrayOffset();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf asReadOnly() {
        return this.wrapped.asReadOnly();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int bytesBefore(byte b4) {
        return this.wrapped.bytesBefore(b4);
    }

    @Override // io.netty.buffer.CompositeByteBuf
    public final ByteBuf component(int i2) {
        return this.wrapped.component(i2);
    }

    @Override // io.netty.buffer.CompositeByteBuf
    public final ByteBuf componentAtOffset(int i2) {
        return this.wrapped.componentAtOffset(i2);
    }

    @Override // io.netty.buffer.CompositeByteBuf
    public CompositeByteBuf consolidate() {
        this.wrapped.consolidate();
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf copy() {
        return this.wrapped.copy();
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractReferenceCountedByteBuf
    public final void deallocate() {
        this.wrapped.deallocate();
    }

    @Override // io.netty.buffer.CompositeByteBuf
    public List<ByteBuf> decompose(int i2, int i4) {
        return this.wrapped.decompose(i2, i4);
    }

    @Override // io.netty.buffer.CompositeByteBuf
    public CompositeByteBuf discardReadComponents() {
        this.wrapped.discardReadComponents();
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf duplicate() {
        return this.wrapped.duplicate();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public final boolean equals(Object obj) {
        return this.wrapped.equals(obj);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int forEachByte(ByteProcessor byteProcessor) {
        return this.wrapped.forEachByte(byteProcessor);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int forEachByteDesc(ByteProcessor byteProcessor) {
        return this.wrapped.forEachByteDesc(byteProcessor);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public boolean getBoolean(int i2) {
        return this.wrapped.getBoolean(i2);
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public byte getByte(int i2) {
        return this.wrapped.getByte(i2);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public char getChar(int i2) {
        return this.wrapped.getChar(i2);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CharSequence getCharSequence(int i2, int i4, Charset charset) {
        return this.wrapped.getCharSequence(i2, i4, charset);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public double getDouble(int i2) {
        return this.wrapped.getDouble(i2);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public float getFloat(int i2) {
        return this.wrapped.getFloat(i2);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int getInt(int i2) {
        return this.wrapped.getInt(i2);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int getIntLE(int i2) {
        return this.wrapped.getIntLE(i2);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public long getLong(int i2) {
        return this.wrapped.getLong(i2);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public long getLongLE(int i2) {
        return this.wrapped.getLongLE(i2);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int getMedium(int i2) {
        return this.wrapped.getMedium(i2);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int getMediumLE(int i2) {
        return this.wrapped.getMediumLE(i2);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public short getShort(int i2) {
        return this.wrapped.getShort(i2);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public short getShortLE(int i2) {
        return this.wrapped.getShortLE(i2);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public short getUnsignedByte(int i2) {
        return this.wrapped.getUnsignedByte(i2);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public long getUnsignedInt(int i2) {
        return this.wrapped.getUnsignedInt(i2);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public long getUnsignedIntLE(int i2) {
        return this.wrapped.getUnsignedIntLE(i2);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int getUnsignedMedium(int i2) {
        return this.wrapped.getUnsignedMedium(i2);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int getUnsignedMediumLE(int i2) {
        return this.wrapped.getUnsignedMediumLE(i2);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int getUnsignedShort(int i2) {
        return this.wrapped.getUnsignedShort(i2);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int getUnsignedShortLE(int i2) {
        return this.wrapped.getUnsignedShortLE(i2);
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.ByteBuf
    public final boolean hasArray() {
        return this.wrapped.hasArray();
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.ByteBuf
    public final boolean hasMemoryAddress() {
        return this.wrapped.hasMemoryAddress();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public final int hashCode() {
        return this.wrapped.hashCode();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int indexOf(int i2, int i4, byte b4) {
        return this.wrapped.indexOf(i2, i4, b4);
    }

    @Override // io.netty.buffer.CompositeByteBuf
    public final ByteBuf internalComponent(int i2) {
        return this.wrapped.internalComponent(i2);
    }

    @Override // io.netty.buffer.CompositeByteBuf
    public final ByteBuf internalComponentAtOffset(int i2) {
        return this.wrapped.internalComponentAtOffset(i2);
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.ByteBuf
    public ByteBuffer internalNioBuffer(int i2, int i4) {
        return this.wrapped.internalNioBuffer(i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractReferenceCountedByteBuf, io.netty.buffer.ByteBuf
    public final boolean isAccessible() {
        return this.wrapped.isAccessible();
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.ByteBuf
    public final boolean isDirect() {
        return this.wrapped.isDirect();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public boolean isReadOnly() {
        return this.wrapped.isReadOnly();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public final boolean isReadable() {
        return this.wrapped.isReadable();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public final boolean isWritable() {
        return this.wrapped.isWritable();
    }

    @Override // io.netty.buffer.CompositeByteBuf, java.lang.Iterable
    public Iterator<ByteBuf> iterator() {
        return this.wrapped.iterator();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public final int maxCapacity() {
        return this.wrapped.maxCapacity();
    }

    @Override // io.netty.buffer.ByteBuf
    public int maxFastWritableBytes() {
        return this.wrapped.maxFastWritableBytes();
    }

    @Override // io.netty.buffer.CompositeByteBuf
    public final int maxNumComponents() {
        return this.wrapped.maxNumComponents();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public final int maxWritableBytes() {
        return this.wrapped.maxWritableBytes();
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.ByteBuf
    public final long memoryAddress() {
        return this.wrapped.memoryAddress();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    public SwappedByteBuf newSwappedByteBuf() {
        return this.wrapped.newSwappedByteBuf();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuffer nioBuffer() {
        return this.wrapped.nioBuffer();
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.ByteBuf
    public int nioBufferCount() {
        return this.wrapped.nioBufferCount();
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.ByteBuf
    public ByteBuffer[] nioBuffers(int i2, int i4) {
        return this.wrapped.nioBuffers(i2, i4);
    }

    @Override // io.netty.buffer.CompositeByteBuf
    public final int numComponents() {
        return this.wrapped.numComponents();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf order(ByteOrder byteOrder) {
        return this.wrapped.order(byteOrder);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public boolean readBoolean() {
        return this.wrapped.readBoolean();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public byte readByte() {
        return this.wrapped.readByte();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public char readChar() {
        return this.wrapped.readChar();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CharSequence readCharSequence(int i2, Charset charset) {
        return this.wrapped.readCharSequence(i2, charset);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public double readDouble() {
        return this.wrapped.readDouble();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public float readFloat() {
        return this.wrapped.readFloat();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int readInt() {
        return this.wrapped.readInt();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int readIntLE() {
        return this.wrapped.readIntLE();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public long readLong() {
        return this.wrapped.readLong();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public long readLongLE() {
        return this.wrapped.readLongLE();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int readMedium() {
        return this.wrapped.readMedium();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int readMediumLE() {
        return this.wrapped.readMediumLE();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf readRetainedSlice(int i2) {
        return this.wrapped.readRetainedSlice(i2);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public short readShort() {
        return this.wrapped.readShort();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public short readShortLE() {
        return this.wrapped.readShortLE();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf readSlice(int i2) {
        return this.wrapped.readSlice(i2);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public short readUnsignedByte() {
        return this.wrapped.readUnsignedByte();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public long readUnsignedInt() {
        return this.wrapped.readUnsignedInt();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public long readUnsignedIntLE() {
        return this.wrapped.readUnsignedIntLE();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int readUnsignedMedium() {
        return this.wrapped.readUnsignedMedium();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int readUnsignedMediumLE() {
        return this.wrapped.readUnsignedMediumLE();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int readUnsignedShort() {
        return this.wrapped.readUnsignedShort();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int readUnsignedShortLE() {
        return this.wrapped.readUnsignedShortLE();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public final int readableBytes() {
        return this.wrapped.readableBytes();
    }

    @Override // io.netty.buffer.AbstractReferenceCountedByteBuf, io.netty.util.ReferenceCounted
    public final int refCnt() {
        return this.wrapped.refCnt();
    }

    @Override // io.netty.buffer.AbstractReferenceCountedByteBuf, io.netty.util.ReferenceCounted
    public boolean release() {
        return this.wrapped.release();
    }

    @Override // io.netty.buffer.CompositeByteBuf
    public CompositeByteBuf removeComponent(int i2) {
        this.wrapped.removeComponent(i2);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf
    public CompositeByteBuf removeComponents(int i2, int i4) {
        this.wrapped.removeComponents(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf retainedDuplicate() {
        return this.wrapped.retainedDuplicate();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf retainedSlice() {
        return this.wrapped.retainedSlice();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int setCharSequence(int i2, CharSequence charSequence, Charset charset) {
        return this.wrapped.setCharSequence(i2, charSequence, charset);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setIntLE(int i2, int i4) {
        return this.wrapped.setIntLE(i2, i4);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setLongLE(int i2, long j4) {
        return this.wrapped.setLongLE(i2, j4);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setMediumLE(int i2, int i4) {
        return this.wrapped.setMediumLE(i2, i4);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setShortLE(int i2, int i4) {
        return this.wrapped.setShortLE(i2, i4);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf slice() {
        return this.wrapped.slice();
    }

    @Override // io.netty.buffer.CompositeByteBuf
    public final int toByteIndex(int i2) {
        return this.wrapped.toByteIndex(i2);
    }

    @Override // io.netty.buffer.CompositeByteBuf
    public final int toComponentIndex(int i2) {
        return this.wrapped.toComponentIndex(i2);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public String toString(Charset charset) {
        return this.wrapped.toString(charset);
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.ByteBuf
    public final ByteBuf unwrap() {
        return this.wrapped;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public final int writableBytes() {
        return this.wrapped.writableBytes();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int writeCharSequence(CharSequence charSequence, Charset charset) {
        return this.wrapped.writeCharSequence(charSequence, charset);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf writeIntLE(int i2) {
        return this.wrapped.writeIntLE(i2);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf writeLongLE(long j4) {
        return this.wrapped.writeLongLE(j4);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf writeMediumLE(int i2) {
        return this.wrapped.writeMediumLE(i2);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf writeShortLE(int i2) {
        return this.wrapped.writeShortLE(i2);
    }

    @Override // io.netty.buffer.CompositeByteBuf
    public CompositeByteBuf addComponent(int i2, ByteBuf byteBuf) {
        this.wrapped.addComponent(i2, byteBuf);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf
    public CompositeByteBuf addComponents(Iterable<ByteBuf> iterable) {
        this.wrapped.addComponents(iterable);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int bytesBefore(int i2, byte b4) {
        return this.wrapped.bytesBefore(i2, b4);
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.ByteBuf
    public final int capacity() {
        return this.wrapped.capacity();
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public final CompositeByteBuf clear() {
        this.wrapped.clear();
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf, java.lang.Comparable
    public final int compareTo(ByteBuf byteBuf) {
        return this.wrapped.compareTo(byteBuf);
    }

    @Override // io.netty.buffer.CompositeByteBuf
    public CompositeByteBuf consolidate(int i2, int i4) {
        this.wrapped.consolidate(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf copy(int i2, int i4) {
        return this.wrapped.copy(i2, i4);
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf discardReadBytes() {
        this.wrapped.discardReadBytes();
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf discardSomeReadBytes() {
        this.wrapped.discardSomeReadBytes();
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int ensureWritable(int i2, boolean z3) {
        return this.wrapped.ensureWritable(i2, z3);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int forEachByte(int i2, int i4, ByteProcessor byteProcessor) {
        return this.wrapped.forEachByte(i2, i4, byteProcessor);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int forEachByteDesc(int i2, int i4, ByteProcessor byteProcessor) {
        return this.wrapped.forEachByteDesc(i2, i4, byteProcessor);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public final boolean isReadable(int i2) {
        return this.wrapped.isReadable(i2);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public final boolean isWritable(int i2) {
        return this.wrapped.isWritable(i2);
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public final CompositeByteBuf markReaderIndex() {
        this.wrapped.markReaderIndex();
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public final CompositeByteBuf markWriterIndex() {
        this.wrapped.markWriterIndex();
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.ByteBuf
    public ByteBuffer nioBuffer(int i2, int i4) {
        return this.wrapped.nioBuffer(i2, i4);
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuffer[] nioBuffers() {
        return this.wrapped.nioBuffers();
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.ByteBuf
    public final ByteOrder order() {
        return this.wrapped.order();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public final int readerIndex() {
        return this.wrapped.readerIndex();
    }

    @Override // io.netty.buffer.AbstractReferenceCountedByteBuf, io.netty.util.ReferenceCounted
    public boolean release(int i2) {
        return this.wrapped.release(i2);
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public final CompositeByteBuf resetReaderIndex() {
        this.wrapped.resetReaderIndex();
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public final CompositeByteBuf resetWriterIndex() {
        this.wrapped.resetWriterIndex();
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf retainedSlice(int i2, int i4) {
        return this.wrapped.retainedSlice(i2, i4);
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf setBoolean(int i2, boolean z3) {
        this.wrapped.setBoolean(i2, z3);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf setByte(int i2, int i4) {
        this.wrapped.setByte(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf setChar(int i2, int i4) {
        this.wrapped.setChar(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf setDouble(int i2, double d4) {
        this.wrapped.setDouble(i2, d4);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf setFloat(int i2, float f4) {
        this.wrapped.setFloat(i2, f4);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public final CompositeByteBuf setIndex(int i2, int i4) {
        this.wrapped.setIndex(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf setInt(int i2, int i4) {
        this.wrapped.setInt(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf setLong(int i2, long j4) {
        this.wrapped.setLong(i2, j4);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf setMedium(int i2, int i4) {
        this.wrapped.setMedium(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf setShort(int i2, int i4) {
        this.wrapped.setShort(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf setZero(int i2, int i4) {
        this.wrapped.setZero(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf skipBytes(int i2) {
        this.wrapped.skipBytes(i2);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf slice(int i2, int i4) {
        return this.wrapped.slice(i2, i4);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public String toString(int i2, int i4, Charset charset) {
        return this.wrapped.toString(i2, i4, charset);
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeBoolean(boolean z3) {
        this.wrapped.writeBoolean(z3);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeByte(int i2) {
        this.wrapped.writeByte(i2);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeChar(int i2) {
        this.wrapped.writeChar(i2);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeDouble(double d4) {
        this.wrapped.writeDouble(d4);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeFloat(float f4) {
        this.wrapped.writeFloat(f4);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeInt(int i2) {
        this.wrapped.writeInt(i2);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeLong(long j4) {
        this.wrapped.writeLong(j4);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeMedium(int i2) {
        this.wrapped.writeMedium(i2);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeShort(int i2) {
        this.wrapped.writeShort(i2);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeZero(int i2) {
        this.wrapped.writeZero(i2);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public final int writerIndex() {
        return this.wrapped.writerIndex();
    }

    @Override // io.netty.buffer.CompositeByteBuf
    public CompositeByteBuf addComponent(boolean z3, ByteBuf byteBuf) {
        this.wrapped.addComponent(z3, byteBuf);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf
    public CompositeByteBuf addComponents(int i2, ByteBuf... byteBufArr) {
        this.wrapped.addComponents(i2, byteBufArr);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int bytesBefore(int i2, int i4, byte b4) {
        return this.wrapped.bytesBefore(i2, i4, b4);
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf capacity(int i2) {
        this.wrapped.capacity(i2);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf ensureWritable(int i2) {
        this.wrapped.ensureWritable(i2);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public final CompositeByteBuf readerIndex(int i2) {
        this.wrapped.readerIndex(i2);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public final String toString() {
        return this.wrapped.toString();
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public final CompositeByteBuf writerIndex(int i2) {
        this.wrapped.writerIndex(i2);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf
    public CompositeByteBuf addComponent(boolean z3, int i2, ByteBuf byteBuf) {
        this.wrapped.addComponent(z3, i2, byteBuf);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf
    public CompositeByteBuf addComponents(int i2, Iterable<ByteBuf> iterable) {
        this.wrapped.addComponents(i2, iterable);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf
    public CompositeByteBuf addComponents(boolean z3, ByteBuf... byteBufArr) {
        this.wrapped.addComponents(z3, byteBufArr);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractReferenceCountedByteBuf, io.netty.buffer.ByteBuf, io.netty.util.ReferenceCounted
    public CompositeByteBuf retain(int i2) {
        this.wrapped.retain(i2);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractReferenceCountedByteBuf, io.netty.buffer.ByteBuf, io.netty.util.ReferenceCounted
    public CompositeByteBuf touch() {
        this.wrapped.touch();
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf
    public CompositeByteBuf addComponents(boolean z3, Iterable<ByteBuf> iterable) {
        this.wrapped.addComponents(z3, iterable);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractReferenceCountedByteBuf, io.netty.buffer.ByteBuf, io.netty.util.ReferenceCounted
    public CompositeByteBuf retain() {
        this.wrapped.retain();
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractReferenceCountedByteBuf, io.netty.buffer.ByteBuf, io.netty.util.ReferenceCounted
    public CompositeByteBuf touch(Object obj) {
        this.wrapped.touch(obj);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf setBytes(int i2, byte[] bArr, int i4, int i5) {
        this.wrapped.setBytes(i2, bArr, i4, i5);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int writeBytes(InputStream inputStream, int i2) throws IOException {
        return this.wrapped.writeBytes(inputStream, i2);
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf getBytes(int i2, byte[] bArr, int i4, int i5) {
        this.wrapped.getBytes(i2, bArr, i4, i5);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf readBytes(int i2) {
        return this.wrapped.readBytes(i2);
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf setBytes(int i2, ByteBuffer byteBuffer) {
        this.wrapped.setBytes(i2, byteBuffer);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int writeBytes(ScatteringByteChannel scatteringByteChannel, int i2) throws IOException {
        return this.wrapped.writeBytes(scatteringByteChannel, i2);
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf getBytes(int i2, ByteBuffer byteBuffer) {
        this.wrapped.getBytes(i2, byteBuffer);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int readBytes(GatheringByteChannel gatheringByteChannel, int i2) throws IOException {
        return this.wrapped.readBytes(gatheringByteChannel, i2);
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf setBytes(int i2, ByteBuf byteBuf, int i4, int i5) {
        this.wrapped.setBytes(i2, byteBuf, i4, i5);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int writeBytes(FileChannel fileChannel, long j4, int i2) throws IOException {
        return this.wrapped.writeBytes(fileChannel, j4, i2);
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf getBytes(int i2, ByteBuf byteBuf, int i4, int i5) {
        this.wrapped.getBytes(i2, byteBuf, i4, i5);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf readBytes(ByteBuf byteBuf) {
        this.wrapped.readBytes(byteBuf);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.ByteBuf
    public int setBytes(int i2, InputStream inputStream, int i4) throws IOException {
        return this.wrapped.setBytes(i2, inputStream, i4);
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeBytes(ByteBuf byteBuf) {
        this.wrapped.writeBytes(byteBuf);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.ByteBuf
    public int getBytes(int i2, GatheringByteChannel gatheringByteChannel, int i4) throws IOException {
        return this.wrapped.getBytes(i2, gatheringByteChannel, i4);
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf readBytes(ByteBuf byteBuf, int i2) {
        this.wrapped.readBytes(byteBuf, i2);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.ByteBuf
    public int setBytes(int i2, ScatteringByteChannel scatteringByteChannel, int i4) throws IOException {
        return this.wrapped.setBytes(i2, scatteringByteChannel, i4);
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeBytes(ByteBuf byteBuf, int i2) {
        this.wrapped.writeBytes(byteBuf, i2);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf getBytes(int i2, OutputStream outputStream, int i4) throws IOException {
        this.wrapped.getBytes(i2, outputStream, i4);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf readBytes(ByteBuf byteBuf, int i2, int i4) {
        this.wrapped.readBytes(byteBuf, i2, i4);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf setBytes(int i2, ByteBuf byteBuf) {
        this.wrapped.setBytes(i2, byteBuf);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeBytes(ByteBuf byteBuf, int i2, int i4) {
        this.wrapped.writeBytes(byteBuf, i2, i4);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf getBytes(int i2, ByteBuf byteBuf) {
        this.wrapped.getBytes(i2, byteBuf);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf readBytes(byte[] bArr) {
        this.wrapped.readBytes(bArr);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf setBytes(int i2, ByteBuf byteBuf, int i4) {
        this.wrapped.setBytes(i2, byteBuf, i4);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeBytes(byte[] bArr) {
        this.wrapped.writeBytes(bArr);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf getBytes(int i2, ByteBuf byteBuf, int i4) {
        this.wrapped.getBytes(i2, byteBuf, i4);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf readBytes(byte[] bArr, int i2, int i4) {
        this.wrapped.readBytes(bArr, i2, i4);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf setBytes(int i2, byte[] bArr) {
        this.wrapped.setBytes(i2, bArr);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeBytes(byte[] bArr, int i2, int i4) {
        this.wrapped.writeBytes(bArr, i2, i4);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf getBytes(int i2, byte[] bArr) {
        this.wrapped.getBytes(i2, bArr);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf readBytes(ByteBuffer byteBuffer) {
        this.wrapped.readBytes(byteBuffer);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.ByteBuf
    public int setBytes(int i2, FileChannel fileChannel, long j4, int i4) throws IOException {
        return this.wrapped.setBytes(i2, fileChannel, j4, i4);
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeBytes(ByteBuffer byteBuffer) {
        this.wrapped.writeBytes(byteBuffer);
        return this;
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.ByteBuf
    public int getBytes(int i2, FileChannel fileChannel, long j4, int i4) throws IOException {
        return this.wrapped.getBytes(i2, fileChannel, j4, i4);
    }

    @Override // io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf readBytes(OutputStream outputStream, int i2) throws IOException {
        this.wrapped.readBytes(outputStream, i2);
        return this;
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int readBytes(FileChannel fileChannel, long j4, int i2) throws IOException {
        return this.wrapped.readBytes(fileChannel, j4, i2);
    }
}
