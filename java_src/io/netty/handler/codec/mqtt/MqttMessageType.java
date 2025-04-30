package io.netty.handler.codec.mqtt;
/* loaded from: classes5.dex */
public enum MqttMessageType {
    CONNECT(1),
    CONNACK(2),
    PUBLISH(3),
    PUBACK(4),
    PUBREC(5),
    PUBREL(6),
    PUBCOMP(7),
    SUBSCRIBE(8),
    SUBACK(9),
    UNSUBSCRIBE(10),
    UNSUBACK(11),
    PINGREQ(12),
    PINGRESP(13),
    DISCONNECT(14);
    
    private final int value;

    MqttMessageType(int i2) {
        this.value = i2;
    }

    public int value() {
        return this.value;
    }

    public static MqttMessageType valueOf(int i2) {
        MqttMessageType[] values;
        for (MqttMessageType mqttMessageType : values()) {
            if (mqttMessageType.value == i2) {
                return mqttMessageType;
            }
        }
        throw new IllegalArgumentException("unknown message type: " + i2);
    }
}
