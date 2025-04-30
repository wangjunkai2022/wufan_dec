package io.netty.resolver.dns;

import io.netty.channel.ChannelFuture;
import io.netty.handler.codec.dns.DnsQuestion;
import io.netty.handler.codec.dns.DnsResponseCode;
import io.netty.util.internal.ObjectUtil;
import java.net.InetSocketAddress;
import java.util.List;
/* loaded from: classes5.dex */
public final class BiDnsQueryLifecycleObserver implements DnsQueryLifecycleObserver {

    /* renamed from: a  reason: collision with root package name */
    private final DnsQueryLifecycleObserver f65769a;

    /* renamed from: b  reason: collision with root package name */
    private final DnsQueryLifecycleObserver f65770b;

    public BiDnsQueryLifecycleObserver(DnsQueryLifecycleObserver dnsQueryLifecycleObserver, DnsQueryLifecycleObserver dnsQueryLifecycleObserver2) {
        this.f65769a = (DnsQueryLifecycleObserver) ObjectUtil.checkNotNull(dnsQueryLifecycleObserver, "a");
        this.f65770b = (DnsQueryLifecycleObserver) ObjectUtil.checkNotNull(dnsQueryLifecycleObserver2, "b");
    }

    @Override // io.netty.resolver.dns.DnsQueryLifecycleObserver
    public DnsQueryLifecycleObserver queryCNAMEd(DnsQuestion dnsQuestion) {
        try {
            this.f65769a.queryCNAMEd(dnsQuestion);
            return this;
        } finally {
            this.f65770b.queryCNAMEd(dnsQuestion);
        }
    }

    @Override // io.netty.resolver.dns.DnsQueryLifecycleObserver
    public void queryCancelled(int i2) {
        try {
            this.f65769a.queryCancelled(i2);
        } finally {
            this.f65770b.queryCancelled(i2);
        }
    }

    @Override // io.netty.resolver.dns.DnsQueryLifecycleObserver
    public void queryFailed(Throwable th) {
        try {
            this.f65769a.queryFailed(th);
        } finally {
            this.f65770b.queryFailed(th);
        }
    }

    @Override // io.netty.resolver.dns.DnsQueryLifecycleObserver
    public DnsQueryLifecycleObserver queryNoAnswer(DnsResponseCode dnsResponseCode) {
        try {
            this.f65769a.queryNoAnswer(dnsResponseCode);
            return this;
        } finally {
            this.f65770b.queryNoAnswer(dnsResponseCode);
        }
    }

    @Override // io.netty.resolver.dns.DnsQueryLifecycleObserver
    public DnsQueryLifecycleObserver queryRedirected(List<InetSocketAddress> list) {
        try {
            this.f65769a.queryRedirected(list);
            return this;
        } finally {
            this.f65770b.queryRedirected(list);
        }
    }

    @Override // io.netty.resolver.dns.DnsQueryLifecycleObserver
    public void querySucceed() {
        try {
            this.f65769a.querySucceed();
        } finally {
            this.f65770b.querySucceed();
        }
    }

    @Override // io.netty.resolver.dns.DnsQueryLifecycleObserver
    public void queryWritten(InetSocketAddress inetSocketAddress, ChannelFuture channelFuture) {
        try {
            this.f65769a.queryWritten(inetSocketAddress, channelFuture);
        } finally {
            this.f65770b.queryWritten(inetSocketAddress, channelFuture);
        }
    }
}
