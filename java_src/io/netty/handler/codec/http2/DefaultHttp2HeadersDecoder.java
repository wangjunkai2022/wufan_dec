package io.netty.handler.codec.http2;

import io.netty.buffer.ByteBuf;
import io.netty.handler.codec.http2.Http2HeadersDecoder;
import io.netty.util.internal.ObjectUtil;
/* loaded from: classes5.dex */
public class DefaultHttp2HeadersDecoder implements Http2HeadersDecoder, Http2HeadersDecoder.Configuration {
    private static final float HEADERS_COUNT_WEIGHT_HISTORICAL = 0.8f;
    private static final float HEADERS_COUNT_WEIGHT_NEW = 0.2f;
    private float headerArraySizeAccumulator;
    private final HpackDecoder hpackDecoder;
    private long maxHeaderListSizeGoAway;
    private final boolean validateHeaders;

    public DefaultHttp2HeadersDecoder() {
        this(true);
    }

    @Override // io.netty.handler.codec.http2.Http2HeadersDecoder
    public Http2HeadersDecoder.Configuration configuration() {
        return this;
    }

    @Override // io.netty.handler.codec.http2.Http2HeadersDecoder
    public Http2Headers decodeHeaders(int i2, ByteBuf byteBuf) throws Http2Exception {
        try {
            Http2Headers newHeaders = newHeaders();
            this.hpackDecoder.decode(i2, byteBuf, newHeaders, this.validateHeaders);
            this.headerArraySizeAccumulator = (newHeaders.size() * 0.2f) + (this.headerArraySizeAccumulator * HEADERS_COUNT_WEIGHT_HISTORICAL);
            return newHeaders;
        } catch (Http2Exception e4) {
            throw e4;
        } catch (Throwable th) {
            throw Http2Exception.connectionError(Http2Error.COMPRESSION_ERROR, th, th.getMessage(), new Object[0]);
        }
    }

    @Override // io.netty.handler.codec.http2.Http2HeadersDecoder.Configuration
    public void maxHeaderListSize(long j4, long j5) throws Http2Exception {
        if (j5 >= j4 && j5 >= 0) {
            this.hpackDecoder.setMaxHeaderListSize(j4);
            this.maxHeaderListSizeGoAway = j5;
            return;
        }
        throw Http2Exception.connectionError(Http2Error.INTERNAL_ERROR, "Header List Size GO_AWAY %d must be non-negative and >= %d", Long.valueOf(j5), Long.valueOf(j4));
    }

    @Override // io.netty.handler.codec.http2.Http2HeadersDecoder.Configuration
    public long maxHeaderListSizeGoAway() {
        return this.maxHeaderListSizeGoAway;
    }

    @Override // io.netty.handler.codec.http2.Http2HeadersDecoder.Configuration
    public void maxHeaderTableSize(long j4) throws Http2Exception {
        this.hpackDecoder.setMaxHeaderTableSize(j4);
    }

    protected Http2Headers newHeaders() {
        return new DefaultHttp2Headers(this.validateHeaders, (int) this.headerArraySizeAccumulator);
    }

    protected final int numberOfHeadersGuess() {
        return (int) this.headerArraySizeAccumulator;
    }

    protected final boolean validateHeaders() {
        return this.validateHeaders;
    }

    public DefaultHttp2HeadersDecoder(boolean z3) {
        this(z3, 8192L);
    }

    @Override // io.netty.handler.codec.http2.Http2HeadersDecoder.Configuration
    public long maxHeaderTableSize() {
        return this.hpackDecoder.getMaxHeaderTableSize();
    }

    public DefaultHttp2HeadersDecoder(boolean z3, long j4) {
        this(z3, j4, -1);
    }

    public DefaultHttp2HeadersDecoder(boolean z3, long j4, @Deprecated int i2) {
        this(z3, new HpackDecoder(j4));
    }

    DefaultHttp2HeadersDecoder(boolean z3, HpackDecoder hpackDecoder) {
        this.headerArraySizeAccumulator = 8.0f;
        this.hpackDecoder = (HpackDecoder) ObjectUtil.checkNotNull(hpackDecoder, "hpackDecoder");
        this.validateHeaders = z3;
        this.maxHeaderListSizeGoAway = Http2CodecUtil.calculateMaxHeaderListSizeGoAway(hpackDecoder.getMaxHeaderListSize());
    }

    @Override // io.netty.handler.codec.http2.Http2HeadersDecoder.Configuration
    public long maxHeaderListSize() {
        return this.hpackDecoder.getMaxHeaderListSize();
    }
}
