package io.netty.handler.codec.spdy;

import io.netty.util.internal.ObjectUtil;
/* loaded from: classes5.dex */
public abstract class DefaultSpdyStreamFrame implements SpdyStreamFrame {
    private boolean last;
    private int streamId;

    /* JADX INFO: Access modifiers changed from: protected */
    public DefaultSpdyStreamFrame(int i2) {
        setStreamId(i2);
    }

    @Override // io.netty.handler.codec.spdy.SpdyStreamFrame
    public boolean isLast() {
        return this.last;
    }

    @Override // io.netty.handler.codec.spdy.SpdyStreamFrame, io.netty.handler.codec.spdy.SpdyDataFrame
    public SpdyStreamFrame setLast(boolean z3) {
        this.last = z3;
        return this;
    }

    @Override // io.netty.handler.codec.spdy.SpdyStreamFrame, io.netty.handler.codec.spdy.SpdyDataFrame
    public SpdyStreamFrame setStreamId(int i2) {
        ObjectUtil.checkPositive(i2, "streamId");
        this.streamId = i2;
        return this;
    }

    @Override // io.netty.handler.codec.spdy.SpdyStreamFrame
    public int streamId() {
        return this.streamId;
    }
}
