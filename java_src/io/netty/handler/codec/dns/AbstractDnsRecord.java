package io.netty.handler.codec.dns;

import com.join.mgps.Util.g0;
import external.org.apache.commons.lang3.d;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.StringUtil;
import java.net.IDN;
import kotlin.UShort;
/* loaded from: classes5.dex */
public abstract class AbstractDnsRecord implements DnsRecord {
    private final short dnsClass;
    private int hashCode;
    private final String name;
    private final long timeToLive;
    private final DnsRecordType type;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractDnsRecord(String str, DnsRecordType dnsRecordType, long j4) {
        this(str, dnsRecordType, 1, j4);
    }

    private static String IDNtoASCII(String str) {
        ObjectUtil.checkNotNull(str, "name");
        return (PlatformDependent.isAndroid() && g0.f27568a.equals(str)) ? str : IDN.toASCII(str);
    }

    private static String appendTrailingDot(String str) {
        if (str.length() <= 0 || str.charAt(str.length() - 1) == '.') {
            return str;
        }
        return str + d.f65364a;
    }

    @Override // io.netty.handler.codec.dns.DnsRecord
    public int dnsClass() {
        return this.dnsClass & UShort.MAX_VALUE;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DnsRecord) {
            DnsRecord dnsRecord = (DnsRecord) obj;
            int i2 = this.hashCode;
            return (i2 == 0 || i2 == dnsRecord.hashCode()) && type().intValue() == dnsRecord.type().intValue() && dnsClass() == dnsRecord.dnsClass() && name().equals(dnsRecord.name());
        }
        return false;
    }

    public int hashCode() {
        int i2 = this.hashCode;
        if (i2 != 0) {
            return i2;
        }
        int hashCode = (this.name.hashCode() * 31) + (type().intValue() * 31) + dnsClass();
        this.hashCode = hashCode;
        return hashCode;
    }

    @Override // io.netty.handler.codec.dns.DnsRecord
    public String name() {
        return this.name;
    }

    @Override // io.netty.handler.codec.dns.DnsRecord
    public long timeToLive() {
        return this.timeToLive;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        sb.append(StringUtil.simpleClassName(this));
        sb.append('(');
        sb.append(name());
        sb.append(' ');
        sb.append(timeToLive());
        sb.append(' ');
        StringBuilder appendRecordClass = DnsMessageUtil.appendRecordClass(sb, dnsClass());
        appendRecordClass.append(' ');
        appendRecordClass.append(type().name());
        appendRecordClass.append(')');
        return sb.toString();
    }

    @Override // io.netty.handler.codec.dns.DnsRecord
    public DnsRecordType type() {
        return this.type;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractDnsRecord(String str, DnsRecordType dnsRecordType, int i2, long j4) {
        ObjectUtil.checkPositiveOrZero(j4, "timeToLive");
        this.name = appendTrailingDot(IDNtoASCII(str));
        this.type = (DnsRecordType) ObjectUtil.checkNotNull(dnsRecordType, "type");
        this.dnsClass = (short) i2;
        this.timeToLive = j4;
    }
}
