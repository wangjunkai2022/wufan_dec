package io.netty.handler.ssl;

import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
/* loaded from: classes5.dex */
public abstract class ApplicationProtocolNegotiationHandler extends ChannelInboundHandlerAdapter {
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(ApplicationProtocolNegotiationHandler.class);
    private final String fallbackProtocol;

    protected ApplicationProtocolNegotiationHandler(String str) {
        this.fallbackProtocol = (String) ObjectUtil.checkNotNull(str, "fallbackProtocol");
    }

    protected abstract void configurePipeline(ChannelHandlerContext channelHandlerContext, String str) throws Exception;

    @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelHandlerAdapter, io.netty.channel.ChannelHandler, io.netty.channel.ChannelInboundHandler
    public void exceptionCaught(ChannelHandlerContext channelHandlerContext, Throwable th) throws Exception {
        logger.warn("{} Failed to select the application-level protocol:", channelHandlerContext.channel(), th);
        channelHandlerContext.fireExceptionCaught(th);
        channelHandlerContext.close();
    }

    protected void handshakeFailure(ChannelHandlerContext channelHandlerContext, Throwable th) throws Exception {
        logger.warn("{} TLS handshake failed:", channelHandlerContext.channel(), th);
        channelHandlerContext.close();
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0051, code lost:
        if (r0.context(r2) == null) goto L3;
     */
    @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void userEventTriggered(io.netty.channel.ChannelHandlerContext r3, java.lang.Object r4) throws java.lang.Exception {
        /*
            r2 = this;
            boolean r0 = r4 instanceof io.netty.handler.ssl.SslHandshakeCompletionEvent
            if (r0 == 0) goto L63
            r0 = r4
            io.netty.handler.ssl.SslHandshakeCompletionEvent r0 = (io.netty.handler.ssl.SslHandshakeCompletionEvent) r0     // Catch: java.lang.Throwable -> L45
            boolean r1 = r0.isSuccess()     // Catch: java.lang.Throwable -> L45
            if (r1 == 0) goto L30
            io.netty.channel.ChannelPipeline r0 = r3.pipeline()     // Catch: java.lang.Throwable -> L45
            java.lang.Class<io.netty.handler.ssl.SslHandler> r1 = io.netty.handler.ssl.SslHandler.class
            io.netty.channel.ChannelHandler r0 = r0.get(r1)     // Catch: java.lang.Throwable -> L45
            io.netty.handler.ssl.SslHandler r0 = (io.netty.handler.ssl.SslHandler) r0     // Catch: java.lang.Throwable -> L45
            if (r0 == 0) goto L28
            java.lang.String r0 = r0.applicationProtocol()     // Catch: java.lang.Throwable -> L45
            if (r0 == 0) goto L22
            goto L24
        L22:
            java.lang.String r0 = r2.fallbackProtocol     // Catch: java.lang.Throwable -> L45
        L24:
            r2.configurePipeline(r3, r0)     // Catch: java.lang.Throwable -> L45
            goto L37
        L28:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L45
            java.lang.String r1 = "cannot find an SslHandler in the pipeline (required for application-level protocol negotiation)"
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L45
            throw r0     // Catch: java.lang.Throwable -> L45
        L30:
            java.lang.Throwable r0 = r0.cause()     // Catch: java.lang.Throwable -> L45
            r2.handshakeFailure(r3, r0)     // Catch: java.lang.Throwable -> L45
        L37:
            io.netty.channel.ChannelPipeline r0 = r3.pipeline()
            io.netty.channel.ChannelHandlerContext r1 = r0.context(r2)
            if (r1 == 0) goto L63
        L41:
            r0.remove(r2)
            goto L63
        L45:
            r0 = move-exception
            r2.exceptionCaught(r3, r0)     // Catch: java.lang.Throwable -> L54
            io.netty.channel.ChannelPipeline r0 = r3.pipeline()
            io.netty.channel.ChannelHandlerContext r1 = r0.context(r2)
            if (r1 == 0) goto L63
            goto L41
        L54:
            r4 = move-exception
            io.netty.channel.ChannelPipeline r3 = r3.pipeline()
            io.netty.channel.ChannelHandlerContext r0 = r3.context(r2)
            if (r0 == 0) goto L62
            r3.remove(r2)
        L62:
            throw r4
        L63:
            r3.fireUserEventTriggered(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.handler.ssl.ApplicationProtocolNegotiationHandler.userEventTriggered(io.netty.channel.ChannelHandlerContext, java.lang.Object):void");
    }
}
