package io.netty.handler.codec.protobuf;

import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.ByteToMessageDecoder;
import io.netty.handler.codec.CorruptedFrameException;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.util.List;
import kotlin.jvm.internal.ByteCompanionObject;
/* loaded from: classes5.dex */
public class ProtobufVarint32FrameDecoder extends ByteToMessageDecoder {
    private static int readRawVarint32(ByteBuf byteBuf) {
        int i2;
        if (byteBuf.isReadable()) {
            byteBuf.markReaderIndex();
            byte readByte = byteBuf.readByte();
            if (readByte >= 0) {
                return readByte;
            }
            int i4 = readByte & ByteCompanionObject.MAX_VALUE;
            if (!byteBuf.isReadable()) {
                byteBuf.resetReaderIndex();
                return 0;
            }
            byte readByte2 = byteBuf.readByte();
            if (readByte2 >= 0) {
                i2 = readByte2 << 7;
            } else {
                i4 |= (readByte2 & ByteCompanionObject.MAX_VALUE) << 7;
                if (!byteBuf.isReadable()) {
                    byteBuf.resetReaderIndex();
                    return 0;
                }
                byte readByte3 = byteBuf.readByte();
                if (readByte3 >= 0) {
                    i2 = readByte3 << 14;
                } else {
                    i4 |= (readByte3 & ByteCompanionObject.MAX_VALUE) << 14;
                    if (!byteBuf.isReadable()) {
                        byteBuf.resetReaderIndex();
                        return 0;
                    }
                    byte readByte4 = byteBuf.readByte();
                    if (readByte4 < 0) {
                        int i5 = i4 | ((readByte4 & ByteCompanionObject.MAX_VALUE) << 21);
                        if (!byteBuf.isReadable()) {
                            byteBuf.resetReaderIndex();
                            return 0;
                        }
                        byte readByte5 = byteBuf.readByte();
                        int i6 = i5 | (readByte5 << BinaryMemcacheOpcodes.TOUCH);
                        if (readByte5 >= 0) {
                            return i6;
                        }
                        throw new CorruptedFrameException("malformed varint.");
                    }
                    i2 = readByte4 << BinaryMemcacheOpcodes.INCREMENTQ;
                }
            }
            return i2 | i4;
        }
        return 0;
    }

    @Override // io.netty.handler.codec.ByteToMessageDecoder
    protected void decode(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, List<Object> list) throws Exception {
        byteBuf.markReaderIndex();
        int readerIndex = byteBuf.readerIndex();
        int readRawVarint32 = readRawVarint32(byteBuf);
        if (readerIndex == byteBuf.readerIndex()) {
            return;
        }
        if (readRawVarint32 >= 0) {
            if (byteBuf.readableBytes() < readRawVarint32) {
                byteBuf.resetReaderIndex();
                return;
            } else {
                list.add(byteBuf.readRetainedSlice(readRawVarint32));
                return;
            }
        }
        throw new CorruptedFrameException("negative length: " + readRawVarint32);
    }
}
