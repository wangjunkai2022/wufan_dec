package io.netty.resolver.dns;

import java.net.InetSocketAddress;
import java.util.Collection;
import java.util.List;
/* loaded from: classes5.dex */
final class SequentialDnsServerAddressStream implements DnsServerAddressStream {
    private final List<? extends InetSocketAddress> addresses;

    /* renamed from: i  reason: collision with root package name */
    private int f65774i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SequentialDnsServerAddressStream(List<? extends InetSocketAddress> list, int i2) {
        this.addresses = list;
        this.f65774i = i2;
    }

    @Override // io.netty.resolver.dns.DnsServerAddressStream
    public InetSocketAddress next() {
        int i2 = this.f65774i;
        InetSocketAddress inetSocketAddress = this.addresses.get(i2);
        int i4 = i2 + 1;
        if (i4 < this.addresses.size()) {
            this.f65774i = i4;
        } else {
            this.f65774i = 0;
        }
        return inetSocketAddress;
    }

    @Override // io.netty.resolver.dns.DnsServerAddressStream
    public int size() {
        return this.addresses.size();
    }

    public String toString() {
        return toString("sequential", this.f65774i, this.addresses);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String toString(String str, int i2, Collection<? extends InetSocketAddress> collection) {
        StringBuilder sb = new StringBuilder(str.length() + 2 + (collection.size() * 16));
        sb.append(str);
        sb.append("(index: ");
        sb.append(i2);
        sb.append(", addrs: (");
        for (InetSocketAddress inetSocketAddress : collection) {
            sb.append(inetSocketAddress);
            sb.append(", ");
        }
        sb.setLength(sb.length() - 2);
        sb.append("))");
        return sb.toString();
    }

    @Override // io.netty.resolver.dns.DnsServerAddressStream
    public SequentialDnsServerAddressStream duplicate() {
        return new SequentialDnsServerAddressStream(this.addresses, this.f65774i);
    }
}
