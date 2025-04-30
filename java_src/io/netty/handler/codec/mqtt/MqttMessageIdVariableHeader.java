package io.netty.handler.codec.mqtt;

import io.netty.util.internal.StringUtil;
/* loaded from: classes5.dex */
public final class MqttMessageIdVariableHeader {
    private final int messageId;

    private MqttMessageIdVariableHeader(int i2) {
        this.messageId = i2;
    }

    public static MqttMessageIdVariableHeader from(int i2) {
        if (i2 >= 1 && i2 <= 65535) {
            return new MqttMessageIdVariableHeader(i2);
        }
        throw new IllegalArgumentException("messageId: " + i2 + " (expected: 1 ~ 65535)");
    }

    public int messageId() {
        return this.messageId;
    }

    public String toString() {
        return StringUtil.simpleClassName(this) + "[messageId=" + this.messageId + ']';
    }
}
