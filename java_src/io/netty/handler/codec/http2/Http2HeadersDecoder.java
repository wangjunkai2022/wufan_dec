package io.netty.handler.codec.http2;

import io.netty.buffer.ByteBuf;
/* loaded from: classes5.dex */
public interface Http2HeadersDecoder {

    /* loaded from: classes5.dex */
    public interface Configuration {
        long maxHeaderListSize();

        void maxHeaderListSize(long j4, long j5) throws Http2Exception;

        long maxHeaderListSizeGoAway();

        long maxHeaderTableSize();

        void maxHeaderTableSize(long j4) throws Http2Exception;
    }

    Configuration configuration();

    Http2Headers decodeHeaders(int i2, ByteBuf byteBuf) throws Http2Exception;
}
