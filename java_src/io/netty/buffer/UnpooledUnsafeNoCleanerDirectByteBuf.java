package io.netty.buffer;

import io.netty.util.internal.PlatformDependent;
import java.nio.ByteBuffer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class UnpooledUnsafeNoCleanerDirectByteBuf extends UnpooledUnsafeDirectByteBuf {
    /* JADX INFO: Access modifiers changed from: package-private */
    public UnpooledUnsafeNoCleanerDirectByteBuf(ByteBufAllocator byteBufAllocator, int i2, int i4) {
        super(byteBufAllocator, i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.UnpooledDirectByteBuf
    public ByteBuffer allocateDirect(int i2) {
        return PlatformDependent.allocateDirectNoCleaner(i2);
    }

    @Override // io.netty.buffer.UnpooledDirectByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf capacity(int i2) {
        checkNewCapacity(i2);
        if (i2 == capacity()) {
            return this;
        }
        trimIndicesToCapacity(i2);
        setByteBuffer(reallocateDirect(this.buffer, i2), false);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.UnpooledDirectByteBuf
    public void freeDirect(ByteBuffer byteBuffer) {
        PlatformDependent.freeDirectNoCleaner(byteBuffer);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ByteBuffer reallocateDirect(ByteBuffer byteBuffer, int i2) {
        return PlatformDependent.reallocateDirectNoCleaner(byteBuffer, i2);
    }
}
