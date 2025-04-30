package io.netty.handler.codec.redis;
/* loaded from: classes5.dex */
public class BulkStringHeaderRedisMessage implements a {
    private final int bulkStringLength;

    public BulkStringHeaderRedisMessage(int i2) {
        if (i2 > 0) {
            this.bulkStringLength = i2;
            return;
        }
        throw new RedisCodecException("bulkStringLength: " + i2 + " (expected: > 0)");
    }

    public final int bulkStringLength() {
        return this.bulkStringLength;
    }

    public boolean isNull() {
        return this.bulkStringLength == -1;
    }
}
