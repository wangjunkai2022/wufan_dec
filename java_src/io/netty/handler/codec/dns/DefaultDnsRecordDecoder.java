package io.netty.handler.codec.dns;

import io.netty.buffer.ByteBuf;
/* loaded from: classes5.dex */
public class DefaultDnsRecordDecoder implements DnsRecordDecoder {
    static final String ROOT = ".";

    public static String decodeName(ByteBuf byteBuf) {
        return DnsCodecUtil.decodeDomainName(byteBuf);
    }

    protected String decodeName0(ByteBuf byteBuf) {
        return decodeName(byteBuf);
    }

    @Override // io.netty.handler.codec.dns.DnsRecordDecoder
    public final DnsQuestion decodeQuestion(ByteBuf byteBuf) throws Exception {
        return new DefaultDnsQuestion(decodeName(byteBuf), DnsRecordType.valueOf(byteBuf.readUnsignedShort()), byteBuf.readUnsignedShort());
    }

    @Override // io.netty.handler.codec.dns.DnsRecordDecoder
    public final <T extends DnsRecord> T decodeRecord(ByteBuf byteBuf) throws Exception {
        int readerIndex = byteBuf.readerIndex();
        String decodeName = decodeName(byteBuf);
        int writerIndex = byteBuf.writerIndex();
        if (writerIndex - byteBuf.readerIndex() < 10) {
            byteBuf.readerIndex(readerIndex);
            return null;
        }
        DnsRecordType valueOf = DnsRecordType.valueOf(byteBuf.readUnsignedShort());
        int readUnsignedShort = byteBuf.readUnsignedShort();
        long readUnsignedInt = byteBuf.readUnsignedInt();
        int readUnsignedShort2 = byteBuf.readUnsignedShort();
        int readerIndex2 = byteBuf.readerIndex();
        if (writerIndex - readerIndex2 < readUnsignedShort2) {
            byteBuf.readerIndex(readerIndex);
            return null;
        }
        T t3 = (T) decodeRecord(decodeName, valueOf, readUnsignedShort, readUnsignedInt, byteBuf, readerIndex2, readUnsignedShort2);
        byteBuf.readerIndex(readerIndex2 + readUnsignedShort2);
        return t3;
    }

    protected DnsRecord decodeRecord(String str, DnsRecordType dnsRecordType, int i2, long j4, ByteBuf byteBuf, int i4, int i5) throws Exception {
        if (dnsRecordType == DnsRecordType.PTR) {
            return new DefaultDnsPtrRecord(str, i2, j4, decodeName0(byteBuf.duplicate().setIndex(i4, i4 + i5)));
        }
        if (dnsRecordType != DnsRecordType.CNAME && dnsRecordType != DnsRecordType.NS) {
            return new DefaultDnsRawRecord(str, dnsRecordType, i2, j4, byteBuf.retainedDuplicate().setIndex(i4, i4 + i5));
        }
        return new DefaultDnsRawRecord(str, dnsRecordType, i2, j4, DnsCodecUtil.decompressDomainName(byteBuf.duplicate().setIndex(i4, i4 + i5)));
    }
}
