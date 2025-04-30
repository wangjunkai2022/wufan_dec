package io.netty.handler.codec.memcache.binary;

import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.memcache.AbstractMemcacheObjectEncoder;
import io.netty.handler.codec.memcache.MemcacheMessage;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheMessage;
/* loaded from: classes5.dex */
public abstract class AbstractBinaryMemcacheEncoder<M extends BinaryMemcacheMessage> extends AbstractMemcacheObjectEncoder<M> {
    private static final int MINIMUM_HEADER_SIZE = 24;

    private static void encodeExtras(ByteBuf byteBuf, ByteBuf byteBuf2) {
        if (byteBuf2 == null || !byteBuf2.isReadable()) {
            return;
        }
        byteBuf.writeBytes(byteBuf2);
    }

    private static void encodeKey(ByteBuf byteBuf, ByteBuf byteBuf2) {
        if (byteBuf2 == null || !byteBuf2.isReadable()) {
            return;
        }
        byteBuf.writeBytes(byteBuf2);
    }

    protected abstract void encodeHeader(ByteBuf byteBuf, M m4);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.netty.handler.codec.memcache.AbstractMemcacheObjectEncoder
    protected /* bridge */ /* synthetic */ ByteBuf encodeMessage(ChannelHandlerContext channelHandlerContext, MemcacheMessage memcacheMessage) {
        return encodeMessage(channelHandlerContext, (ChannelHandlerContext) ((BinaryMemcacheMessage) memcacheMessage));
    }

    protected ByteBuf encodeMessage(ChannelHandlerContext channelHandlerContext, M m4) {
        ByteBuf buffer = channelHandlerContext.alloc().buffer(m4.extrasLength() + BinaryMemcacheOpcodes.FLUSHQ + m4.keyLength());
        encodeHeader(buffer, m4);
        encodeExtras(buffer, m4.extras());
        encodeKey(buffer, m4.key());
        return buffer;
    }
}
