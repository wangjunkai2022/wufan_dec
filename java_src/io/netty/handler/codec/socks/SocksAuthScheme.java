package io.netty.handler.codec.socks;
/* loaded from: classes5.dex */
public enum SocksAuthScheme {
    NO_AUTH((byte) 0),
    AUTH_GSSAPI((byte) 1),
    AUTH_PASSWORD((byte) 2),
    UNKNOWN((byte) -1);
    

    /* renamed from: b  reason: collision with root package name */
    private final byte f65758b;

    SocksAuthScheme(byte b4) {
        this.f65758b = b4;
    }

    @Deprecated
    public static SocksAuthScheme fromByte(byte b4) {
        return valueOf(b4);
    }

    public byte byteValue() {
        return this.f65758b;
    }

    public static SocksAuthScheme valueOf(byte b4) {
        SocksAuthScheme[] values;
        for (SocksAuthScheme socksAuthScheme : values()) {
            if (socksAuthScheme.f65758b == b4) {
                return socksAuthScheme;
            }
        }
        return UNKNOWN;
    }
}
