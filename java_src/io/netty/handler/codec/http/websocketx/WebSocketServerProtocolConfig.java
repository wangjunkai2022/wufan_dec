package io.netty.handler.codec.http.websocketx;

import io.netty.handler.codec.http.websocketx.WebSocketDecoderConfig;
import io.netty.util.internal.ObjectUtil;
import net.lingala.zip4j.util.e;
/* loaded from: classes5.dex */
public final class WebSocketServerProtocolConfig {
    static final long DEFAULT_HANDSHAKE_TIMEOUT_MILLIS = 10000;
    private final boolean checkStartsWith;
    private final WebSocketDecoderConfig decoderConfig;
    private final boolean dropPongFrames;
    private final long forceCloseTimeoutMillis;
    private final boolean handleCloseFrames;
    private final long handshakeTimeoutMillis;
    private final WebSocketCloseStatus sendCloseFrame;
    private final String subprotocols;
    private final String websocketPath;

    public static Builder newBuilder() {
        return new Builder(e.F0, null, false, 10000L, 0L, true, WebSocketCloseStatus.NORMAL_CLOSURE, true, WebSocketDecoderConfig.DEFAULT);
    }

    public boolean checkStartsWith() {
        return this.checkStartsWith;
    }

    public WebSocketDecoderConfig decoderConfig() {
        return this.decoderConfig;
    }

    public boolean dropPongFrames() {
        return this.dropPongFrames;
    }

    public long forceCloseTimeoutMillis() {
        return this.forceCloseTimeoutMillis;
    }

    public boolean handleCloseFrames() {
        return this.handleCloseFrames;
    }

    public long handshakeTimeoutMillis() {
        return this.handshakeTimeoutMillis;
    }

    public WebSocketCloseStatus sendCloseFrame() {
        return this.sendCloseFrame;
    }

    public String subprotocols() {
        return this.subprotocols;
    }

    public Builder toBuilder() {
        return new Builder();
    }

    public String toString() {
        return "WebSocketServerProtocolConfig {websocketPath=" + this.websocketPath + ", subprotocols=" + this.subprotocols + ", checkStartsWith=" + this.checkStartsWith + ", handshakeTimeoutMillis=" + this.handshakeTimeoutMillis + ", forceCloseTimeoutMillis=" + this.forceCloseTimeoutMillis + ", handleCloseFrames=" + this.handleCloseFrames + ", sendCloseFrame=" + this.sendCloseFrame + ", dropPongFrames=" + this.dropPongFrames + ", decoderConfig=" + this.decoderConfig + "}";
    }

    public String websocketPath() {
        return this.websocketPath;
    }

    /* loaded from: classes5.dex */
    public static final class Builder {
        private boolean checkStartsWith;
        private WebSocketDecoderConfig decoderConfig;
        private WebSocketDecoderConfig.Builder decoderConfigBuilder;
        private boolean dropPongFrames;
        private long forceCloseTimeoutMillis;
        private boolean handleCloseFrames;
        private long handshakeTimeoutMillis;
        private WebSocketCloseStatus sendCloseFrame;
        private String subprotocols;
        private String websocketPath;

        private WebSocketDecoderConfig.Builder decoderConfigBuilder() {
            if (this.decoderConfigBuilder == null) {
                this.decoderConfigBuilder = this.decoderConfig.toBuilder();
            }
            return this.decoderConfigBuilder;
        }

        public Builder allowExtensions(boolean z3) {
            decoderConfigBuilder().allowExtensions(z3);
            return this;
        }

        public Builder allowMaskMismatch(boolean z3) {
            decoderConfigBuilder().allowMaskMismatch(z3);
            return this;
        }

        public WebSocketServerProtocolConfig build() {
            String str = this.websocketPath;
            String str2 = this.subprotocols;
            boolean z3 = this.checkStartsWith;
            long j4 = this.handshakeTimeoutMillis;
            long j5 = this.forceCloseTimeoutMillis;
            boolean z4 = this.handleCloseFrames;
            WebSocketCloseStatus webSocketCloseStatus = this.sendCloseFrame;
            boolean z5 = this.dropPongFrames;
            WebSocketDecoderConfig.Builder builder = this.decoderConfigBuilder;
            return new WebSocketServerProtocolConfig(str, str2, z3, j4, j5, z4, webSocketCloseStatus, z5, builder == null ? this.decoderConfig : builder.build());
        }

