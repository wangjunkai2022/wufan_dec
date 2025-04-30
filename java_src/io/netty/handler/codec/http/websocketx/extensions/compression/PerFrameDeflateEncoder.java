package io.netty.handler.codec.http.websocketx.extensions.compression;

import io.netty.handler.codec.http.websocketx.BinaryWebSocketFrame;
import io.netty.handler.codec.http.websocketx.ContinuationWebSocketFrame;
import io.netty.handler.codec.http.websocketx.TextWebSocketFrame;
import io.netty.handler.codec.http.websocketx.WebSocketFrame;
import io.netty.handler.codec.http.websocketx.extensions.WebSocketExtensionFilter;
/* loaded from: classes5.dex */
class PerFrameDeflateEncoder extends DeflateEncoder {
    PerFrameDeflateEncoder(int i2, int i4, boolean z3) {
        super(i2, i4, z3, WebSocketExtensionFilter.NEVER_SKIP);
    }

    @Override // io.netty.handler.codec.MessageToMessageEncoder
    public boolean acceptOutboundMessage(Object obj) throws Exception {
        if (super.acceptOutboundMessage(obj)) {
            WebSocketFrame webSocketFrame = (WebSocketFrame) obj;
            if (extensionEncoderFilter().mustSkip(webSocketFrame)) {
                return false;
            }
            return ((obj instanceof TextWebSocketFrame) || (obj instanceof BinaryWebSocketFrame) || (obj instanceof ContinuationWebSocketFrame)) && webSocketFrame.content().readableBytes() > 0 && (webSocketFrame.rsv() & 4) == 0;
        }
        return false;
    }

    @Override // io.netty.handler.codec.http.websocketx.extensions.compression.DeflateEncoder
    protected boolean removeFrameTail(WebSocketFrame webSocketFrame) {
        return true;
    }

    @Override // io.netty.handler.codec.http.websocketx.extensions.compression.DeflateEncoder
    protected int rsv(WebSocketFrame webSocketFrame) {
        return webSocketFrame.rsv() | 4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PerFrameDeflateEncoder(int i2, int i4, boolean z3, WebSocketExtensionFilter webSocketExtensionFilter) {
        super(i2, i4, z3, webSocketExtensionFilter);
    }
}
