package io.netty.handler.codec.redis;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufAllocator;
import io.netty.buffer.ByteBufUtil;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.CodecException;
import io.netty.handler.codec.MessageToMessageEncoder;
import io.netty.util.internal.ObjectUtil;
import java.util.List;
/* loaded from: classes5.dex */
public class RedisEncoder extends MessageToMessageEncoder<a> {
    private final RedisMessagePool messagePool;

    public RedisEncoder() {
        this(FixedRedisMessagePool.INSTANCE);
    }

    private byte[] numberToBytes(long j4) {
        byte[] byteBufOfInteger = this.messagePool.getByteBufOfInteger(j4);
        return byteBufOfInteger != null ? byteBufOfInteger : RedisCodecUtil.longToAsciiBytes(j4);
    }

    private void writeArrayHeader(ByteBufAllocator byteBufAllocator, ArrayHeaderRedisMessage arrayHeaderRedisMessage, List<Object> list) {
        writeArrayHeader(byteBufAllocator, arrayHeaderRedisMessage.isNull(), arrayHeaderRedisMessage.length(), list);
    }

    private void writeArrayMessage(ByteBufAllocator byteBufAllocator, ArrayRedisMessage arrayRedisMessage, List<Object> list) {
        if (arrayRedisMessage.isNull()) {
            writeArrayHeader(byteBufAllocator, arrayRedisMessage.isNull(), -1L, list);
            return;
        }
        writeArrayHeader(byteBufAllocator, arrayRedisMessage.isNull(), arrayRedisMessage.children().size(), list);
        for (a aVar : arrayRedisMessage.children()) {
            writeRedisMessage(byteBufAllocator, aVar, list);
        }
    }

    private static void writeBulkStringContent(ByteBufAllocator byteBufAllocator, BulkStringRedisContent bulkStringRedisContent, List<Object> list) {
        list.add(bulkStringRedisContent.content().retain());
        if (bulkStringRedisContent instanceof LastBulkStringRedisContent) {
            list.add(byteBufAllocator.ioBuffer(2).writeShort(RedisConstants.EOL_SHORT));
        }
    }

    private void writeBulkStringHeader(ByteBufAllocator byteBufAllocator, BulkStringHeaderRedisMessage bulkStringHeaderRedisMessage, List<Object> list) {
        ByteBuf ioBuffer = byteBufAllocator.ioBuffer((bulkStringHeaderRedisMessage.isNull() ? 2 : 22) + 1);
        RedisMessageType.BULK_STRING.writeTo(ioBuffer);
        if (bulkStringHeaderRedisMessage.isNull()) {
            ioBuffer.writeShort(RedisConstants.NULL_SHORT);
        } else {
            ioBuffer.writeBytes(numberToBytes(bulkStringHeaderRedisMessage.bulkStringLength()));
            ioBuffer.writeShort(RedisConstants.EOL_SHORT);
        }
        list.add(ioBuffer);
    }

    private static void writeErrorMessage(ByteBufAllocator byteBufAllocator, ErrorRedisMessage errorRedisMessage, List<Object> list) {
        writeString(byteBufAllocator, RedisMessageType.ERROR, errorRedisMessage.content(), list);
    }

    private void writeFullBulkStringMessage(ByteBufAllocator byteBufAllocator, FullBulkStringRedisMessage fullBulkStringRedisMessage, List<Object> list) {
        if (fullBulkStringRedisMessage.isNull()) {
            ByteBuf ioBuffer = byteBufAllocator.ioBuffer(5);
            RedisMessageType.BULK_STRING.writeTo(ioBuffer);
            ioBuffer.writeShort(RedisConstants.NULL_SHORT);
            ioBuffer.writeShort(RedisConstants.EOL_SHORT);
            list.add(ioBuffer);
            return;
        }
        ByteBuf ioBuffer2 = byteBufAllocator.ioBuffer(23);
        RedisMessageType.BULK_STRING.writeTo(ioBuffer2);
        ioBuffer2.writeBytes(numberToBytes(fullBulkStringRedisMessage.content().readableBytes()));
        short s3 = RedisConstants.EOL_SHORT;
        ioBuffer2.writeShort(s3);
        list.add(ioBuffer2);
        list.add(fullBulkStringRedisMessage.content().retain());
        list.add(byteBufAllocator.ioBuffer(2).writeShort(s3));
    }

    private static void writeInlineCommandMessage(ByteBufAllocator byteBufAllocator, InlineCommandRedisMessage inlineCommandRedisMessage, List<Object> list) {
        writeString(byteBufAllocator, RedisMessageType.INLINE_COMMAND, inlineCommandRedisMessage.content(), list);
    }

