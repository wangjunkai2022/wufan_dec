package io.netty.handler.codec.spdy;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufAllocator;
import io.netty.util.internal.PlatformDependent;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class SpdyHeaderBlockEncoder {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static SpdyHeaderBlockEncoder newInstance(SpdyVersion spdyVersion, int i2, int i4, int i5) {
        if (PlatformDependent.javaVersion() >= 7) {
            return new SpdyHeaderBlockZlibEncoder(spdyVersion, i2);
        }
        return new SpdyHeaderBlockJZlibEncoder(spdyVersion, i2, i4, i5);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract ByteBuf encode(ByteBufAllocator byteBufAllocator, SpdyHeadersFrame spdyHeadersFrame) throws Exception;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void end();
}
