package io.netty.handler.codec.http.websocketx;

import com.join.mgps.data.c;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelPipeline;
import io.netty.channel.ChannelPromise;
import io.netty.handler.codec.http.HttpHeaders;
import io.netty.util.internal.ObjectUtil;
import java.net.SocketAddress;
import java.net.URI;
import java.util.List;
/* loaded from: classes5.dex */
public class WebSocketClientProtocolHandler extends WebSocketProtocolHandler {
    private final WebSocketClientProtocolConfig clientConfig;
    private final WebSocketClientHandshaker handshaker;

    /* loaded from: classes5.dex */
    public enum ClientHandshakeStateEvent {
        HANDSHAKE_TIMEOUT,
        HANDSHAKE_ISSUED,
        HANDSHAKE_COMPLETE
    }

    public WebSocketClientProtocolHandler(WebSocketClientProtocolConfig webSocketClientProtocolConfig) {
        super(((WebSocketClientProtocolConfig) ObjectUtil.checkNotNull(webSocketClientProtocolConfig, "clientConfig")).dropPongFrames(), webSocketClientProtocolConfig.sendCloseFrame(), webSocketClientProtocolConfig.forceCloseTimeoutMillis());
        this.handshaker = WebSocketClientHandshakerFactory.newHandshaker(webSocketClientProtocolConfig.webSocketUri(), webSocketClientProtocolConfig.version(), webSocketClientProtocolConfig.subprotocol(), webSocketClientProtocolConfig.allowExtensions(), webSocketClientProtocolConfig.customHeaders(), webSocketClientProtocolConfig.maxFramePayloadLength(), webSocketClientProtocolConfig.performMasking(), webSocketClientProtocolConfig.allowMaskMismatch(), webSocketClientProtocolConfig.forceCloseTimeoutMillis(), webSocketClientProtocolConfig.absoluteUpgradeUrl());
        this.clientConfig = webSocketClientProtocolConfig;
    }

    @Override // io.netty.handler.codec.http.websocketx.WebSocketProtocolHandler, io.netty.channel.ChannelOutboundHandler
    public /* bridge */ /* synthetic */ void bind(ChannelHandlerContext channelHandlerContext, SocketAddress socketAddress, ChannelPromise channelPromise) throws Exception {
        super.bind(channelHandlerContext, socketAddress, channelPromise);
    }

    @Override // io.netty.handler.codec.http.websocketx.WebSocketProtocolHandler, io.netty.channel.ChannelOutboundHandler
    public /* bridge */ /* synthetic */ void close(ChannelHandlerContext channelHandlerContext, ChannelPromise channelPromise) throws Exception {
        super.close(channelHandlerContext, channelPromise);
    }

