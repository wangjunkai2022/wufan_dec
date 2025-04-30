package io.netty.handler.codec.http;

import io.netty.buffer.ByteBuf;
/* loaded from: classes5.dex */
public interface FullHttpRequest extends HttpRequest, FullHttpMessage {
    FullHttpRequest copy();

    FullHttpRequest duplicate();

    FullHttpRequest replace(ByteBuf byteBuf);

    FullHttpRequest retain();

    FullHttpRequest retain(int i2);

    FullHttpRequest retainedDuplicate();

    @Override // 
    FullHttpRequest setMethod(HttpMethod httpMethod);

    @Override // 
    FullHttpRequest setProtocolVersion(HttpVersion httpVersion);

    @Override // 
    FullHttpRequest setUri(String str);

    FullHttpRequest touch();

    FullHttpRequest touch(Object obj);
}
