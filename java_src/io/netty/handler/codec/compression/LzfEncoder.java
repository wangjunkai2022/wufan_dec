package io.netty.handler.codec.compression;

import com.ning.compress.BufferRecycler;
import com.ning.compress.lzf.ChunkEncoder;
import com.ning.compress.lzf.LZFEncoder;
import com.ning.compress.lzf.util.ChunkEncoderFactory;
import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.MessageToByteEncoder;
/* loaded from: classes5.dex */
public class LzfEncoder extends MessageToByteEncoder<ByteBuf> {
    private static final int MIN_BLOCK_TO_COMPRESS = 16;
    private final ChunkEncoder encoder;
    private final BufferRecycler recycler;

    public LzfEncoder() {
        this(false, 65535);
    }

    @Override // io.netty.channel.ChannelHandlerAdapter, io.netty.channel.ChannelHandler
    public void handlerRemoved(ChannelHandlerContext channelHandlerContext) throws Exception {
        this.encoder.close();
        super.handlerRemoved(channelHandlerContext);
    }

    public LzfEncoder(boolean z3) {
        this(z3, 65535);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.handler.codec.MessageToByteEncoder
    public void encode(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, ByteBuf byteBuf2) throws Exception {
        byte[] allocInputBuffer;
        int readableBytes = byteBuf.readableBytes();
        int readerIndex = byteBuf.readerIndex();
        int i2 = 0;
        if (byteBuf.hasArray()) {
            allocInputBuffer = byteBuf.array();
            i2 = byteBuf.arrayOffset() + readerIndex;
        } else {
            allocInputBuffer = this.recycler.allocInputBuffer(readableBytes);
            byteBuf.getBytes(readerIndex, allocInputBuffer, 0, readableBytes);
        }
        byte[] bArr = allocInputBuffer;
        byteBuf2.ensureWritable(LZFEncoder.estimateMaxWorkspaceSize(readableBytes));
        byte[] array = byteBuf2.array();
        int arrayOffset = byteBuf2.arrayOffset() + byteBuf2.writerIndex();
        byteBuf2.writerIndex(byteBuf2.writerIndex() + (LZFEncoder.appendEncoded(this.encoder, bArr, i2, readableBytes, array, arrayOffset) - arrayOffset));
        byteBuf.skipBytes(readableBytes);
        if (byteBuf.hasArray()) {
            return;
        }
        this.recycler.releaseInputBuffer(bArr);
    }

    public LzfEncoder(int i2) {
        this(false, i2);
    }

    public LzfEncoder(boolean z3, int i2) {
        super(false);
        ChunkEncoder optimalNonAllocatingInstance;
        if (i2 >= 16 && i2 <= 65535) {
            if (z3) {
                optimalNonAllocatingInstance = ChunkEncoderFactory.safeNonAllocatingInstance(i2);
            } else {
                optimalNonAllocatingInstance = ChunkEncoderFactory.optimalNonAllocatingInstance(i2);
            }
            this.encoder = optimalNonAllocatingInstance;
            this.recycler = BufferRecycler.instance();
            return;
        }
        throw new IllegalArgumentException("totalLength: " + i2 + " (expected: 16-65535)");
    }
}
