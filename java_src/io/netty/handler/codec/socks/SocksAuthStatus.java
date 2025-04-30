package io.netty.handler.codec.socks;
/* loaded from: classes5.dex */
public enum SocksAuthStatus {
    SUCCESS((byte) 0),
    FAILURE((byte) -1);
    

    /* renamed from: b  reason: collision with root package name */
    private final byte f65759b;

    SocksAuthStatus(byte b4) {
        this.f65759b = b4;
    }

    @Deprecated
    public static SocksAuthStatus fromByte(byte b4) {
        return valueOf(b4);
    }

    public byte byteValue() {
        return this.f65759b;
    }

    public static SocksAuthStatus valueOf(byte b4) {
        SocksAuthStatus[] values;
        for (SocksAuthStatus socksAuthStatus : values()) {
            if (socksAuthStatus.f65759b == b4) {
                return socksAuthStatus;
            }
        }
        return FAILURE;
    }
}
