package io.netty.handler.codec.http2;

import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.http.HttpHeaders;
import io.netty.handler.codec.http2.Http2CodecUtil;
import io.netty.handler.codec.http2.HttpConversionUtil;
/* loaded from: classes5.dex */
public class HttpToHttp2ConnectionHandler extends Http2ConnectionHandler {
    private int currentStreamId;
    private final boolean validateHeaders;

    protected HttpToHttp2ConnectionHandler(Http2ConnectionDecoder http2ConnectionDecoder, Http2ConnectionEncoder http2ConnectionEncoder, Http2Settings http2Settings, boolean z3) {
        super(http2ConnectionDecoder, http2ConnectionEncoder, http2Settings);
        this.validateHeaders = z3;
    }

    private int getStreamId(HttpHeaders httpHeaders) throws Exception {
        return httpHeaders.getInt(HttpConversionUtil.ExtensionHeaderNames.STREAM_ID.text(), connection().local().incrementAndGetNextStreamId());
    }

    private static void writeHeaders(ChannelHandlerContext channelHandlerContext, Http2ConnectionEncoder http2ConnectionEncoder, int i2, HttpHeaders httpHeaders, Http2Headers http2Headers, boolean z3, Http2CodecUtil.SimpleChannelPromiseAggregator simpleChannelPromiseAggregator) {
        http2ConnectionEncoder.writeHeaders(channelHandlerContext, i2, http2Headers, httpHeaders.getInt(HttpConversionUtil.ExtensionHeaderNames.STREAM_DEPENDENCY_ID.text(), 0), httpHeaders.getShort(HttpConversionUtil.ExtensionHeaderNames.STREAM_WEIGHT.text(), (short) 16), false, 0, z3, simpleChannelPromiseAggregator.newPromise());
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00b0, code lost:
        if (r15 != false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00c3, code lost:
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v7, types: [io.netty.handler.codec.http2.Http2Headers] */
    @Override // io.netty.handler.codec.http2.Http2ConnectionHandler, io.netty.channel.ChannelOutboundHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void write(io.netty.channel.ChannelHandlerContext r13, java.lang.Object r14, io.netty.channel.ChannelPromise r15) {
        /*
            Method dump skipped, instructions count: 206
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.handler.codec.http2.HttpToHttp2ConnectionHandler.write(io.netty.channel.ChannelHandlerContext, java.lang.Object, io.netty.channel.ChannelPromise):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public HttpToHttp2ConnectionHandler(Http2ConnectionDecoder http2ConnectionDecoder, Http2ConnectionEncoder http2ConnectionEncoder, Http2Settings http2Settings, boolean z3, boolean z4) {
        super(http2ConnectionDecoder, http2ConnectionEncoder, http2Settings, z4);
        this.validateHeaders = z3;
    }
}
