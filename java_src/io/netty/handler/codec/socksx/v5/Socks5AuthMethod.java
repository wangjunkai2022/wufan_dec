package io.netty.handler.codec.socksx.v5;

import io.netty.util.internal.ObjectUtil;
/* loaded from: classes5.dex */
public class Socks5AuthMethod implements Comparable<Socks5AuthMethod> {
    private final byte byteValue;
    private final String name;
    private String text;
    public static final Socks5AuthMethod NO_AUTH = new Socks5AuthMethod(0, "NO_AUTH");
    public static final Socks5AuthMethod GSSAPI = new Socks5AuthMethod(1, "GSSAPI");
    public static final Socks5AuthMethod PASSWORD = new Socks5AuthMethod(2, "PASSWORD");
    public static final Socks5AuthMethod UNACCEPTED = new Socks5AuthMethod(255, "UNACCEPTED");

    public Socks5AuthMethod(int i2) {
        this(i2, "UNKNOWN");
    }

    public static Socks5AuthMethod valueOf(byte b4) {
        if (b4 != -1) {
            if (b4 != 0) {
                if (b4 != 1) {
                    if (b4 != 2) {
                        return new Socks5AuthMethod(b4);
                    }
                    return PASSWORD;
                }
                return GSSAPI;
            }
            return NO_AUTH;
        }
        return UNACCEPTED;
    }

    public byte byteValue() {
        return this.byteValue;
    }

    public boolean equals(Object obj) {
        return (obj instanceof Socks5AuthMethod) && this.byteValue == ((Socks5AuthMethod) obj).byteValue;
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

    public Socks5AuthMethod(int i2, String str) {
        this.name = (String) ObjectUtil.checkNotNull(str, "name");
        this.byteValue = (byte) i2;
    }

    @Override // java.lang.Comparable
    public int compareTo(Socks5AuthMethod socks5AuthMethod) {
        return this.byteValue - socks5AuthMethod.byteValue;
    }
}
