package io.netty.channel.unix;

import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.UnknownHostException;
/* loaded from: classes5.dex */
public final class DatagramSocketAddress extends InetSocketAddress {
    private static final long serialVersionUID = 3094819287843178401L;
    private final DatagramSocketAddress localAddress;
    private final int receivedAmount;

    DatagramSocketAddress(byte[] bArr, int i2, int i4, int i5, DatagramSocketAddress datagramSocketAddress) throws UnknownHostException {
        super(newAddress(bArr, i2), i4);
        this.receivedAmount = i5;
        this.localAddress = datagramSocketAddress;
    }

    private static InetAddress newAddress(byte[] bArr, int i2) throws UnknownHostException {
        if (bArr.length == 4) {
            return InetAddress.getByAddress(bArr);
        }
        return Inet6Address.getByAddress((String) null, bArr, i2);
    }

    public DatagramSocketAddress localAddress() {
        return this.localAddress;
    }

    public int receivedAmount() {
        return this.receivedAmount;
    }
}
