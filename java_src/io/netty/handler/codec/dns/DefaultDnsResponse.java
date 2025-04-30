package io.netty.handler.codec.dns;

import io.netty.util.internal.ObjectUtil;
/* loaded from: classes5.dex */
public class DefaultDnsResponse extends AbstractDnsMessage implements DnsResponse {
    private boolean authoritativeAnswer;
    private DnsResponseCode code;
    private boolean recursionAvailable;
    private boolean truncated;

    public DefaultDnsResponse(int i2) {
        this(i2, DnsOpCode.QUERY, DnsResponseCode.NOERROR);
    }

    @Override // io.netty.handler.codec.dns.DnsResponse
    public DnsResponseCode code() {
        return this.code;
    }

    @Override // io.netty.handler.codec.dns.DnsResponse
    public boolean isAuthoritativeAnswer() {
        return this.authoritativeAnswer;
    }

    @Override // io.netty.handler.codec.dns.DnsResponse
    public boolean isRecursionAvailable() {
        return this.recursionAvailable;
    }

    @Override // io.netty.handler.codec.dns.DnsResponse
    public boolean isTruncated() {
        return this.truncated;
    }

    public DnsResponse setAuthoritativeAnswer(boolean z3) {
        this.authoritativeAnswer = z3;
        return this;
    }

    public DnsResponse setCode(DnsResponseCode dnsResponseCode) {
        this.code = (DnsResponseCode) ObjectUtil.checkNotNull(dnsResponseCode, "code");
        return this;
    }

    public DnsResponse setRecursionAvailable(boolean z3) {
        this.recursionAvailable = z3;
        return this;
    }

    public DnsResponse setTruncated(boolean z3) {
        this.truncated = z3;
        return this;
    }

    public String toString() {
        return DnsMessageUtil.appendResponse(new StringBuilder(128), this).toString();
    }

    public DefaultDnsResponse(int i2, DnsOpCode dnsOpCode) {
        this(i2, dnsOpCode, DnsResponseCode.NOERROR);
    }

    @Override // io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.handler.codec.dns.DnsMessage
    public DnsResponse setId(int i2) {
        return (DnsResponse) super.setId(i2);
    }

    @Override // io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.handler.codec.dns.DnsMessage
    public DnsResponse setOpCode(DnsOpCode dnsOpCode) {
        return (DnsResponse) super.setOpCode(dnsOpCode);
    }

    @Override // io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.handler.codec.dns.DnsMessage
    public DnsResponse setRecord(DnsSection dnsSection, DnsRecord dnsRecord) {
        return (DnsResponse) super.setRecord(dnsSection, dnsRecord);
    }

    @Override // io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.handler.codec.dns.DnsMessage
    public DnsResponse setRecursionDesired(boolean z3) {
        return (DnsResponse) super.setRecursionDesired(z3);
    }

    @Override // io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.handler.codec.dns.DnsMessage
    public DnsResponse setZ(int i2) {
        return (DnsResponse) super.setZ(i2);
    }

    public DefaultDnsResponse(int i2, DnsOpCode dnsOpCode, DnsResponseCode dnsResponseCode) {
        super(i2, dnsOpCode);
        setCode(dnsResponseCode);
    }

    @Override // io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.handler.codec.dns.DnsMessage
    public DnsResponse addRecord(DnsSection dnsSection, DnsRecord dnsRecord) {
        return (DnsResponse) super.addRecord(dnsSection, dnsRecord);
    }

    @Override // io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.handler.codec.dns.DnsMessage
    public DnsResponse clear(DnsSection dnsSection) {
        return (DnsResponse) super.clear(dnsSection);
    }

    @Override // io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.handler.codec.dns.DnsMessage
    public DnsResponse addRecord(DnsSection dnsSection, int i2, DnsRecord dnsRecord) {
        return (DnsResponse) super.addRecord(dnsSection, i2, dnsRecord);
    }

    @Override // io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.handler.codec.dns.DnsMessage
    public DnsResponse clear() {
        return (DnsResponse) super.clear();
    }

    @Override // io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public DnsResponse retain() {
        return (DnsResponse) super.retain();
    }

    @Override // io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public DnsResponse touch() {
        return (DnsResponse) super.touch();
    }

    @Override // io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public DnsResponse retain(int i2) {
        return (DnsResponse) super.retain(i2);
    }

    @Override // io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.util.ReferenceCounted
    public DnsResponse touch(Object obj) {
        return (DnsResponse) super.touch(obj);
    }
}
