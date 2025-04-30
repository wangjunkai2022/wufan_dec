package io.netty.handler.codec.http2;

import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.http2.Http2FrameLogger;
import io.netty.handler.codec.http2.Http2FrameReader;
import io.netty.util.internal.ObjectUtil;
/* loaded from: classes5.dex */
public class Http2InboundFrameLogger implements Http2FrameReader {
    private final Http2FrameLogger logger;
    private final Http2FrameReader reader;

    public Http2InboundFrameLogger(Http2FrameReader http2FrameReader, Http2FrameLogger http2FrameLogger) {
        this.reader = (Http2FrameReader) ObjectUtil.checkNotNull(http2FrameReader, "reader");
        this.logger = (Http2FrameLogger) ObjectUtil.checkNotNull(http2FrameLogger, "logger");
    }

    @Override // io.netty.handler.codec.http2.Http2FrameReader, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.reader.close();
    }

    @Override // io.netty.handler.codec.http2.Http2FrameReader
    public Http2FrameReader.Configuration configuration() {
        return this.reader.configuration();
    }

    @Override // io.netty.handler.codec.http2.Http2FrameReader
    public void readFrame(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, final Http2FrameListener http2FrameListener) throws Http2Exception {
        this.reader.readFrame(channelHandlerContext, byteBuf, new Http2FrameListener() { // from class: io.netty.handler.codec.http2.Http2InboundFrameLogger.1
            @Override // io.netty.handler.codec.http2.Http2FrameListener
            public int onDataRead(ChannelHandlerContext channelHandlerContext2, int i2, ByteBuf byteBuf2, int i4, boolean z3) throws Http2Exception {
                Http2InboundFrameLogger.this.logger.logData(Http2FrameLogger.Direction.INBOUND, channelHandlerContext2, i2, byteBuf2, i4, z3);
                return http2FrameListener.onDataRead(channelHandlerContext2, i2, byteBuf2, i4, z3);
            }

            @Override // io.netty.handler.codec.http2.Http2FrameListener
            public void onGoAwayRead(ChannelHandlerContext channelHandlerContext2, int i2, long j4, ByteBuf byteBuf2) throws Http2Exception {
                Http2InboundFrameLogger.this.logger.logGoAway(Http2FrameLogger.Direction.INBOUND, channelHandlerContext2, i2, j4, byteBuf2);
                http2FrameListener.onGoAwayRead(channelHandlerContext2, i2, j4, byteBuf2);
            }

            @Override // io.netty.handler.codec.http2.Http2FrameListener
            public void onHeadersRead(ChannelHandlerContext channelHandlerContext2, int i2, Http2Headers http2Headers, int i4, boolean z3) throws Http2Exception {
                Http2InboundFrameLogger.this.logger.logHeaders(Http2FrameLogger.Direction.INBOUND, channelHandlerContext2, i2, http2Headers, i4, z3);
                http2FrameListener.onHeadersRead(channelHandlerContext2, i2, http2Headers, i4, z3);
            }

            @Override // io.netty.handler.codec.http2.Http2FrameListener
            public void onPingAckRead(ChannelHandlerContext channelHandlerContext2, long j4) throws Http2Exception {
                Http2InboundFrameLogger.this.logger.logPingAck(Http2FrameLogger.Direction.INBOUND, channelHandlerContext2, j4);
                http2FrameListener.onPingAckRead(channelHandlerContext2, j4);
            }

            @Override // io.netty.handler.codec.http2.Http2FrameListener
            public void onPingRead(ChannelHandlerContext channelHandlerContext2, long j4) throws Http2Exception {
                Http2InboundFrameLogger.this.logger.logPing(Http2FrameLogger.Direction.INBOUND, channelHandlerContext2, j4);
                http2FrameListener.onPingRead(channelHandlerContext2, j4);
            }

            @Override // io.netty.handler.codec.http2.Http2FrameListener
            public void onPriorityRead(ChannelHandlerContext channelHandlerContext2, int i2, int i4, short s3, boolean z3) throws Http2Exception {
                Http2InboundFrameLogger.this.logger.logPriority(Http2FrameLogger.Direction.INBOUND, channelHandlerContext2, i2, i4, s3, z3);
                http2FrameListener.onPriorityRead(channelHandlerContext2, i2, i4, s3, z3);
            }

            @Override // io.netty.handler.codec.http2.Http2FrameListener
            public void onPushPromiseRead(ChannelHandlerContext channelHandlerContext2, int i2, int i4, Http2Headers http2Headers, int i5) throws Http2Exception {
                Http2InboundFrameLogger.this.logger.logPushPromise(Http2FrameLogger.Direction.INBOUND, channelHandlerContext2, i2, i4, http2Headers, i5);
                http2FrameListener.onPushPromiseRead(channelHandlerContext2, i2, i4, http2Headers, i5);
            }

            @Override // io.netty.handler.codec.http2.Http2FrameListener
            public void onRstStreamRead(ChannelHandlerContext channelHandlerContext2, int i2, long j4) throws Http2Exception {
                Http2InboundFrameLogger.this.logger.logRstStream(Http2FrameLogger.Direction.INBOUND, channelHandlerContext2, i2, j4);
                http2FrameListener.onRstStreamRead(channelHandlerContext2, i2, j4);
            }

            @Override // io.netty.handler.codec.http2.Http2FrameListener
            public void onSettingsAckRead(ChannelHandlerContext channelHandlerContext2) throws Http2Exception {
                Http2InboundFrameLogger.this.logger.logSettingsAck(Http2FrameLogger.Direction.INBOUND, channelHandlerContext2);
                http2FrameListener.onSettingsAckRead(channelHandlerContext2);
            }

            @Override // io.netty.handler.codec.http2.Http2FrameListener
            public void onSettingsRead(ChannelHandlerContext channelHandlerContext2, Http2Settings http2Settings) throws Http2Exception {
                Http2InboundFrameLogger.this.logger.logSettings(Http2FrameLogger.Direction.INBOUND, channelHandlerContext2, http2Settings);
                http2FrameListener.onSettingsRead(channelHandlerContext2, http2Settings);
            }

            @Override // io.netty.handler.codec.http2.Http2FrameListener
            public void onUnknownFrame(ChannelHandlerContext channelHandlerContext2, byte b4, int i2, Http2Flags http2Flags, ByteBuf byteBuf2) throws Http2Exception {
                Http2InboundFrameLogger.this.logger.logUnknownFrame(Http2FrameLogger.Direction.INBOUND, channelHandlerContext2, b4, i2, http2Flags, byteBuf2);
                http2FrameListener.onUnknownFrame(channelHandlerContext2, b4, i2, http2Flags, byteBuf2);
            }

            @Override // io.netty.handler.codec.http2.Http2FrameListener
            public void onWindowUpdateRead(ChannelHandlerContext channelHandlerContext2, int i2, int i4) throws Http2Exception {
                Http2InboundFrameLogger.this.logger.logWindowsUpdate(Http2FrameLogger.Direction.INBOUND, channelHandlerContext2, i2, i4);
                http2FrameListener.onWindowUpdateRead(channelHandlerContext2, i2, i4);
            }

            @Override // io.netty.handler.codec.http2.Http2FrameListener
            public void onHeadersRead(ChannelHandlerContext channelHandlerContext2, int i2, Http2Headers http2Headers, int i4, short s3, boolean z3, int i5, boolean z4) throws Http2Exception {
                Http2InboundFrameLogger.this.logger.logHeaders(Http2FrameLogger.Direction.INBOUND, channelHandlerContext2, i2, http2Headers, i4, s3, z3, i5, z4);
                http2FrameListener.onHeadersRead(channelHandlerContext2, i2, http2Headers, i4, s3, z3, i5, z4);
            }
        });
    }
}
