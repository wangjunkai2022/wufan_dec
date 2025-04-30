package io.netty.handler.codec;

import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.util.internal.ObjectUtil;
import java.util.List;
/* loaded from: classes5.dex */
public class DelimiterBasedFrameDecoder extends ByteToMessageDecoder {
    private final ByteBuf[] delimiters;
    private boolean discardingTooLongFrame;
    private final boolean failFast;
    private final LineBasedFrameDecoder lineBasedDecoder;
    private final int maxFrameLength;
    private final boolean stripDelimiter;
    private int tooLongFrameLength;

    public DelimiterBasedFrameDecoder(int i2, ByteBuf byteBuf) {
        this(i2, true, byteBuf);
    }

    private void fail(long j4) {
        if (j4 > 0) {
            throw new TooLongFrameException("frame length exceeds " + this.maxFrameLength + ": " + j4 + " - discarded");
        }
        throw new TooLongFrameException("frame length exceeds " + this.maxFrameLength + " - discarding");
    }

    private static int indexOf(ByteBuf byteBuf, ByteBuf byteBuf2) {
        for (int readerIndex = byteBuf.readerIndex(); readerIndex < byteBuf.writerIndex(); readerIndex++) {
            int i2 = 0;
            int i4 = readerIndex;
            while (i2 < byteBuf2.capacity() && byteBuf.getByte(i4) == byteBuf2.getByte(i2)) {
                i4++;
                if (i4 == byteBuf.writerIndex() && i2 != byteBuf2.capacity() - 1) {
                    return -1;
                }
                i2++;
            }
            if (i2 == byteBuf2.capacity()) {
                return readerIndex - byteBuf.readerIndex();
            }
        }
        return -1;
    }

    private static boolean isLineBased(ByteBuf[] byteBufArr) {
        if (byteBufArr.length != 2) {
            return false;
        }
        ByteBuf byteBuf = byteBufArr[0];
        ByteBuf byteBuf2 = byteBufArr[1];
        if (byteBuf.capacity() < byteBuf2.capacity()) {
            byteBuf = byteBufArr[1];
            byteBuf2 = byteBufArr[0];
        }
        return byteBuf.capacity() == 2 && byteBuf2.capacity() == 1 && byteBuf.getByte(0) == 13 && byteBuf.getByte(1) == 10 && byteBuf2.getByte(0) == 10;
    }

    private boolean isSubclass() {
        return getClass() != DelimiterBasedFrameDecoder.class;
    }

    private static void validateDelimiter(ByteBuf byteBuf) {
        ObjectUtil.checkNotNull(byteBuf, "delimiter");
        if (!byteBuf.isReadable()) {
            throw new IllegalArgumentException("empty delimiter");
        }
    }

    private static void validateMaxFrameLength(int i2) {
        ObjectUtil.checkPositive(i2, "maxFrameLength");
    }

    @Override // io.netty.handler.codec.ByteToMessageDecoder
    protected final void decode(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, List<Object> list) throws Exception {
        Object decode = decode(channelHandlerContext, byteBuf);
        if (decode != null) {
            list.add(decode);
        }
    }

    public DelimiterBasedFrameDecoder(int i2, boolean z3, ByteBuf byteBuf) {
        this(i2, z3, true, byteBuf);
    }

    public DelimiterBasedFrameDecoder(int i2, boolean z3, boolean z4, ByteBuf byteBuf) {
        this(i2, z3, z4, byteBuf.slice(byteBuf.readerIndex(), byteBuf.readableBytes()));
    }

    protected Object decode(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf) throws Exception {
        ByteBuf[] byteBufArr;
        LineBasedFrameDecoder lineBasedFrameDecoder = this.lineBasedDecoder;
        if (lineBasedFrameDecoder != null) {
            return lineBasedFrameDecoder.decode(channelHandlerContext, byteBuf);
        }
        int i2 = Integer.MAX_VALUE;
        ByteBuf byteBuf2 = null;
        for (ByteBuf byteBuf3 : this.delimiters) {
            int indexOf = indexOf(byteBuf, byteBuf3);
            if (indexOf >= 0 && indexOf < i2) {
                byteBuf2 = byteBuf3;
                i2 = indexOf;
            }
        }
        if (byteBuf2 != null) {
            int capacity = byteBuf2.capacity();
            if (this.discardingTooLongFrame) {
                this.discardingTooLongFrame = false;
                byteBuf.skipBytes(i2 + capacity);
                int i4 = this.tooLongFrameLength;
                this.tooLongFrameLength = 0;
                if (!this.failFast) {
                    fail(i4);
                }
                return null;
            } else if (i2 > this.maxFrameLength) {
                byteBuf.skipBytes(capacity + i2);
                fail(i2);
                return null;
            } else if (this.stripDelimiter) {
                ByteBuf readRetainedSlice = byteBuf.readRetainedSlice(i2);
                byteBuf.skipBytes(capacity);
                return readRetainedSlice;
            } else {
                return byteBuf.readRetainedSlice(i2 + capacity);
            }
        }
        if (!this.discardingTooLongFrame) {
            if (byteBuf.readableBytes() > this.maxFrameLength) {
                this.tooLongFrameLength = byteBuf.readableBytes();
                byteBuf.skipBytes(byteBuf.readableBytes());
                this.discardingTooLongFrame = true;
                if (this.failFast) {
                    fail(this.tooLongFrameLength);
                }
            }
        } else {
            this.tooLongFrameLength += byteBuf.readableBytes();
            byteBuf.skipBytes(byteBuf.readableBytes());
        }
        return null;
    }

    public DelimiterBasedFrameDecoder(int i2, ByteBuf... byteBufArr) {
        this(i2, true, byteBufArr);
    }

    public DelimiterBasedFrameDecoder(int i2, boolean z3, ByteBuf... byteBufArr) {
        this(i2, z3, true, byteBufArr);
    }

    public DelimiterBasedFrameDecoder(int i2, boolean z3, boolean z4, ByteBuf... byteBufArr) {
        validateMaxFrameLength(i2);
        ObjectUtil.checkNonEmpty(byteBufArr, "delimiters");
        if (isLineBased(byteBufArr) && !isSubclass()) {
            this.lineBasedDecoder = new LineBasedFrameDecoder(i2, z3, z4);
            this.delimiters = null;
        } else {
            this.delimiters = new ByteBuf[byteBufArr.length];
            for (int i4 = 0; i4 < byteBufArr.length; i4++) {
                ByteBuf byteBuf = byteBufArr[i4];
                validateDelimiter(byteBuf);
                this.delimiters[i4] = byteBuf.slice(byteBuf.readerIndex(), byteBuf.readableBytes());
            }
            this.lineBasedDecoder = null;
        }
        this.maxFrameLength = i2;
        this.stripDelimiter = z3;
        this.failFast = z4;
    }
}
