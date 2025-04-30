package io.netty.buffer;

import io.netty.util.internal.PlatformDependent;
import java.nio.ByteBuffer;
/* loaded from: classes5.dex */
final class WrappedUnpooledUnsafeDirectByteBuf extends UnpooledUnsafeDirectByteBuf {
    /* JADX INFO: Access modifiers changed from: package-private */
    public WrappedUnpooledUnsafeDirectByteBuf(ByteBufAllocator byteBufAllocator, long j4, int i2, boolean z3) {
        super(byteBufAllocator, PlatformDependent.directBuffer(j4, i2), i2, z3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.UnpooledDirectByteBuf
    public void freeDirect(ByteBuffer byteBuffer) {
        PlatformDependent.freeMemory(this.memoryAddress);
    }
}
