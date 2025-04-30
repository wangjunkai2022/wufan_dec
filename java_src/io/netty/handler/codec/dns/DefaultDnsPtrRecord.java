package io.netty.handler.codec.dns;

import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.StringUtil;
/* loaded from: classes5.dex */
public class DefaultDnsPtrRecord extends AbstractDnsRecord implements DnsPtrRecord {
    private final String hostname;

    public DefaultDnsPtrRecord(String str, int i2, long j4, String str2) {
        super(str, DnsRecordType.PTR, i2, j4);
        this.hostname = (String) ObjectUtil.checkNotNull(str2, "hostname");
    }

    @Override // io.netty.handler.codec.dns.DnsPtrRecord
    public String hostname() {
        return this.hostname;
    }

    @Override // io.netty.handler.codec.dns.AbstractDnsRecord
    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        sb.append(StringUtil.simpleClassName(this));
        sb.append('(');
        DnsRecordType type = type();
        sb.append(name().isEmpty() ? "<root>" : name());
        sb.append(' ');
        sb.append(timeToLive());
        sb.append(' ');
        StringBuilder appendRecordClass = DnsMessageUtil.appendRecordClass(sb, dnsClass());
        appendRecordClass.append(' ');
        appendRecordClass.append(type.name());
        sb.append(' ');
        sb.append(this.hostname);
        return sb.toString();
    }
}
