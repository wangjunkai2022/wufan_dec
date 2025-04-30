package io.netty.handler.codec.dns;

import io.netty.channel.AddressedEnvelope;
import java.net.InetSocketAddress;
import java.util.Objects;
/* loaded from: classes5.dex */
public class DatagramDnsResponse extends DefaultDnsResponse implements AddressedEnvelope<DatagramDnsResponse, InetSocketAddress> {
    private final InetSocketAddress recipient;
    private final InetSocketAddress sender;

    public DatagramDnsResponse(InetSocketAddress inetSocketAddress, InetSocketAddress inetSocketAddress2, int i2) {
        this(inetSocketAddress, inetSocketAddress2, i2, DnsOpCode.QUERY, DnsResponseCode.NOERROR);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.netty.channel.AddressedEnvelope
    public DatagramDnsResponse content() {
        return this;
    }

    @Override // io.netty.handler.codec.dns.AbstractDnsMessage
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (super.equals(obj) && (obj instanceof AddressedEnvelope)) {
            AddressedEnvelope addressedEnvelope = (AddressedEnvelope) obj;
            if (sender() == null) {
                if (addressedEnvelope.sender() != null) {
                    return false;
                }
            } else if (!sender().equals(addressedEnvelope.sender())) {
                return false;
            }
            if (recipient() == null) {
                if (addressedEnvelope.recipient() != null) {
                    return false;
                }
            } else if (!recipient().equals(addressedEnvelope.recipient())) {
                return false;
            }
            return true;
        }
        return false;
    }

    @Override // io.netty.handler.codec.dns.AbstractDnsMessage
    public int hashCode() {
        int hashCode = super.hashCode();
        if (sender() != null) {
            hashCode = (hashCode * 31) + sender().hashCode();
        }
        return recipient() != null ? (hashCode * 31) + recipient().hashCode() : hashCode;
    }

    public DatagramDnsResponse(InetSocketAddress inetSocketAddress, InetSocketAddress inetSocketAddress2, int i2, DnsOpCode dnsOpCode) {
        this(inetSocketAddress, inetSocketAddress2, i2, dnsOpCode, DnsResponseCode.NOERROR);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.netty.channel.AddressedEnvelope
    public InetSocketAddress recipient() {
        return this.recipient;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.netty.channel.AddressedEnvelope
    public InetSocketAddress sender() {
        return this.sender;
    }

    @Override // io.netty.handler.codec.dns.DefaultDnsResponse, io.netty.handler.codec.dns.DnsResponse
    public DatagramDnsResponse setAuthoritativeAnswer(boolean z3) {
        return (DatagramDnsResponse) super.setAuthoritativeAnswer(z3);
    }

    @Override // io.netty.handler.codec.dns.DefaultDnsResponse, io.netty.handler.codec.dns.DnsResponse
    public DatagramDnsResponse setCode(DnsResponseCode dnsResponseCode) {
        return (DatagramDnsResponse) super.setCode(dnsResponseCode);
    }

    @Override // io.netty.handler.codec.dns.DefaultDnsResponse, io.netty.handler.codec.dns.DnsResponse
    public DatagramDnsResponse setRecursionAvailable(boolean z3) {
        return (DatagramDnsResponse) super.setRecursionAvailable(z3);
    }

    @Override // io.netty.handler.codec.dns.DefaultDnsResponse, io.netty.handler.codec.dns.DnsResponse
    public DatagramDnsResponse setTruncated(boolean z3) {
        return (DatagramDnsResponse) super.setTruncated(z3);
    }

    public DatagramDnsResponse(InetSocketAddress inetSocketAddress, InetSocketAddress inetSocketAddress2, int i2, DnsOpCode dnsOpCode, DnsResponseCode dnsResponseCode) {
        super(i2, dnsOpCode, dnsResponseCode);
        if (inetSocketAddress2 == null) {
            Objects.requireNonNull(inetSocketAddress, "recipient and sender");
        }
        this.sender = inetSocketAddress;
        this.recipient = inetSocketAddress2;
    }

    @Override // io.netty.handler.codec.dns.DefaultDnsResponse, io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.handler.codec.dns.DnsMessage
    public DatagramDnsResponse setId(int i2) {
        return (DatagramDnsResponse) super.setId(i2);
    }

    @Override // io.netty.handler.codec.dns.DefaultDnsResponse, io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.handler.codec.dns.DnsMessage
    public DatagramDnsResponse setOpCode(DnsOpCode dnsOpCode) {
        return (DatagramDnsResponse) super.setOpCode(dnsOpCode);
    }

    @Override // io.netty.handler.codec.dns.DefaultDnsResponse, io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.handler.codec.dns.DnsMessage
    public DatagramDnsResponse setRecord(DnsSection dnsSection, DnsRecord dnsRecord) {
        return (DatagramDnsResponse) super.setRecord(dnsSection, dnsRecord);
    }

    @Override // io.netty.handler.codec.dns.DefaultDnsResponse, io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.handler.codec.dns.DnsMessage
    public DatagramDnsResponse setRecursionDesired(boolean z3) {
        return (DatagramDnsResponse) super.setRecursionDesired(z3);
    }

    @Override // io.netty.handler.codec.dns.DefaultDnsResponse, io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.handler.codec.dns.DnsMessage
    public DatagramDnsResponse setZ(int i2) {
        return (DatagramDnsResponse) super.setZ(i2);
    }

    @Override // io.netty.handler.codec.dns.DefaultDnsResponse, io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.handler.codec.dns.DnsMessage
    public DatagramDnsResponse addRecord(DnsSection dnsSection, DnsRecord dnsRecord) {
        return (DatagramDnsResponse) super.addRecord(dnsSection, dnsRecord);
    }

    @Override // io.netty.handler.codec.dns.DefaultDnsResponse, io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.handler.codec.dns.DnsMessage
    public DatagramDnsResponse clear(DnsSection dnsSection) {
        return (DatagramDnsResponse) super.clear(dnsSection);
    }

    @Override // io.netty.handler.codec.dns.DefaultDnsResponse, io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.handler.codec.dns.DnsMessage
    public DatagramDnsResponse addRecord(DnsSection dnsSection, int i2, DnsRecord dnsRecord) {
        return (DatagramDnsResponse) super.addRecord(dnsSection, i2, dnsRecord);
    }

    @Override // io.netty.handler.codec.dns.DefaultDnsResponse, io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.handler.codec.dns.DnsMessage
    public DatagramDnsResponse clear() {
        return (DatagramDnsResponse) super.clear();
    }

    @Override // io.netty.handler.codec.dns.DefaultDnsResponse, io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public DatagramDnsResponse retain() {
        return (DatagramDnsResponse) super.retain();
    }

    @Override // io.netty.handler.codec.dns.DefaultDnsResponse, io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public DatagramDnsResponse touch() {
        return (DatagramDnsResponse) super.touch();
    }

    @Override // io.netty.handler.codec.dns.DefaultDnsResponse, io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public DatagramDnsResponse retain(int i2) {
        return (DatagramDnsResponse) super.retain(i2);
    }

    @Override // io.netty.handler.codec.dns.DefaultDnsResponse, io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.util.ReferenceCounted
    public DatagramDnsResponse touch(Object obj) {
        return (DatagramDnsResponse) super.touch(obj);
    }
}
