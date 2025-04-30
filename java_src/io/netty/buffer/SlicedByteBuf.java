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
@Deprecated
/* loaded from: classes5.dex */
public class SlicedByteBuf extends AbstractUnpooledSlicedByteBuf {
    private int length;

    public SlicedByteBuf(ByteBuf byteBuf, int i2, int i4) {
        super(byteBuf, i2, i4);
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ ByteBufAllocator alloc() {
        return super.alloc();
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ byte[] array() {
        return super.array();
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ int arrayOffset() {
        return super.arrayOffset();
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ ByteBuf capacity(int i2) {
        return super.capacity(i2);
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ ByteBuf copy(int i2, int i4) {
        return super.copy(i2, i4);
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ ByteBuf duplicate() {
        return super.duplicate();
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ int forEachByte(int i2, int i4, ByteProcessor byteProcessor) {
        return super.forEachByte(i2, i4, byteProcessor);
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ int forEachByteDesc(int i2, int i4, ByteProcessor byteProcessor) {
        return super.forEachByteDesc(i2, i4, byteProcessor);
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ byte getByte(int i2) {
        return super.getByte(i2);
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ int getBytes(int i2, FileChannel fileChannel, long j4, int i4) throws IOException {
        return super.getBytes(i2, fileChannel, j4, i4);
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ CharSequence getCharSequence(int i2, int i4, Charset charset) {
        return super.getCharSequence(i2, i4, charset);
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ int getInt(int i2) {
        return super.getInt(i2);
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ int getIntLE(int i2) {
        return super.getIntLE(i2);
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ long getLong(int i2) {
        return super.getLong(i2);
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ long getLongLE(int i2) {
        return super.getLongLE(i2);
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ short getShort(int i2) {
        return super.getShort(i2);
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ short getShortLE(int i2) {
        return super.getShortLE(i2);
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ int getUnsignedMedium(int i2) {
        return super.getUnsignedMedium(i2);
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ int getUnsignedMediumLE(int i2) {
        return super.getUnsignedMediumLE(i2);
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ boolean hasArray() {
        return super.hasArray();
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ boolean hasMemoryAddress() {
        return super.hasMemoryAddress();
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf
    final void initLength(int i2) {
        this.length = i2;
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ boolean isDirect() {
        return super.isDirect();
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf
    final int length() {
        return this.length;
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ long memoryAddress() {
        return super.memoryAddress();
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.AbstractDerivedByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ ByteBuffer nioBuffer(int i2, int i4) {
        return super.nioBuffer(i2, i4);
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ int nioBufferCount() {
        return super.nioBufferCount();
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ ByteBuffer[] nioBuffers(int i2, int i4) {
        return super.nioBuffers(i2, i4);
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.ByteBuf
    @Deprecated
    public /* bridge */ /* synthetic */ ByteOrder order() {
        return super.order();
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ ByteBuf setByte(int i2, int i4) {
        return super.setByte(i2, i4);
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ int setBytes(int i2, InputStream inputStream, int i4) throws IOException {
        return super.setBytes(i2, inputStream, i4);
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ ByteBuf setInt(int i2, int i4) {
        return super.setInt(i2, i4);
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ ByteBuf setIntLE(int i2, int i4) {
        return super.setIntLE(i2, i4);
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ ByteBuf setLong(int i2, long j4) {
        return super.setLong(i2, j4);
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ ByteBuf setLongLE(int i2, long j4) {
        return super.setLongLE(i2, j4);
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ ByteBuf setMedium(int i2, int i4) {
        return super.setMedium(i2, i4);
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ ByteBuf setMediumLE(int i2, int i4) {
        return super.setMediumLE(i2, i4);
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ ByteBuf setShort(int i2, int i4) {
        return super.setShort(i2, i4);
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ ByteBuf setShortLE(int i2, int i4) {
        return super.setShortLE(i2, i4);
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ ByteBuf slice(int i2, int i4) {
        return super.slice(i2, i4);
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ ByteBuf unwrap() {
        return super.unwrap();
    }

    @Override // io.netty.buffer.ByteBuf
    public int capacity() {
        return this.length;
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ int getBytes(int i2, GatheringByteChannel gatheringByteChannel, int i4) throws IOException {
        return super.getBytes(i2, gatheringByteChannel, i4);
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ int setBytes(int i2, FileChannel fileChannel, long j4, int i4) throws IOException {
        return super.setBytes(i2, fileChannel, j4, i4);
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ ByteBuf getBytes(int i2, ByteBuf byteBuf, int i4, int i5) {
        return super.getBytes(i2, byteBuf, i4, i5);
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ int setBytes(int i2, ScatteringByteChannel scatteringByteChannel, int i4) throws IOException {
        return super.setBytes(i2, scatteringByteChannel, i4);
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ ByteBuf getBytes(int i2, OutputStream outputStream, int i4) throws IOException {
        return super.getBytes(i2, outputStream, i4);
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ ByteBuf setBytes(int i2, ByteBuf byteBuf, int i4, int i5) {
        return super.setBytes(i2, byteBuf, i4, i5);
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ ByteBuf getBytes(int i2, ByteBuffer byteBuffer) {
        return super.getBytes(i2, byteBuffer);
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ ByteBuf setBytes(int i2, ByteBuffer byteBuffer) {
        return super.setBytes(i2, byteBuffer);
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ ByteBuf getBytes(int i2, byte[] bArr, int i4, int i5) {
        return super.getBytes(i2, bArr, i4, i5);
    }

    @Override // io.netty.buffer.AbstractUnpooledSlicedByteBuf, io.netty.buffer.ByteBuf
    public /* bridge */ /* synthetic */ ByteBuf setBytes(int i2, byte[] bArr, int i4, int i5) {
        return super.setBytes(i2, bArr, i4, i5);
    }
}
