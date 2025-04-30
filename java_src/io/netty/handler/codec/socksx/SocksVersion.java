package io.netty.handler.codec.socksx;
/* loaded from: classes5.dex */
public enum SocksVersion {
    SOCKS4a((byte) 4),
    SOCKS5((byte) 5),
    UNKNOWN((byte) -1);
    

    /* renamed from: b  reason: collision with root package name */
    private final byte f65764b;

    SocksVersion(byte b4) {
        this.f65764b = b4;
    }

    public byte byteValue() {
        return this.f65764b;
    }

    public static SocksVersion valueOf(byte b4) {
        SocksVersion socksVersion = SOCKS4a;
        if (b4 == socksVersion.byteValue()) {
            return socksVersion;
        }
        SocksVersion socksVersion2 = SOCKS5;
        return b4 == socksVersion2.byteValue() ? socksVersion2 : UNKNOWN;
    }
}
