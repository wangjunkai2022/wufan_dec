package io.netty.buffer;

import io.netty.util.internal.PlatformDependent;
/* loaded from: classes5.dex */
final class UnsafeHeapSwappedByteBuf extends AbstractUnsafeSwappedByteBuf {
    /* JADX INFO: Access modifiers changed from: package-private */
    public UnsafeHeapSwappedByteBuf(AbstractByteBuf abstractByteBuf) {
        super(abstractByteBuf);
    }

    private static int idx(ByteBuf byteBuf, int i2) {
        return byteBuf.arrayOffset() + i2;
    }

    @Override // io.netty.buffer.AbstractUnsafeSwappedByteBuf
    protected int _getInt(AbstractByteBuf abstractByteBuf, int i2) {
        return PlatformDependent.getInt(abstractByteBuf.array(), idx(abstractByteBuf, i2));
    }

    @Override // io.netty.buffer.AbstractUnsafeSwappedByteBuf
    protected long _getLong(AbstractByteBuf abstractByteBuf, int i2) {
        return PlatformDependent.getLong(abstractByteBuf.array(), idx(abstractByteBuf, i2));
    }

    @Override // io.netty.buffer.AbstractUnsafeSwappedByteBuf
    protected short _getShort(AbstractByteBuf abstractByteBuf, int i2) {
        return PlatformDependent.getShort(abstractByteBuf.array(), idx(abstractByteBuf, i2));
    }

    @Override // io.netty.buffer.AbstractUnsafeSwappedByteBuf
    protected void _setInt(AbstractByteBuf abstractByteBuf, int i2, int i4) {
        PlatformDependent.putInt(abstractByteBuf.array(), idx(abstractByteBuf, i2), i4);
    }

    @Override // io.netty.buffer.AbstractUnsafeSwappedByteBuf
    protected void _setLong(AbstractByteBuf abstractByteBuf, int i2, long j4) {
        PlatformDependent.putLong(abstractByteBuf.array(), idx(abstractByteBuf, i2), j4);
    }

    @Override // io.netty.buffer.AbstractUnsafeSwappedByteBuf
    protected void _setShort(AbstractByteBuf abstractByteBuf, int i2, short s3) {
        PlatformDependent.putShort(abstractByteBuf.array(), idx(abstractByteBuf, i2), s3);
    }
}
