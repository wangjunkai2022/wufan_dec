package io.netty.buffer;

import io.netty.util.ByteProcessor;
import io.netty.util.ResourceLeakTracker;
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
public final class AdvancedLeakAwareCompositeByteBuf extends SimpleLeakAwareCompositeByteBuf {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AdvancedLeakAwareCompositeByteBuf(CompositeByteBuf compositeByteBuf, ResourceLeakTracker<ByteBuf> resourceLeakTracker) {
        super(compositeByteBuf, resourceLeakTracker);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf
    public CompositeByteBuf addComponent(ByteBuf byteBuf) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.addComponent(byteBuf);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf
    public CompositeByteBuf addComponents(ByteBuf... byteBufArr) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.addComponents(byteBufArr);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf
    public CompositeByteBuf addFlattenedComponents(boolean z3, ByteBuf byteBuf) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.addFlattenedComponents(z3, byteBuf);
    }

    @Override // io.netty.buffer.SimpleLeakAwareCompositeByteBuf, io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf asReadOnly() {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.asReadOnly();
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int bytesBefore(byte b4) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.bytesBefore(b4);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf
    public CompositeByteBuf consolidate() {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.consolidate();
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf copy() {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.copy();
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf
    public List<ByteBuf> decompose(int i2, int i4) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.decompose(i2, i4);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf
    public CompositeByteBuf discardReadComponents() {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.discardReadComponents();
    }

    @Override // io.netty.buffer.SimpleLeakAwareCompositeByteBuf, io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf duplicate() {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.duplicate();
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int forEachByte(ByteProcessor byteProcessor) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.forEachByte(byteProcessor);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int forEachByteDesc(ByteProcessor byteProcessor) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.forEachByteDesc(byteProcessor);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public boolean getBoolean(int i2) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.getBoolean(i2);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public byte getByte(int i2) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.getByte(i2);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public char getChar(int i2) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.getChar(i2);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CharSequence getCharSequence(int i2, int i4, Charset charset) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.getCharSequence(i2, i4, charset);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public double getDouble(int i2) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.getDouble(i2);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public float getFloat(int i2) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.getFloat(i2);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int getInt(int i2) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.getInt(i2);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int getIntLE(int i2) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.getIntLE(i2);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public long getLong(int i2) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.getLong(i2);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public long getLongLE(int i2) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.getLongLE(i2);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int getMedium(int i2) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.getMedium(i2);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int getMediumLE(int i2) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.getMediumLE(i2);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public short getShort(int i2) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.getShort(i2);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public short getShortLE(int i2) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.getShortLE(i2);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public short getUnsignedByte(int i2) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.getUnsignedByte(i2);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public long getUnsignedInt(int i2) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.getUnsignedInt(i2);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public long getUnsignedIntLE(int i2) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.getUnsignedIntLE(i2);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int getUnsignedMedium(int i2) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.getUnsignedMedium(i2);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int getUnsignedMediumLE(int i2) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.getUnsignedMediumLE(i2);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int getUnsignedShort(int i2) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.getUnsignedShort(i2);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int getUnsignedShortLE(int i2) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.getUnsignedShortLE(i2);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int indexOf(int i2, int i4, byte b4) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.indexOf(i2, i4, b4);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.ByteBuf
    public ByteBuffer internalNioBuffer(int i2, int i4) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.internalNioBuffer(i2, i4);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public boolean isReadOnly() {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.isReadOnly();
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, java.lang.Iterable
    public Iterator<ByteBuf> iterator() {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.iterator();
    }

    @Override // io.netty.buffer.SimpleLeakAwareCompositeByteBuf
    protected /* bridge */ /* synthetic */ SimpleLeakAwareByteBuf newLeakAwareByteBuf(ByteBuf byteBuf, ByteBuf byteBuf2, ResourceLeakTracker resourceLeakTracker) {
        return newLeakAwareByteBuf(byteBuf, byteBuf2, (ResourceLeakTracker<ByteBuf>) resourceLeakTracker);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuffer nioBuffer() {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.nioBuffer();
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.ByteBuf
    public int nioBufferCount() {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.nioBufferCount();
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuffer[] nioBuffers() {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.nioBuffers();
    }

    @Override // io.netty.buffer.SimpleLeakAwareCompositeByteBuf, io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf order(ByteOrder byteOrder) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.order(byteOrder);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public boolean readBoolean() {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.readBoolean();
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public byte readByte() {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.readByte();
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public char readChar() {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.readChar();
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CharSequence readCharSequence(int i2, Charset charset) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.readCharSequence(i2, charset);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public double readDouble() {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.readDouble();
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public float readFloat() {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.readFloat();
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int readInt() {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.readInt();
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int readIntLE() {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.readIntLE();
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public long readLong() {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.readLong();
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public long readLongLE() {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.readLongLE();
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int readMedium() {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.readMedium();
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int readMediumLE() {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.readMediumLE();
    }

    @Override // io.netty.buffer.SimpleLeakAwareCompositeByteBuf, io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf readRetainedSlice(int i2) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.readRetainedSlice(i2);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public short readShort() {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.readShort();
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public short readShortLE() {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.readShortLE();
    }

    @Override // io.netty.buffer.SimpleLeakAwareCompositeByteBuf, io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf readSlice(int i2) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.readSlice(i2);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public short readUnsignedByte() {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.readUnsignedByte();
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public long readUnsignedInt() {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.readUnsignedInt();
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public long readUnsignedIntLE() {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.readUnsignedIntLE();
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int readUnsignedMedium() {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.readUnsignedMedium();
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int readUnsignedMediumLE() {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.readUnsignedMediumLE();
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int readUnsignedShort() {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.readUnsignedShort();
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int readUnsignedShortLE() {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.readUnsignedShortLE();
    }

    @Override // io.netty.buffer.SimpleLeakAwareCompositeByteBuf, io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractReferenceCountedByteBuf, io.netty.util.ReferenceCounted
    public boolean release() {
        this.leak.record();
        return super.release();
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf
    public CompositeByteBuf removeComponent(int i2) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.removeComponent(i2);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf
    public CompositeByteBuf removeComponents(int i2, int i4) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.removeComponents(i2, i4);
    }

    @Override // io.netty.buffer.SimpleLeakAwareCompositeByteBuf, io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf retainedDuplicate() {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.retainedDuplicate();
    }

    @Override // io.netty.buffer.SimpleLeakAwareCompositeByteBuf, io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf retainedSlice() {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.retainedSlice();
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int setCharSequence(int i2, CharSequence charSequence, Charset charset) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.setCharSequence(i2, charSequence, charset);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setIntLE(int i2, int i4) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.setIntLE(i2, i4);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setLongLE(int i2, long j4) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.setLongLE(i2, j4);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setMediumLE(int i2, int i4) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.setMediumLE(i2, i4);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setShortLE(int i2, int i4) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.setShortLE(i2, i4);
    }

    @Override // io.netty.buffer.SimpleLeakAwareCompositeByteBuf, io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf slice() {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.slice();
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public String toString(Charset charset) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.toString(charset);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int writeCharSequence(CharSequence charSequence, Charset charset) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.writeCharSequence(charSequence, charset);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf writeIntLE(int i2) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.writeIntLE(i2);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf writeLongLE(long j4) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.writeLongLE(j4);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf writeMediumLE(int i2) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.writeMediumLE(i2);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf writeShortLE(int i2) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.writeShortLE(i2);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf capacity(int i2) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.capacity(i2);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf discardReadBytes() {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.discardReadBytes();
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf discardSomeReadBytes() {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.discardSomeReadBytes();
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf ensureWritable(int i2) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.ensureWritable(i2);
    }

    @Override // io.netty.buffer.SimpleLeakAwareCompositeByteBuf
    protected AdvancedLeakAwareByteBuf newLeakAwareByteBuf(ByteBuf byteBuf, ByteBuf byteBuf2, ResourceLeakTracker<ByteBuf> resourceLeakTracker) {
        return new AdvancedLeakAwareByteBuf(byteBuf, byteBuf2, resourceLeakTracker);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf setBoolean(int i2, boolean z3) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.setBoolean(i2, z3);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf setByte(int i2, int i4) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.setByte(i2, i4);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf setChar(int i2, int i4) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.setChar(i2, i4);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf setDouble(int i2, double d4) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.setDouble(i2, d4);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf setFloat(int i2, float f4) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.setFloat(i2, f4);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf setInt(int i2, int i4) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.setInt(i2, i4);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf setLong(int i2, long j4) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.setLong(i2, j4);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf setMedium(int i2, int i4) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.setMedium(i2, i4);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf setShort(int i2, int i4) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.setShort(i2, i4);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf setZero(int i2, int i4) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.setZero(i2, i4);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf skipBytes(int i2) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.skipBytes(i2);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeBoolean(boolean z3) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.writeBoolean(z3);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeByte(int i2) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.writeByte(i2);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeChar(int i2) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.writeChar(i2);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeDouble(double d4) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.writeDouble(d4);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeFloat(float f4) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.writeFloat(f4);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeInt(int i2) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.writeInt(i2);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeLong(long j4) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.writeLong(j4);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeMedium(int i2) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.writeMedium(i2);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeShort(int i2) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.writeShort(i2);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeZero(int i2) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.writeZero(i2);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf
    public CompositeByteBuf addComponent(int i2, ByteBuf byteBuf) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.addComponent(i2, byteBuf);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf
    public CompositeByteBuf addComponents(Iterable<ByteBuf> iterable) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.addComponents(iterable);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int bytesBefore(int i2, byte b4) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.bytesBefore(i2, b4);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf
    public CompositeByteBuf consolidate(int i2, int i4) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.consolidate(i2, i4);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf copy(int i2, int i4) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.copy(i2, i4);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int forEachByte(int i2, int i4, ByteProcessor byteProcessor) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.forEachByte(i2, i4, byteProcessor);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int forEachByteDesc(int i2, int i4, ByteProcessor byteProcessor) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.forEachByteDesc(i2, i4, byteProcessor);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.ByteBuf
    public ByteBuffer nioBuffer(int i2, int i4) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.nioBuffer(i2, i4);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.ByteBuf
    public ByteBuffer[] nioBuffers(int i2, int i4) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.nioBuffers(i2, i4);
    }

    @Override // io.netty.buffer.SimpleLeakAwareCompositeByteBuf, io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractReferenceCountedByteBuf, io.netty.util.ReferenceCounted
    public boolean release(int i2) {
        this.leak.record();
        return super.release(i2);
    }

    @Override // io.netty.buffer.SimpleLeakAwareCompositeByteBuf, io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf retainedSlice(int i2, int i4) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.retainedSlice(i2, i4);
    }

    @Override // io.netty.buffer.SimpleLeakAwareCompositeByteBuf, io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf slice(int i2, int i4) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.slice(i2, i4);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public String toString(int i2, int i4, Charset charset) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.toString(i2, i4, charset);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int ensureWritable(int i2, boolean z3) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.ensureWritable(i2, z3);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf
    public CompositeByteBuf addComponent(boolean z3, ByteBuf byteBuf) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.addComponent(z3, byteBuf);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf
    public CompositeByteBuf addComponents(int i2, ByteBuf... byteBufArr) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.addComponents(i2, byteBufArr);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int bytesBefore(int i2, int i4, byte b4) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.bytesBefore(i2, i4, b4);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractReferenceCountedByteBuf, io.netty.buffer.ByteBuf, io.netty.util.ReferenceCounted
    public CompositeByteBuf retain() {
        this.leak.record();
        return super.retain();
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractReferenceCountedByteBuf, io.netty.buffer.ByteBuf, io.netty.util.ReferenceCounted
    public CompositeByteBuf touch() {
        this.leak.record();
        return this;
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractReferenceCountedByteBuf, io.netty.buffer.ByteBuf, io.netty.util.ReferenceCounted
    public CompositeByteBuf touch(Object obj) {
        this.leak.record(obj);
        return this;
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf
    public CompositeByteBuf addComponent(boolean z3, int i2, ByteBuf byteBuf) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.addComponent(z3, i2, byteBuf);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf
    public CompositeByteBuf addComponents(int i2, Iterable<ByteBuf> iterable) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.addComponents(i2, iterable);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractReferenceCountedByteBuf, io.netty.buffer.ByteBuf, io.netty.util.ReferenceCounted
    public CompositeByteBuf retain(int i2) {
        this.leak.record();
        return super.retain(i2);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf setBytes(int i2, ByteBuf byteBuf) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.setBytes(i2, byteBuf);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeBytes(ByteBuf byteBuf) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.writeBytes(byteBuf);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf getBytes(int i2, ByteBuf byteBuf) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.getBytes(i2, byteBuf);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf readBytes(int i2) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.readBytes(i2);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf
    public CompositeByteBuf addComponents(boolean z3, ByteBuf... byteBufArr) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.addComponents(z3, byteBufArr);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf setBytes(int i2, ByteBuf byteBuf, int i4) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.setBytes(i2, byteBuf, i4);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeBytes(ByteBuf byteBuf, int i2) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.writeBytes(byteBuf, i2);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf getBytes(int i2, ByteBuf byteBuf, int i4) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.getBytes(i2, byteBuf, i4);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf readBytes(ByteBuf byteBuf) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.readBytes(byteBuf);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf
    public CompositeByteBuf addComponents(boolean z3, Iterable<ByteBuf> iterable) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.addComponents(z3, iterable);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf setBytes(int i2, ByteBuf byteBuf, int i4, int i5) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.setBytes(i2, byteBuf, i4, i5);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeBytes(ByteBuf byteBuf, int i2, int i4) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.writeBytes(byteBuf, i2, i4);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf getBytes(int i2, ByteBuf byteBuf, int i4, int i5) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.getBytes(i2, byteBuf, i4, i5);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf readBytes(ByteBuf byteBuf, int i2) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.readBytes(byteBuf, i2);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf setBytes(int i2, byte[] bArr) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.setBytes(i2, bArr);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeBytes(byte[] bArr) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.writeBytes(bArr);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf getBytes(int i2, byte[] bArr) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.getBytes(i2, bArr);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf readBytes(ByteBuf byteBuf, int i2, int i4) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.readBytes(byteBuf, i2, i4);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf setBytes(int i2, byte[] bArr, int i4, int i5) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.setBytes(i2, bArr, i4, i5);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeBytes(byte[] bArr, int i2, int i4) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.writeBytes(bArr, i2, i4);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf getBytes(int i2, byte[] bArr, int i4, int i5) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.getBytes(i2, bArr, i4, i5);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf readBytes(byte[] bArr) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.readBytes(bArr);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf setBytes(int i2, ByteBuffer byteBuffer) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.setBytes(i2, byteBuffer);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf writeBytes(ByteBuffer byteBuffer) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.writeBytes(byteBuffer);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf getBytes(int i2, ByteBuffer byteBuffer) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.getBytes(i2, byteBuffer);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf readBytes(byte[] bArr, int i2, int i4) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.readBytes(bArr, i2, i4);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.ByteBuf
    public int setBytes(int i2, InputStream inputStream, int i4) throws IOException {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.setBytes(i2, inputStream, i4);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int writeBytes(InputStream inputStream, int i2) throws IOException {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.writeBytes(inputStream, i2);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf getBytes(int i2, OutputStream outputStream, int i4) throws IOException {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.getBytes(i2, outputStream, i4);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf readBytes(ByteBuffer byteBuffer) {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.readBytes(byteBuffer);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.ByteBuf
    public int setBytes(int i2, ScatteringByteChannel scatteringByteChannel, int i4) throws IOException {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.setBytes(i2, scatteringByteChannel, i4);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int writeBytes(ScatteringByteChannel scatteringByteChannel, int i2) throws IOException {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.writeBytes(scatteringByteChannel, i2);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.ByteBuf
    public int getBytes(int i2, GatheringByteChannel gatheringByteChannel, int i4) throws IOException {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.getBytes(i2, gatheringByteChannel, i4);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public CompositeByteBuf readBytes(OutputStream outputStream, int i2) throws IOException {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.readBytes(outputStream, i2);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.ByteBuf
    public int setBytes(int i2, FileChannel fileChannel, long j4, int i4) throws IOException {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.setBytes(i2, fileChannel, j4, i4);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int writeBytes(FileChannel fileChannel, long j4, int i2) throws IOException {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.writeBytes(fileChannel, j4, i2);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.CompositeByteBuf, io.netty.buffer.ByteBuf
    public int getBytes(int i2, FileChannel fileChannel, long j4, int i4) throws IOException {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.getBytes(i2, fileChannel, j4, i4);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int readBytes(GatheringByteChannel gatheringByteChannel, int i2) throws IOException {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.readBytes(gatheringByteChannel, i2);
    }

    @Override // io.netty.buffer.WrappedCompositeByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int readBytes(FileChannel fileChannel, long j4, int i2) throws IOException {
        AdvancedLeakAwareByteBuf.recordLeakNonRefCountingOperation(this.leak);
        return super.readBytes(fileChannel, j4, i2);
    }
}
