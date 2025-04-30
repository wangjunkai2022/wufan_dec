package io.netty.handler.codec.http.cors;

import io.netty.channel.ChannelDuplexHandler;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelFutureListener;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelPromise;
import io.netty.handler.codec.http.DefaultFullHttpResponse;
import io.netty.handler.codec.http.HttpHeaderNames;
import io.netty.handler.codec.http.HttpHeaderValues;
import io.netty.handler.codec.http.HttpHeaders;
import io.netty.handler.codec.http.HttpMethod;
import io.netty.handler.codec.http.HttpRequest;
import io.netty.handler.codec.http.HttpResponse;
import io.netty.handler.codec.http.HttpResponseStatus;
import io.netty.handler.codec.http.HttpUtil;
import io.netty.util.AsciiString;
import io.netty.util.ReferenceCountUtil;
import io.netty.util.concurrent.Future;
import io.netty.util.concurrent.GenericFutureListener;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.util.Collections;
import java.util.List;
/* loaded from: classes5.dex */
public class CorsHandler extends ChannelDuplexHandler {
    private static final String ANY_ORIGIN = "*";
    private static final String NULL_ORIGIN = "null";
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(CorsHandler.class);
    private CorsConfig config;
    private final List<CorsConfig> configList;
    private boolean isShortCircuit;
    private HttpRequest request;

    public CorsHandler(CorsConfig corsConfig) {
        this(Collections.singletonList(ObjectUtil.checkNotNull(corsConfig, "config")), corsConfig.isShortCircuit());
    }

    private void echoRequestOrigin(HttpResponse httpResponse) {
        setOrigin(httpResponse, this.request.headers().get(HttpHeaderNames.ORIGIN));
    }

