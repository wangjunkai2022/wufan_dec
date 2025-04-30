package io.netty.handler.codec.socks;

import io.netty.buffer.ByteBuf;
import io.netty.util.CharsetUtil;
import io.netty.util.internal.StringUtil;
/* loaded from: classes5.dex */
final class SocksCommonUtils {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final SocksRequest UNKNOWN_SOCKS_REQUEST = new UnknownSocksRequest();
    public static final SocksResponse UNKNOWN_SOCKS_RESPONSE = new UnknownSocksResponse();
    private static final char ipv6hextetSeparator = ':';

    private SocksCommonUtils() {
    }

    private static void appendHextet(StringBuilder sb, byte[] bArr, int i2) {
        StringUtil.toHexString(sb, bArr, i2 << 1, 2);
    }

    public static String ipv6toStr(byte[] bArr) {
        StringBuilder sb = new StringBuilder(39);
        ipv6toStr(sb, bArr, 0, 8);
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String readUsAscii(ByteBuf byteBuf, int i2) {
        String byteBuf2 = byteBuf.toString(byteBuf.readerIndex(), i2, CharsetUtil.US_ASCII);
        byteBuf.skipBytes(i2);
        return byteBuf2;
    }

    private static void ipv6toStr(StringBuilder sb, byte[] bArr, int i2, int i4) {
        int i5 = i4 - 1;
        while (i2 < i5) {
            appendHextet(sb, bArr, i2);
            sb.append(ipv6hextetSeparator);
            i2++;
        }
        appendHextet(sb, bArr, i2);
    }
}
