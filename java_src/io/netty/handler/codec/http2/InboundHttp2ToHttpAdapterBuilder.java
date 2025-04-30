package io.netty.handler.codec.http2;
/* loaded from: classes5.dex */
public final class InboundHttp2ToHttpAdapterBuilder extends AbstractInboundHttp2ToHttpAdapterBuilder<InboundHttp2ToHttpAdapter, InboundHttp2ToHttpAdapterBuilder> {
    public InboundHttp2ToHttpAdapterBuilder(Http2Connection http2Connection) {
        super(http2Connection);
    }

    @Override // io.netty.handler.codec.http2.AbstractInboundHttp2ToHttpAdapterBuilder
    public InboundHttp2ToHttpAdapter build() {
        return super.build();
    }

    @Override // io.netty.handler.codec.http2.AbstractInboundHttp2ToHttpAdapterBuilder
    protected InboundHttp2ToHttpAdapter build(Http2Connection http2Connection, int i2, boolean z3, boolean z4) throws Exception {
        return new InboundHttp2ToHttpAdapter(http2Connection, i2, z3, z4);
    }

    @Override // io.netty.handler.codec.http2.AbstractInboundHttp2ToHttpAdapterBuilder
    public InboundHttp2ToHttpAdapterBuilder maxContentLength(int i2) {
        return (InboundHttp2ToHttpAdapterBuilder) super.maxContentLength(i2);
    }

    @Override // io.netty.handler.codec.http2.AbstractInboundHttp2ToHttpAdapterBuilder
    public InboundHttp2ToHttpAdapterBuilder propagateSettings(boolean z3) {
        return (InboundHttp2ToHttpAdapterBuilder) super.propagateSettings(z3);
    }

    @Override // io.netty.handler.codec.http2.AbstractInboundHttp2ToHttpAdapterBuilder
    public InboundHttp2ToHttpAdapterBuilder validateHttpHeaders(boolean z3) {
        return (InboundHttp2ToHttpAdapterBuilder) super.validateHttpHeaders(z3);
    }
}
