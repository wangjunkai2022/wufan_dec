package io.netty.handler.codec.haproxy;
/* loaded from: classes5.dex */
public enum HAProxyCommand {
    LOCAL((byte) 0),
    PROXY((byte) 1);
    
    private static final byte COMMAND_MASK = 15;
    private final byte byteValue;

    HAProxyCommand(byte b4) {
        this.byteValue = b4;
    }

    public byte byteValue() {
        return this.byteValue;
    }

    public static HAProxyCommand valueOf(byte b4) {
        int i2 = b4 & 15;
        byte b5 = (byte) i2;
        if (b5 != 0) {
            if (b5 == 1) {
                return PROXY;
            }
            throw new IllegalArgumentException("unknown command: " + i2);
        }
        return LOCAL;
    }
}
