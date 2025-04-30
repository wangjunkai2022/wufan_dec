package io.netty.handler.codec;

import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandler;
import io.netty.channel.ChannelHandlerContext;
import io.netty.util.internal.ObjectUtil;
import java.nio.ByteOrder;
import java.util.List;
@ChannelHandler.Sharable
/* loaded from: classes5.dex */
public class LengthFieldPrepender extends MessageToMessageEncoder<ByteBuf> {
    private final ByteOrder byteOrder;
    private final int lengthAdjustment;
    private final int lengthFieldLength;
    private final boolean lengthIncludesLengthFieldLength;

    public LengthFieldPrepender(int i2) {
        this(i2, false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.handler.codec.MessageToMessageEncoder
    public /* bridge */ /* synthetic */ void encode(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, List list) throws Exception {
        encode2(channelHandlerContext, byteBuf, (List<Object>) list);
    }

    public LengthFieldPrepender(int i2, boolean z3) {
        this(i2, 0, z3);
    }

    /* renamed from: encode  reason: avoid collision after fix types in other method */
    protected void encode2(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, List<Object> list) throws Exception {
        int readableBytes = byteBuf.readableBytes() + this.lengthAdjustment;
        if (this.lengthIncludesLengthFieldLength) {
            readableBytes += this.lengthFieldLength;
        }
        ObjectUtil.checkPositiveOrZero(readableBytes, "length");
        int i2 = this.lengthFieldLength;
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 == 4) {
                        list.add(channelHandlerContext.alloc().buffer(4).order(this.byteOrder).writeInt(readableBytes));
                    } else if (i2 == 8) {
                        list.add(channelHandlerContext.alloc().buffer(8).order(this.byteOrder).writeLong(readableBytes));
                    } else {
                        throw new Error("should not reach here");
                    }
                } else if (readableBytes < 16777216) {
                    list.add(channelHandlerContext.alloc().buffer(3).order(this.byteOrder).writeMedium(readableBytes));
                } else {
                    throw new IllegalArgumentException("length does not fit into a medium integer: " + readableBytes);
                }
            } else if (readableBytes < 65536) {
                list.add(channelHandlerContext.alloc().buffer(2).order(this.byteOrder).writeShort((short) readableBytes));
            } else {
                throw new IllegalArgumentException("length does not fit into a short integer: " + readableBytes);
            }
        } else if (readableBytes < 256) {
            list.add(channelHandlerContext.alloc().buffer(1).order(this.byteOrder).writeByte((byte) readableBytes));
        } else {
            throw new IllegalArgumentException("length does not fit into a byte: " + readableBytes);
        }
        list.add(byteBuf.retain());
    }

    public LengthFieldPrepender(int i2, int i4) {
        this(i2, i4, false);
    }

    public LengthFieldPrepender(int i2, int i4, boolean z3) {
        this(ByteOrder.BIG_ENDIAN, i2, i4, z3);
    }

    public LengthFieldPrepender(ByteOrder byteOrder, int i2, int i4, boolean z3) {
        if (i2 != 1 && i2 != 2 && i2 != 3 && i2 != 4 && i2 != 8) {
            throw new IllegalArgumentException("lengthFieldLength must be either 1, 2, 3, 4, or 8: " + i2);
        }
        this.byteOrder = (ByteOrder) ObjectUtil.checkNotNull(byteOrder, "byteOrder");
        this.lengthFieldLength = i2;
        this.lengthIncludesLengthFieldLength = z3;
        this.lengthAdjustment = i4;
    }
}
