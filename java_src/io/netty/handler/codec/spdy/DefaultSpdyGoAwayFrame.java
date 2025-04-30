package io.netty.handler.codec.spdy;

import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.StringUtil;
/* loaded from: classes5.dex */
public class DefaultSpdyGoAwayFrame implements SpdyGoAwayFrame {
    private int lastGoodStreamId;
    private SpdySessionStatus status;

    public DefaultSpdyGoAwayFrame(int i2) {
        this(i2, 0);
    }

    @Override // io.netty.handler.codec.spdy.SpdyGoAwayFrame
    public int lastGoodStreamId() {
        return this.lastGoodStreamId;
    }

    @Override // io.netty.handler.codec.spdy.SpdyGoAwayFrame
    public SpdyGoAwayFrame setLastGoodStreamId(int i2) {
        ObjectUtil.checkPositiveOrZero(i2, "lastGoodStreamId");
        this.lastGoodStreamId = i2;
        return this;
    }

    @Override // io.netty.handler.codec.spdy.SpdyGoAwayFrame
    public SpdyGoAwayFrame setStatus(SpdySessionStatus spdySessionStatus) {
        this.status = spdySessionStatus;
        return this;
    }

    @Override // io.netty.handler.codec.spdy.SpdyGoAwayFrame
    public SpdySessionStatus status() {
        return this.status;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(StringUtil.simpleClassName(this));
        String str = StringUtil.NEWLINE;
        sb.append(str);
        sb.append("--> Last-good-stream-ID = ");
        sb.append(lastGoodStreamId());
        sb.append(str);
        sb.append("--> Status: ");
        sb.append(status());
        return sb.toString();
    }

    public DefaultSpdyGoAwayFrame(int i2, int i4) {
        this(i2, SpdySessionStatus.valueOf(i4));
    }

    public DefaultSpdyGoAwayFrame(int i2, SpdySessionStatus spdySessionStatus) {
        setLastGoodStreamId(i2);
        setStatus(spdySessionStatus);
    }
}
