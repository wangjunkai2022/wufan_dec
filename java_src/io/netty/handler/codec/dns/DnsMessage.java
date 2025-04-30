package io.netty.handler.codec.dns;

import io.netty.util.ReferenceCounted;
/* loaded from: classes5.dex */
public interface DnsMessage extends ReferenceCounted {
    DnsMessage addRecord(DnsSection dnsSection, int i2, DnsRecord dnsRecord);

    DnsMessage addRecord(DnsSection dnsSection, DnsRecord dnsRecord);

    DnsMessage clear();

    DnsMessage clear(DnsSection dnsSection);

    int count();

    int count(DnsSection dnsSection);

    int id();

    boolean isRecursionDesired();

    DnsOpCode opCode();

    <T extends DnsRecord> T recordAt(DnsSection dnsSection);

    <T extends DnsRecord> T recordAt(DnsSection dnsSection, int i2);

    <T extends DnsRecord> T removeRecord(DnsSection dnsSection, int i2);

    @Override // io.netty.util.ReferenceCounted
    DnsMessage retain();

    @Override // io.netty.util.ReferenceCounted
    DnsMessage retain(int i2);

    DnsMessage setId(int i2);

    DnsMessage setOpCode(DnsOpCode dnsOpCode);

    DnsMessage setRecord(DnsSection dnsSection, DnsRecord dnsRecord);

    <T extends DnsRecord> T setRecord(DnsSection dnsSection, int i2, DnsRecord dnsRecord);

    DnsMessage setRecursionDesired(boolean z3);

    DnsMessage setZ(int i2);

    @Override // io.netty.util.ReferenceCounted
    DnsMessage touch();

    @Override // io.netty.util.ReferenceCounted
    DnsMessage touch(Object obj);

    int z();
}
