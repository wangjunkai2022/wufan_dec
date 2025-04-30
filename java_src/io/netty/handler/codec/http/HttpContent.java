package io.netty.handler.codec.http;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufHolder;
/* loaded from: classes5.dex */
public interface HttpContent extends HttpObject, ByteBufHolder {
    HttpContent copy();

    HttpContent duplicate();

    HttpContent replace(ByteBuf byteBuf);

    HttpContent retain();

    HttpContent retain(int i2);

    HttpContent retainedDuplicate();

    HttpContent touch();

    HttpContent touch(Object obj);
}