        public Builder checkStartsWith(boolean z3) {
            this.checkStartsWith = z3;
            return this;
        }

        public Builder closeOnProtocolViolation(boolean z3) {
            decoderConfigBuilder().closeOnProtocolViolation(z3);
            return this;
        }

        public Builder decoderConfig(WebSocketDecoderConfig webSocketDecoderConfig) {
            if (webSocketDecoderConfig == null) {
                webSocketDecoderConfig = WebSocketDecoderConfig.DEFAULT;
            }
            this.decoderConfig = webSocketDecoderConfig;
            this.decoderConfigBuilder = null;
            return this;
        }

        public Builder dropPongFrames(boolean z3) {
            this.dropPongFrames = z3;
            return this;
        }

        public Builder expectMaskedFrames(boolean z3) {
            decoderConfigBuilder().expectMaskedFrames(z3);
            return this;
        }

        public Builder forceCloseTimeoutMillis(long j4) {
            this.forceCloseTimeoutMillis = j4;
            return this;
        }

        public Builder handleCloseFrames(boolean z3) {
            this.handleCloseFrames = z3;
            return this;
        }

        public Builder handshakeTimeoutMillis(long j4) {
            this.handshakeTimeoutMillis = j4;
            return this;
        }

        public Builder maxFramePayloadLength(int i2) {
            decoderConfigBuilder().maxFramePayloadLength(i2);
            return this;
        }

        public Builder sendCloseFrame(WebSocketCloseStatus webSocketCloseStatus) {
            this.sendCloseFrame = webSocketCloseStatus;
            return this;
        }

        public Builder subprotocols(String str) {
            this.subprotocols = str;
            return this;
        }

        public Builder websocketPath(String str) {
            this.websocketPath = str;
            return this;
        }

        public Builder withUTF8Validator(boolean z3) {
            decoderConfigBuilder().withUTF8Validator(z3);
            return this;
        }

        private Builder(WebSocketServerProtocolConfig webSocketServerProtocolConfig) {
            this(((WebSocketServerProtocolConfig) ObjectUtil.checkNotNull(webSocketServerProtocolConfig, "serverConfig")).websocketPath(), webSocketServerProtocolConfig.subprotocols(), webSocketServerProtocolConfig.checkStartsWith(), webSocketServerProtocolConfig.handshakeTimeoutMillis(), webSocketServerProtocolConfig.forceCloseTimeoutMillis(), webSocketServerProtocolConfig.handleCloseFrames(), webSocketServerProtocolConfig.sendCloseFrame(), webSocketServerProtocolConfig.dropPongFrames(), webSocketServerProtocolConfig.decoderConfig());
        }

        private Builder(String str, String str2, boolean z3, long j4, long j5, boolean z4, WebSocketCloseStatus webSocketCloseStatus, boolean z5, WebSocketDecoderConfig webSocketDecoderConfig) {
            this.websocketPath = str;
            this.subprotocols = str2;
            this.checkStartsWith = z3;
            this.handshakeTimeoutMillis = j4;
            this.forceCloseTimeoutMillis = j5;
            this.handleCloseFrames = z4;
            this.sendCloseFrame = webSocketCloseStatus;
            this.dropPongFrames = z5;
            this.decoderConfig = webSocketDecoderConfig;
        }
    }

    private WebSocketServerProtocolConfig(String str, String str2, boolean z3, long j4, long j5, boolean z4, WebSocketCloseStatus webSocketCloseStatus, boolean z5, WebSocketDecoderConfig webSocketDecoderConfig) {
        this.websocketPath = str;
        this.subprotocols = str2;
        this.checkStartsWith = z3;
        this.handshakeTimeoutMillis = ObjectUtil.checkPositive(j4, "handshakeTimeoutMillis");
        this.forceCloseTimeoutMillis = j5;
        this.handleCloseFrames = z4;
        this.sendCloseFrame = webSocketCloseStatus;
        this.dropPongFrames = z5;
        this.decoderConfig = webSocketDecoderConfig == null ? WebSocketDecoderConfig.DEFAULT : webSocketDecoderConfig;
    }
}
