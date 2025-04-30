package io.netty.resolver.dns;

import java.net.InetSocketAddress;
/* loaded from: classes5.dex */
public interface DnsServerAddressStream {
    DnsServerAddressStream duplicate();

    InetSocketAddress next();

    int size();
}
