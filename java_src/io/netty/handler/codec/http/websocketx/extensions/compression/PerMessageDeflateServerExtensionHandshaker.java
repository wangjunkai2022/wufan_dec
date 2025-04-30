package io.netty.handler.codec.http.websocketx.extensions.compression;

import io.netty.handler.codec.compression.ZlibCodecFactory;
import io.netty.handler.codec.http.websocketx.extensions.WebSocketExtensionData;
import io.netty.handler.codec.http.websocketx.extensions.WebSocketExtensionDecoder;
import io.netty.handler.codec.http.websocketx.extensions.WebSocketExtensionEncoder;
import io.netty.handler.codec.http.websocketx.extensions.WebSocketExtensionFilterProvider;
import io.netty.handler.codec.http.websocketx.extensions.WebSocketServerExtension;
import io.netty.handler.codec.http.websocketx.extensions.WebSocketServerExtensionHandshaker;
import io.netty.util.internal.ObjectUtil;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes5.dex */
public final class PerMessageDeflateServerExtensionHandshaker implements WebSocketServerExtensionHandshaker {
    static final String CLIENT_MAX_WINDOW = "client_max_window_bits";
    static final String CLIENT_NO_CONTEXT = "client_no_context_takeover";
    public static final int MAX_WINDOW_SIZE = 15;
    public static final int MIN_WINDOW_SIZE = 8;
    static final String PERMESSAGE_DEFLATE_EXTENSION = "permessage-deflate";
    static final String SERVER_MAX_WINDOW = "server_max_window_bits";
    static final String SERVER_NO_CONTEXT = "server_no_context_takeover";
    private final boolean allowServerNoContext;
    private final boolean allowServerWindowSize;
    private final int compressionLevel;
    private final WebSocketExtensionFilterProvider extensionFilterProvider;
    private final boolean preferredClientNoContext;
    private final int preferredClientWindowSize;

    /* loaded from: classes5.dex */
    private static class PermessageDeflateExtension implements WebSocketServerExtension {
        private final boolean clientNoContext;
        private final int clientWindowSize;
        private final int compressionLevel;
        private final WebSocketExtensionFilterProvider extensionFilterProvider;
        private final boolean serverNoContext;
        private final int serverWindowSize;

        PermessageDeflateExtension(int i2, boolean z3, int i4, boolean z4, int i5, WebSocketExtensionFilterProvider webSocketExtensionFilterProvider) {
            this.compressionLevel = i2;
            this.serverNoContext = z3;
            this.serverWindowSize = i4;
            this.clientNoContext = z4;
            this.clientWindowSize = i5;
            this.extensionFilterProvider = webSocketExtensionFilterProvider;
        }

        @Override // io.netty.handler.codec.http.websocketx.extensions.WebSocketExtension
        public WebSocketExtensionDecoder newExtensionDecoder() {
            return new PerMessageDeflateDecoder(this.clientNoContext, this.extensionFilterProvider.decoderFilter());
        }

        @Override // io.netty.handler.codec.http.websocketx.extensions.WebSocketExtension
        public WebSocketExtensionEncoder newExtensionEncoder() {
            return new PerMessageDeflateEncoder(this.compressionLevel, this.serverWindowSize, this.serverNoContext, this.extensionFilterProvider.encoderFilter());
        }

        @Override // io.netty.handler.codec.http.websocketx.extensions.WebSocketServerExtension
        public WebSocketExtensionData newReponseData() {
            HashMap hashMap = new HashMap(4);
            if (this.serverNoContext) {
                hashMap.put(PerMessageDeflateServerExtensionHandshaker.SERVER_NO_CONTEXT, null);
            }
            if (this.clientNoContext) {
                hashMap.put(PerMessageDeflateServerExtensionHandshaker.CLIENT_NO_CONTEXT, null);
            }
            int i2 = this.serverWindowSize;
            if (i2 != 15) {
                hashMap.put(PerMessageDeflateServerExtensionHandshaker.SERVER_MAX_WINDOW, Integer.toString(i2));
            }
            int i4 = this.clientWindowSize;
            if (i4 != 15) {
                hashMap.put(PerMessageDeflateServerExtensionHandshaker.CLIENT_MAX_WINDOW, Integer.toString(i4));
            }
            return new WebSocketExtensionData(PerMessageDeflateServerExtensionHandshaker.PERMESSAGE_DEFLATE_EXTENSION, hashMap);
        }

        @Override // io.netty.handler.codec.http.websocketx.extensions.WebSocketExtension
        public int rsv() {
            return 4;
        }
    }

    public PerMessageDeflateServerExtensionHandshaker() {
        this(6, ZlibCodecFactory.isSupportingWindowSizeAndMemLevel(), 15, false, false);
    }

    @Override // io.netty.handler.codec.http.websocketx.extensions.WebSocketServerExtensionHandshaker
    public WebSocketServerExtension handshakeExtension(WebSocketExtensionData webSocketExtensionData) {
        if (PERMESSAGE_DEFLATE_EXTENSION.equals(webSocketExtensionData.name())) {
            Iterator<Map.Entry<String, String>> it2 = webSocketExtensionData.parameters().entrySet().iterator();
            boolean z3 = true;
            boolean z4 = false;
            int i2 = 15;
            boolean z5 = false;
            int i4 = 15;
            while (z3 && it2.hasNext()) {
                Map.Entry<String, String> next = it2.next();
                if (CLIENT_MAX_WINDOW.equalsIgnoreCase(next.getKey())) {
                    i4 = this.preferredClientWindowSize;
                } else if (SERVER_MAX_WINDOW.equalsIgnoreCase(next.getKey())) {
                    if (this.allowServerWindowSize && (i2 = Integer.parseInt(next.getValue())) <= 15 && i2 >= 8) {
                    }
                    z3 = false;
                } else if (CLIENT_NO_CONTEXT.equalsIgnoreCase(next.getKey())) {
                    z5 = this.preferredClientNoContext;
                } else {
                    if (SERVER_NO_CONTEXT.equalsIgnoreCase(next.getKey()) && this.allowServerNoContext) {
                        z4 = true;
                    }
                    z3 = false;
                }
            }
            if (z3) {
                return new PermessageDeflateExtension(this.compressionLevel, z4, i2, z5, i4, this.extensionFilterProvider);
            }
            return null;
        }
        return null;
    }

    public PerMessageDeflateServerExtensionHandshaker(int i2, boolean z3, int i4, boolean z4, boolean z5) {
        this(i2, z3, i4, z4, z5, WebSocketExtensionFilterProvider.DEFAULT);
    }

    public PerMessageDeflateServerExtensionHandshaker(int i2, boolean z3, int i4, boolean z4, boolean z5, WebSocketExtensionFilterProvider webSocketExtensionFilterProvider) {
        if (i4 > 15 || i4 < 8) {
            throw new IllegalArgumentException("preferredServerWindowSize: " + i4 + " (expected: 8-15)");
        } else if (i2 >= 0 && i2 <= 9) {
            this.compressionLevel = i2;
            this.allowServerWindowSize = z3;
            this.preferredClientWindowSize = i4;
            this.allowServerNoContext = z4;
            this.preferredClientNoContext = z5;
            this.extensionFilterProvider = (WebSocketExtensionFilterProvider) ObjectUtil.checkNotNull(webSocketExtensionFilterProvider, "extensionFilterProvider");
        } else {
            throw new IllegalArgumentException("compressionLevel: " + i2 + " (expected: 0-9)");
        }
    }
}
