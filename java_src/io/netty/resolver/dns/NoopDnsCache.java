package io.netty.resolver.dns;

import io.netty.channel.EventLoop;
import io.netty.handler.codec.dns.DnsRecord;
import java.net.InetAddress;
import java.util.Collections;
import java.util.List;
/* loaded from: classes5.dex */
public final class NoopDnsCache implements DnsCache {
    public static final NoopDnsCache INSTANCE = new NoopDnsCache();

    /* loaded from: classes5.dex */
    private static final class NoopDnsCacheEntry implements DnsCacheEntry {
        private final InetAddress address;

        NoopDnsCacheEntry(InetAddress inetAddress) {
            this.address = inetAddress;
        }

        @Override // io.netty.resolver.dns.DnsCacheEntry
        public InetAddress address() {
            return this.address;
        }

        @Override // io.netty.resolver.dns.DnsCacheEntry
        public Throwable cause() {
            return null;
        }

        public String toString() {
            return this.address.toString();
        }
    }

    private NoopDnsCache() {
    }

    @Override // io.netty.resolver.dns.DnsCache
    public DnsCacheEntry cache(String str, DnsRecord[] dnsRecordArr, Throwable th, EventLoop eventLoop) {
        return null;
    }

    @Override // io.netty.resolver.dns.DnsCache
    public DnsCacheEntry cache(String str, DnsRecord[] dnsRecordArr, InetAddress inetAddress, long j4, EventLoop eventLoop) {
        return new NoopDnsCacheEntry(inetAddress);
    }

    @Override // io.netty.resolver.dns.DnsCache
    public void clear() {
    }

    @Override // io.netty.resolver.dns.DnsCache
    public boolean clear(String str) {
        return false;
    }

    @Override // io.netty.resolver.dns.DnsCache
    public List<? extends DnsCacheEntry> get(String str, DnsRecord[] dnsRecordArr) {
        return Collections.emptyList();
    }

    public String toString() {
        return NoopDnsCache.class.getSimpleName();
    }
}