    private static void forbidden(ChannelHandlerContext channelHandlerContext, HttpRequest httpRequest) {
        DefaultFullHttpResponse defaultFullHttpResponse = new DefaultFullHttpResponse(httpRequest.protocolVersion(), HttpResponseStatus.FORBIDDEN, channelHandlerContext.alloc().buffer(0));
        defaultFullHttpResponse.headers().set(HttpHeaderNames.CONTENT_LENGTH, HttpHeaderValues.ZERO);
        ReferenceCountUtil.release(httpRequest);
        respond(channelHandlerContext, httpRequest, defaultFullHttpResponse);
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x000c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private io.netty.handler.codec.http.cors.CorsConfig getForOrigin(java.lang.String r4) {
        /*
            r3 = this;
            java.util.List<io.netty.handler.codec.http.cors.CorsConfig> r0 = r3.configList
            java.util.Iterator r0 = r0.iterator()
        L6:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L33
            java.lang.Object r1 = r0.next()
            io.netty.handler.codec.http.cors.CorsConfig r1 = (io.netty.handler.codec.http.cors.CorsConfig) r1
            boolean r2 = r1.isAnyOriginSupported()
            if (r2 == 0) goto L19
            return r1
        L19:
            java.util.Set r2 = r1.origins()
            boolean r2 = r2.contains(r4)
            if (r2 == 0) goto L24
            return r1
        L24:
            boolean r2 = r1.isNullOriginAllowed()
            if (r2 != 0) goto L32
            java.lang.String r2 = "null"
            boolean r2 = r2.equals(r4)
            if (r2 == 0) goto L6
        L32:
            return r1
        L33:
            r4 = 0
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.handler.codec.http.cors.CorsHandler.getForOrigin(java.lang.String):io.netty.handler.codec.http.cors.CorsConfig");
    }

    private void handlePreflight(ChannelHandlerContext channelHandlerContext, HttpRequest httpRequest) {
        DefaultFullHttpResponse defaultFullHttpResponse = new DefaultFullHttpResponse(httpRequest.protocolVersion(), HttpResponseStatus.OK, true, true);
        if (setOrigin(defaultFullHttpResponse)) {
            setAllowMethods(defaultFullHttpResponse);
            setAllowHeaders(defaultFullHttpResponse);
            setAllowCredentials(defaultFullHttpResponse);
            setMaxAge(defaultFullHttpResponse);
            setPreflightHeaders(defaultFullHttpResponse);
        }
        HttpHeaders headers = defaultFullHttpResponse.headers();
        AsciiString asciiString = HttpHeaderNames.CONTENT_LENGTH;
        if (!headers.contains(asciiString)) {
            defaultFullHttpResponse.headers().set(asciiString, HttpHeaderValues.ZERO);
        }
        ReferenceCountUtil.release(httpRequest);
        respond(channelHandlerContext, httpRequest, defaultFullHttpResponse);
    }

    private static boolean isPreflightRequest(HttpRequest httpRequest) {
        HttpHeaders headers = httpRequest.headers();
        return HttpMethod.OPTIONS.equals(httpRequest.method()) && headers.contains(HttpHeaderNames.ORIGIN) && headers.contains(HttpHeaderNames.ACCESS_CONTROL_REQUEST_METHOD);
    }

    private static void respond(ChannelHandlerContext channelHandlerContext, HttpRequest httpRequest, HttpResponse httpResponse) {
        boolean isKeepAlive = HttpUtil.isKeepAlive(httpRequest);
        HttpUtil.setKeepAlive(httpResponse, isKeepAlive);
        ChannelFuture writeAndFlush = channelHandlerContext.writeAndFlush(httpResponse);
        if (isKeepAlive) {
            return;
        }
        writeAndFlush.addListener((GenericFutureListener<? extends Future<? super Void>>) ChannelFutureListener.CLOSE);
    }

    private void setAllowCredentials(HttpResponse httpResponse) {
        if (!this.config.isCredentialsAllowed() || httpResponse.headers().get(HttpHeaderNames.ACCESS_CONTROL_ALLOW_ORIGIN).equals("*")) {
            return;
        }
        httpResponse.headers().set(HttpHeaderNames.ACCESS_CONTROL_ALLOW_CREDENTIALS, "true");
    }

    private void setAllowHeaders(HttpResponse httpResponse) {
        httpResponse.headers().set((CharSequence) HttpHeaderNames.ACCESS_CONTROL_ALLOW_HEADERS, (Iterable<?>) this.config.allowedRequestHeaders());
    }

    private void setAllowMethods(HttpResponse httpResponse) {
        httpResponse.headers().set((CharSequence) HttpHeaderNames.ACCESS_CONTROL_ALLOW_METHODS, (Iterable<?>) this.config.allowedRequestMethods());
    }

    private static void setAnyOrigin(HttpResponse httpResponse) {
        setOrigin(httpResponse, "*");
    }

    private void setExposeHeaders(HttpResponse httpResponse) {
        if (this.config.exposedHeaders().isEmpty()) {
            return;
        }
        httpResponse.headers().set((CharSequence) HttpHeaderNames.ACCESS_CONTROL_EXPOSE_HEADERS, (Iterable<?>) this.config.exposedHeaders());
    }

    private void setMaxAge(HttpResponse httpResponse) {
        httpResponse.headers().set(HttpHeaderNames.ACCESS_CONTROL_MAX_AGE, Long.valueOf(this.config.maxAge()));
    }

    private static void setNullOrigin(HttpResponse httpResponse) {
        setOrigin(httpResponse, NULL_ORIGIN);
    }

    private boolean setOrigin(HttpResponse httpResponse) {
        String str = this.request.headers().get(HttpHeaderNames.ORIGIN);
        if (str == null || this.config == null) {
            return false;
        }
        if (NULL_ORIGIN.equals(str) && this.config.isNullOriginAllowed()) {
            setNullOrigin(httpResponse);
            return true;
        } else if (this.config.isAnyOriginSupported()) {
            if (this.config.isCredentialsAllowed()) {
                echoRequestOrigin(httpResponse);
                setVaryHeader(httpResponse);
            } else {
                setAnyOrigin(httpResponse);
            }
            return true;
        } else if (this.config.origins().contains(str)) {
            setOrigin(httpResponse, str);
            setVaryHeader(httpResponse);
            return true;
        } else {
            logger.debug("Request origin [{}]] was not among the configured origins [{}]", str, this.config.origins());
            return false;
        }
    }

    private void setPreflightHeaders(HttpResponse httpResponse) {
        httpResponse.headers().add(this.config.preflightResponseHeaders());
    }

    private static void setVaryHeader(HttpResponse httpResponse) {
        httpResponse.headers().set(HttpHeaderNames.VARY, HttpHeaderNames.ORIGIN);
    }

    @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
    public void channelRead(ChannelHandlerContext channelHandlerContext, Object obj) throws Exception {
        if (obj instanceof HttpRequest) {
            HttpRequest httpRequest = (HttpRequest) obj;
            this.request = httpRequest;
            String str = httpRequest.headers().get(HttpHeaderNames.ORIGIN);
            this.config = getForOrigin(str);
            if (isPreflightRequest(this.request)) {
                handlePreflight(channelHandlerContext, this.request);
                return;
            } else if (this.isShortCircuit && str != null && this.config == null) {
                forbidden(channelHandlerContext, this.request);
                return;
            }
        }
        channelHandlerContext.fireChannelRead(obj);
    }

    @Override // io.netty.channel.ChannelDuplexHandler, io.netty.channel.ChannelOutboundHandler
    public void write(ChannelHandlerContext channelHandlerContext, Object obj, ChannelPromise channelPromise) throws Exception {
        CorsConfig corsConfig = this.config;
        if (corsConfig != null && corsConfig.isCorsSupportEnabled() && (obj instanceof HttpResponse)) {
            HttpResponse httpResponse = (HttpResponse) obj;
            if (setOrigin(httpResponse)) {
                setAllowCredentials(httpResponse);
                setExposeHeaders(httpResponse);
            }
        }
        channelHandlerContext.write(obj, channelPromise);
    }

    public CorsHandler(List<CorsConfig> list, boolean z3) {
        ObjectUtil.checkNonEmpty(list, "configList");
        this.configList = list;
        this.isShortCircuit = z3;
    }

    private static void setOrigin(HttpResponse httpResponse, String str) {
        httpResponse.headers().set(HttpHeaderNames.ACCESS_CONTROL_ALLOW_ORIGIN, str);
    }
}
