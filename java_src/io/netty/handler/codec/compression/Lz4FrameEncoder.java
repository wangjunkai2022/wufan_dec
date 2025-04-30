package io.netty.handler.codec.compression;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelFutureListener;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelPromise;
import io.netty.channel.ChannelPromiseNotifier;
import io.netty.handler.codec.EncoderException;
import io.netty.handler.codec.MessageToByteEncoder;
import io.netty.util.concurrent.EventExecutor;
import io.netty.util.concurrent.Future;
import io.netty.util.concurrent.GenericFutureListener;
import io.netty.util.internal.ObjectUtil;
import java.nio.ByteBuffer;
import java.util.concurrent.TimeUnit;
import java.util.zip.Checksum;
import net.jpountz.lz4.LZ4Compressor;
import net.jpountz.lz4.LZ4Exception;
import net.jpountz.lz4.LZ4Factory;
/* loaded from: classes5.dex */
public class Lz4FrameEncoder extends MessageToByteEncoder<ByteBuf> {
    static final int DEFAULT_MAX_ENCODE_SIZE = Integer.MAX_VALUE;
    private final int blockSize;
    private ByteBuf buffer;
    private final ByteBufChecksum checksum;
    private final int compressionLevel;
    private final LZ4Compressor compressor;
    private volatile ChannelHandlerContext ctx;
    private volatile boolean finished;
    private final int maxEncodeSize;

    public Lz4FrameEncoder() {
        this(false);
    }

