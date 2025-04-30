package io.netty.handler.codec.protobuf;

import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandler;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.MessageToByteEncoder;
@ChannelHandler.Sharable
/* loaded from: classes5.dex */
public class ProtobufVarint32LengthFieldPrepender extends MessageToByteEncoder<ByteBuf> {
    static int computeRawVarint32Size(int i2) {
        if ((i2 & (-128)) == 0) {
            return 1;
        }
        if ((i2 & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i2) == 0) {
            return 3;
        }
        return (i2 & (-268435456)) == 0 ? 4 : 5;
    }

    static void writeRawVarint32(ByteBuf byteBuf, int i2) {
        while ((i2 & (-128)) != 0) {
            byteBuf.writeByte((i2 & 127) | 128);
            i2 >>>= 7;
        }
        byteBuf.writeByte(i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.handler.codec.MessageToByteEncoder
    public void encode(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, ByteBuf byteBuf2) throws Exception {
        int readableBytes = byteBuf.readableBytes();
        byteBuf2.ensureWritable(computeRawVarint32Size(readableBytes) + readableBytes);
        writeRawVarint32(byteBuf2, readableBytes);
        byteBuf2.writeBytes(byteBuf, byteBuf.readerIndex(), readableBytes);
    }
}
