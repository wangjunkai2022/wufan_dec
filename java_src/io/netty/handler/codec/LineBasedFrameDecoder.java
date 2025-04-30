package io.netty.handler.codec;

import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.util.ByteProcessor;
import java.util.List;
/* loaded from: classes5.dex */
public class LineBasedFrameDecoder extends ByteToMessageDecoder {
    private int discardedBytes;
    private boolean discarding;
    private final boolean failFast;
    private final int maxLength;
    private int offset;
    private final boolean stripDelimiter;

    public LineBasedFrameDecoder(int i2) {
        this(i2, true, false);
    }

    private void fail(ChannelHandlerContext channelHandlerContext, int i2) {
        fail(channelHandlerContext, String.valueOf(i2));
    }

    private int findEndOfLine(ByteBuf byteBuf) {
        int readableBytes = byteBuf.readableBytes();
        int readerIndex = byteBuf.readerIndex();
        int i2 = this.offset;
        int forEachByte = byteBuf.forEachByte(readerIndex + i2, readableBytes - i2, ByteProcessor.FIND_LF);
        if (forEachByte >= 0) {
            this.offset = 0;
            return (forEachByte <= 0 || byteBuf.getByte(forEachByte + (-1)) != 13) ? forEachByte : forEachByte - 1;
        }
        this.offset = readableBytes;
        return forEachByte;
    }

    @Override // io.netty.handler.codec.ByteToMessageDecoder
    protected final void decode(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, List<Object> list) throws Exception {
        Object decode = decode(channelHandlerContext, byteBuf);
        if (decode != null) {
            list.add(decode);
        }
    }

    public LineBasedFrameDecoder(int i2, boolean z3, boolean z4) {
        this.maxLength = i2;
        this.failFast = z4;
        this.stripDelimiter = z3;
    }

    private void fail(ChannelHandlerContext channelHandlerContext, String str) {
        channelHandlerContext.fireExceptionCaught((Throwable) new TooLongFrameException("frame length (" + str + ") exceeds the allowed maximum (" + this.maxLength + ')'));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object decode(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf) throws Exception {
        int findEndOfLine = findEndOfLine(byteBuf);
        if (this.discarding) {
            if (findEndOfLine >= 0) {
                int readerIndex = (this.discardedBytes + findEndOfLine) - byteBuf.readerIndex();
                byteBuf.readerIndex(findEndOfLine + (byteBuf.getByte(findEndOfLine) != 13 ? 1 : 2));
                this.discardedBytes = 0;
                this.discarding = false;
                if (!this.failFast) {
                    fail(channelHandlerContext, readerIndex);
                }
            } else {
                this.discardedBytes += byteBuf.readableBytes();
                byteBuf.readerIndex(byteBuf.writerIndex());
                this.offset = 0;
            }
            return null;
        } else if (findEndOfLine >= 0) {
            int readerIndex2 = findEndOfLine - byteBuf.readerIndex();
            int i2 = byteBuf.getByte(findEndOfLine) != 13 ? 1 : 2;
            if (readerIndex2 > this.maxLength) {
                byteBuf.readerIndex(findEndOfLine + i2);
                fail(channelHandlerContext, readerIndex2);
                return null;
            } else if (this.stripDelimiter) {
                ByteBuf readRetainedSlice = byteBuf.readRetainedSlice(readerIndex2);
                byteBuf.skipBytes(i2);
                return readRetainedSlice;
            } else {
                return byteBuf.readRetainedSlice(readerIndex2 + i2);
            }
        } else {
            int readableBytes = byteBuf.readableBytes();
            if (readableBytes > this.maxLength) {
                this.discardedBytes = readableBytes;
                byteBuf.readerIndex(byteBuf.writerIndex());
                this.discarding = true;
                this.offset = 0;
                if (this.failFast) {
                    fail(channelHandlerContext, "over " + this.discardedBytes);
                }
            }
            return null;
        }
    }
}