    private static int compressionLevel(int i2) {
        if (i2 >= 64 && i2 <= 33554432) {
            return Math.max(0, (32 - Integer.numberOfLeadingZeros(i2 - 1)) - 10);
        }
        throw new IllegalArgumentException(String.format("blockSize: %d (expected: %d-%d)", Integer.valueOf(i2), 64, 33554432));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ChannelHandlerContext ctx() {
        ChannelHandlerContext channelHandlerContext = this.ctx;
        if (channelHandlerContext != null) {
            return channelHandlerContext;
        }
        throw new IllegalStateException("not added to a pipeline");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ChannelFuture finishEncode(ChannelHandlerContext channelHandlerContext, ChannelPromise channelPromise) {
        if (this.finished) {
            channelPromise.setSuccess();
            return channelPromise;
        }
        this.finished = true;
        ByteBuf heapBuffer = channelHandlerContext.alloc().heapBuffer(this.compressor.maxCompressedLength(this.buffer.readableBytes()) + 21);
        flushBufferedData(heapBuffer);
        int writerIndex = heapBuffer.writerIndex();
        heapBuffer.setLong(writerIndex, 5501767354678207339L);
        heapBuffer.setByte(writerIndex + 8, (byte) (this.compressionLevel | 16));
        heapBuffer.setInt(writerIndex + 9, 0);
        heapBuffer.setInt(writerIndex + 13, 0);
        heapBuffer.setInt(writerIndex + 17, 0);
        heapBuffer.writerIndex(writerIndex + 21);
        return channelHandlerContext.writeAndFlush(heapBuffer, channelPromise);
    }

    private void flushBufferedData(ByteBuf byteBuf) {
        int i2;
        int i4;
        int readableBytes = this.buffer.readableBytes();
        if (readableBytes == 0) {
            return;
        }
        this.checksum.reset();
        ByteBufChecksum byteBufChecksum = this.checksum;
        ByteBuf byteBuf2 = this.buffer;
        byteBufChecksum.update(byteBuf2, byteBuf2.readerIndex(), readableBytes);
        int value = (int) this.checksum.getValue();
        byteBuf.ensureWritable(this.compressor.maxCompressedLength(readableBytes) + 21);
        int writerIndex = byteBuf.writerIndex();
        int i5 = writerIndex + 21;
        try {
            ByteBuffer internalNioBuffer = byteBuf.internalNioBuffer(i5, byteBuf.writableBytes() - 21);
            int position = internalNioBuffer.position();
            LZ4Compressor lZ4Compressor = this.compressor;
            ByteBuf byteBuf3 = this.buffer;
            lZ4Compressor.compress(byteBuf3.internalNioBuffer(byteBuf3.readerIndex(), readableBytes), internalNioBuffer);
            int position2 = internalNioBuffer.position() - position;
            if (position2 >= readableBytes) {
                i4 = 16;
                byteBuf.setBytes(i5, this.buffer, 0, readableBytes);
                i2 = readableBytes;
            } else {
                i2 = position2;
                i4 = 32;
            }
            byteBuf.setLong(writerIndex, 5501767354678207339L);
            byteBuf.setByte(writerIndex + 8, (byte) (i4 | this.compressionLevel));
            byteBuf.setIntLE(writerIndex + 9, i2);
            byteBuf.setIntLE(writerIndex + 13, readableBytes);
            byteBuf.setIntLE(writerIndex + 17, value);
            byteBuf.writerIndex(i5 + i2);
            this.buffer.clear();
        } catch (LZ4Exception e4) {
            throw new CompressionException((Throwable) e4);
        }
    }

    public ChannelFuture close() {
        return close(ctx().newPromise());
    }

    @Override // io.netty.channel.ChannelOutboundHandlerAdapter, io.netty.channel.ChannelOutboundHandler
    public void flush(ChannelHandlerContext channelHandlerContext) throws Exception {
        ByteBuf byteBuf = this.buffer;
        if (byteBuf != null && byteBuf.isReadable()) {
            ByteBuf allocateBuffer = allocateBuffer(channelHandlerContext, Unpooled.EMPTY_BUFFER, isPreferDirect(), false);
            flushBufferedData(allocateBuffer);
            channelHandlerContext.write(allocateBuffer);
        }
        channelHandlerContext.flush();
    }

    final ByteBuf getBackingBuffer() {
        return this.buffer;
    }

    @Override // io.netty.channel.ChannelHandlerAdapter, io.netty.channel.ChannelHandler
    public void handlerAdded(ChannelHandlerContext channelHandlerContext) {
        this.ctx = channelHandlerContext;
        ByteBuf wrappedBuffer = Unpooled.wrappedBuffer(new byte[this.blockSize]);
        this.buffer = wrappedBuffer;
        wrappedBuffer.clear();
    }

    @Override // io.netty.channel.ChannelHandlerAdapter, io.netty.channel.ChannelHandler
    public void handlerRemoved(ChannelHandlerContext channelHandlerContext) throws Exception {
        super.handlerRemoved(channelHandlerContext);
        ByteBuf byteBuf = this.buffer;
        if (byteBuf != null) {
            byteBuf.release();
            this.buffer = null;
        }
    }

    public boolean isClosed() {
        return this.finished;
    }

    public Lz4FrameEncoder(boolean z3) {
        this(LZ4Factory.fastestInstance(), z3, 65536, new Lz4XXHash32(-1756908916));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.handler.codec.MessageToByteEncoder
    public ByteBuf allocateBuffer(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, boolean z3) {
        return allocateBuffer(channelHandlerContext, byteBuf, z3, true);
    }

    public ChannelFuture close(final ChannelPromise channelPromise) {
        ChannelHandlerContext ctx = ctx();
        EventExecutor executor = ctx.executor();
        if (executor.inEventLoop()) {
            return finishEncode(ctx, channelPromise);
        }
        executor.execute(new Runnable() { // from class: io.netty.handler.codec.compression.Lz4FrameEncoder.1
            @Override // java.lang.Runnable
            public void run() {
                Lz4FrameEncoder lz4FrameEncoder = Lz4FrameEncoder.this;
                lz4FrameEncoder.finishEncode(lz4FrameEncoder.ctx(), channelPromise).addListener((GenericFutureListener<? extends Future<? super Void>>) new ChannelPromiseNotifier(channelPromise));
            }
        });
        return channelPromise;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.handler.codec.MessageToByteEncoder
    public void encode(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, ByteBuf byteBuf2) throws Exception {
        if (this.finished) {
            if (byteBuf2.isWritable(byteBuf.readableBytes())) {
                byteBuf2.writeBytes(byteBuf);
                return;
            }
            throw new IllegalStateException("encode finished and not enough space to write remaining data");
        }
        ByteBuf byteBuf3 = this.buffer;
        while (true) {
            int readableBytes = byteBuf.readableBytes();
            if (readableBytes <= 0) {
                return;
            }
            byteBuf.readBytes(byteBuf3, Math.min(readableBytes, byteBuf3.writableBytes()));
            if (!byteBuf3.isWritable()) {
                flushBufferedData(byteBuf2);
            }
        }
    }

    public Lz4FrameEncoder(LZ4Factory lZ4Factory, boolean z3, int i2, Checksum checksum) {
        this(lZ4Factory, z3, i2, checksum, Integer.MAX_VALUE);
    }

    private ByteBuf allocateBuffer(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, boolean z3, boolean z4) {
        int readableBytes = byteBuf.readableBytes() + this.buffer.readableBytes();
        if (readableBytes >= 0) {
            int i2 = 0;
            while (readableBytes > 0) {
                int min = Math.min(this.blockSize, readableBytes);
                readableBytes -= min;
                i2 += this.compressor.maxCompressedLength(min) + 21;
            }
            if (i2 <= this.maxEncodeSize && i2 >= 0) {
                if (!z4 || i2 >= this.blockSize) {
                    if (z3) {
                        return channelHandlerContext.alloc().ioBuffer(i2, i2);
                    }
                    return channelHandlerContext.alloc().heapBuffer(i2, i2);
                }
                return Unpooled.EMPTY_BUFFER;
            }
            throw new EncoderException(String.format("requested encode buffer size (%d bytes) exceeds the maximum allowable size (%d bytes)", Integer.valueOf(i2), Integer.valueOf(this.maxEncodeSize)));
        }
        throw new EncoderException("too much data to allocate a buffer for compression");
    }

    public Lz4FrameEncoder(LZ4Factory lZ4Factory, boolean z3, int i2, Checksum checksum, int i4) {
        ObjectUtil.checkNotNull(lZ4Factory, "factory");
        ObjectUtil.checkNotNull(checksum, "checksum");
        this.compressor = z3 ? lZ4Factory.highCompressor() : lZ4Factory.fastCompressor();
        this.checksum = ByteBufChecksum.wrapChecksum(checksum);
        this.compressionLevel = compressionLevel(i2);
        this.blockSize = i2;
        this.maxEncodeSize = ObjectUtil.checkPositive(i4, "maxEncodeSize");
        this.finished = false;
    }

    @Override // io.netty.channel.ChannelOutboundHandlerAdapter, io.netty.channel.ChannelOutboundHandler
    public void close(final ChannelHandlerContext channelHandlerContext, final ChannelPromise channelPromise) throws Exception {
        ChannelFuture finishEncode = finishEncode(channelHandlerContext, channelHandlerContext.newPromise());
        finishEncode.addListener((GenericFutureListener<? extends Future<? super Void>>) new ChannelFutureListener() { // from class: io.netty.handler.codec.compression.Lz4FrameEncoder.2
            @Override // io.netty.util.concurrent.GenericFutureListener
            public void operationComplete(ChannelFuture channelFuture) throws Exception {
                channelHandlerContext.close(channelPromise);
            }
        });
        if (finishEncode.isDone()) {
            return;
        }
        channelHandlerContext.executor().schedule(new Runnable() { // from class: io.netty.handler.codec.compression.Lz4FrameEncoder.3
            @Override // java.lang.Runnable
            public void run() {
                channelHandlerContext.close(channelPromise);
            }
        }, 10L, TimeUnit.SECONDS);
    }
}
