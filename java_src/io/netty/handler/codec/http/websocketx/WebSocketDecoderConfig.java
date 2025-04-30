package io.netty.handler.codec.http.websocketx;

import io.netty.util.internal.ObjectUtil;
/* loaded from: classes5.dex */
public final class WebSocketDecoderConfig {
    static final WebSocketDecoderConfig DEFAULT = new WebSocketDecoderConfig(65536, true, false, false, true, true);
    private final boolean allowExtensions;
    private final boolean allowMaskMismatch;
    private final boolean closeOnProtocolViolation;
    private final boolean expectMaskedFrames;
    private final int maxFramePayloadLength;
    private final boolean withUTF8Validator;

    /* loaded from: classes5.dex */
    public static final class Builder {
        private boolean allowExtensions;
        private boolean allowMaskMismatch;
        private boolean closeOnProtocolViolation;
        private boolean expectMaskedFrames;
        private int maxFramePayloadLength;
        private boolean withUTF8Validator;

        public Builder allowExtensions(boolean z3) {
            this.allowExtensions = z3;
            return this;
        }

        public Builder allowMaskMismatch(boolean z3) {
            this.allowMaskMismatch = z3;
            return this;
        }

        public WebSocketDecoderConfig build() {
            return new WebSocketDecoderConfig(this.maxFramePayloadLength, this.expectMaskedFrames, this.allowMaskMismatch, this.allowExtensions, this.closeOnProtocolViolation, this.withUTF8Validator);
        }

        public Builder closeOnProtocolViolation(boolean z3) {
            this.closeOnProtocolViolation = z3;
            return this;
        }

        public Builder expectMaskedFrames(boolean z3) {
            this.expectMaskedFrames = z3;
            return this;
        }

        public Builder maxFramePayloadLength(int i2) {
            this.maxFramePayloadLength = i2;
            return this;
        }

        public Builder withUTF8Validator(boolean z3) {
            this.withUTF8Validator = z3;
            return this;
        }

        private Builder(WebSocketDecoderConfig webSocketDecoderConfig) {
            ObjectUtil.checkNotNull(webSocketDecoderConfig, "decoderConfig");
            this.maxFramePayloadLength = webSocketDecoderConfig.maxFramePayloadLength();
            this.expectMaskedFrames = webSocketDecoderConfig.expectMaskedFrames();
            this.allowMaskMismatch = webSocketDecoderConfig.allowMaskMismatch();
            this.allowExtensions = webSocketDecoderConfig.allowExtensions();
            this.closeOnProtocolViolation = webSocketDecoderConfig.closeOnProtocolViolation();
            this.withUTF8Validator = webSocketDecoderConfig.withUTF8Validator();
        }
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public boolean allowExtensions() {
        return this.allowExtensions;
    }

    public boolean allowMaskMismatch() {
        return this.allowMaskMismatch;
    }

    public boolean closeOnProtocolViolation() {
        return this.closeOnProtocolViolation;
    }

    public boolean expectMaskedFrames() {
        return this.expectMaskedFrames;
    }

    public int maxFramePayloadLength() {
        return this.maxFramePayloadLength;
    }

    public Builder toBuilder() {
        return new Builder();
    }

    public String toString() {
        return "WebSocketDecoderConfig [maxFramePayloadLength=" + this.maxFramePayloadLength + ", expectMaskedFrames=" + this.expectMaskedFrames + ", allowMaskMismatch=" + this.allowMaskMismatch + ", allowExtensions=" + this.allowExtensions + ", closeOnProtocolViolation=" + this.closeOnProtocolViolation + ", withUTF8Validator=" + this.withUTF8Validator + "]";
    }

    public boolean withUTF8Validator() {
        return this.withUTF8Validator;
    }

    private WebSocketDecoderConfig(int i2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
        this.maxFramePayloadLength = i2;
        this.expectMaskedFrames = z3;
        this.allowMaskMismatch = z4;
        this.allowExtensions = z5;
        this.closeOnProtocolViolation = z6;
        this.withUTF8Validator = z7;
    }
}
