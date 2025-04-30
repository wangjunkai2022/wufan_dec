package io.netty.resolver.dns;

import io.netty.channel.EventLoop;
import java.net.InetSocketAddress;
/* loaded from: classes5.dex */
public final class NoopAuthoritativeDnsServerCache implements AuthoritativeDnsServerCache {
    public static final NoopAuthoritativeDnsServerCache INSTANCE = new NoopAuthoritativeDnsServerCache();

    private NoopAuthoritativeDnsServerCache() {
    }

    @Override // io.netty.resolver.dns.AuthoritativeDnsServerCache
    public void cache(String str, InetSocketAddress inetSocketAddress, long j4, EventLoop eventLoop) {
    }

    @Override // io.netty.resolver.dns.AuthoritativeDnsServerCache
    public void clear() {
    }

    @Override // io.netty.resolver.dns.AuthoritativeDnsServerCache
    public boolean clear(String str) {
        return false;
    }

    @Override // io.netty.resolver.dns.AuthoritativeDnsServerCache
    public DnsServerAddressStream get(String str) {
        return null;
    }
}
