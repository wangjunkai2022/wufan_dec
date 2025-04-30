package io.netty.handler.codec.stomp;

import io.netty.buffer.ByteBuf;
/* loaded from: classes5.dex */
public interface StompFrame extends StompHeadersSubframe, LastStompContentSubframe {
    StompFrame copy();

    StompFrame duplicate();

    StompFrame replace(ByteBuf byteBuf);

    StompFrame retain();

    StompFrame retain(int i2);

    StompFrame retainedDuplicate();

    StompFrame touch();

    StompFrame touch(Object obj);
}
