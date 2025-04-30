package io.netty.handler.codec.spdy;
/* loaded from: classes5.dex */
public interface SpdyWindowUpdateFrame extends a {
    int deltaWindowSize();

    SpdyWindowUpdateFrame setDeltaWindowSize(int i2);

    SpdyWindowUpdateFrame setStreamId(int i2);

    int streamId();
}
