package io.netty.handler.codec.socks;
/* loaded from: classes5.dex */
public enum SocksProtocolVersion {
    SOCKS4a((byte) 4),
    SOCKS5((byte) 5),
    UNKNOWN((byte) -1);
    

    /* renamed from: b  reason: collision with root package name */
    private final byte f65762b;

    SocksProtocolVersion(byte b4) {
        this.f65762b = b4;
    }

    @Deprecated
    public static SocksProtocolVersion fromByte(byte b4) {
        return valueOf(b4);
    }

    public byte byteValue() {
        return this.f65762b;
    }

    public static SocksProtocolVersion valueOf(byte b4) {
        SocksProtocolVersion[] values;
        for (SocksProtocolVersion socksProtocolVersion : values()) {
            if (socksProtocolVersion.f65762b == b4) {
                return socksProtocolVersion;
            }
        }
        return UNKNOWN;
    }
}
