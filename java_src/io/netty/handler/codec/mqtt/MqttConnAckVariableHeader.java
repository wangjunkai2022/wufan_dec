package io.netty.handler.codec.mqtt;

import io.netty.util.internal.StringUtil;
/* loaded from: classes5.dex */
public final class MqttConnAckVariableHeader {
    private final MqttConnectReturnCode connectReturnCode;
    private final boolean sessionPresent;

    public MqttConnAckVariableHeader(MqttConnectReturnCode mqttConnectReturnCode, boolean z3) {
        this.connectReturnCode = mqttConnectReturnCode;
        this.sessionPresent = z3;
    }

    public MqttConnectReturnCode connectReturnCode() {
        return this.connectReturnCode;
    }

    public boolean isSessionPresent() {
        return this.sessionPresent;
    }

    public String toString() {
        return StringUtil.simpleClassName(this) + "[connectReturnCode=" + this.connectReturnCode + ", sessionPresent=" + this.sessionPresent + ']';
    }
}
