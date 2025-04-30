package io.netty.handler.codec.redis;

import io.netty.util.internal.StringUtil;
/* loaded from: classes5.dex */
public final class IntegerRedisMessage implements a {
    private final long value;

    public IntegerRedisMessage(long j4) {
        this.value = j4;
    }

    public String toString() {
        return StringUtil.simpleClassName(this) + "[value=" + this.value + ']';
    }

    public long value() {
        return this.value;
    }
}
