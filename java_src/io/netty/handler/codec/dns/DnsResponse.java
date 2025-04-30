package io.netty.handler.codec.dns;
/* loaded from: classes5.dex */
public interface DnsResponse extends DnsMessage {
    @Override // io.netty.handler.codec.dns.DnsMessage
    DnsResponse addRecord(DnsSection dnsSection, int i2, DnsRecord dnsRecord);

    @Override // io.netty.handler.codec.dns.DnsMessage
    DnsResponse addRecord(DnsSection dnsSection, DnsRecord dnsRecord);

    @Override // io.netty.handler.codec.dns.DnsMessage
    DnsResponse clear();

    @Override // io.netty.handler.codec.dns.DnsMessage
    DnsResponse clear(DnsSection dnsSection);

    DnsResponseCode code();

    boolean isAuthoritativeAnswer();

    boolean isRecursionAvailable();

    boolean isTruncated();

    @Override // io.netty.handler.codec.dns.DnsMessage, io.netty.util.ReferenceCounted
    DnsResponse retain();

    @Override // io.netty.handler.codec.dns.DnsMessage, io.netty.util.ReferenceCounted
    DnsResponse retain(int i2);

    DnsResponse setAuthoritativeAnswer(boolean z3);

    DnsResponse setCode(DnsResponseCode dnsResponseCode);

    @Override // io.netty.handler.codec.dns.DnsMessage
    DnsResponse setId(int i2);

    @Override // io.netty.handler.codec.dns.DnsMessage
    DnsResponse setOpCode(DnsOpCode dnsOpCode);

    @Override // io.netty.handler.codec.dns.DnsMessage
    DnsResponse setRecord(DnsSection dnsSection, DnsRecord dnsRecord);

    DnsResponse setRecursionAvailable(boolean z3);

    @Override // io.netty.handler.codec.dns.DnsMessage
    DnsResponse setRecursionDesired(boolean z3);

    DnsResponse setTruncated(boolean z3);

    @Override // io.netty.handler.codec.dns.DnsMessage
    DnsResponse setZ(int i2);

    @Override // io.netty.handler.codec.dns.DnsMessage, io.netty.util.ReferenceCounted
    DnsResponse touch();

    @Override // io.netty.handler.codec.dns.DnsMessage, io.netty.util.ReferenceCounted
    DnsResponse touch(Object obj);
}
