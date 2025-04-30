package io.netty.handler.codec.http.websocketx;
/* loaded from: classes5.dex */
public class WebSocket13FrameDecoder extends WebSocket08FrameDecoder {
    public WebSocket13FrameDecoder(boolean z3, boolean z4, int i2) {
        this(z3, z4, i2, false);
    }

    public WebSocket13FrameDecoder(boolean z3, boolean z4, int i2, boolean z5) {
        this(WebSocketDecoderConfig.newBuilder().expectMaskedFrames(z3).allowExtensions(z4).maxFramePayloadLength(i2).allowMaskMismatch(z5).build());
    }

    public WebSocket13FrameDecoder(WebSocketDecoderConfig webSocketDecoderConfig) {
        super(webSocketDecoderConfig);
    }
}
