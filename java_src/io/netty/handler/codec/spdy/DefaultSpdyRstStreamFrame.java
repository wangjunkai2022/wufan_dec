package io.netty.handler.codec.spdy;

import io.netty.util.internal.StringUtil;
/* loaded from: classes5.dex */
public class DefaultSpdyRstStreamFrame extends DefaultSpdyStreamFrame implements SpdyRstStreamFrame {
    private SpdyStreamStatus status;

    public DefaultSpdyRstStreamFrame(int i2, int i4) {
        this(i2, SpdyStreamStatus.valueOf(i4));
    }

    @Override // io.netty.handler.codec.spdy.SpdyRstStreamFrame
    public SpdyRstStreamFrame setStatus(SpdyStreamStatus spdyStreamStatus) {
        this.status = spdyStreamStatus;
        return this;
    }

    @Override // io.netty.handler.codec.spdy.SpdyRstStreamFrame
    public SpdyStreamStatus status() {
        return this.status;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(StringUtil.simpleClassName(this));
        String str = StringUtil.NEWLINE;
        sb.append(str);
        sb.append("--> Stream-ID = ");
        sb.append(streamId());
        sb.append(str);
        sb.append("--> Status: ");
        sb.append(status());
        return sb.toString();
    }

    public DefaultSpdyRstStreamFrame(int i2, SpdyStreamStatus spdyStreamStatus) {
        super(i2);
        setStatus(spdyStreamStatus);
    }

    @Override // io.netty.handler.codec.spdy.DefaultSpdyStreamFrame, io.netty.handler.codec.spdy.SpdyStreamFrame, io.netty.handler.codec.spdy.SpdyDataFrame
    public SpdyRstStreamFrame setLast(boolean z3) {
        super.setLast(z3);
        return this;
    }

    @Override // io.netty.handler.codec.spdy.DefaultSpdyStreamFrame, io.netty.handler.codec.spdy.SpdyStreamFrame, io.netty.handler.codec.spdy.SpdyDataFrame
    public SpdyRstStreamFrame setStreamId(int i2) {
        super.setStreamId(i2);
        return this;
    }
}
