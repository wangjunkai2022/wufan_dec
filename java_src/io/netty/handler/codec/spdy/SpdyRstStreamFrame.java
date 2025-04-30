package io.netty.handler.codec.spdy;
/* loaded from: classes5.dex */
public interface SpdyRstStreamFrame extends SpdyStreamFrame {
    @Override // io.netty.handler.codec.spdy.SpdyStreamFrame, io.netty.handler.codec.spdy.SpdyDataFrame
    SpdyRstStreamFrame setLast(boolean z3);

    SpdyRstStreamFrame setStatus(SpdyStreamStatus spdyStreamStatus);

    @Override // io.netty.handler.codec.spdy.SpdyStreamFrame, io.netty.handler.codec.spdy.SpdyDataFrame
    SpdyRstStreamFrame setStreamId(int i2);

    SpdyStreamStatus status();
}
