package io.netty.handler.codec.http.websocketx;

import com.join.mgps.data.c;
import io.netty.buffer.Unpooled;
import io.netty.channel.Channel;
import io.netty.channel.ChannelFutureListener;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelPipeline;
import io.netty.channel.ChannelPromise;
import io.netty.handler.codec.http.DefaultFullHttpResponse;
import io.netty.handler.codec.http.HttpHeaders;
import io.netty.handler.codec.http.HttpResponseStatus;
import io.netty.handler.codec.http.HttpVersion;
import io.netty.util.AttributeKey;
import io.netty.util.concurrent.Future;
import io.netty.util.concurrent.GenericFutureListener;
import io.netty.util.internal.ObjectUtil;
import java.net.SocketAddress;
import java.util.List;
/* loaded from: classes5.dex */
public class WebSocketServerProtocolHandler extends WebSocketProtocolHandler {
    private static final AttributeKey<WebSocketServerHandshaker> HANDSHAKER_ATTR_KEY = AttributeKey.valueOf(WebSocketServerHandshaker.class, "HANDSHAKER");
    private final WebSocketServerProtocolConfig serverConfig;

    /* loaded from: classes5.dex */
    public static final class HandshakeComplete {
        private final HttpHeaders requestHeaders;
        private final String requestUri;
        private final String selectedSubprotocol;

        /* JADX INFO: Access modifiers changed from: package-private */
        public HandshakeComplete(String str, HttpHeaders httpHeaders, String str2) {
            this.requestUri = str;
            this.requestHeaders = httpHeaders;
            this.selectedSubprotocol = str2;
        }

        public HttpHeaders requestHeaders() {
            return this.requestHeaders;
        }

        public String requestUri() {
            return this.requestUri;
        }

        public String selectedSubprotocol() {
            return this.selectedSubprotocol;
        }
    }

    /* loaded from: classes5.dex */
    public enum ServerHandshakeStateEvent {
        HANDSHAKE_COMPLETE,
        HANDSHAKE_TIMEOUT
    }

    public WebSocketServerProtocolHandler(WebSocketServerProtocolConfig webSocketServerProtocolConfig) {
        super(((WebSocketServerProtocolConfig) ObjectUtil.checkNotNull(webSocketServerProtocolConfig, "serverConfig")).dropPongFrames(), webSocketServerProtocolConfig.sendCloseFrame(), webSocketServerProtocolConfig.forceCloseTimeoutMillis());
        this.serverConfig = webSocketServerProtocolConfig;
    }

