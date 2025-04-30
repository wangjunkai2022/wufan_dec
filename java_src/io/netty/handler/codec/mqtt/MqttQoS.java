package io.netty.handler.codec.mqtt;
/* loaded from: classes5.dex */
public enum MqttQoS {
    AT_MOST_ONCE(0),
    AT_LEAST_ONCE(1),
    EXACTLY_ONCE(2),
    FAILURE(128);
    
    private final int value;

    MqttQoS(int i2) {
        this.value = i2;
    }

    public int value() {
        return this.value;
    }

    public static MqttQoS valueOf(int i2) {
        MqttQoS[] values;
        for (MqttQoS mqttQoS : values()) {
            if (mqttQoS.value == i2) {
                return mqttQoS;
            }
        }
        throw new IllegalArgumentException("invalid QoS: " + i2);
    }
}
