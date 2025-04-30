package io.netty.handler.codec.http2;

import com.join.mgps.activity.SimulatorExitPlayActivity_;
import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufUtil;
import io.netty.channel.ChannelHandlerAdapter;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.logging.LogLevel;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.logging.InternalLogLevel;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
/* loaded from: classes5.dex */
public class Http2FrameLogger extends ChannelHandlerAdapter {
    private static final int BUFFER_LENGTH_THRESHOLD = 64;
    private final InternalLogLevel level;
    private final InternalLogger logger;

    /* loaded from: classes5.dex */
    public enum Direction {
        INBOUND,
        OUTBOUND
    }

    public Http2FrameLogger(LogLevel logLevel) {
        this(logLevel.toInternalLevel(), InternalLoggerFactory.getInstance(Http2FrameLogger.class));
    }

    private String toString(ByteBuf byteBuf) {
        if (this.level != InternalLogLevel.TRACE && byteBuf.readableBytes() > 64) {
            int min = Math.min(byteBuf.readableBytes(), 64);
            return ByteBufUtil.hexDump(byteBuf, byteBuf.readerIndex(), min) + "...";
        }
        return ByteBufUtil.hexDump(byteBuf);
    }

    public boolean isEnabled() {
        return this.logger.isEnabled(this.level);
    }

    public void logData(Direction direction, ChannelHandlerContext channelHandlerContext, int i2, ByteBuf byteBuf, int i4, boolean z3) {
        if (isEnabled()) {
            this.logger.log(this.level, "{} {} DATA: streamId={} padding={} endStream={} length={} bytes={}", channelHandlerContext.channel(), direction.name(), Integer.valueOf(i2), Integer.valueOf(i4), Boolean.valueOf(z3), Integer.valueOf(byteBuf.readableBytes()), toString(byteBuf));
        }
    }

    public void logGoAway(Direction direction, ChannelHandlerContext channelHandlerContext, int i2, long j4, ByteBuf byteBuf) {
        if (isEnabled()) {
            this.logger.log(this.level, "{} {} GO_AWAY: lastStreamId={} errorCode={} length={} bytes={}", channelHandlerContext.channel(), direction.name(), Integer.valueOf(i2), Long.valueOf(j4), Integer.valueOf(byteBuf.readableBytes()), toString(byteBuf));
        }
    }

    public void logHeaders(Direction direction, ChannelHandlerContext channelHandlerContext, int i2, Http2Headers http2Headers, int i4, boolean z3) {
        if (isEnabled()) {
            this.logger.log(this.level, "{} {} HEADERS: streamId={} headers={} padding={} endStream={}", channelHandlerContext.channel(), direction.name(), Integer.valueOf(i2), http2Headers, Integer.valueOf(i4), Boolean.valueOf(z3));
        }
    }

    public void logPing(Direction direction, ChannelHandlerContext channelHandlerContext, long j4) {
        if (isEnabled()) {
            this.logger.log(this.level, "{} {} PING: ack=false bytes={}", channelHandlerContext.channel(), direction.name(), Long.valueOf(j4));
        }
    }

    public void logPingAck(Direction direction, ChannelHandlerContext channelHandlerContext, long j4) {
        if (isEnabled()) {
            this.logger.log(this.level, "{} {} PING: ack=true bytes={}", channelHandlerContext.channel(), direction.name(), Long.valueOf(j4));
        }
    }

    public void logPriority(Direction direction, ChannelHandlerContext channelHandlerContext, int i2, int i4, short s3, boolean z3) {
        if (isEnabled()) {
            this.logger.log(this.level, "{} {} PRIORITY: streamId={} streamDependency={} weight={} exclusive={}", channelHandlerContext.channel(), direction.name(), Integer.valueOf(i2), Integer.valueOf(i4), Short.valueOf(s3), Boolean.valueOf(z3));
        }
    }

    public void logPushPromise(Direction direction, ChannelHandlerContext channelHandlerContext, int i2, int i4, Http2Headers http2Headers, int i5) {
        if (isEnabled()) {
            this.logger.log(this.level, "{} {} PUSH_PROMISE: streamId={} promisedStreamId={} headers={} padding={}", channelHandlerContext.channel(), direction.name(), Integer.valueOf(i2), Integer.valueOf(i4), http2Headers, Integer.valueOf(i5));
        }
    }

    public void logRstStream(Direction direction, ChannelHandlerContext channelHandlerContext, int i2, long j4) {
        if (isEnabled()) {
            this.logger.log(this.level, "{} {} RST_STREAM: streamId={} errorCode={}", channelHandlerContext.channel(), direction.name(), Integer.valueOf(i2), Long.valueOf(j4));
        }
    }

    public void logSettings(Direction direction, ChannelHandlerContext channelHandlerContext, Http2Settings http2Settings) {
        if (isEnabled()) {
            this.logger.log(this.level, "{} {} SETTINGS: ack=false settings={}", channelHandlerContext.channel(), direction.name(), http2Settings);
        }
    }

    public void logSettingsAck(Direction direction, ChannelHandlerContext channelHandlerContext) {
        this.logger.log(this.level, "{} {} SETTINGS: ack=true", channelHandlerContext.channel(), direction.name());
    }

    public void logUnknownFrame(Direction direction, ChannelHandlerContext channelHandlerContext, byte b4, int i2, Http2Flags http2Flags, ByteBuf byteBuf) {
        if (isEnabled()) {
            this.logger.log(this.level, "{} {} UNKNOWN: frameType={} streamId={} flags={} length={} bytes={}", channelHandlerContext.channel(), direction.name(), Integer.valueOf(b4 & 255), Integer.valueOf(i2), Short.valueOf(http2Flags.value()), Integer.valueOf(byteBuf.readableBytes()), toString(byteBuf));
        }
    }

    public void logWindowsUpdate(Direction direction, ChannelHandlerContext channelHandlerContext, int i2, int i4) {
        if (isEnabled()) {
            this.logger.log(this.level, "{} {} WINDOW_UPDATE: streamId={} windowSizeIncrement={}", channelHandlerContext.channel(), direction.name(), Integer.valueOf(i2), Integer.valueOf(i4));
        }
    }

    public Http2FrameLogger(LogLevel logLevel, String str) {
        this(logLevel.toInternalLevel(), InternalLoggerFactory.getInstance(str));
    }

    public Http2FrameLogger(LogLevel logLevel, Class<?> cls) {
        this(logLevel.toInternalLevel(), InternalLoggerFactory.getInstance(cls));
    }

    private Http2FrameLogger(InternalLogLevel internalLogLevel, InternalLogger internalLogger) {
        this.level = (InternalLogLevel) ObjectUtil.checkNotNull(internalLogLevel, SimulatorExitPlayActivity_.E);
        this.logger = (InternalLogger) ObjectUtil.checkNotNull(internalLogger, "logger");
    }

    public void logHeaders(Direction direction, ChannelHandlerContext channelHandlerContext, int i2, Http2Headers http2Headers, int i4, short s3, boolean z3, int i5, boolean z4) {
        if (isEnabled()) {
            this.logger.log(this.level, "{} {} HEADERS: streamId={} headers={} streamDependency={} weight={} exclusive={} padding={} endStream={}", channelHandlerContext.channel(), direction.name(), Integer.valueOf(i2), http2Headers, Integer.valueOf(i4), Short.valueOf(s3), Boolean.valueOf(z3), Integer.valueOf(i5), Boolean.valueOf(z4));
        }
    }
}
