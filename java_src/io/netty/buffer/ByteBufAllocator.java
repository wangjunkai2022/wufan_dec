package io.netty.buffer;
/* loaded from: classes5.dex */
public interface ByteBufAllocator {
    public static final ByteBufAllocator DEFAULT = ByteBufUtil.DEFAULT_ALLOCATOR;

    ByteBuf buffer();

    ByteBuf buffer(int i2);

    ByteBuf buffer(int i2, int i4);

    int calculateNewCapacity(int i2, int i4);

    CompositeByteBuf compositeBuffer();

    CompositeByteBuf compositeBuffer(int i2);

    CompositeByteBuf compositeDirectBuffer();

    CompositeByteBuf compositeDirectBuffer(int i2);

    CompositeByteBuf compositeHeapBuffer();

    CompositeByteBuf compositeHeapBuffer(int i2);

    ByteBuf directBuffer();

    ByteBuf directBuffer(int i2);

    ByteBuf directBuffer(int i2, int i4);

    ByteBuf heapBuffer();

    ByteBuf heapBuffer(int i2);

    ByteBuf heapBuffer(int i2, int i4);

    ByteBuf ioBuffer();

    ByteBuf ioBuffer(int i2);

    ByteBuf ioBuffer(int i2, int i4);

    boolean isDirectBufferPooled();
}
