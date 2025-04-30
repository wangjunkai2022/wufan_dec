package io.netty.handler.codec.compression;

import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.ByteToMessageDecoder;
/* loaded from: classes5.dex */
public abstract class ZlibDecoder extends ByteToMessageDecoder {
    protected final int maxAllocation;

    public ZlibDecoder() {
        this(0);
    }

    protected void decompressionBufferExhausted(ByteBuf byteBuf) {
    }

    public abstract boolean isClosed();

    /* JADX INFO: Access modifiers changed from: protected */
    public ByteBuf prepareDecompressBuffer(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, int i2) {
        if (byteBuf == null) {
            if (this.maxAllocation == 0) {
                return channelHandlerContext.alloc().heapBuffer(i2);
            }
            return channelHandlerContext.alloc().heapBuffer(Math.min(i2, this.maxAllocation), this.maxAllocation);
        } else if (byteBuf.ensureWritable(i2, true) != 1) {
            return byteBuf;
        } else {
            decompressionBufferExhausted(byteBuf.duplicate());
            byteBuf.skipBytes(byteBuf.readableBytes());
            throw new DecompressionException("Decompression buffer has reached maximum size: " + byteBuf.maxCapacity());
        }
    }

    public ZlibDecoder(int i2) {
        if (i2 >= 0) {
            this.maxAllocation = i2;
            return;
        }
        throw new IllegalArgumentException("maxAllocation must be >= 0");
    }
}
