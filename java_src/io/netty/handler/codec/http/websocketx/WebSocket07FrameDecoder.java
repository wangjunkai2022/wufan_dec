package io.netty.handler.codec.http.websocketx;
/* loaded from: classes5.dex */
public class WebSocket07FrameDecoder extends WebSocket08FrameDecoder {
    public WebSocket07FrameDecoder(boolean z3, boolean z4, int i2) {
        this(WebSocketDecoderConfig.newBuilder().expectMaskedFrames(z3).allowExtensions(z4).maxFramePayloadLength(i2).build());
    }

    public WebSocket07FrameDecoder(boolean z3, boolean z4, int i2, boolean z5) {
        this(WebSocketDecoderConfig.newBuilder().expectMaskedFrames(z3).allowExtensions(z4).maxFramePayloadLength(i2).allowMaskMismatch(z5).build());
    }

    public WebSocket07FrameDecoder(WebSocketDecoderConfig webSocketDecoderConfig) {
        super(webSocketDecoderConfig);
    }
}
