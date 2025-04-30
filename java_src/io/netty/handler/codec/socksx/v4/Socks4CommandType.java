package io.netty.handler.codec.socksx.v4;

import io.netty.util.internal.ObjectUtil;
/* loaded from: classes5.dex */
public class Socks4CommandType implements Comparable<Socks4CommandType> {
    private final byte byteValue;
    private final String name;
    private String text;
    public static final Socks4CommandType CONNECT = new Socks4CommandType(1, "CONNECT");
    public static final Socks4CommandType BIND = new Socks4CommandType(2, "BIND");

    public Socks4CommandType(int i2) {
        this(i2, "UNKNOWN");
    }

    public static Socks4CommandType valueOf(byte b4) {
        if (b4 != 1) {
            if (b4 != 2) {
                return new Socks4CommandType(b4);
            }
            return BIND;
        }
        return CONNECT;
    }

    public byte byteValue() {
        return this.byteValue;
    }

    public boolean equals(Object obj) {
        return (obj instanceof Socks4CommandType) && this.byteValue == ((Socks4CommandType) obj).byteValue;
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

    public Socks4CommandType(int i2, String str) {
        this.name = (String) ObjectUtil.checkNotNull(str, "name");
        this.byteValue = (byte) i2;
    }

    @Override // java.lang.Comparable
    public int compareTo(Socks4CommandType socks4CommandType) {
        return this.byteValue - socks4CommandType.byteValue;
    }
}
