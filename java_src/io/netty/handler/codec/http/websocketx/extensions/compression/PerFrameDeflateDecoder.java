package io.netty.handler.codec.http.websocketx.extensions.compression;

import io.netty.handler.codec.http.websocketx.BinaryWebSocketFrame;
import io.netty.handler.codec.http.websocketx.ContinuationWebSocketFrame;
import io.netty.handler.codec.http.websocketx.TextWebSocketFrame;
import io.netty.handler.codec.http.websocketx.WebSocketFrame;
import io.netty.handler.codec.http.websocketx.extensions.WebSocketExtensionFilter;
/* loaded from: classes5.dex */
class PerFrameDeflateDecoder extends DeflateDecoder {
    PerFrameDeflateDecoder(boolean z3) {
        super(z3, WebSocketExtensionFilter.NEVER_SKIP);
    }

    @Override // io.netty.handler.codec.MessageToMessageDecoder
    public boolean acceptInboundMessage(Object obj) throws Exception {
        if (super.acceptInboundMessage(obj)) {
            WebSocketFrame webSocketFrame = (WebSocketFrame) obj;
            if (extensionDecoderFilter().mustSkip(webSocketFrame)) {
                return false;
            }
            return ((obj instanceof TextWebSocketFrame) || (obj instanceof BinaryWebSocketFrame) || (obj instanceof ContinuationWebSocketFrame)) && (webSocketFrame.rsv() & 4) > 0;
        }
        return false;
    }

    @Override // io.netty.handler.codec.http.websocketx.extensions.compression.DeflateDecoder
    protected boolean appendFrameTail(WebSocketFrame webSocketFrame) {
        return true;
    }

    @Override // io.netty.handler.codec.http.websocketx.extensions.compression.DeflateDecoder
    protected int newRsv(WebSocketFrame webSocketFrame) {
        return webSocketFrame.rsv() ^ 4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PerFrameDeflateDecoder(boolean z3, WebSocketExtensionFilter webSocketExtensionFilter) {
        super(z3, webSocketExtensionFilter);
    }
}
