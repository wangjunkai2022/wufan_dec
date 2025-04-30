package io.netty.handler.codec.redis;

import io.netty.buffer.ByteBuf;
/* loaded from: classes5.dex */
public interface RedisMessagePool {
    byte[] getByteBufOfInteger(long j4);

    ErrorRedisMessage getError(ByteBuf byteBuf);

    ErrorRedisMessage getError(String str);

    IntegerRedisMessage getInteger(long j4);

    IntegerRedisMessage getInteger(ByteBuf byteBuf);

    SimpleStringRedisMessage getSimpleString(ByteBuf byteBuf);

    SimpleStringRedisMessage getSimpleString(String str);
}
