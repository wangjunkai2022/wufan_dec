package io.netty.handler.codec.http.websocketx.extensions;
/* loaded from: classes5.dex */
public interface WebSocketClientExtensionHandshaker {
    a handshakeExtension(WebSocketExtensionData webSocketExtensionData);

    WebSocketExtensionData newRequestData();
}