    @Override // io.netty.handler.codec.http.websocketx.WebSocketProtocolHandler, io.netty.channel.ChannelOutboundHandler
    public /* bridge */ /* synthetic */ void connect(ChannelHandlerContext channelHandlerContext, SocketAddress socketAddress, SocketAddress socketAddress2, ChannelPromise channelPromise) throws Exception {
        super.connect(channelHandlerContext, socketAddress, socketAddress2, channelPromise);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.handler.codec.http.websocketx.WebSocketProtocolHandler, io.netty.handler.codec.MessageToMessageDecoder
    public /* bridge */ /* synthetic */ void decode(ChannelHandlerContext channelHandlerContext, WebSocketFrame webSocketFrame, List list) throws Exception {
        decode(channelHandlerContext, webSocketFrame, (List<Object>) list);
    }

    @Override // io.netty.handler.codec.http.websocketx.WebSocketProtocolHandler, io.netty.channel.ChannelOutboundHandler
    public /* bridge */ /* synthetic */ void deregister(ChannelHandlerContext channelHandlerContext, ChannelPromise channelPromise) throws Exception {
        super.deregister(channelHandlerContext, channelPromise);
    }

    @Override // io.netty.handler.codec.http.websocketx.WebSocketProtocolHandler, io.netty.channel.ChannelOutboundHandler
    public /* bridge */ /* synthetic */ void disconnect(ChannelHandlerContext channelHandlerContext, ChannelPromise channelPromise) throws Exception {
        super.disconnect(channelHandlerContext, channelPromise);
    }

    @Override // io.netty.handler.codec.http.websocketx.WebSocketProtocolHandler, io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelHandlerAdapter, io.netty.channel.ChannelHandler, io.netty.channel.ChannelInboundHandler
    public /* bridge */ /* synthetic */ void exceptionCaught(ChannelHandlerContext channelHandlerContext, Throwable th) throws Exception {
        super.exceptionCaught(channelHandlerContext, th);
    }

    @Override // io.netty.handler.codec.http.websocketx.WebSocketProtocolHandler, io.netty.channel.ChannelOutboundHandler
    public /* bridge */ /* synthetic */ void flush(ChannelHandlerContext channelHandlerContext) throws Exception {
        super.flush(channelHandlerContext);
    }

    @Override // io.netty.channel.ChannelHandlerAdapter, io.netty.channel.ChannelHandler
    public void handlerAdded(ChannelHandlerContext channelHandlerContext) {
        ChannelPipeline pipeline = channelHandlerContext.pipeline();
        if (pipeline.get(WebSocketClientProtocolHandshakeHandler.class) == null) {
            channelHandlerContext.pipeline().addBefore(channelHandlerContext.name(), WebSocketClientProtocolHandshakeHandler.class.getName(), new WebSocketClientProtocolHandshakeHandler(this.handshaker, this.clientConfig.handshakeTimeoutMillis()));
        }
        if (pipeline.get(Utf8FrameValidator.class) == null) {
            channelHandlerContext.pipeline().addBefore(channelHandlerContext.name(), Utf8FrameValidator.class.getName(), new Utf8FrameValidator());
        }
    }

    public WebSocketClientHandshaker handshaker() {
        return this.handshaker;
    }

    @Override // io.netty.handler.codec.http.websocketx.WebSocketProtocolHandler, io.netty.channel.ChannelOutboundHandler
    public /* bridge */ /* synthetic */ void read(ChannelHandlerContext channelHandlerContext) throws Exception {
        super.read(channelHandlerContext);
    }

    @Override // io.netty.handler.codec.http.websocketx.WebSocketProtocolHandler, io.netty.channel.ChannelOutboundHandler
    public /* bridge */ /* synthetic */ void write(ChannelHandlerContext channelHandlerContext, Object obj, ChannelPromise channelPromise) throws Exception {
        super.write(channelHandlerContext, obj, channelPromise);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.netty.handler.codec.http.websocketx.WebSocketProtocolHandler
    public void decode(ChannelHandlerContext channelHandlerContext, WebSocketFrame webSocketFrame, List<Object> list) throws Exception {
        if (this.clientConfig.handleCloseFrames() && (webSocketFrame instanceof CloseWebSocketFrame)) {
            channelHandlerContext.close();
        } else {
            super.decode(channelHandlerContext, webSocketFrame, list);
        }
    }

    public WebSocketClientProtocolHandler(URI uri, WebSocketVersion webSocketVersion, String str, boolean z3, HttpHeaders httpHeaders, int i2, boolean z4, boolean z5, boolean z6) {
        this(uri, webSocketVersion, str, z3, httpHeaders, i2, z4, z5, z6, c.f47286a);
    }

    public WebSocketClientProtocolHandler(URI uri, WebSocketVersion webSocketVersion, String str, boolean z3, HttpHeaders httpHeaders, int i2, boolean z4, boolean z5, boolean z6, long j4) {
        this(WebSocketClientHandshakerFactory.newHandshaker(uri, webSocketVersion, str, z3, httpHeaders, i2, z5, z6), z4, j4);
    }

    public WebSocketClientProtocolHandler(URI uri, WebSocketVersion webSocketVersion, String str, boolean z3, HttpHeaders httpHeaders, int i2, boolean z4) {
        this(uri, webSocketVersion, str, z3, httpHeaders, i2, z4, c.f47286a);
    }

    public WebSocketClientProtocolHandler(URI uri, WebSocketVersion webSocketVersion, String str, boolean z3, HttpHeaders httpHeaders, int i2, boolean z4, long j4) {
        this(uri, webSocketVersion, str, z3, httpHeaders, i2, z4, true, false, j4);
    }

    public WebSocketClientProtocolHandler(URI uri, WebSocketVersion webSocketVersion, String str, boolean z3, HttpHeaders httpHeaders, int i2) {
        this(uri, webSocketVersion, str, z3, httpHeaders, i2, (long) c.f47286a);
    }

    public WebSocketClientProtocolHandler(URI uri, WebSocketVersion webSocketVersion, String str, boolean z3, HttpHeaders httpHeaders, int i2, long j4) {
        this(uri, webSocketVersion, str, z3, httpHeaders, i2, true, j4);
    }

    public WebSocketClientProtocolHandler(WebSocketClientHandshaker webSocketClientHandshaker, boolean z3) {
        this(webSocketClientHandshaker, z3, (long) c.f47286a);
    }

    public WebSocketClientProtocolHandler(WebSocketClientHandshaker webSocketClientHandshaker, boolean z3, long j4) {
        this(webSocketClientHandshaker, z3, true, j4);
    }

    public WebSocketClientProtocolHandler(WebSocketClientHandshaker webSocketClientHandshaker, boolean z3, boolean z4) {
        this(webSocketClientHandshaker, z3, z4, c.f47286a);
    }

    public WebSocketClientProtocolHandler(WebSocketClientHandshaker webSocketClientHandshaker, boolean z3, boolean z4, long j4) {
        super(z4);
        this.handshaker = webSocketClientHandshaker;
        this.clientConfig = WebSocketClientProtocolConfig.newBuilder().handleCloseFrames(z3).handshakeTimeoutMillis(j4).build();
    }

    public WebSocketClientProtocolHandler(WebSocketClientHandshaker webSocketClientHandshaker) {
        this(webSocketClientHandshaker, (long) c.f47286a);
    }

    public WebSocketClientProtocolHandler(WebSocketClientHandshaker webSocketClientHandshaker, long j4) {
        this(webSocketClientHandshaker, true, j4);
    }
}
