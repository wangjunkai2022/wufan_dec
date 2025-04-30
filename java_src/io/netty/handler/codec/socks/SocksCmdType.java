package io.netty.handler.codec.socks;
/* loaded from: classes5.dex */
public enum SocksCmdType {
    CONNECT((byte) 1),
    BIND((byte) 2),
    UDP((byte) 3),
    UNKNOWN((byte) -1);
    

    /* renamed from: b  reason: collision with root package name */
    private final byte f65761b;

    SocksCmdType(byte b4) {
        this.f65761b = b4;
    }

    @Deprecated
    public static SocksCmdType fromByte(byte b4) {
        return valueOf(b4);
    }

    public byte byteValue() {
        return this.f65761b;
    }

    public static SocksCmdType valueOf(byte b4) {
        SocksCmdType[] values;
        for (SocksCmdType socksCmdType : values()) {
            if (socksCmdType.f65761b == b4) {
                return socksCmdType;
            }
        }
        return UNKNOWN;
    }
}
