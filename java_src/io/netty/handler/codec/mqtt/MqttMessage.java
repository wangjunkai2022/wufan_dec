package io.netty.handler.codec.mqtt;

import io.netty.handler.codec.DecoderResult;
import io.netty.util.internal.StringUtil;
/* loaded from: classes5.dex */
public class MqttMessage {
    public static final MqttMessage DISCONNECT;
    public static final MqttMessage PINGREQ;
    public static final MqttMessage PINGRESP;
    private final DecoderResult decoderResult;
    private final MqttFixedHeader mqttFixedHeader;
    private final Object payload;
    private final Object variableHeader;

    static {
        MqttMessageType mqttMessageType = MqttMessageType.PINGREQ;
        MqttQoS mqttQoS = MqttQoS.AT_MOST_ONCE;
        PINGREQ = new MqttMessage(new MqttFixedHeader(mqttMessageType, false, mqttQoS, false, 0));
        PINGRESP = new MqttMessage(new MqttFixedHeader(MqttMessageType.PINGRESP, false, mqttQoS, false, 0));
        DISCONNECT = new MqttMessage(new MqttFixedHeader(MqttMessageType.DISCONNECT, false, mqttQoS, false, 0));
    }

    public MqttMessage(MqttFixedHeader mqttFixedHeader) {
        this(mqttFixedHeader, null, null);
    }

    public DecoderResult decoderResult() {
        return this.decoderResult;
    }

    public MqttFixedHeader fixedHeader() {
        return this.mqttFixedHeader;
    }

    public Object payload() {
        return this.payload;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(StringUtil.simpleClassName(this));
        sb.append('[');
        sb.append("fixedHeader=");
        sb.append(fixedHeader() != null ? fixedHeader().toString() : "");
        sb.append(", variableHeader=");
        sb.append(variableHeader() != null ? this.variableHeader.toString() : "");
        sb.append(", payload=");
        sb.append(payload() != null ? this.payload.toString() : "");
        sb.append(']');
        return sb.toString();
    }

    public Object variableHeader() {
        return this.variableHeader;
    }

    public MqttMessage(MqttFixedHeader mqttFixedHeader, Object obj) {
        this(mqttFixedHeader, obj, null);
    }

    public MqttMessage(MqttFixedHeader mqttFixedHeader, Object obj, Object obj2) {
        this(mqttFixedHeader, obj, obj2, DecoderResult.SUCCESS);
    }

    public MqttMessage(MqttFixedHeader mqttFixedHeader, Object obj, Object obj2, DecoderResult decoderResult) {
        this.mqttFixedHeader = mqttFixedHeader;
        this.variableHeader = obj;
        this.payload = obj2;
        this.decoderResult = decoderResult;
    }
}
