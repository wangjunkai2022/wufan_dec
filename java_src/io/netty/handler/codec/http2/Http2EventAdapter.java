package io.netty.handler.codec.http2;

import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.http2.Http2Connection;
/* loaded from: classes5.dex */
public class Http2EventAdapter implements Http2Connection.Listener, Http2FrameListener {
    @Override // io.netty.handler.codec.http2.Http2FrameListener
    public int onDataRead(ChannelHandlerContext channelHandlerContext, int i2, ByteBuf byteBuf, int i4, boolean z3) throws Http2Exception {
        return byteBuf.readableBytes() + i4;
    }

    @Override // io.netty.handler.codec.http2.Http2FrameListener
    public void onGoAwayRead(ChannelHandlerContext channelHandlerContext, int i2, long j4, ByteBuf byteBuf) throws Http2Exception {
    }

    @Override // io.netty.handler.codec.http2.Http2Connection.Listener
    public void onGoAwayReceived(int i2, long j4, ByteBuf byteBuf) {
    }

    @Override // io.netty.handler.codec.http2.Http2Connection.Listener
    public void onGoAwaySent(int i2, long j4, ByteBuf byteBuf) {
    }

    @Override // io.netty.handler.codec.http2.Http2FrameListener
    public void onHeadersRead(ChannelHandlerContext channelHandlerContext, int i2, Http2Headers http2Headers, int i4, short s3, boolean z3, int i5, boolean z4) throws Http2Exception {
    }

    @Override // io.netty.handler.codec.http2.Http2FrameListener
    public void onHeadersRead(ChannelHandlerContext channelHandlerContext, int i2, Http2Headers http2Headers, int i4, boolean z3) throws Http2Exception {
    }

    @Override // io.netty.handler.codec.http2.Http2FrameListener
    public void onPingAckRead(ChannelHandlerContext channelHandlerContext, long j4) throws Http2Exception {
    }

    @Override // io.netty.handler.codec.http2.Http2FrameListener
    public void onPingRead(ChannelHandlerContext channelHandlerContext, long j4) throws Http2Exception {
    }

    @Override // io.netty.handler.codec.http2.Http2FrameListener
    public void onPriorityRead(ChannelHandlerContext channelHandlerContext, int i2, int i4, short s3, boolean z3) throws Http2Exception {
    }

    @Override // io.netty.handler.codec.http2.Http2FrameListener
    public void onPushPromiseRead(ChannelHandlerContext channelHandlerContext, int i2, int i4, Http2Headers http2Headers, int i5) throws Http2Exception {
    }

    @Override // io.netty.handler.codec.http2.Http2FrameListener
    public void onRstStreamRead(ChannelHandlerContext channelHandlerContext, int i2, long j4) throws Http2Exception {
    }

    @Override // io.netty.handler.codec.http2.Http2FrameListener
    public void onSettingsAckRead(ChannelHandlerContext channelHandlerContext) throws Http2Exception {
    }

    @Override // io.netty.handler.codec.http2.Http2FrameListener
    public void onSettingsRead(ChannelHandlerContext channelHandlerContext, Http2Settings http2Settings) throws Http2Exception {
    }

    @Override // io.netty.handler.codec.http2.Http2Connection.Listener
    public void onStreamActive(Http2Stream http2Stream) {
    }

    @Override // io.netty.handler.codec.http2.Http2Connection.Listener
    public void onStreamAdded(Http2Stream http2Stream) {
    }

    @Override // io.netty.handler.codec.http2.Http2Connection.Listener
    public void onStreamClosed(Http2Stream http2Stream) {
    }

    @Override // io.netty.handler.codec.http2.Http2Connection.Listener
    public void onStreamHalfClosed(Http2Stream http2Stream) {
    }

    @Override // io.netty.handler.codec.http2.Http2Connection.Listener
    public void onStreamRemoved(Http2Stream http2Stream) {
    }

    @Override // io.netty.handler.codec.http2.Http2FrameListener
    public void onUnknownFrame(ChannelHandlerContext channelHandlerContext, byte b4, int i2, Http2Flags http2Flags, ByteBuf byteBuf) throws Http2Exception {
    }

    @Override // io.netty.handler.codec.http2.Http2FrameListener
    public void onWindowUpdateRead(ChannelHandlerContext channelHandlerContext, int i2, int i4) throws Http2Exception {
    }
}
