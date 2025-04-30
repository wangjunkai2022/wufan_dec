package io.netty.handler.codec.socksx.v5;

import io.netty.util.internal.ObjectUtil;
/* loaded from: classes5.dex */
public class Socks5AddressType implements Comparable<Socks5AddressType> {
    private final byte byteValue;
    private final String name;
    private String text;
    public static final Socks5AddressType IPv4 = new Socks5AddressType(1, "IPv4");
    public static final Socks5AddressType DOMAIN = new Socks5AddressType(3, "DOMAIN");
    public static final Socks5AddressType IPv6 = new Socks5AddressType(4, "IPv6");

    public Socks5AddressType(int i2) {
        this(i2, "UNKNOWN");
    }

    public static Socks5AddressType valueOf(byte b4) {
        if (b4 != 1) {
            if (b4 != 3) {
                if (b4 != 4) {
                    return new Socks5AddressType(b4);
                }
                return IPv6;
            }
            return DOMAIN;
        }
        return IPv4;
    }

    public byte byteValue() {
        return this.byteValue;
    }

    public boolean equals(Object obj) {
        return (obj instanceof Socks5AddressType) && this.byteValue == ((Socks5AddressType) obj).byteValue;
    }

    public int hashCode() {
        return this.byteValue;
    }

    public String toString() {
        String str = this.text;
        if (str == null) {
            String str2 = this.name + '(' + (this.byteValue & 255) + ')';
            this.text = str2;
            return str2;
        }
        return str;
    }

    public Socks5AddressType(int i2, String str) {
        this.name = (String) ObjectUtil.checkNotNull(str, "name");
        this.byteValue = (byte) i2;
    }

    @Override // java.lang.Comparable
    public int compareTo(Socks5AddressType socks5AddressType) {
        return this.byteValue - socks5AddressType.byteValue;
    }
}
