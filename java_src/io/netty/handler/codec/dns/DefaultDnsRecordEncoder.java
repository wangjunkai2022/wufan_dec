package io.netty.handler.codec.dns;

import io.netty.buffer.ByteBuf;
import io.netty.channel.socket.InternetProtocolFamily;
import io.netty.handler.codec.UnsupportedMessageTypeException;
import io.netty.util.internal.StringUtil;
/* loaded from: classes5.dex */
public class DefaultDnsRecordEncoder implements DnsRecordEncoder {
    private static final int PREFIX_MASK = 7;

    static int calculateEcsAddressLength(int i2, int i4) {
        return (i2 >>> 3) + (i4 != 0 ? 1 : 0);
    }

    private void encodeOptEcsRecord(DnsOptEcsRecord dnsOptEcsRecord, ByteBuf byteBuf) throws Exception {
        encodeRecord0(dnsOptEcsRecord, byteBuf);
        int sourcePrefixLength = dnsOptEcsRecord.sourcePrefixLength();
        int scopePrefixLength = dnsOptEcsRecord.scopePrefixLength();
        int i2 = sourcePrefixLength & 7;
        byte[] address = dnsOptEcsRecord.address();
        int length = address.length << 3;
        if (length >= sourcePrefixLength && sourcePrefixLength >= 0) {
            InternetProtocolFamily internetProtocolFamily = address.length == 4 ? InternetProtocolFamily.IPv4 : InternetProtocolFamily.IPv6;
            int calculateEcsAddressLength = calculateEcsAddressLength(sourcePrefixLength, i2);
            int i4 = calculateEcsAddressLength + 8;
            byteBuf.writeShort(i4);
            byteBuf.writeShort(8);
            byteBuf.writeShort(i4 - 4);
            byteBuf.writeShort((short) internetProtocolFamily.addressNumber());
            byteBuf.writeByte(sourcePrefixLength);
            byteBuf.writeByte(scopePrefixLength);
            if (i2 > 0) {
                int i5 = calculateEcsAddressLength - 1;
                byteBuf.writeBytes(address, 0, i5);
                byteBuf.writeByte(padWithZeros(address[i5], i2));
                return;
            }
            byteBuf.writeBytes(address, 0, calculateEcsAddressLength);
            return;
        }
        throw new IllegalArgumentException(sourcePrefixLength + ": " + sourcePrefixLength + " (expected: 0 >= " + length + ')');
    }

    private void encodeOptPseudoRecord(DnsOptPseudoRecord dnsOptPseudoRecord, ByteBuf byteBuf) throws Exception {
        encodeRecord0(dnsOptPseudoRecord, byteBuf);
        byteBuf.writeShort(0);
    }

    private void encodePtrRecord(DnsPtrRecord dnsPtrRecord, ByteBuf byteBuf) throws Exception {
        encodeRecord0(dnsPtrRecord, byteBuf);
        encodeName(dnsPtrRecord.hostname(), byteBuf);
    }

    private void encodeRawRecord(DnsRawRecord dnsRawRecord, ByteBuf byteBuf) throws Exception {
        encodeRecord0(dnsRawRecord, byteBuf);
        ByteBuf content = dnsRawRecord.content();
        int readableBytes = content.readableBytes();
        byteBuf.writeShort(readableBytes);
        byteBuf.writeBytes(content, content.readerIndex(), readableBytes);
    }

    private void encodeRecord0(DnsRecord dnsRecord, ByteBuf byteBuf) throws Exception {
        encodeName(dnsRecord.name(), byteBuf);
        byteBuf.writeShort(dnsRecord.type().intValue());
        byteBuf.writeShort(dnsRecord.dnsClass());
        byteBuf.writeInt((int) dnsRecord.timeToLive());
    }

    private static byte padWithZeros(byte b4, int i2) {
        int i4;
        switch (i2) {
            case 0:
                return (byte) 0;
            case 1:
                i4 = b4 & 128;
                break;
            case 2:
                i4 = b4 & 192;
                break;
            case 3:
                i4 = b4 & 224;
                break;
            case 4:
                i4 = b4 & 240;
                break;
            case 5:
                i4 = b4 & 248;
                break;
            case 6:
                i4 = b4 & 252;
                break;
            case 7:
                i4 = b4 & 254;
                break;
            case 8:
                return b4;
            default:
                throw new IllegalArgumentException("lowOrderBitsToPreserve: " + i2);
        }
        return (byte) i4;
    }

    protected void encodeName(String str, ByteBuf byteBuf) throws Exception {
        DnsCodecUtil.encodeDomainName(str, byteBuf);
    }

    @Override // io.netty.handler.codec.dns.DnsRecordEncoder
    public final void encodeQuestion(DnsQuestion dnsQuestion, ByteBuf byteBuf) throws Exception {
        encodeName(dnsQuestion.name(), byteBuf);
        byteBuf.writeShort(dnsQuestion.type().intValue());
        byteBuf.writeShort(dnsQuestion.dnsClass());
    }

    @Override // io.netty.handler.codec.dns.DnsRecordEncoder
    public void encodeRecord(DnsRecord dnsRecord, ByteBuf byteBuf) throws Exception {
        if (dnsRecord instanceof DnsQuestion) {
            encodeQuestion((DnsQuestion) dnsRecord, byteBuf);
        } else if (dnsRecord instanceof DnsPtrRecord) {
            encodePtrRecord((DnsPtrRecord) dnsRecord, byteBuf);
        } else if (dnsRecord instanceof DnsOptEcsRecord) {
            encodeOptEcsRecord((DnsOptEcsRecord) dnsRecord, byteBuf);
        } else if (dnsRecord instanceof DnsOptPseudoRecord) {
            encodeOptPseudoRecord((DnsOptPseudoRecord) dnsRecord, byteBuf);
        } else if (dnsRecord instanceof DnsRawRecord) {
            encodeRawRecord((DnsRawRecord) dnsRecord, byteBuf);
        } else {
            throw new UnsupportedMessageTypeException(StringUtil.simpleClassName(dnsRecord));
        }
    }
}
