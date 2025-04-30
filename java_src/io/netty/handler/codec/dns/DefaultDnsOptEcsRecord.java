package io.netty.handler.codec.dns;

import io.netty.channel.socket.InternetProtocolFamily;
import java.util.Arrays;
/* loaded from: classes5.dex */
public final class DefaultDnsOptEcsRecord extends AbstractDnsOptPseudoRrRecord implements DnsOptEcsRecord {
    private final byte[] address;
    private final int srcPrefixLength;

    public DefaultDnsOptEcsRecord(int i2, int i4, int i5, int i6, byte[] bArr) {
        super(i2, i4, i5);
        this.srcPrefixLength = i6;
        this.address = (byte[]) verifyAddress(bArr).clone();
    }

    private static byte[] verifyAddress(byte[] bArr) {
        if (bArr.length == 4 || bArr.length == 16) {
            return bArr;
        }
        throw new IllegalArgumentException("bytes.length must either 4 or 16");
    }

    @Override // io.netty.handler.codec.dns.DnsOptEcsRecord
    public byte[] address() {
        return (byte[]) this.address.clone();
    }

    @Override // io.netty.handler.codec.dns.DnsOptEcsRecord
    public int scopePrefixLength() {
        return 0;
    }

    @Override // io.netty.handler.codec.dns.DnsOptEcsRecord
    public int sourcePrefixLength() {
        return this.srcPrefixLength;
    }

    @Override // io.netty.handler.codec.dns.AbstractDnsOptPseudoRrRecord, io.netty.handler.codec.dns.AbstractDnsRecord
    public String toString() {
        StringBuilder stringBuilder = toStringBuilder();
        stringBuilder.setLength(stringBuilder.length() - 1);
        stringBuilder.append(" address:");
        stringBuilder.append(Arrays.toString(this.address));
        stringBuilder.append(" sourcePrefixLength:");
        stringBuilder.append(sourcePrefixLength());
        stringBuilder.append(" scopePrefixLength:");
        stringBuilder.append(scopePrefixLength());
        stringBuilder.append(')');
        return stringBuilder.toString();
    }

    public DefaultDnsOptEcsRecord(int i2, int i4, byte[] bArr) {
        this(i2, 0, 0, i4, bArr);
    }

    public DefaultDnsOptEcsRecord(int i2, InternetProtocolFamily internetProtocolFamily) {
        this(i2, 0, 0, 0, internetProtocolFamily.localhost().getAddress());
    }
}
