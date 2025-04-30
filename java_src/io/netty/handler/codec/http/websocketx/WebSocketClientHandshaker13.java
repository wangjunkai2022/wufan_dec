package io.netty.handler.codec.http.websocketx;

import com.join.mgps.data.c;
import io.netty.buffer.Unpooled;
import io.netty.handler.codec.http.DefaultFullHttpRequest;
import io.netty.handler.codec.http.FullHttpRequest;
import io.netty.handler.codec.http.FullHttpResponse;
import io.netty.handler.codec.http.HttpHeaderNames;
import io.netty.handler.codec.http.HttpHeaderValues;
import io.netty.handler.codec.http.HttpHeaders;
import io.netty.handler.codec.http.HttpMethod;
import io.netty.handler.codec.http.HttpResponseStatus;
import io.netty.handler.codec.http.HttpVersion;
import io.netty.util.AsciiString;
import io.netty.util.CharsetUtil;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.net.URI;
/* loaded from: classes5.dex */
public class WebSocketClientHandshaker13 extends WebSocketClientHandshaker {
    public static final String MAGIC_GUID = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11";
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(WebSocketClientHandshaker13.class);
    private final boolean allowExtensions;
    private final boolean allowMaskMismatch;
    private String expectedChallengeResponseString;
    private final boolean performMasking;

    public WebSocketClientHandshaker13(URI uri, WebSocketVersion webSocketVersion, String str, boolean z3, HttpHeaders httpHeaders, int i2) {
        this(uri, webSocketVersion, str, z3, httpHeaders, i2, true, false);
    }

    @Override // io.netty.handler.codec.http.websocketx.WebSocketClientHandshaker
    protected FullHttpRequest newHandshakeRequest() {
        URI uri = uri();
        String base64 = WebSocketUtil.base64(WebSocketUtil.randomBytes(16));
        this.expectedChallengeResponseString = WebSocketUtil.base64(WebSocketUtil.sha1((base64 + "258EAFA5-E914-47DA-95CA-C5AB0DC85B11").getBytes(CharsetUtil.US_ASCII)));
        InternalLogger internalLogger = logger;
        if (internalLogger.isDebugEnabled()) {
            internalLogger.debug("WebSocket version 13 client handshake key: {}, expected response: {}", base64, this.expectedChallengeResponseString);
        }
        DefaultFullHttpRequest defaultFullHttpRequest = new DefaultFullHttpRequest(HttpVersion.HTTP_1_1, HttpMethod.GET, upgradeUrl(uri), Unpooled.EMPTY_BUFFER);
        HttpHeaders headers = defaultFullHttpRequest.headers();
        HttpHeaders httpHeaders = this.customHeaders;
        if (httpHeaders != null) {
            headers.add(httpHeaders);
        }
        headers.set(HttpHeaderNames.UPGRADE, HttpHeaderValues.WEBSOCKET).set(HttpHeaderNames.CONNECTION, HttpHeaderValues.UPGRADE).set(HttpHeaderNames.SEC_WEBSOCKET_KEY, base64).set(HttpHeaderNames.HOST, WebSocketClientHandshaker.websocketHostValue(uri));
        AsciiString asciiString = HttpHeaderNames.ORIGIN;
        if (!headers.contains(asciiString)) {
            headers.set(asciiString, WebSocketClientHandshaker.websocketOriginValue(uri));
        }
        String expectedSubprotocol = expectedSubprotocol();
        if (expectedSubprotocol != null && !expectedSubprotocol.isEmpty()) {
            headers.set(HttpHeaderNames.SEC_WEBSOCKET_PROTOCOL, expectedSubprotocol);
        }
        headers.set(HttpHeaderNames.SEC_WEBSOCKET_VERSION, "13");
        return defaultFullHttpRequest;
    }

    @Override // io.netty.handler.codec.http.websocketx.WebSocketClientHandshaker
    protected b newWebSocketEncoder() {
        return new WebSocket13FrameEncoder(this.performMasking);
    }

    @Override // io.netty.handler.codec.http.websocketx.WebSocketClientHandshaker
    protected a newWebsocketDecoder() {
        return new WebSocket13FrameDecoder(false, this.allowExtensions, maxFramePayloadLength(), this.allowMaskMismatch);
    }

    @Override // io.netty.handler.codec.http.websocketx.WebSocketClientHandshaker
    protected void verify(FullHttpResponse fullHttpResponse) {
        HttpResponseStatus httpResponseStatus = HttpResponseStatus.SWITCHING_PROTOCOLS;
        HttpHeaders headers = fullHttpResponse.headers();
        if (fullHttpResponse.status().equals(httpResponseStatus)) {
            String str = headers.get(HttpHeaderNames.UPGRADE);
            if (HttpHeaderValues.WEBSOCKET.contentEqualsIgnoreCase(str)) {
                AsciiString asciiString = HttpHeaderNames.CONNECTION;
                if (headers.containsValue(asciiString, HttpHeaderValues.UPGRADE, true)) {
                    String str2 = headers.get(HttpHeaderNames.SEC_WEBSOCKET_ACCEPT);
                    if (str2 == null || !str2.equals(this.expectedChallengeResponseString)) {
                        throw new WebSocketHandshakeException(String.format("Invalid challenge. Actual: %s. Expected: %s", str2, this.expectedChallengeResponseString));
                    }
                    return;
                }
                throw new WebSocketHandshakeException("Invalid handshake response connection: " + headers.get(asciiString));
            }
            throw new WebSocketHandshakeException("Invalid handshake response upgrade: " + ((Object) str));
        }
        throw new WebSocketHandshakeException("Invalid handshake response getStatus: " + fullHttpResponse.status());
    }

    public WebSocketClientHandshaker13(URI uri, WebSocketVersion webSocketVersion, String str, boolean z3, HttpHeaders httpHeaders, int i2, boolean z4, boolean z5) {
        this(uri, webSocketVersion, str, z3, httpHeaders, i2, z4, z5, c.f47286a);
    }

    @Override // io.netty.handler.codec.http.websocketx.WebSocketClientHandshaker
    public WebSocketClientHandshaker13 setForceCloseTimeoutMillis(long j4) {
        super.setForceCloseTimeoutMillis(j4);
        return this;
    }

    public WebSocketClientHandshaker13(URI uri, WebSocketVersion webSocketVersion, String str, boolean z3, HttpHeaders httpHeaders, int i2, boolean z4, boolean z5, long j4) {
        this(uri, webSocketVersion, str, z3, httpHeaders, i2, z4, z5, j4, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public WebSocketClientHandshaker13(URI uri, WebSocketVersion webSocketVersion, String str, boolean z3, HttpHeaders httpHeaders, int i2, boolean z4, boolean z5, long j4, boolean z6) {
        super(uri, webSocketVersion, str, httpHeaders, i2, j4, z6);
        this.allowExtensions = z3;
        this.performMasking = z4;
        this.allowMaskMismatch = z5;
    }
}
