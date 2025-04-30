package io.netty.handler.codec.http2;
/* loaded from: classes5.dex */
public interface Http2StreamVisitor {
    boolean visit(Http2Stream http2Stream) throws Http2Exception;
}
