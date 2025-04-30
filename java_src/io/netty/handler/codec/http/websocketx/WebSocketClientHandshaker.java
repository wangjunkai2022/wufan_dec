package io.netty.handler.codec.http.websocketx;

import com.join.mgps.data.c;
import io.netty.channel.Channel;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelFutureListener;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelPipeline;
import io.netty.channel.ChannelPromise;
import io.netty.channel.SimpleChannelInboundHandler;
import io.netty.handler.codec.http.FullHttpRequest;
import io.netty.handler.codec.http.FullHttpResponse;
import io.netty.handler.codec.http.HttpClientCodec;
import io.netty.handler.codec.http.HttpHeaders;
import io.netty.handler.codec.http.HttpObjectAggregator;
import io.netty.handler.codec.http.HttpRequestEncoder;
import io.netty.handler.codec.http.HttpResponse;
import io.netty.handler.codec.http.HttpResponseDecoder;
import io.netty.handler.codec.http.HttpScheme;
import io.netty.util.NetUtil;
import io.netty.util.ReferenceCountUtil;
import io.netty.util.concurrent.Future;
import io.netty.util.concurrent.GenericFutureListener;
import io.netty.util.internal.ObjectUtil;
import java.net.URI;
import java.nio.channels.ClosedChannelException;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import net.lingala.zip4j.util.e;
/* loaded from: classes5.dex */
public abstract class WebSocketClientHandshaker {
    protected static final int DEFAULT_FORCE_CLOSE_TIMEOUT_MILLIS = 10000;
    private final boolean absoluteUpgradeUrl;
    private volatile String actualSubprotocol;
    protected final HttpHeaders customHeaders;
    private final String expectedSubprotocol;
    private volatile boolean forceCloseComplete;
    private volatile int forceCloseInit;
    private volatile long forceCloseTimeoutMillis;
    private volatile boolean handshakeComplete;
    private final int maxFramePayloadLength;
    private final URI uri;
    private final WebSocketVersion version;
    private static final String HTTP_SCHEME_PREFIX = HttpScheme.HTTP + "://";
    private static final String HTTPS_SCHEME_PREFIX = HttpScheme.HTTPS + "://";
    private static final AtomicIntegerFieldUpdater<WebSocketClientHandshaker> FORCE_CLOSE_INIT_UPDATER = AtomicIntegerFieldUpdater.newUpdater(WebSocketClientHandshaker.class, "forceCloseInit");

    protected WebSocketClientHandshaker(URI uri, WebSocketVersion webSocketVersion, String str, HttpHeaders httpHeaders, int i2) {
        this(uri, webSocketVersion, str, httpHeaders, i2, c.f47286a);
    }

