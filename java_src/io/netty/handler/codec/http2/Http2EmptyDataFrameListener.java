package io.netty.handler.codec.http2;

import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.util.internal.ObjectUtil;
/* loaded from: classes5.dex */
final class Http2EmptyDataFrameListener extends Http2FrameListenerDecorator {
    private int emptyDataFrames;
    private final int maxConsecutiveEmptyFrames;
    private boolean violationDetected;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Http2EmptyDataFrameListener(Http2FrameListener http2FrameListener, int i2) {
        super(http2FrameListener);
        this.maxConsecutiveEmptyFrames = ObjectUtil.checkPositive(i2, "maxConsecutiveEmptyFrames");
    }

    @Override // io.netty.handler.codec.http2.Http2FrameListenerDecorator, io.netty.handler.codec.http2.Http2FrameListener
    public int onDataRead(ChannelHandlerContext channelHandlerContext, int i2, ByteBuf byteBuf, int i4, boolean z3) throws Http2Exception {
        if (!z3 && !byteBuf.isReadable()) {
            int i5 = this.emptyDataFrames;
            this.emptyDataFrames = i5 + 1;
            int i6 = this.maxConsecutiveEmptyFrames;
            if (i5 == i6 && !this.violationDetected) {
                this.violationDetected = true;
                throw Http2Exception.connectionError(Http2Error.ENHANCE_YOUR_CALM, "Maximum number %d of empty data frames without end_of_stream flag received", Integer.valueOf(i6));
            }
        } else {
            this.emptyDataFrames = 0;
        }
        return super.onDataRead(channelHandlerContext, i2, byteBuf, i4, z3);
    }

    @Override // io.netty.handler.codec.http2.Http2FrameListenerDecorator, io.netty.handler.codec.http2.Http2FrameListener
    public void onHeadersRead(ChannelHandlerContext channelHandlerContext, int i2, Http2Headers http2Headers, int i4, boolean z3) throws Http2Exception {
        this.emptyDataFrames = 0;
        super.onHeadersRead(channelHandlerContext, i2, http2Headers, i4, z3);
    }

    @Override // io.netty.handler.codec.http2.Http2FrameListenerDecorator, io.netty.handler.codec.http2.Http2FrameListener
    public void onHeadersRead(ChannelHandlerContext channelHandlerContext, int i2, Http2Headers http2Headers, int i4, short s3, boolean z3, int i5, boolean z4) throws Http2Exception {
        this.emptyDataFrames = 0;
        super.onHeadersRead(channelHandlerContext, i2, http2Headers, i4, s3, z3, i5, z4);
    }
}
