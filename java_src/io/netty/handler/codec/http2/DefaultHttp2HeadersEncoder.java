package io.netty.handler.codec.http2;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.handler.codec.http2.Http2HeadersEncoder;
import io.netty.util.internal.ObjectUtil;
/* loaded from: classes5.dex */
public class DefaultHttp2HeadersEncoder implements Http2HeadersEncoder, Http2HeadersEncoder.Configuration {
    private final HpackEncoder hpackEncoder;
    private final Http2HeadersEncoder.SensitivityDetector sensitivityDetector;
    private final ByteBuf tableSizeChangeOutput;

    public DefaultHttp2HeadersEncoder() {
        this(Http2HeadersEncoder.NEVER_SENSITIVE);
    }

    @Override // io.netty.handler.codec.http2.Http2HeadersEncoder
    public Http2HeadersEncoder.Configuration configuration() {
        return this;
    }

    @Override // io.netty.handler.codec.http2.Http2HeadersEncoder
    public void encodeHeaders(int i2, Http2Headers http2Headers, ByteBuf byteBuf) throws Http2Exception {
        try {
            if (this.tableSizeChangeOutput.isReadable()) {
                byteBuf.writeBytes(this.tableSizeChangeOutput);
                this.tableSizeChangeOutput.clear();
            }
            this.hpackEncoder.encodeHeaders(i2, byteBuf, http2Headers, this.sensitivityDetector);
        } catch (Http2Exception e4) {
            throw e4;
        } catch (Throwable th) {
            throw Http2Exception.connectionError(Http2Error.COMPRESSION_ERROR, th, "Failed encoding headers block: %s", th.getMessage());
        }
    }

    @Override // io.netty.handler.codec.http2.Http2HeadersEncoder.Configuration
    public void maxHeaderListSize(long j4) throws Http2Exception {
        this.hpackEncoder.setMaxHeaderListSize(j4);
    }

    @Override // io.netty.handler.codec.http2.Http2HeadersEncoder.Configuration
    public void maxHeaderTableSize(long j4) throws Http2Exception {
        this.hpackEncoder.setMaxHeaderTableSize(this.tableSizeChangeOutput, j4);
    }

    public DefaultHttp2HeadersEncoder(Http2HeadersEncoder.SensitivityDetector sensitivityDetector) {
        this(sensitivityDetector, new HpackEncoder());
    }

    @Override // io.netty.handler.codec.http2.Http2HeadersEncoder.Configuration
    public long maxHeaderListSize() {
        return this.hpackEncoder.getMaxHeaderListSize();
    }

    @Override // io.netty.handler.codec.http2.Http2HeadersEncoder.Configuration
    public long maxHeaderTableSize() {
        return this.hpackEncoder.getMaxHeaderTableSize();
    }

    public DefaultHttp2HeadersEncoder(Http2HeadersEncoder.SensitivityDetector sensitivityDetector, boolean z3) {
        this(sensitivityDetector, new HpackEncoder(z3));
    }

    public DefaultHttp2HeadersEncoder(Http2HeadersEncoder.SensitivityDetector sensitivityDetector, boolean z3, int i2) {
        this(sensitivityDetector, z3, i2, 512);
    }

    public DefaultHttp2HeadersEncoder(Http2HeadersEncoder.SensitivityDetector sensitivityDetector, boolean z3, int i2, int i4) {
        this(sensitivityDetector, new HpackEncoder(z3, i2, i4));
    }

    DefaultHttp2HeadersEncoder(Http2HeadersEncoder.SensitivityDetector sensitivityDetector, HpackEncoder hpackEncoder) {
        this.tableSizeChangeOutput = Unpooled.buffer();
        this.sensitivityDetector = (Http2HeadersEncoder.SensitivityDetector) ObjectUtil.checkNotNull(sensitivityDetector, "sensitiveDetector");
        this.hpackEncoder = (HpackEncoder) ObjectUtil.checkNotNull(hpackEncoder, "hpackEncoder");
    }
}
