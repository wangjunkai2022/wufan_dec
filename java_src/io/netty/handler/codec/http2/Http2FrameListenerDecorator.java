package io.netty.handler.codec.http2;

import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.util.internal.ObjectUtil;
/* loaded from: classes5.dex */
public class Http2FrameListenerDecorator implements Http2FrameListener {
    protected final Http2FrameListener listener;

    public Http2FrameListenerDecorator(Http2FrameListener http2FrameListener) {
        this.listener = (Http2FrameListener) ObjectUtil.checkNotNull(http2FrameListener, "listener");
    }

    @Override // io.netty.handler.codec.http2.Http2FrameListener
    public int onDataRead(ChannelHandlerContext channelHandlerContext, int i2, ByteBuf byteBuf, int i4, boolean z3) throws Http2Exception {
        return this.listener.onDataRead(channelHandlerContext, i2, byteBuf, i4, z3);
    }

    @Override // io.netty.handler.codec.http2.Http2FrameListener
    public void onGoAwayRead(ChannelHandlerContext channelHandlerContext, int i2, long j4, ByteBuf byteBuf) throws Http2Exception {
        this.listener.onGoAwayRead(channelHandlerContext, i2, j4, byteBuf);
    }

    @Override // io.netty.handler.codec.http2.Http2FrameListener
    public void onHeadersRead(ChannelHandlerContext channelHandlerContext, int i2, Http2Headers http2Headers, int i4, boolean z3) throws Http2Exception {
        this.listener.onHeadersRead(channelHandlerContext, i2, http2Headers, i4, z3);
    }

    @Override // io.netty.handler.codec.http2.Http2FrameListener
    public void onPingAckRead(ChannelHandlerContext channelHandlerContext, long j4) throws Http2Exception {
        this.listener.onPingAckRead(channelHandlerContext, j4);
    }

    @Override // io.netty.handler.codec.http2.Http2FrameListener
    public void onPingRead(ChannelHandlerContext channelHandlerContext, long j4) throws Http2Exception {
        this.listener.onPingRead(channelHandlerContext, j4);
    }

    @Override // io.netty.handler.codec.http2.Http2FrameListener
    public void onPriorityRead(ChannelHandlerContext channelHandlerContext, int i2, int i4, short s3, boolean z3) throws Http2Exception {
        this.listener.onPriorityRead(channelHandlerContext, i2, i4, s3, z3);
    }

    @Override // io.netty.handler.codec.http2.Http2FrameListener
    public void onPushPromiseRead(ChannelHandlerContext channelHandlerContext, int i2, int i4, Http2Headers http2Headers, int i5) throws Http2Exception {
        this.listener.onPushPromiseRead(channelHandlerContext, i2, i4, http2Headers, i5);
    }

    @Override // io.netty.handler.codec.http2.Http2FrameListener
    public void onRstStreamRead(ChannelHandlerContext channelHandlerContext, int i2, long j4) throws Http2Exception {
        this.listener.onRstStreamRead(channelHandlerContext, i2, j4);
    }

    @Override // io.netty.handler.codec.http2.Http2FrameListener
    public void onSettingsAckRead(ChannelHandlerContext channelHandlerContext) throws Http2Exception {
        this.listener.onSettingsAckRead(channelHandlerContext);
    }

    @Override // io.netty.handler.codec.http2.Http2FrameListener
    public void onSettingsRead(ChannelHandlerContext channelHandlerContext, Http2Settings http2Settings) throws Http2Exception {
        this.listener.onSettingsRead(channelHandlerContext, http2Settings);
    }

    @Override // io.netty.handler.codec.http2.Http2FrameListener
    public void onUnknownFrame(ChannelHandlerContext channelHandlerContext, byte b4, int i2, Http2Flags http2Flags, ByteBuf byteBuf) throws Http2Exception {
        this.listener.onUnknownFrame(channelHandlerContext, b4, i2, http2Flags, byteBuf);
    }

    @Override // io.netty.handler.codec.http2.Http2FrameListener
    public void onWindowUpdateRead(ChannelHandlerContext channelHandlerContext, int i2, int i4) throws Http2Exception {
        this.listener.onWindowUpdateRead(channelHandlerContext, i2, i4);
    }

    @Override // io.netty.handler.codec.http2.Http2FrameListener
    public void onHeadersRead(ChannelHandlerContext channelHandlerContext, int i2, Http2Headers http2Headers, int i4, short s3, boolean z3, int i5, boolean z4) throws Http2Exception {
        this.listener.onHeadersRead(channelHandlerContext, i2, http2Headers, i4, s3, z3, i5, z4);
    }
}
