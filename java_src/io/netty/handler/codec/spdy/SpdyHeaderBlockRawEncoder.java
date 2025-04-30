package io.netty.handler.codec.spdy;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufAllocator;
import io.netty.buffer.ByteBufUtil;
import io.netty.buffer.Unpooled;
import io.netty.util.internal.ObjectUtil;
import java.util.Set;
/* loaded from: classes5.dex */
public class SpdyHeaderBlockRawEncoder extends SpdyHeaderBlockEncoder {
    private final int version;

    public SpdyHeaderBlockRawEncoder(SpdyVersion spdyVersion) {
        this.version = ((SpdyVersion) ObjectUtil.checkNotNull(spdyVersion, "version")).getVersion();
    }

    private static void setLengthField(ByteBuf byteBuf, int i2, int i4) {
        byteBuf.setInt(i2, i4);
    }

    private static void writeLengthField(ByteBuf byteBuf, int i2) {
        byteBuf.writeInt(i2);
    }

    @Override // io.netty.handler.codec.spdy.SpdyHeaderBlockEncoder
    public ByteBuf encode(ByteBufAllocator byteBufAllocator, SpdyHeadersFrame spdyHeadersFrame) throws Exception {
        Set<CharSequence> names = spdyHeadersFrame.headers().names();
        int size = names.size();
        if (size == 0) {
            return Unpooled.EMPTY_BUFFER;
        }
        if (size <= 65535) {
            ByteBuf heapBuffer = byteBufAllocator.heapBuffer();
            writeLengthField(heapBuffer, size);
            for (CharSequence charSequence : names) {
                writeLengthField(heapBuffer, charSequence.length());
                ByteBufUtil.writeAscii(heapBuffer, charSequence);
                int writerIndex = heapBuffer.writerIndex();
                writeLengthField(heapBuffer, 0);
                int i2 = 0;
                for (CharSequence charSequence2 : spdyHeadersFrame.headers().getAll(charSequence)) {
                    int length = charSequence2.length();
                    if (length > 0) {
                        ByteBufUtil.writeAscii(heapBuffer, charSequence2);
                        heapBuffer.writeByte(0);
                        i2 += length + 1;
                    }
                }
                if (i2 != 0) {
                    i2--;
                }
                if (i2 > 65535) {
                    throw new IllegalArgumentException("header exceeds allowable length: " + ((Object) charSequence));
                } else if (i2 > 0) {
                    setLengthField(heapBuffer, writerIndex, i2);
                    heapBuffer.writerIndex(heapBuffer.writerIndex() - 1);
                }
            }
            return heapBuffer;
        }
        throw new IllegalArgumentException("header block contains too many headers");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // io.netty.handler.codec.spdy.SpdyHeaderBlockEncoder
    public void end() {
    }
}
