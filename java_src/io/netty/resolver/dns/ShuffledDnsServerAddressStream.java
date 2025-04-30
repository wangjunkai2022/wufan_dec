package io.netty.resolver.dns;

import io.netty.util.internal.PlatformDependent;
import java.net.InetSocketAddress;
import java.util.Collections;
import java.util.List;
/* loaded from: classes5.dex */
final class ShuffledDnsServerAddressStream implements DnsServerAddressStream {
    private final List<InetSocketAddress> addresses;

    /* renamed from: i  reason: collision with root package name */
    private int f65775i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ShuffledDnsServerAddressStream(List<InetSocketAddress> list) {
        this.addresses = list;
        shuffle();
    }

    private void shuffle() {
        Collections.shuffle(this.addresses, PlatformDependent.threadLocalRandom());
    }

    @Override // io.netty.resolver.dns.DnsServerAddressStream
    public InetSocketAddress next() {
        int i2 = this.f65775i;
        InetSocketAddress inetSocketAddress = this.addresses.get(i2);
        int i4 = i2 + 1;
        if (i4 < this.addresses.size()) {
            this.f65775i = i4;
        } else {
            this.f65775i = 0;
            shuffle();
        }
        return inetSocketAddress;
    }

    @Override // io.netty.resolver.dns.DnsServerAddressStream
    public int size() {
        return this.addresses.size();
    }

    public String toString() {
        return SequentialDnsServerAddressStream.toString("shuffled", this.f65775i, this.addresses);
    }

    @Override // io.netty.resolver.dns.DnsServerAddressStream
    public ShuffledDnsServerAddressStream duplicate() {
        return new ShuffledDnsServerAddressStream(this.addresses, this.f65775i);
    }

    private ShuffledDnsServerAddressStream(List<InetSocketAddress> list, int i2) {
        this.addresses = list;
        this.f65775i = i2;
    }
}
