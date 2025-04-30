package io.netty.channel.unix;

import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.UnknownHostException;
/* loaded from: classes5.dex */
public final class NativeInetAddress {
    private static final byte[] IPV4_MAPPED_IPV6_PREFIX = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1};
    final byte[] address;
    final int scopeId;

    public NativeInetAddress(byte[] bArr, int i2) {
        this.address = bArr;
        this.scopeId = i2;
    }

    public static void copyIpv4MappedIpv6Address(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = IPV4_MAPPED_IPV6_PREFIX;
        System.arraycopy(bArr3, 0, bArr2, 0, bArr3.length);
        System.arraycopy(bArr, 0, bArr2, 12, bArr.length);
    }

    static int decodeInt(byte[] bArr, int i2) {
        return (bArr[i2 + 3] & 255) | ((bArr[i2] & 255) << 24) | ((bArr[i2 + 1] & 255) << 16) | ((bArr[i2 + 2] & 255) << 8);
    }

    public static byte[] ipv4MappedIpv6Address(byte[] bArr) {
        byte[] bArr2 = new byte[16];
        copyIpv4MappedIpv6Address(bArr, bArr2);
        return bArr2;
    }

    public static NativeInetAddress newInstance(InetAddress inetAddress) {
        byte[] address = inetAddress.getAddress();
        if (inetAddress instanceof Inet6Address) {
            return new NativeInetAddress(address, ((Inet6Address) inetAddress).getScopeId());
        }
        return new NativeInetAddress(ipv4MappedIpv6Address(address));
    }

    public byte[] address() {
        return this.address;
    }

    public int scopeId() {
        return this.scopeId;
    }

    public static InetSocketAddress address(byte[] bArr, int i2, int i4) {
        InetAddress byAddress;
        int i5 = i2 + i4;
        int decodeInt = decodeInt(bArr, i5 - 4);
        try {
            if (i4 == 8) {
                byte[] bArr2 = new byte[4];
                System.arraycopy(bArr, i2, bArr2, 0, 4);
                byAddress = InetAddress.getByAddress(bArr2);
            } else if (i4 == 24) {
                byte[] bArr3 = new byte[16];
                System.arraycopy(bArr, i2, bArr3, 0, 16);
                byAddress = Inet6Address.getByAddress((String) null, bArr3, decodeInt(bArr, i5 - 8));
            } else {
                throw new Error();
            }
            return new InetSocketAddress(byAddress, decodeInt);
        } catch (UnknownHostException e4) {
            throw new Error("Should never happen", e4);
        }
    }

    public NativeInetAddress(byte[] bArr) {
        this(bArr, 0);
    }
}