    private void writeIntegerMessage(ByteBufAllocator byteBufAllocator, IntegerRedisMessage integerRedisMessage, List<Object> list) {
        ByteBuf ioBuffer = byteBufAllocator.ioBuffer(23);
        RedisMessageType.INTEGER.writeTo(ioBuffer);
        ioBuffer.writeBytes(numberToBytes(integerRedisMessage.value()));
        ioBuffer.writeShort(RedisConstants.EOL_SHORT);
        list.add(ioBuffer);
    }

    private void writeRedisMessage(ByteBufAllocator byteBufAllocator, a aVar, List<Object> list) {
        if (aVar instanceof InlineCommandRedisMessage) {
            writeInlineCommandMessage(byteBufAllocator, (InlineCommandRedisMessage) aVar, list);
        } else if (aVar instanceof SimpleStringRedisMessage) {
            writeSimpleStringMessage(byteBufAllocator, (SimpleStringRedisMessage) aVar, list);
        } else if (aVar instanceof ErrorRedisMessage) {
            writeErrorMessage(byteBufAllocator, (ErrorRedisMessage) aVar, list);
        } else if (aVar instanceof IntegerRedisMessage) {
            writeIntegerMessage(byteBufAllocator, (IntegerRedisMessage) aVar, list);
        } else if (aVar instanceof FullBulkStringRedisMessage) {
            writeFullBulkStringMessage(byteBufAllocator, (FullBulkStringRedisMessage) aVar, list);
        } else if (aVar instanceof BulkStringRedisContent) {
            writeBulkStringContent(byteBufAllocator, (BulkStringRedisContent) aVar, list);
        } else if (aVar instanceof BulkStringHeaderRedisMessage) {
            writeBulkStringHeader(byteBufAllocator, (BulkStringHeaderRedisMessage) aVar, list);
        } else if (aVar instanceof ArrayHeaderRedisMessage) {
            writeArrayHeader(byteBufAllocator, (ArrayHeaderRedisMessage) aVar, list);
        } else if (aVar instanceof ArrayRedisMessage) {
            writeArrayMessage(byteBufAllocator, (ArrayRedisMessage) aVar, list);
        } else {
            throw new CodecException("unknown message type: " + aVar);
        }
    }

    private static void writeSimpleStringMessage(ByteBufAllocator byteBufAllocator, SimpleStringRedisMessage simpleStringRedisMessage, List<Object> list) {
        writeString(byteBufAllocator, RedisMessageType.SIMPLE_STRING, simpleStringRedisMessage.content(), list);
    }

    private static void writeString(ByteBufAllocator byteBufAllocator, RedisMessageType redisMessageType, String str, List<Object> list) {
        ByteBuf ioBuffer = byteBufAllocator.ioBuffer(redisMessageType.length() + ByteBufUtil.utf8MaxBytes(str) + 2);
        redisMessageType.writeTo(ioBuffer);
        ByteBufUtil.writeUtf8(ioBuffer, str);
        ioBuffer.writeShort(RedisConstants.EOL_SHORT);
        list.add(ioBuffer);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.handler.codec.MessageToMessageEncoder
    public /* bridge */ /* synthetic */ void encode(ChannelHandlerContext channelHandlerContext, a aVar, List list) throws Exception {
        encode2(channelHandlerContext, aVar, (List<Object>) list);
    }

    public RedisEncoder(RedisMessagePool redisMessagePool) {
        this.messagePool = (RedisMessagePool) ObjectUtil.checkNotNull(redisMessagePool, "messagePool");
    }

    private void writeArrayHeader(ByteBufAllocator byteBufAllocator, boolean z3, long j4, List<Object> list) {
        if (z3) {
            ByteBuf ioBuffer = byteBufAllocator.ioBuffer(5);
            RedisMessageType.ARRAY_HEADER.writeTo(ioBuffer);
            ioBuffer.writeShort(RedisConstants.NULL_SHORT);
            ioBuffer.writeShort(RedisConstants.EOL_SHORT);
            list.add(ioBuffer);
            return;
        }
        ByteBuf ioBuffer2 = byteBufAllocator.ioBuffer(23);
        RedisMessageType.ARRAY_HEADER.writeTo(ioBuffer2);
        ioBuffer2.writeBytes(numberToBytes(j4));
        ioBuffer2.writeShort(RedisConstants.EOL_SHORT);
        list.add(ioBuffer2);
    }

    /* renamed from: encode  reason: avoid collision after fix types in other method */
    protected void encode2(ChannelHandlerContext channelHandlerContext, a aVar, List<Object> list) throws Exception {
        try {
            writeRedisMessage(channelHandlerContext.alloc(), aVar, list);
        } catch (CodecException e4) {
            throw e4;
        } catch (Exception e5) {
            throw new CodecException(e5);
        }
    }
}
