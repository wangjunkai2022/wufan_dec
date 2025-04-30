package io.netty.handler.codec.spdy;
/* loaded from: classes5.dex */
public interface SpdyStreamFrame extends a {
    boolean isLast();

    SpdyStreamFrame setLast(boolean z3);

    SpdyStreamFrame setStreamId(int i2);

    int streamId();
}
