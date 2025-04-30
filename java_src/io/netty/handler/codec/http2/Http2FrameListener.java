package io.netty.handler.codec.http2;

import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
/* loaded from: classes5.dex */
public interface Http2FrameListener {
    int onDataRead(ChannelHandlerContext channelHandlerContext, int i2, ByteBuf byteBuf, int i4, boolean z3) throws Http2Exception;

    void onGoAwayRead(ChannelHandlerContext channelHandlerContext, int i2, long j4, ByteBuf byteBuf) throws Http2Exception;

    void onHeadersRead(ChannelHandlerContext channelHandlerContext, int i2, Http2Headers http2Headers, int i4, short s3, boolean z3, int i5, boolean z4) throws Http2Exception;

    void onHeadersRead(ChannelHandlerContext channelHandlerContext, int i2, Http2Headers http2Headers, int i4, boolean z3) throws Http2Exception;

    void onPingAckRead(ChannelHandlerContext channelHandlerContext, long j4) throws Http2Exception;

    void onPingRead(ChannelHandlerContext channelHandlerContext, long j4) throws Http2Exception;

    void onPriorityRead(ChannelHandlerContext channelHandlerContext, int i2, int i4, short s3, boolean z3) throws Http2Exception;

    void onPushPromiseRead(ChannelHandlerContext channelHandlerContext, int i2, int i4, Http2Headers http2Headers, int i5) throws Http2Exception;

    void onRstStreamRead(ChannelHandlerContext channelHandlerContext, int i2, long j4) throws Http2Exception;

    void onSettingsAckRead(ChannelHandlerContext channelHandlerContext) throws Http2Exception;

    void onSettingsRead(ChannelHandlerContext channelHandlerContext, Http2Settings http2Settings) throws Http2Exception;

    void onUnknownFrame(ChannelHandlerContext channelHandlerContext, byte b4, int i2, Http2Flags http2Flags, ByteBuf byteBuf) throws Http2Exception;

    void onWindowUpdateRead(ChannelHandlerContext channelHandlerContext, int i2, int i4) throws Http2Exception;
}
