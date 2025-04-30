package io.netty.handler.codec.dns;

import io.netty.handler.codec.http2.Http2CodecUtil;
import io.netty.util.internal.StringUtil;
/* loaded from: classes5.dex */
public abstract class AbstractDnsOptPseudoRrRecord extends AbstractDnsRecord implements DnsOptPseudoRecord {
    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractDnsOptPseudoRrRecord(int i2, int i4, int i5) {
        super("", DnsRecordType.OPT, i2, packIntoLong(i4, i5));
    }

    private static long packIntoLong(int i2, int i4) {
        return (((i2 & 255) << 24) | ((i4 & 255) << 16) | 0 | 0) & 4294967295L;
    }

    @Override // io.netty.handler.codec.dns.DnsOptPseudoRecord
    public int extendedRcode() {
        return (short) ((((int) timeToLive()) >> 24) & 255);
    }

    @Override // io.netty.handler.codec.dns.DnsOptPseudoRecord
    public int flags() {
        return (short) (((short) timeToLive()) & Http2CodecUtil.MAX_UNSIGNED_BYTE);
    }

    @Override // io.netty.handler.codec.dns.AbstractDnsRecord
    public String toString() {
        return toStringBuilder().toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final StringBuilder toStringBuilder() {
        StringBuilder sb = new StringBuilder(64);
        sb.append(StringUtil.simpleClassName(this));
        sb.append('(');
        sb.append("OPT flags:");
        sb.append(flags());
        sb.append(" version:");
        sb.append(version());
        sb.append(" extendedRecode:");
        sb.append(extendedRcode());
        sb.append(" udp:");
        sb.append(dnsClass());
        sb.append(')');
        return sb;
    }

    @Override // io.netty.handler.codec.dns.DnsOptPseudoRecord
    public int version() {
        return (short) ((((int) timeToLive()) >> 16) & 255);
    }

    protected AbstractDnsOptPseudoRrRecord(int i2) {
        super("", DnsRecordType.OPT, i2, 0L);
    }
}
