package io.netty.resolver.dns;

import java.net.InetSocketAddress;
import java.util.List;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class RotationalDnsServerAddresses extends DefaultDnsServerAddresses {
    private static final AtomicIntegerFieldUpdater<RotationalDnsServerAddresses> startIdxUpdater = AtomicIntegerFieldUpdater.newUpdater(RotationalDnsServerAddresses.class, "startIdx");
    private volatile int startIdx;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RotationalDnsServerAddresses(List<InetSocketAddress> list) {
        super("rotational", list);
    }

    @Override // io.netty.resolver.dns.DnsServerAddresses
    public DnsServerAddressStream stream() {
        int i2;
        int i4;
        do {
            i2 = this.startIdx;
            i4 = i2 + 1;
            if (i4 >= this.addresses.size()) {
                i4 = 0;
            }
        } while (!startIdxUpdater.compareAndSet(this, i2, i4));
        return new SequentialDnsServerAddressStream(this.addresses, i2);
    }
}
