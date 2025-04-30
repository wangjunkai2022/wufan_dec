package io.netty.resolver.dns;

import io.netty.handler.codec.dns.DnsQuestion;
import io.netty.util.internal.ObjectUtil;
/* loaded from: classes5.dex */
public final class BiDnsQueryLifecycleObserverFactory implements DnsQueryLifecycleObserverFactory {

    /* renamed from: a  reason: collision with root package name */
    private final DnsQueryLifecycleObserverFactory f65771a;

    /* renamed from: b  reason: collision with root package name */
    private final DnsQueryLifecycleObserverFactory f65772b;

    public BiDnsQueryLifecycleObserverFactory(DnsQueryLifecycleObserverFactory dnsQueryLifecycleObserverFactory, DnsQueryLifecycleObserverFactory dnsQueryLifecycleObserverFactory2) {
        this.f65771a = (DnsQueryLifecycleObserverFactory) ObjectUtil.checkNotNull(dnsQueryLifecycleObserverFactory, "a");
        this.f65772b = (DnsQueryLifecycleObserverFactory) ObjectUtil.checkNotNull(dnsQueryLifecycleObserverFactory2, "b");
    }

    @Override // io.netty.resolver.dns.DnsQueryLifecycleObserverFactory
    public DnsQueryLifecycleObserver newDnsQueryLifecycleObserver(DnsQuestion dnsQuestion) {
        return new BiDnsQueryLifecycleObserver(this.f65771a.newDnsQueryLifecycleObserver(dnsQuestion), this.f65772b.newDnsQueryLifecycleObserver(dnsQuestion));
    }
}
