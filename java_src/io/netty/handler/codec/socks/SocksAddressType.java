package io.netty.handler.codec.socks;
/* loaded from: classes5.dex */
public enum SocksAddressType {
    IPv4((byte) 1),
    DOMAIN((byte) 3),
    IPv6((byte) 4),
    UNKNOWN((byte) -1);
    

    /* renamed from: b  reason: collision with root package name */
    private final byte f65757b;

    SocksAddressType(byte b4) {
        this.f65757b = b4;
    }

    @Deprecated
    public static SocksAddressType fromByte(byte b4) {
        return valueOf(b4);
    }

    public byte byteValue() {
        return this.f65757b;
    }

    public static SocksAddressType valueOf(byte b4) {
        SocksAddressType[] values;
        for (SocksAddressType socksAddressType : values()) {
            if (socksAddressType.f65757b == b4) {
                return socksAddressType;
            }
        }
        return UNKNOWN;
    }
}
