package io.netty.handler.codec.http2;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufHolder;
/* loaded from: classes5.dex */
public interface Http2DataFrame extends Http2StreamFrame, ByteBufHolder {
    ByteBuf content();

    Http2DataFrame copy();

    Http2DataFrame duplicate();

    int initialFlowControlledBytes();

    boolean isEndStream();

    int padding();

    Http2DataFrame replace(ByteBuf byteBuf);

    Http2DataFrame retain();

    Http2DataFrame retain(int i2);

    Http2DataFrame retainedDuplicate();

    Http2DataFrame touch();

    Http2DataFrame touch(Object obj);
}
