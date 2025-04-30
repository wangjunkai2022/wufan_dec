package io.netty.handler.codec.http2;
/* loaded from: classes5.dex */
public interface Http2FrameSizePolicy {
    int maxFrameSize();

    void maxFrameSize(int i2) throws Http2Exception;
}
