package io.netty.handler.codec.dns;
/* loaded from: classes5.dex */
public class DefaultDnsQuery extends AbstractDnsMessage implements DnsQuery {
    public DefaultDnsQuery(int i2) {
        super(i2);
    }

    public String toString() {
        return DnsMessageUtil.appendQuery(new StringBuilder(128), this).toString();
    }

    public DefaultDnsQuery(int i2, DnsOpCode dnsOpCode) {
        super(i2, dnsOpCode);
    }

    @Override // io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.handler.codec.dns.DnsMessage
    public DnsQuery setId(int i2) {
        return (DnsQuery) super.setId(i2);
    }

    @Override // io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.handler.codec.dns.DnsMessage
    public DnsQuery setOpCode(DnsOpCode dnsOpCode) {
        return (DnsQuery) super.setOpCode(dnsOpCode);
    }

    @Override // io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.handler.codec.dns.DnsMessage
    public DnsQuery setRecord(DnsSection dnsSection, DnsRecord dnsRecord) {
        return (DnsQuery) super.setRecord(dnsSection, dnsRecord);
    }

    @Override // io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.handler.codec.dns.DnsMessage
    public DnsQuery setRecursionDesired(boolean z3) {
        return (DnsQuery) super.setRecursionDesired(z3);
    }

    @Override // io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.handler.codec.dns.DnsMessage
    public DnsQuery setZ(int i2) {
        return (DnsQuery) super.setZ(i2);
    }

    @Override // io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.handler.codec.dns.DnsMessage
    public DnsQuery addRecord(DnsSection dnsSection, DnsRecord dnsRecord) {
        return (DnsQuery) super.addRecord(dnsSection, dnsRecord);
    }

    @Override // io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.handler.codec.dns.DnsMessage
    public DnsQuery clear(DnsSection dnsSection) {
        return (DnsQuery) super.clear(dnsSection);
    }

    @Override // io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.handler.codec.dns.DnsMessage
    public DnsQuery addRecord(DnsSection dnsSection, int i2, DnsRecord dnsRecord) {
        return (DnsQuery) super.addRecord(dnsSection, i2, dnsRecord);
    }

    @Override // io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.handler.codec.dns.DnsMessage
    public DnsQuery clear() {
        return (DnsQuery) super.clear();
    }

    @Override // io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public DnsQuery retain() {
        return (DnsQuery) super.retain();
    }

    @Override // io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public DnsQuery touch() {
        return (DnsQuery) super.touch();
    }

    @Override // io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public DnsQuery retain(int i2) {
        return (DnsQuery) super.retain(i2);
    }

    @Override // io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.util.ReferenceCounted
    public DnsQuery touch(Object obj) {
        return (DnsQuery) super.touch(obj);
    }
}
