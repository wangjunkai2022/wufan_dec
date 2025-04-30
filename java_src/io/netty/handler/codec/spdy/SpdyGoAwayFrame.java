package io.netty.handler.codec.spdy;
/* loaded from: classes5.dex */
public interface SpdyGoAwayFrame extends a {
    int lastGoodStreamId();

    SpdyGoAwayFrame setLastGoodStreamId(int i2);

    SpdyGoAwayFrame setStatus(SpdySessionStatus spdySessionStatus);

    SpdySessionStatus status();
}
