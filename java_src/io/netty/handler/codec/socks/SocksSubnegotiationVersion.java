package io.netty.handler.codec.socks;
/* loaded from: classes5.dex */
public enum SocksSubnegotiationVersion {
    AUTH_PASSWORD((byte) 1),
    UNKNOWN((byte) -1);
    

    /* renamed from: b  reason: collision with root package name */
    private final byte f65763b;

    SocksSubnegotiationVersion(byte b4) {
        this.f65763b = b4;
    }

    @Deprecated
    public static SocksSubnegotiationVersion fromByte(byte b4) {
        return valueOf(b4);
    }

    public byte byteValue() {
        return this.f65763b;
    }

    public static SocksSubnegotiationVersion valueOf(byte b4) {
        SocksSubnegotiationVersion[] values;
        for (SocksSubnegotiationVersion socksSubnegotiationVersion : values()) {
            if (socksSubnegotiationVersion.f65763b == b4) {
                return socksSubnegotiationVersion;
            }
        }
        return UNKNOWN;
    }
}
