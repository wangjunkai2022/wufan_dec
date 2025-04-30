package io.netty.handler.codec.http.websocketx.extensions.compression;

import io.netty.handler.codec.http.websocketx.extensions.WebSocketClientExtensionHandshaker;
import io.netty.handler.codec.http.websocketx.extensions.WebSocketExtensionData;
import io.netty.handler.codec.http.websocketx.extensions.WebSocketExtensionDecoder;
import io.netty.handler.codec.http.websocketx.extensions.WebSocketExtensionEncoder;
import io.netty.handler.codec.http.websocketx.extensions.WebSocketExtensionFilterProvider;
import io.netty.handler.codec.http.websocketx.extensions.a;
import io.netty.util.internal.ObjectUtil;
import java.util.Collections;
/* loaded from: classes5.dex */
public final class DeflateFrameClientExtensionHandshaker implements WebSocketClientExtensionHandshaker {
    private final int compressionLevel;
    private final WebSocketExtensionFilterProvider extensionFilterProvider;
    private final boolean useWebkitExtensionName;

    /* loaded from: classes5.dex */
    private static class DeflateFrameClientExtension implements a {
        private final int compressionLevel;
        private final WebSocketExtensionFilterProvider extensionFilterProvider;

        DeflateFrameClientExtension(int i2, WebSocketExtensionFilterProvider webSocketExtensionFilterProvider) {
            this.compressionLevel = i2;
            this.extensionFilterProvider = webSocketExtensionFilterProvider;
        }

        @Override // io.netty.handler.codec.http.websocketx.extensions.WebSocketExtension
        public WebSocketExtensionDecoder newExtensionDecoder() {
            return new PerFrameDeflateDecoder(false, this.extensionFilterProvider.decoderFilter());
        }

        @Override // io.netty.handler.codec.http.websocketx.extensions.WebSocketExtension
        public WebSocketExtensionEncoder newExtensionEncoder() {
            return new PerFrameDeflateEncoder(this.compressionLevel, 15, false, this.extensionFilterProvider.encoderFilter());
        }

        @Override // io.netty.handler.codec.http.websocketx.extensions.WebSocketExtension
        public int rsv() {
            return 4;
        }
    }

    public DeflateFrameClientExtensionHandshaker(boolean z3) {
        this(6, z3);
    }

    @Override // io.netty.handler.codec.http.websocketx.extensions.WebSocketClientExtensionHandshaker
    public a handshakeExtension(WebSocketExtensionData webSocketExtensionData) {
        if (("x-webkit-deflate-frame".equals(webSocketExtensionData.name()) || "deflate-frame".equals(webSocketExtensionData.name())) && webSocketExtensionData.parameters().isEmpty()) {
            return new DeflateFrameClientExtension(this.compressionLevel, this.extensionFilterProvider);
        }
        return null;
    }

    @Override // io.netty.handler.codec.http.websocketx.extensions.WebSocketClientExtensionHandshaker
    public WebSocketExtensionData newRequestData() {
        return new WebSocketExtensionData(this.useWebkitExtensionName ? "x-webkit-deflate-frame" : "deflate-frame", Collections.emptyMap());
    }

    public DeflateFrameClientExtensionHandshaker(int i2, boolean z3) {
        this(i2, z3, WebSocketExtensionFilterProvider.DEFAULT);
    }

    public DeflateFrameClientExtensionHandshaker(int i2, boolean z3, WebSocketExtensionFilterProvider webSocketExtensionFilterProvider) {
        if (i2 >= 0 && i2 <= 9) {
            this.compressionLevel = i2;
            this.useWebkitExtensionName = z3;
            this.extensionFilterProvider = (WebSocketExtensionFilterProvider) ObjectUtil.checkNotNull(webSocketExtensionFilterProvider, "extensionFilterProvider");
            return;
        }
        throw new IllegalArgumentException("compressionLevel: " + i2 + " (expected: 0-9)");
    }
}
