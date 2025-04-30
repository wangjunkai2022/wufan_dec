package io.netty.handler.codec.http;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufUtil;
import io.netty.util.AsciiString;
import io.netty.util.CharsetUtil;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class HttpHeadersEncoder {
    private static final int COLON_AND_SPACE_SHORT = 14880;

    private HttpHeadersEncoder() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void encoderHeader(CharSequence charSequence, CharSequence charSequence2, ByteBuf byteBuf) {
        int length = charSequence.length();
        int length2 = charSequence2.length();
        byteBuf.ensureWritable(length + length2 + 4);
        int writerIndex = byteBuf.writerIndex();
        writeAscii(byteBuf, writerIndex, charSequence);
        int i2 = writerIndex + length;
        ByteBufUtil.setShortBE(byteBuf, i2, COLON_AND_SPACE_SHORT);
        int i4 = i2 + 2;
        writeAscii(byteBuf, i4, charSequence2);
        int i5 = i4 + length2;
        ByteBufUtil.setShortBE(byteBuf, i5, 3338);
        byteBuf.writerIndex(i5 + 2);
    }

    private static void writeAscii(ByteBuf byteBuf, int i2, CharSequence charSequence) {
        if (charSequence instanceof AsciiString) {
            ByteBufUtil.copy((AsciiString) charSequence, 0, byteBuf, i2, charSequence.length());
        } else {
            byteBuf.setCharSequence(i2, charSequence, CharsetUtil.US_ASCII);
        }
    }
}
