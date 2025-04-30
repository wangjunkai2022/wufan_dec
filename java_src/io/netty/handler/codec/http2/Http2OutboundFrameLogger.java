package io.netty.handler.codec.http2;

import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelPromise;
import io.netty.handler.codec.http2.Http2FrameLogger;
import io.netty.handler.codec.http2.Http2FrameWriter;
import io.netty.util.internal.ObjectUtil;
/* loaded from: classes5.dex */
public class Http2OutboundFrameLogger implements Http2FrameWriter {
    private final Http2FrameLogger logger;
    private final Http2FrameWriter writer;

    public Http2OutboundFrameLogger(Http2FrameWriter http2FrameWriter, Http2FrameLogger http2FrameLogger) {
        this.writer = (Http2FrameWriter) ObjectUtil.checkNotNull(http2FrameWriter, "writer");
        this.logger = (Http2FrameLogger) ObjectUtil.checkNotNull(http2FrameLogger, "logger");
    }

    @Override // io.netty.handler.codec.http2.Http2FrameWriter, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.writer.close();
    }

    @Override // io.netty.handler.codec.http2.Http2FrameWriter
    public Http2FrameWriter.Configuration configuration() {
        return this.writer.configuration();
    }

    @Override // io.netty.handler.codec.http2.Http2DataWriter
    public ChannelFuture writeData(ChannelHandlerContext channelHandlerContext, int i2, ByteBuf byteBuf, int i4, boolean z3, ChannelPromise channelPromise) {
        this.logger.logData(Http2FrameLogger.Direction.OUTBOUND, channelHandlerContext, i2, byteBuf, i4, z3);
        return this.writer.writeData(channelHandlerContext, i2, byteBuf, i4, z3, channelPromise);
    }

    @Override // io.netty.handler.codec.http2.Http2FrameWriter
    public ChannelFuture writeFrame(ChannelHandlerContext channelHandlerContext, byte b4, int i2, Http2Flags http2Flags, ByteBuf byteBuf, ChannelPromise channelPromise) {
        this.logger.logUnknownFrame(Http2FrameLogger.Direction.OUTBOUND, channelHandlerContext, b4, i2, http2Flags, byteBuf);
        return this.writer.writeFrame(channelHandlerContext, b4, i2, http2Flags, byteBuf, channelPromise);
    }

    @Override // io.netty.handler.codec.http2.Http2FrameWriter
    public ChannelFuture writeGoAway(ChannelHandlerContext channelHandlerContext, int i2, long j4, ByteBuf byteBuf, ChannelPromise channelPromise) {
        this.logger.logGoAway(Http2FrameLogger.Direction.OUTBOUND, channelHandlerContext, i2, j4, byteBuf);
        return this.writer.writeGoAway(channelHandlerContext, i2, j4, byteBuf, channelPromise);
    }

    @Override // io.netty.handler.codec.http2.Http2FrameWriter
    public ChannelFuture writeHeaders(ChannelHandlerContext channelHandlerContext, int i2, Http2Headers http2Headers, int i4, boolean z3, ChannelPromise channelPromise) {
        this.logger.logHeaders(Http2FrameLogger.Direction.OUTBOUND, channelHandlerContext, i2, http2Headers, i4, z3);
        return this.writer.writeHeaders(channelHandlerContext, i2, http2Headers, i4, z3, channelPromise);
    }

    @Override // io.netty.handler.codec.http2.Http2FrameWriter
    public ChannelFuture writePing(ChannelHandlerContext channelHandlerContext, boolean z3, long j4, ChannelPromise channelPromise) {
        if (z3) {
            this.logger.logPingAck(Http2FrameLogger.Direction.OUTBOUND, channelHandlerContext, j4);
        } else {
            this.logger.logPing(Http2FrameLogger.Direction.OUTBOUND, channelHandlerContext, j4);
        }
        return this.writer.writePing(channelHandlerContext, z3, j4, channelPromise);
    }

    @Override // io.netty.handler.codec.http2.Http2FrameWriter
    public ChannelFuture writePriority(ChannelHandlerContext channelHandlerContext, int i2, int i4, short s3, boolean z3, ChannelPromise channelPromise) {
        this.logger.logPriority(Http2FrameLogger.Direction.OUTBOUND, channelHandlerContext, i2, i4, s3, z3);
        return this.writer.writePriority(channelHandlerContext, i2, i4, s3, z3, channelPromise);
    }

    @Override // io.netty.handler.codec.http2.Http2FrameWriter
    public ChannelFuture writePushPromise(ChannelHandlerContext channelHandlerContext, int i2, int i4, Http2Headers http2Headers, int i5, ChannelPromise channelPromise) {
        this.logger.logPushPromise(Http2FrameLogger.Direction.OUTBOUND, channelHandlerContext, i2, i4, http2Headers, i5);
        return this.writer.writePushPromise(channelHandlerContext, i2, i4, http2Headers, i5, channelPromise);
    }

    @Override // io.netty.handler.codec.http2.Http2FrameWriter
    public ChannelFuture writeRstStream(ChannelHandlerContext channelHandlerContext, int i2, long j4, ChannelPromise channelPromise) {
        this.logger.logRstStream(Http2FrameLogger.Direction.OUTBOUND, channelHandlerContext, i2, j4);
        return this.writer.writeRstStream(channelHandlerContext, i2, j4, channelPromise);
    }

    @Override // io.netty.handler.codec.http2.Http2FrameWriter
    public ChannelFuture writeSettings(ChannelHandlerContext channelHandlerContext, Http2Settings http2Settings, ChannelPromise channelPromise) {
        this.logger.logSettings(Http2FrameLogger.Direction.OUTBOUND, channelHandlerContext, http2Settings);
        return this.writer.writeSettings(channelHandlerContext, http2Settings, channelPromise);
    }

    @Override // io.netty.handler.codec.http2.Http2FrameWriter
    public ChannelFuture writeSettingsAck(ChannelHandlerContext channelHandlerContext, ChannelPromise channelPromise) {
        this.logger.logSettingsAck(Http2FrameLogger.Direction.OUTBOUND, channelHandlerContext);
        return this.writer.writeSettingsAck(channelHandlerContext, channelPromise);
    }

    @Override // io.netty.handler.codec.http2.Http2FrameWriter
    public ChannelFuture writeWindowUpdate(ChannelHandlerContext channelHandlerContext, int i2, int i4, ChannelPromise channelPromise) {
        this.logger.logWindowsUpdate(Http2FrameLogger.Direction.OUTBOUND, channelHandlerContext, i2, i4);
        return this.writer.writeWindowUpdate(channelHandlerContext, i2, i4, channelPromise);
    }

    @Override // io.netty.handler.codec.http2.Http2FrameWriter
    public ChannelFuture writeHeaders(ChannelHandlerContext channelHandlerContext, int i2, Http2Headers http2Headers, int i4, short s3, boolean z3, int i5, boolean z4, ChannelPromise channelPromise) {
        this.logger.logHeaders(Http2FrameLogger.Direction.OUTBOUND, channelHandlerContext, i2, http2Headers, i4, s3, z3, i5, z4);
        return this.writer.writeHeaders(channelHandlerContext, i2, http2Headers, i4, s3, z3, i5, z4, channelPromise);
    }
}
