package io.netty.handler.codec.spdy;

import io.netty.util.internal.ObjectUtil;
/* loaded from: classes5.dex */
public class SpdySessionStatus implements Comparable<SpdySessionStatus> {
    private final int code;
    private final String statusPhrase;
    public static final SpdySessionStatus OK = new SpdySessionStatus(0, "OK");
    public static final SpdySessionStatus PROTOCOL_ERROR = new SpdySessionStatus(1, "PROTOCOL_ERROR");
    public static final SpdySessionStatus INTERNAL_ERROR = new SpdySessionStatus(2, "INTERNAL_ERROR");

    public SpdySessionStatus(int i2, String str) {
        this.statusPhrase = (String) ObjectUtil.checkNotNull(str, "statusPhrase");
        this.code = i2;
    }

    public static SpdySessionStatus valueOf(int i2) {
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    return new SpdySessionStatus(i2, "UNKNOWN (" + i2 + ')');
                }
                return INTERNAL_ERROR;
            }
            return PROTOCOL_ERROR;
        }
        return OK;
    }

    public int code() {
        return this.code;
    }

    public boolean equals(Object obj) {
        return (obj instanceof SpdySessionStatus) && code() == ((SpdySessionStatus) obj).code();
    }

    public int hashCode() {
        return code();
    }

    public String statusPhrase() {
        return this.statusPhrase;
    }

    public String toString() {
        return statusPhrase();
    }

    @Override // java.lang.Comparable
    public int compareTo(SpdySessionStatus spdySessionStatus) {
        return code() - spdySessionStatus.code();
    }
}
