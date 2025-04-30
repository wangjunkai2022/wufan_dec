package io.netty.handler.codec.http.websocketx.extensions.compression;

import io.netty.handler.codec.compression.ZlibCodecFactory;
import io.netty.handler.codec.http.websocketx.extensions.WebSocketClientExtensionHandshaker;
import io.netty.handler.codec.http.websocketx.extensions.WebSocketExtensionData;
import io.netty.handler.codec.http.websocketx.extensions.WebSocketExtensionDecoder;
import io.netty.handler.codec.http.websocketx.extensions.WebSocketExtensionEncoder;
import io.netty.handler.codec.http.websocketx.extensions.WebSocketExtensionFilterProvider;
import io.netty.handler.codec.http.websocketx.extensions.a;
import io.netty.util.internal.ObjectUtil;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes5.dex */
public final class PerMessageDeflateClientExtensionHandshaker implements WebSocketClientExtensionHandshaker {
    private final boolean allowClientNoContext;
    private final boolean allowClientWindowSize;
    private final int compressionLevel;
    private final WebSocketExtensionFilterProvider extensionFilterProvider;
    private final boolean requestedServerNoContext;
    private final int requestedServerWindowSize;

    /* loaded from: classes5.dex */
    private final class PermessageDeflateExtension implements a {
        private final boolean clientNoContext;
        private final int clientWindowSize;
        private final WebSocketExtensionFilterProvider extensionFilterProvider;
        private final boolean serverNoContext;
        private final int serverWindowSize;

        PermessageDeflateExtension(boolean z3, int i2, boolean z4, int i4, WebSocketExtensionFilterProvider webSocketExtensionFilterProvider) {
            this.serverNoContext = z3;
            this.serverWindowSize = i2;
            this.clientNoContext = z4;
            this.clientWindowSize = i4;
            this.extensionFilterProvider = webSocketExtensionFilterProvider;
        }

        @Override // io.netty.handler.codec.http.websocketx.extensions.WebSocketExtension
        public WebSocketExtensionDecoder newExtensionDecoder() {
            return new PerMessageDeflateDecoder(this.serverNoContext, this.extensionFilterProvider.decoderFilter());
        }

        @Override // io.netty.handler.codec.http.websocketx.extensions.WebSocketExtension
        public WebSocketExtensionEncoder newExtensionEncoder() {
            return new PerMessageDeflateEncoder(PerMessageDeflateClientExtensionHandshaker.this.compressionLevel, this.clientWindowSize, this.clientNoContext, this.extensionFilterProvider.encoderFilter());
        }

        @Override // io.netty.handler.codec.http.websocketx.extensions.WebSocketExtension
        public int rsv() {
            return 4;
        }
    }

    public PerMessageDeflateClientExtensionHandshaker() {
        this(6, ZlibCodecFactory.isSupportingWindowSizeAndMemLevel(), 15, false, false);
    }

    @Override // io.netty.handler.codec.http.websocketx.extensions.WebSocketClientExtensionHandshaker
    public a handshakeExtension(WebSocketExtensionData webSocketExtensionData) {
        if ("permessage-deflate".equals(webSocketExtensionData.name())) {
            Iterator<Map.Entry<String, String>> it2 = webSocketExtensionData.parameters().entrySet().iterator();
            boolean z3 = false;
            boolean z4 = true;
            boolean z5 = false;
            int i2 = 15;
            boolean z6 = false;
            int i4 = 15;
            while (z4 && it2.hasNext()) {
                Map.Entry<String, String> next = it2.next();
                if ("client_max_window_bits".equalsIgnoreCase(next.getKey())) {
                    if (this.allowClientWindowSize) {
                        i4 = Integer.parseInt(next.getValue());
                    } else {
                        z4 = false;
                    }
                } else if ("server_max_window_bits".equalsIgnoreCase(next.getKey())) {
                    i2 = Integer.parseInt(next.getValue());
                    if (i4 <= 15 && i4 >= 8) {
                    }
                    z4 = false;
                } else if ("client_no_context_takeover".equalsIgnoreCase(next.getKey())) {
                    if (this.allowClientNoContext) {
                        z6 = true;
                    } else {
                        z4 = false;
                    }
                } else {
                    if ("server_no_context_takeover".equalsIgnoreCase(next.getKey()) && this.requestedServerNoContext) {
                        z5 = true;
                    }
                    z4 = false;
                }
            }
            if ((!this.requestedServerNoContext || z5) && this.requestedServerWindowSize == i2) {
                z3 = z4;
            }
            if (z3) {
                return new PermessageDeflateExtension(z5, i2, z6, i4, this.extensionFilterProvider);
            }
            return null;
        }
        return null;
    }

    @Override // io.netty.handler.codec.http.websocketx.extensions.WebSocketClientExtensionHandshaker
    public WebSocketExtensionData newRequestData() {
        HashMap hashMap = new HashMap(4);
        if (this.requestedServerWindowSize != 15) {
            hashMap.put("server_no_context_takeover", null);
        }
        if (this.allowClientNoContext) {
            hashMap.put("client_no_context_takeover", null);
        }
        int i2 = this.requestedServerWindowSize;
        if (i2 != 15) {
            hashMap.put("server_max_window_bits", Integer.toString(i2));
        }
        if (this.allowClientWindowSize) {
            hashMap.put("client_max_window_bits", null);
        }
        return new WebSocketExtensionData("permessage-deflate", hashMap);
    }

    public PerMessageDeflateClientExtensionHandshaker(int i2, boolean z3, int i4, boolean z4, boolean z5) {
        this(i2, z3, i4, z4, z5, WebSocketExtensionFilterProvider.DEFAULT);
    }

    public PerMessageDeflateClientExtensionHandshaker(int i2, boolean z3, int i4, boolean z4, boolean z5, WebSocketExtensionFilterProvider webSocketExtensionFilterProvider) {
        if (i4 > 15 || i4 < 8) {
            throw new IllegalArgumentException("requestedServerWindowSize: " + i4 + " (expected: 8-15)");
        } else if (i2 >= 0 && i2 <= 9) {
            this.compressionLevel = i2;
            this.allowClientWindowSize = z3;
            this.requestedServerWindowSize = i4;
            this.allowClientNoContext = z4;
            this.requestedServerNoContext = z5;
            this.extensionFilterProvider = (WebSocketExtensionFilterProvider) ObjectUtil.checkNotNull(webSocketExtensionFilterProvider, "extensionFilterProvider");
        } else {
            throw new IllegalArgumentException("compressionLevel: " + i2 + " (expected: 0-9)");
        }
    }
}
