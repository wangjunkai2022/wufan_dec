package io.netty.handler.codec.spdy;
/* loaded from: classes5.dex */
public enum SpdyVersion {
    SPDY_3_1(3, 1);
    
    private final int minorVersion;
    private final int version;

    SpdyVersion(int i2, int i4) {
        this.version = i2;
        this.minorVersion = i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getMinorVersion() {
        return this.minorVersion;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersion() {
        return this.version;
    }
}