    static WebSocketServerHandshaker getHandshaker(Channel channel) {
        return (WebSocketServerHandshaker) channel.attr(HANDSHAKER_ATTR_KEY).get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setHandshaker(Channel channel, WebSocketServerHandshaker webSocketServerHandshaker) {
        channel.attr(HANDSHAKER_ATTR_KEY).set(webSocketServerHandshaker);
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
    public void exceptionCaught(ChannelHandlerContext channelHandlerContext, Throwable th) throws Exception {
        if (th instanceof WebSocketHandshakeException) {
            channelHandlerContext.channel().writeAndFlush(new DefaultFullHttpResponse(HttpVersion.HTTP_1_1, HttpResponseStatus.BAD_REQUEST, Unpooled.wrappedBuffer(th.getMessage().getBytes()))).addListener((GenericFutureListener<? extends Future<? super Void>>) ChannelFutureListener.CLOSE);
            return;
        }
        channelHandlerContext.fireExceptionCaught(th);
        channelHandlerContext.close();
    }

    @Override // io.netty.handler.codec.http.websocketx.WebSocketProtocolHandler, io.netty.channel.ChannelOutboundHandler
    public /* bridge */ /* synthetic */ void flush(ChannelHandlerContext channelHandlerContext) throws Exception {
        super.flush(channelHandlerContext);
    }

    @Override // io.netty.channel.ChannelHandlerAdapter, io.netty.channel.ChannelHandler
    public void handlerAdded(ChannelHandlerContext channelHandlerContext) {
        ChannelPipeline pipeline = channelHandlerContext.pipeline();
        if (pipeline.get(WebSocketServerProtocolHandshakeHandler.class) == null) {
            pipeline.addBefore(channelHandlerContext.name(), WebSocketServerProtocolHandshakeHandler.class.getName(), new WebSocketServerProtocolHandshakeHandler(this.serverConfig));
        }
        if (this.serverConfig.decoderConfig().withUTF8Validator() && pipeline.get(Utf8FrameValidator.class) == null) {
            pipeline.addBefore(channelHandlerContext.name(), Utf8FrameValidator.class.getName(), new Utf8FrameValidator());
        }
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
        if (this.serverConfig.handleCloseFrames() && (webSocketFrame instanceof CloseWebSocketFrame)) {
            WebSocketServerHandshaker handshaker = getHandshaker(channelHandlerContext.channel());
            if (handshaker != null) {
                webSocketFrame.retain();
                handshaker.close(channelHandlerContext.channel(), (CloseWebSocketFrame) webSocketFrame);
                return;
            }
            channelHandlerContext.writeAndFlush(Unpooled.EMPTY_BUFFER).addListener((GenericFutureListener<? extends Future<? super Void>>) ChannelFutureListener.CLOSE);
            return;
        }
        super.decode(channelHandlerContext, webSocketFrame, list);
    }

    public WebSocketServerProtocolHandler(String str) {
        this(str, (long) c.f47286a);
    }

    public WebSocketServerProtocolHandler(String str, long j4) {
        this(str, false, j4);
    }

    public WebSocketServerProtocolHandler(String str, boolean z3) {
        this(str, z3, (long) c.f47286a);
    }

    public WebSocketServerProtocolHandler(String str, boolean z3, long j4) {
        this(str, (String) null, false, 65536, false, z3, j4);
    }

    public WebSocketServerProtocolHandler(String str, String str2) {
        this(str, str2, (long) c.f47286a);
    }

    public WebSocketServerProtocolHandler(String str, String str2, long j4) {
        this(str, str2, false, j4);
    }

    public WebSocketServerProtocolHandler(String str, String str2, boolean z3) {
        this(str, str2, z3, (long) c.f47286a);
    }

    public WebSocketServerProtocolHandler(String str, String str2, boolean z3, long j4) {
        this(str, str2, z3, 65536, j4);
    }

    public WebSocketServerProtocolHandler(String str, String str2, boolean z3, int i2) {
        this(str, str2, z3, i2, (long) c.f47286a);
    }

    public WebSocketServerProtocolHandler(String str, String str2, boolean z3, int i2, long j4) {
        this(str, str2, z3, i2, false, j4);
    }

    public WebSocketServerProtocolHandler(String str, String str2, boolean z3, int i2, boolean z4) {
        this(str, str2, z3, i2, z4, (long) c.f47286a);
    }

    public WebSocketServerProtocolHandler(String str, String str2, boolean z3, int i2, boolean z4, long j4) {
        this(str, str2, z3, i2, z4, false, j4);
    }

    public WebSocketServerProtocolHandler(String str, String str2, boolean z3, int i2, boolean z4, boolean z5) {
        this(str, str2, z3, i2, z4, z5, (long) c.f47286a);
    }

    public WebSocketServerProtocolHandler(String str, String str2, boolean z3, int i2, boolean z4, boolean z5, long j4) {
        this(str, str2, z3, i2, z4, z5, true, j4);
    }

    public WebSocketServerProtocolHandler(String str, String str2, boolean z3, int i2, boolean z4, boolean z5, boolean z6) {
        this(str, str2, z3, i2, z4, z5, z6, c.f47286a);
    }

    public WebSocketServerProtocolHandler(String str, String str2, boolean z3, int i2, boolean z4, boolean z5, boolean z6, long j4) {
        this(str, str2, z5, z6, j4, WebSocketDecoderConfig.newBuilder().maxFramePayloadLength(i2).allowMaskMismatch(z4).allowExtensions(z3).build());
    }

    public WebSocketServerProtocolHandler(String str, String str2, boolean z3, boolean z4, long j4, WebSocketDecoderConfig webSocketDecoderConfig) {
        this(WebSocketServerProtocolConfig.newBuilder().websocketPath(str).subprotocols(str2).checkStartsWith(z3).handshakeTimeoutMillis(j4).dropPongFrames(z4).decoderConfig(webSocketDecoderConfig).build());
    }
}