    private void applyForceCloseTimeout(final Channel channel, ChannelFuture channelFuture) {
        final long j4 = this.forceCloseTimeoutMillis;
        if (j4 > 0 && channel.isActive() && this.forceCloseInit == 0) {
            channelFuture.addListener((GenericFutureListener<? extends Future<? super Void>>) new ChannelFutureListener() { // from class: io.netty.handler.codec.http.websocketx.WebSocketClientHandshaker.5
                @Override // io.netty.util.concurrent.GenericFutureListener
                public void operationComplete(ChannelFuture channelFuture2) throws Exception {
                    if (channelFuture2.isSuccess() && channel.isActive() && WebSocketClientHandshaker.FORCE_CLOSE_INIT_UPDATER.compareAndSet(this, 0, 1)) {
                        final io.netty.util.concurrent.c<?> schedule = channel.eventLoop().schedule(new Runnable() { // from class: io.netty.handler.codec.http.websocketx.WebSocketClientHandshaker.5.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (channel.isActive()) {
                                    channel.close();
                                    WebSocketClientHandshaker.this.forceCloseComplete = true;
                                }
                            }
                        }, j4, TimeUnit.MILLISECONDS);
                        channel.closeFuture().addListener((GenericFutureListener<? extends Future<? super Void>>) new ChannelFutureListener() { // from class: io.netty.handler.codec.http.websocketx.WebSocketClientHandshaker.5.2
                            @Override // io.netty.util.concurrent.GenericFutureListener
                            public void operationComplete(ChannelFuture channelFuture3) throws Exception {
                                schedule.cancel(false);
                            }
                        });
                    }
                }
            });
        }
    }

    private void setActualSubprotocol(String str) {
        this.actualSubprotocol = str;
    }

    private void setHandshakeComplete() {
        this.handshakeComplete = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static CharSequence websocketHostValue(URI uri) {
        int port = uri.getPort();
        if (port == -1) {
            return uri.getHost();
        }
        String host = uri.getHost();
        String scheme = uri.getScheme();
        HttpScheme httpScheme = HttpScheme.HTTP;
        if (port == httpScheme.port()) {
            return (httpScheme.name().contentEquals(scheme) || WebSocketScheme.WS.name().contentEquals(scheme)) ? host : NetUtil.toSocketAddressString(host, port);
        }
        HttpScheme httpScheme2 = HttpScheme.HTTPS;
        if (port == httpScheme2.port()) {
            return (httpScheme2.name().contentEquals(scheme) || WebSocketScheme.WSS.name().contentEquals(scheme)) ? host : NetUtil.toSocketAddressString(host, port);
        }
        return NetUtil.toSocketAddressString(host, port);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static CharSequence websocketOriginValue(URI uri) {
        String str;
        int port;
        String scheme = uri.getScheme();
        int port2 = uri.getPort();
        WebSocketScheme webSocketScheme = WebSocketScheme.WSS;
        if (!webSocketScheme.name().contentEquals(scheme) && !HttpScheme.HTTPS.name().contentEquals(scheme) && (scheme != null || port2 != webSocketScheme.port())) {
            str = HTTP_SCHEME_PREFIX;
            port = WebSocketScheme.WS.port();
        } else {
            str = HTTPS_SCHEME_PREFIX;
            port = webSocketScheme.port();
        }
        String lowerCase = uri.getHost().toLowerCase(Locale.US);
        if (port2 != port && port2 != -1) {
            return str + NetUtil.toSocketAddressString(lowerCase, port2);
        }
        return str + lowerCase;
    }

    public String actualSubprotocol() {
        return this.actualSubprotocol;
    }

    public ChannelFuture close(Channel channel, CloseWebSocketFrame closeWebSocketFrame) {
        ObjectUtil.checkNotNull(channel, "channel");
        return close(channel, closeWebSocketFrame, channel.newPromise());
    }

    public String expectedSubprotocol() {
        return this.expectedSubprotocol;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00da  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void finishHandshake(io.netty.channel.Channel r8, io.netty.handler.codec.http.FullHttpResponse r9) {
        /*
            r7 = this;
            java.lang.Class<io.netty.handler.codec.http.HttpRequestEncoder> r0 = io.netty.handler.codec.http.HttpRequestEncoder.class
            r7.verify(r9)
            io.netty.handler.codec.http.HttpHeaders r9 = r9.headers()
            io.netty.util.AsciiString r1 = io.netty.handler.codec.http.HttpHeaderNames.SEC_WEBSOCKET_PROTOCOL
            java.lang.String r9 = r9.get(r1)
            if (r9 == 0) goto L16
            java.lang.String r9 = r9.trim()
            goto L17
        L16:
            r9 = 0
        L17:
            java.lang.String r1 = r7.expectedSubprotocol
            if (r1 == 0) goto L1c
            goto L1e
        L1c:
            java.lang.String r1 = ""
        L1e:
            boolean r2 = r1.isEmpty()
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L2f
            if (r9 != 0) goto L2f
            java.lang.String r1 = r7.expectedSubprotocol
            r7.setActualSubprotocol(r1)
        L2d:
            r1 = 1
            goto L5b
        L2f:
            boolean r2 = r1.isEmpty()
            if (r2 != 0) goto L5a
            if (r9 == 0) goto L5a
            boolean r2 = r9.isEmpty()
            if (r2 != 0) goto L5a
            java.lang.String r2 = ","
            java.lang.String[] r1 = r1.split(r2)
            int r2 = r1.length
            r5 = 0
        L45:
            if (r5 >= r2) goto L5a
            r6 = r1[r5]
            java.lang.String r6 = r6.trim()
            boolean r6 = r6.equals(r9)
            if (r6 == 0) goto L57
            r7.setActualSubprotocol(r9)
            goto L2d
        L57:
            int r5 = r5 + 1
            goto L45
        L5a:
            r1 = 0
        L5b:
            if (r1 == 0) goto Lda
            r7.setHandshakeComplete()
            io.netty.channel.ChannelPipeline r9 = r8.pipeline()
            java.lang.Class<io.netty.handler.codec.http.HttpContentDecompressor> r1 = io.netty.handler.codec.http.HttpContentDecompressor.class
            io.netty.channel.ChannelHandler r1 = r9.get(r1)
            io.netty.handler.codec.http.HttpContentDecompressor r1 = (io.netty.handler.codec.http.HttpContentDecompressor) r1
            if (r1 == 0) goto L71
            r9.remove(r1)
        L71:
            java.lang.Class<io.netty.handler.codec.http.HttpObjectAggregator> r1 = io.netty.handler.codec.http.HttpObjectAggregator.class
            io.netty.channel.ChannelHandler r1 = r9.get(r1)
            io.netty.handler.codec.http.HttpObjectAggregator r1 = (io.netty.handler.codec.http.HttpObjectAggregator) r1
            if (r1 == 0) goto L7e
            r9.remove(r1)
        L7e:
            java.lang.Class<io.netty.handler.codec.http.HttpResponseDecoder> r1 = io.netty.handler.codec.http.HttpResponseDecoder.class
            io.netty.channel.ChannelHandlerContext r1 = r9.context(r1)
            java.lang.String r2 = "ws-decoder"
            if (r1 != 0) goto Lb9
            java.lang.Class<io.netty.handler.codec.http.HttpClientCodec> r0 = io.netty.handler.codec.http.HttpClientCodec.class
            io.netty.channel.ChannelHandlerContext r0 = r9.context(r0)
            if (r0 == 0) goto Lb1
            io.netty.channel.ChannelHandler r1 = r0.handler()
            io.netty.handler.codec.http.HttpClientCodec r1 = (io.netty.handler.codec.http.HttpClientCodec) r1
            r1.removeOutboundHandler()
            java.lang.String r0 = r0.name()
            io.netty.handler.codec.http.websocketx.a r3 = r7.newWebsocketDecoder()
            r9.addAfter(r0, r2, r3)
            io.netty.channel.EventLoop r8 = r8.eventLoop()
            io.netty.handler.codec.http.websocketx.WebSocketClientHandshaker$2 r0 = new io.netty.handler.codec.http.websocketx.WebSocketClientHandshaker$2
            r0.<init>()
            r8.execute(r0)
            goto Ld9
        Lb1:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "ChannelPipeline does not contain an HttpRequestEncoder or HttpClientCodec"
            r8.<init>(r9)
            throw r8
        Lb9:
            io.netty.channel.ChannelHandler r3 = r9.get(r0)
            if (r3 == 0) goto Lc2
            r9.remove(r0)
        Lc2:
            java.lang.String r0 = r1.name()
            io.netty.handler.codec.http.websocketx.a r3 = r7.newWebsocketDecoder()
            r9.addAfter(r0, r2, r3)
            io.netty.channel.EventLoop r8 = r8.eventLoop()
            io.netty.handler.codec.http.websocketx.WebSocketClientHandshaker$3 r0 = new io.netty.handler.codec.http.websocketx.WebSocketClientHandshaker$3
            r0.<init>()
            r8.execute(r0)
        Ld9:
            return
        Lda:
            io.netty.handler.codec.http.websocketx.WebSocketHandshakeException r8 = new io.netty.handler.codec.http.websocketx.WebSocketHandshakeException
            r0 = 2
            java.lang.Object[] r0 = new java.lang.Object[r0]
            r0[r3] = r9
            java.lang.String r9 = r7.expectedSubprotocol
            r0[r4] = r9
            java.lang.String r9 = "Invalid subprotocol. Actual: %s. Expected one of: %s"
            java.lang.String r9 = java.lang.String.format(r9, r0)
            r8.<init>(r9)
            goto Lf0
        Lef:
            throw r8
        Lf0:
            goto Lef
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.handler.codec.http.websocketx.WebSocketClientHandshaker.finishHandshake(io.netty.channel.Channel, io.netty.handler.codec.http.FullHttpResponse):void");
    }

    public long forceCloseTimeoutMillis() {
        return this.forceCloseTimeoutMillis;
    }

    public ChannelFuture handshake(Channel channel) {
        ObjectUtil.checkNotNull(channel, "channel");
        return handshake(channel, channel.newPromise());
    }

    protected boolean isForceCloseComplete() {
        return this.forceCloseComplete;
    }

    public boolean isHandshakeComplete() {
        return this.handshakeComplete;
    }

    public int maxFramePayloadLength() {
        return this.maxFramePayloadLength;
    }

    protected abstract FullHttpRequest newHandshakeRequest();

    protected abstract b newWebSocketEncoder();

    protected abstract a newWebsocketDecoder();

    public final ChannelFuture processHandshake(Channel channel, HttpResponse httpResponse) {
        return processHandshake(channel, httpResponse, channel.newPromise());
    }

    public WebSocketClientHandshaker setForceCloseTimeoutMillis(long j4) {
        this.forceCloseTimeoutMillis = j4;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String upgradeUrl(URI uri) {
        if (this.absoluteUpgradeUrl) {
            return uri.toString();
        }
        String rawPath = uri.getRawPath();
        String rawQuery = uri.getRawQuery();
        if (rawQuery != null && !rawQuery.isEmpty()) {
            rawPath = rawPath + '?' + rawQuery;
        }
        return (rawPath == null || rawPath.isEmpty()) ? e.F0 : rawPath;
    }

    public URI uri() {
        return this.uri;
    }

    protected abstract void verify(FullHttpResponse fullHttpResponse);

    public WebSocketVersion version() {
        return this.version;
    }

    protected WebSocketClientHandshaker(URI uri, WebSocketVersion webSocketVersion, String str, HttpHeaders httpHeaders, int i2, long j4) {
        this(uri, webSocketVersion, str, httpHeaders, i2, j4, false);
    }

    public final ChannelFuture processHandshake(final Channel channel, HttpResponse httpResponse, final ChannelPromise channelPromise) {
        if (httpResponse instanceof FullHttpResponse) {
            try {
                finishHandshake(channel, (FullHttpResponse) httpResponse);
                channelPromise.setSuccess();
            } catch (Throwable th) {
                channelPromise.setFailure(th);
            }
        } else {
            ChannelPipeline pipeline = channel.pipeline();
            ChannelHandlerContext context = pipeline.context(HttpResponseDecoder.class);
            if (context == null && (context = pipeline.context(HttpClientCodec.class)) == null) {
                return channelPromise.setFailure((Throwable) new IllegalStateException("ChannelPipeline does not contain an HttpResponseDecoder or HttpClientCodec"));
            }
            pipeline.addAfter(context.name(), "httpAggregator", new HttpObjectAggregator(8192));
            pipeline.addAfter("httpAggregator", "handshaker", new SimpleChannelInboundHandler<FullHttpResponse>() { // from class: io.netty.handler.codec.http.websocketx.WebSocketClientHandshaker.4
                @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
                public void channelInactive(ChannelHandlerContext channelHandlerContext) throws Exception {
                    if (!channelPromise.isDone()) {
                        channelPromise.tryFailure(new ClosedChannelException());
                    }
                    channelHandlerContext.fireChannelInactive();
                }

                @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelHandlerAdapter, io.netty.channel.ChannelHandler, io.netty.channel.ChannelInboundHandler
                public void exceptionCaught(ChannelHandlerContext channelHandlerContext, Throwable th2) throws Exception {
                    channelHandlerContext.pipeline().remove(this);
                    channelPromise.setFailure(th2);
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // io.netty.channel.SimpleChannelInboundHandler
                public void channelRead0(ChannelHandlerContext channelHandlerContext, FullHttpResponse fullHttpResponse) throws Exception {
                    channelHandlerContext.pipeline().remove(this);
                    try {
                        WebSocketClientHandshaker.this.finishHandshake(channel, fullHttpResponse);
                        channelPromise.setSuccess();
                    } catch (Throwable th2) {
                        channelPromise.setFailure(th2);
                    }
                }
            });
            try {
                context.fireChannelRead(ReferenceCountUtil.retain(httpResponse));
            } catch (Throwable th2) {
                channelPromise.setFailure(th2);
            }
        }
        return channelPromise;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public WebSocketClientHandshaker(URI uri, WebSocketVersion webSocketVersion, String str, HttpHeaders httpHeaders, int i2, long j4, boolean z3) {
        this.forceCloseTimeoutMillis = c.f47286a;
        this.uri = uri;
        this.version = webSocketVersion;
        this.expectedSubprotocol = str;
        this.customHeaders = httpHeaders;
        this.maxFramePayloadLength = i2;
        this.forceCloseTimeoutMillis = j4;
        this.absoluteUpgradeUrl = z3;
    }

    public ChannelFuture close(Channel channel, CloseWebSocketFrame closeWebSocketFrame, ChannelPromise channelPromise) {
        ObjectUtil.checkNotNull(channel, "channel");
        channel.writeAndFlush(closeWebSocketFrame, channelPromise);
        applyForceCloseTimeout(channel, channelPromise);
        return channelPromise;
    }

    public final ChannelFuture handshake(Channel channel, final ChannelPromise channelPromise) {
        ChannelPipeline pipeline = channel.pipeline();
        if (((HttpResponseDecoder) pipeline.get(HttpResponseDecoder.class)) == null && ((HttpClientCodec) pipeline.get(HttpClientCodec.class)) == null) {
            channelPromise.setFailure((Throwable) new IllegalStateException("ChannelPipeline does not contain an HttpResponseDecoder or HttpClientCodec"));
            return channelPromise;
        }
        channel.writeAndFlush(newHandshakeRequest()).addListener((GenericFutureListener<? extends Future<? super Void>>) new ChannelFutureListener() { // from class: io.netty.handler.codec.http.websocketx.WebSocketClientHandshaker.1
            @Override // io.netty.util.concurrent.GenericFutureListener
            public void operationComplete(ChannelFuture channelFuture) {
                if (channelFuture.isSuccess()) {
                    ChannelPipeline pipeline2 = channelFuture.channel().pipeline();
                    ChannelHandlerContext context = pipeline2.context(HttpRequestEncoder.class);
                    if (context == null) {
                        context = pipeline2.context(HttpClientCodec.class);
                    }
                    if (context == null) {
                        channelPromise.setFailure((Throwable) new IllegalStateException("ChannelPipeline does not contain an HttpRequestEncoder or HttpClientCodec"));
                        return;
                    }
                    pipeline2.addAfter(context.name(), "ws-encoder", WebSocketClientHandshaker.this.newWebSocketEncoder());
                    channelPromise.setSuccess();
                    return;
                }
                channelPromise.setFailure(channelFuture.cause());
            }
        });
        return channelPromise;
    }
}
