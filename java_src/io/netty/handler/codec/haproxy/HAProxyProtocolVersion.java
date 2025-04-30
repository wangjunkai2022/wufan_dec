package io.netty.handler.codec.haproxy;
/* loaded from: classes5.dex */
public enum HAProxyProtocolVersion {
    V1((byte) 16),
    V2((byte) 32);
    
    private static final byte VERSION_MASK = -16;
    private final byte byteValue;

    HAProxyProtocolVersion(byte b4) {
        this.byteValue = b4;
    }

    public byte byteValue() {
        return this.byteValue;
    }

    public static HAProxyProtocolVersion valueOf(byte b4) {
        int i2 = b4 & VERSION_MASK;
        byte b5 = (byte) i2;
        if (b5 != 16) {
            if (b5 == 32) {
                return V2;
            }
            throw new IllegalArgumentException("unknown version: " + i2);
        }
        return V1;
    }
}
