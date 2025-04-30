package io.netty.handler.codec.http.websocketx;

import io.netty.handler.codec.http.HttpHeaders;
import java.net.URI;
/* loaded from: classes5.dex */
public final class WebSocketClientHandshakerFactory {
    private WebSocketClientHandshakerFactory() {
    }

    public static WebSocketClientHandshaker newHandshaker(URI uri, WebSocketVersion webSocketVersion, String str, boolean z3, HttpHeaders httpHeaders) {
        return newHandshaker(uri, webSocketVersion, str, z3, httpHeaders, 65536);
    }

    public static WebSocketClientHandshaker newHandshaker(URI uri, WebSocketVersion webSocketVersion, String str, boolean z3, HttpHeaders httpHeaders, int i2) {
        return newHandshaker(uri, webSocketVersion, str, z3, httpHeaders, i2, true, false);
    }

    public static WebSocketClientHandshaker newHandshaker(URI uri, WebSocketVersion webSocketVersion, String str, boolean z3, HttpHeaders httpHeaders, int i2, boolean z4, boolean z5) {
        return newHandshaker(uri, webSocketVersion, str, z3, httpHeaders, i2, z4, z5, -1L);
    }

    public static WebSocketClientHandshaker newHandshaker(URI uri, WebSocketVersion webSocketVersion, String str, boolean z3, HttpHeaders httpHeaders, int i2, boolean z4, boolean z5, long j4) {
        WebSocketVersion webSocketVersion2 = WebSocketVersion.V13;
        if (webSocketVersion == webSocketVersion2) {
            return new WebSocketClientHandshaker13(uri, webSocketVersion2, str, z3, httpHeaders, i2, z4, z5, j4);
        }
        WebSocketVersion webSocketVersion3 = WebSocketVersion.V08;
        if (webSocketVersion == webSocketVersion3) {
            return new WebSocketClientHandshaker08(uri, webSocketVersion3, str, z3, httpHeaders, i2, z4, z5, j4);
        }
        WebSocketVersion webSocketVersion4 = WebSocketVersion.V07;
        if (webSocketVersion == webSocketVersion4) {
            return new WebSocketClientHandshaker07(uri, webSocketVersion4, str, z3, httpHeaders, i2, z4, z5, j4);
        }
        WebSocketVersion webSocketVersion5 = WebSocketVersion.V00;
        if (webSocketVersion == webSocketVersion5) {
            return new WebSocketClientHandshaker00(uri, webSocketVersion5, str, httpHeaders, i2, j4);
        }
        throw new WebSocketHandshakeException("Protocol version " + webSocketVersion + " not supported.");
    }

    public static WebSocketClientHandshaker newHandshaker(URI uri, WebSocketVersion webSocketVersion, String str, boolean z3, HttpHeaders httpHeaders, int i2, boolean z4, boolean z5, long j4, boolean z6) {
        WebSocketVersion webSocketVersion2 = WebSocketVersion.V13;
        if (webSocketVersion == webSocketVersion2) {
            return new WebSocketClientHandshaker13(uri, webSocketVersion2, str, z3, httpHeaders, i2, z4, z5, j4, z6);
        }
        WebSocketVersion webSocketVersion3 = WebSocketVersion.V08;
        if (webSocketVersion == webSocketVersion3) {
            return new WebSocketClientHandshaker08(uri, webSocketVersion3, str, z3, httpHeaders, i2, z4, z5, j4, z6);
        }
        WebSocketVersion webSocketVersion4 = WebSocketVersion.V07;
        if (webSocketVersion == webSocketVersion4) {
            return new WebSocketClientHandshaker07(uri, webSocketVersion4, str, z3, httpHeaders, i2, z4, z5, j4, z6);
        }
        WebSocketVersion webSocketVersion5 = WebSocketVersion.V00;
        if (webSocketVersion == webSocketVersion5) {
            return new WebSocketClientHandshaker00(uri, webSocketVersion5, str, httpHeaders, i2, j4, z6);
        }
        throw new WebSocketHandshakeException("Protocol version " + webSocketVersion + " not supported.");
    }
}
