package io.netty.handler.codec;

import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.util.internal.ObjectUtil;
import java.nio.ByteOrder;
import java.util.List;
/* loaded from: classes5.dex */
public class LengthFieldBasedFrameDecoder extends ByteToMessageDecoder {
    private final ByteOrder byteOrder;
    private long bytesToDiscard;
    private boolean discardingTooLongFrame;
    private final boolean failFast;
    private final int initialBytesToStrip;
    private final int lengthAdjustment;
    private final int lengthFieldEndOffset;
    private final int lengthFieldLength;
    private final int lengthFieldOffset;
    private final int maxFrameLength;
    private long tooLongFrameLength;

    public LengthFieldBasedFrameDecoder(int i2, int i4, int i5) {
        this(i2, i4, i5, 0, 0);
    }

    private void discardingTooLongFrame(ByteBuf byteBuf) {
        long j4 = this.bytesToDiscard;
        int min = (int) Math.min(j4, byteBuf.readableBytes());
        byteBuf.skipBytes(min);
        this.bytesToDiscard = j4 - min;
        failIfNecessary(false);
    }

    private void exceededFrameLength(ByteBuf byteBuf, long j4) {
        long readableBytes = j4 - byteBuf.readableBytes();
        this.tooLongFrameLength = j4;
        if (readableBytes < 0) {
            byteBuf.skipBytes((int) j4);
        } else {
            this.discardingTooLongFrame = true;
            this.bytesToDiscard = readableBytes;
            byteBuf.skipBytes(byteBuf.readableBytes());
        }
        failIfNecessary(true);
    }

    private void fail(long j4) {
        if (j4 > 0) {
            throw new TooLongFrameException("Adjusted frame length exceeds " + this.maxFrameLength + ": " + j4 + " - discarded");
        }
        throw new TooLongFrameException("Adjusted frame length exceeds " + this.maxFrameLength + " - discarding");
    }

    private void failIfNecessary(boolean z3) {
        if (this.bytesToDiscard == 0) {
            long j4 = this.tooLongFrameLength;
            this.tooLongFrameLength = 0L;
            this.discardingTooLongFrame = false;
            if (!this.failFast || z3) {
                fail(j4);
            }
        } else if (this.failFast && z3) {
            fail(this.tooLongFrameLength);
        }
    }

    private static void failOnFrameLengthLessThanInitialBytesToStrip(ByteBuf byteBuf, long j4, int i2) {
        byteBuf.skipBytes((int) j4);
        throw new CorruptedFrameException("Adjusted frame length (" + j4 + ") is less than initialBytesToStrip: " + i2);
    }

    private static void failOnFrameLengthLessThanLengthFieldEndOffset(ByteBuf byteBuf, long j4, int i2) {
        byteBuf.skipBytes(i2);
        throw new CorruptedFrameException("Adjusted frame length (" + j4 + ") is less than lengthFieldEndOffset: " + i2);
    }

    private static void failOnNegativeLengthField(ByteBuf byteBuf, long j4, int i2) {
        byteBuf.skipBytes(i2);
        throw new CorruptedFrameException("negative pre-adjustment length field: " + j4);
    }

    @Override // io.netty.handler.codec.ByteToMessageDecoder
    protected final void decode(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, List<Object> list) throws Exception {
        Object decode = decode(channelHandlerContext, byteBuf);
        if (decode != null) {
            list.add(decode);
        }
    }

    protected ByteBuf extractFrame(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, int i2, int i4) {
        return byteBuf.retainedSlice(i2, i4);
    }

    protected long getUnadjustedFrameLength(ByteBuf byteBuf, int i2, int i4, ByteOrder byteOrder) {
        int unsignedByte;
        ByteBuf order = byteBuf.order(byteOrder);
        if (i4 == 1) {
            unsignedByte = order.getUnsignedByte(i2);
        } else if (i4 == 2) {
            unsignedByte = order.getUnsignedShort(i2);
        } else if (i4 != 3) {
            if (i4 != 4) {
                if (i4 == 8) {
                    return order.getLong(i2);
                }
                throw new DecoderException("unsupported lengthFieldLength: " + this.lengthFieldLength + " (expected: 1, 2, 3, 4, or 8)");
            }
            return order.getUnsignedInt(i2);
        } else {
            unsignedByte = order.getUnsignedMedium(i2);
        }
        return unsignedByte;
    }

    public LengthFieldBasedFrameDecoder(int i2, int i4, int i5, int i6, int i7) {
        this(i2, i4, i5, i6, i7, true);
    }

    public LengthFieldBasedFrameDecoder(int i2, int i4, int i5, int i6, int i7, boolean z3) {
        this(ByteOrder.BIG_ENDIAN, i2, i4, i5, i6, i7, z3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object decode(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf) throws Exception {
        if (this.discardingTooLongFrame) {
            discardingTooLongFrame(byteBuf);
        }
        if (byteBuf.readableBytes() < this.lengthFieldEndOffset) {
            return null;
        }
        long unadjustedFrameLength = getUnadjustedFrameLength(byteBuf, byteBuf.readerIndex() + this.lengthFieldOffset, this.lengthFieldLength, this.byteOrder);
        if (unadjustedFrameLength < 0) {
            failOnNegativeLengthField(byteBuf, unadjustedFrameLength, this.lengthFieldEndOffset);
        }
        int i2 = this.lengthAdjustment;
        int i4 = this.lengthFieldEndOffset;
        long j4 = unadjustedFrameLength + i2 + i4;
        if (j4 < i4) {
            failOnFrameLengthLessThanLengthFieldEndOffset(byteBuf, j4, i4);
        }
        if (j4 > this.maxFrameLength) {
            exceededFrameLength(byteBuf, j4);
            return null;
        }
        int i5 = (int) j4;
        if (byteBuf.readableBytes() < i5) {
            return null;
        }
        int i6 = this.initialBytesToStrip;
        if (i6 > i5) {
            failOnFrameLengthLessThanInitialBytesToStrip(byteBuf, j4, i6);
        }
        byteBuf.skipBytes(this.initialBytesToStrip);
        int readerIndex = byteBuf.readerIndex();
        int i7 = i5 - this.initialBytesToStrip;
        ByteBuf extractFrame = extractFrame(channelHandlerContext, byteBuf, readerIndex, i7);
        byteBuf.readerIndex(readerIndex + i7);
        return extractFrame;
    }

    public LengthFieldBasedFrameDecoder(ByteOrder byteOrder, int i2, int i4, int i5, int i6, int i7, boolean z3) {
        this.byteOrder = (ByteOrder) ObjectUtil.checkNotNull(byteOrder, "byteOrder");
        ObjectUtil.checkPositive(i2, "maxFrameLength");
        ObjectUtil.checkPositiveOrZero(i4, "lengthFieldOffset");
        ObjectUtil.checkPositiveOrZero(i7, "initialBytesToStrip");
        if (i4 <= i2 - i5) {
            this.maxFrameLength = i2;
            this.lengthFieldOffset = i4;
            this.lengthFieldLength = i5;
            this.lengthAdjustment = i6;
            this.lengthFieldEndOffset = i4 + i5;
            this.initialBytesToStrip = i7;
            this.failFast = z3;
            return;
        }
        throw new IllegalArgumentException("maxFrameLength (" + i2 + ") must be equal to or greater than lengthFieldOffset (" + i4 + ") + lengthFieldLength (" + i5 + ").");
    }
}
