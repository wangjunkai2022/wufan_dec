package io.netty.channel.unix;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufAllocator;
import io.netty.buffer.CompositeByteBuf;
/* loaded from: classes5.dex */
public final class PreferredDirectByteBufAllocator implements ByteBufAllocator {
    private ByteBufAllocator allocator;

    @Override // io.netty.buffer.ByteBufAllocator
    public ByteBuf buffer() {
        return this.allocator.directBuffer();
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public int calculateNewCapacity(int i2, int i4) {
        return this.allocator.calculateNewCapacity(i2, i4);
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public CompositeByteBuf compositeBuffer() {
        return this.allocator.compositeDirectBuffer();
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public CompositeByteBuf compositeDirectBuffer() {
        return this.allocator.compositeDirectBuffer();
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public CompositeByteBuf compositeHeapBuffer() {
        return this.allocator.compositeHeapBuffer();
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public ByteBuf directBuffer() {
        return this.allocator.directBuffer();
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public ByteBuf heapBuffer() {
        return this.allocator.heapBuffer();
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public ByteBuf ioBuffer() {
        return this.allocator.directBuffer();
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public boolean isDirectBufferPooled() {
        return this.allocator.isDirectBufferPooled();
    }

    public void updateAllocator(ByteBufAllocator byteBufAllocator) {
        this.allocator = byteBufAllocator;
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public ByteBuf buffer(int i2) {
        return this.allocator.directBuffer(i2);
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public CompositeByteBuf compositeBuffer(int i2) {
        return this.allocator.compositeDirectBuffer(i2);
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public CompositeByteBuf compositeDirectBuffer(int i2) {
        return this.allocator.compositeDirectBuffer(i2);
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public CompositeByteBuf compositeHeapBuffer(int i2) {
        return this.allocator.compositeHeapBuffer(i2);
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public ByteBuf directBuffer(int i2) {
        return this.allocator.directBuffer(i2);
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public ByteBuf heapBuffer(int i2) {
        return this.allocator.heapBuffer(i2);
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public ByteBuf ioBuffer(int i2) {
        return this.allocator.directBuffer(i2);
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public ByteBuf buffer(int i2, int i4) {
        return this.allocator.directBuffer(i2, i4);
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public ByteBuf directBuffer(int i2, int i4) {
        return this.allocator.directBuffer(i2, i4);
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public ByteBuf heapBuffer(int i2, int i4) {
        return this.allocator.heapBuffer(i2, i4);
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public ByteBuf ioBuffer(int i2, int i4) {
        return this.allocator.directBuffer(i2, i4);
    }
}
