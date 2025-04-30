package io.netty.handler.codec.http2;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufUtil;
import io.netty.channel.Channel;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelFutureListener;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelPromise;
import io.netty.handler.codec.UnsupportedMessageTypeException;
import io.netty.handler.codec.http.HttpServerUpgradeHandler;
import io.netty.handler.codec.http2.Http2Connection;
import io.netty.handler.codec.http2.Http2Exception;
import io.netty.handler.codec.http2.Http2RemoteFlowController;
import io.netty.handler.codec.http2.Http2Stream;
import io.netty.handler.codec.http2.HttpConversionUtil;
import io.netty.util.ReferenceCountUtil;
import io.netty.util.collection.IntObjectHashMap;
import io.netty.util.collection.IntObjectMap;
import io.netty.util.concurrent.Future;
import io.netty.util.concurrent.GenericFutureListener;
import io.netty.util.internal.logging.InternalLogLevel;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
/* loaded from: classes5.dex */
public class Http2FrameCodec extends Http2ConnectionHandler {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final InternalLogger LOG = InternalLoggerFactory.getInstance(Http2FrameCodec.class);
    ChannelHandlerContext ctx;
    private final IntObjectMap<DefaultHttp2FrameStream> frameStreamToInitializeMap;
    private final Integer initialFlowControlWindowSize;
    private int numBufferedStreams;
    protected final Http2Connection.a streamKey;
    private final Http2Connection.a upgradeKey;

    /* loaded from: classes5.dex */
    private final class ConnectionListener extends Http2ConnectionAdapter {
        private ConnectionListener() {
        }

        private void onHttp2StreamStateChanged0(Http2Stream http2Stream) {
            DefaultHttp2FrameStream defaultHttp2FrameStream = (DefaultHttp2FrameStream) http2Stream.getProperty(Http2FrameCodec.this.streamKey);
            if (defaultHttp2FrameStream != null) {
                Http2FrameCodec http2FrameCodec = Http2FrameCodec.this;
                http2FrameCodec.onHttp2StreamStateChanged(http2FrameCodec.ctx, defaultHttp2FrameStream);
            }
        }

        @Override // io.netty.handler.codec.http2.Http2ConnectionAdapter, io.netty.handler.codec.http2.Http2Connection.Listener
        public void onStreamActive(Http2Stream http2Stream) {
            Http2FrameCodec.this.onStreamActive0(http2Stream);
        }

        @Override // io.netty.handler.codec.http2.Http2ConnectionAdapter, io.netty.handler.codec.http2.Http2Connection.Listener
        public void onStreamAdded(Http2Stream http2Stream) {
            DefaultHttp2FrameStream defaultHttp2FrameStream = (DefaultHttp2FrameStream) Http2FrameCodec.this.frameStreamToInitializeMap.remove(http2Stream.id());
            if (defaultHttp2FrameStream != null) {
                defaultHttp2FrameStream.setStreamAndProperty(Http2FrameCodec.this.streamKey, http2Stream);
            }
        }

        @Override // io.netty.handler.codec.http2.Http2ConnectionAdapter, io.netty.handler.codec.http2.Http2Connection.Listener
        public void onStreamClosed(Http2Stream http2Stream) {
            onHttp2StreamStateChanged0(http2Stream);
        }

        @Override // io.netty.handler.codec.http2.Http2ConnectionAdapter, io.netty.handler.codec.http2.Http2Connection.Listener
        public void onStreamHalfClosed(Http2Stream http2Stream) {
            onHttp2StreamStateChanged0(http2Stream);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class DefaultHttp2FrameStream implements Http2FrameStream {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        Channel attachment;
        volatile Http2Stream stream;
        private volatile int id = -1;
        final Http2FrameStreamEvent stateChanged = Http2FrameStreamEvent.stateChanged(this);
        final Http2FrameStreamEvent writabilityChanged = Http2FrameStreamEvent.writabilityChanged(this);

        DefaultHttp2FrameStream() {
        }

        @Override // io.netty.handler.codec.http2.Http2FrameStream
        public int id() {
            Http2Stream http2Stream = this.stream;
            return http2Stream == null ? this.id : http2Stream.id();
        }

        DefaultHttp2FrameStream setStreamAndProperty(Http2Connection.a aVar, Http2Stream http2Stream) {
            this.stream = http2Stream;
            http2Stream.setProperty(aVar, this);
            return this;
        }

        @Override // io.netty.handler.codec.http2.Http2FrameStream
        public Http2Stream.State state() {
            Http2Stream http2Stream = this.stream;
            return http2Stream == null ? Http2Stream.State.IDLE : http2Stream.state();
        }

        public String toString() {
            return String.valueOf(id());
        }
    }

    /* loaded from: classes5.dex */
    private final class FrameListener implements Http2FrameListener {
        private FrameListener() {
        }

        private Http2FrameStream requireStream(int i2) {
            Http2FrameStream http2FrameStream = (Http2FrameStream) Http2FrameCodec.this.connection().stream(i2).getProperty(Http2FrameCodec.this.streamKey);
            if (http2FrameStream != null) {
                return http2FrameStream;
            }
            throw new IllegalStateException("Stream object required for identifier: " + i2);
        }

        @Override // io.netty.handler.codec.http2.Http2FrameListener
        public int onDataRead(ChannelHandlerContext channelHandlerContext, int i2, ByteBuf byteBuf, int i4, boolean z3) {
            Http2FrameCodec.this.onHttp2Frame(channelHandlerContext, new DefaultHttp2DataFrame(byteBuf, z3, i4).stream(requireStream(i2)).retain());
            return 0;
        }

        @Override // io.netty.handler.codec.http2.Http2FrameListener
        public void onGoAwayRead(ChannelHandlerContext channelHandlerContext, int i2, long j4, ByteBuf byteBuf) {
            Http2FrameCodec.this.onHttp2Frame(channelHandlerContext, new DefaultHttp2GoAwayFrame(i2, j4, byteBuf).retain());
        }

        @Override // io.netty.handler.codec.http2.Http2FrameListener
        public void onHeadersRead(ChannelHandlerContext channelHandlerContext, int i2, Http2Headers http2Headers, int i4, short s3, boolean z3, int i5, boolean z4) {
            onHeadersRead(channelHandlerContext, i2, http2Headers, i5, z4);
        }

        @Override // io.netty.handler.codec.http2.Http2FrameListener
        public void onPingAckRead(ChannelHandlerContext channelHandlerContext, long j4) {
            Http2FrameCodec.this.onHttp2Frame(channelHandlerContext, new DefaultHttp2PingFrame(j4, true));
        }

        @Override // io.netty.handler.codec.http2.Http2FrameListener
        public void onPingRead(ChannelHandlerContext channelHandlerContext, long j4) {
            Http2FrameCodec.this.onHttp2Frame(channelHandlerContext, new DefaultHttp2PingFrame(j4, false));
        }

        @Override // io.netty.handler.codec.http2.Http2FrameListener
        public void onPriorityRead(ChannelHandlerContext channelHandlerContext, int i2, int i4, short s3, boolean z3) {
        }

        @Override // io.netty.handler.codec.http2.Http2FrameListener
        public void onPushPromiseRead(ChannelHandlerContext channelHandlerContext, int i2, int i4, Http2Headers http2Headers, int i5) {
        }

        @Override // io.netty.handler.codec.http2.Http2FrameListener
        public void onRstStreamRead(ChannelHandlerContext channelHandlerContext, int i2, long j4) {
            Http2FrameCodec.this.onHttp2Frame(channelHandlerContext, new DefaultHttp2ResetFrame(j4).stream(requireStream(i2)));
        }

        @Override // io.netty.handler.codec.http2.Http2FrameListener
        public void onSettingsAckRead(ChannelHandlerContext channelHandlerContext) {
            Http2FrameCodec.this.onHttp2Frame(channelHandlerContext, Http2SettingsAckFrame.INSTANCE);
        }

        @Override // io.netty.handler.codec.http2.Http2FrameListener
        public void onSettingsRead(ChannelHandlerContext channelHandlerContext, Http2Settings http2Settings) {
            Http2FrameCodec.this.onHttp2Frame(channelHandlerContext, new DefaultHttp2SettingsFrame(http2Settings));
        }

        @Override // io.netty.handler.codec.http2.Http2FrameListener
        public void onUnknownFrame(ChannelHandlerContext channelHandlerContext, byte b4, int i2, Http2Flags http2Flags, ByteBuf byteBuf) {
            Http2FrameCodec.this.onHttp2Frame(channelHandlerContext, new DefaultHttp2UnknownFrame(b4, http2Flags, byteBuf).stream(requireStream(i2)).retain());
        }

        @Override // io.netty.handler.codec.http2.Http2FrameListener
        public void onWindowUpdateRead(ChannelHandlerContext channelHandlerContext, int i2, int i4) {
            if (i2 == 0) {
                return;
            }
            Http2FrameCodec.this.onHttp2Frame(channelHandlerContext, new DefaultHttp2WindowUpdateFrame(i4).stream(requireStream(i2)));
        }

        @Override // io.netty.handler.codec.http2.Http2FrameListener
        public void onHeadersRead(ChannelHandlerContext channelHandlerContext, int i2, Http2Headers http2Headers, int i4, boolean z3) {
            Http2FrameCodec.this.onHttp2Frame(channelHandlerContext, new DefaultHttp2HeadersFrame(http2Headers, z3, i4).stream(requireStream(i2)));
        }
    }

    /* loaded from: classes5.dex */
    private final class Http2RemoteFlowControllerListener implements Http2RemoteFlowController.Listener {
        private Http2RemoteFlowControllerListener() {
        }

        @Override // io.netty.handler.codec.http2.Http2RemoteFlowController.Listener
        public void writabilityChanged(Http2Stream http2Stream) {
            DefaultHttp2FrameStream defaultHttp2FrameStream = (DefaultHttp2FrameStream) http2Stream.getProperty(Http2FrameCodec.this.streamKey);
            if (defaultHttp2FrameStream == null) {
                return;
            }
            Http2FrameCodec http2FrameCodec = Http2FrameCodec.this;
            http2FrameCodec.onHttp2StreamWritabilityChanged(http2FrameCodec.ctx, defaultHttp2FrameStream, http2FrameCodec.connection().remote().flowController().isWritable(http2Stream));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Http2FrameCodec(Http2ConnectionEncoder http2ConnectionEncoder, Http2ConnectionDecoder http2ConnectionDecoder, Http2Settings http2Settings, boolean z3) {
        super(http2ConnectionDecoder, http2ConnectionEncoder, http2Settings, z3);
        this.frameStreamToInitializeMap = new IntObjectHashMap(8);
        http2ConnectionDecoder.frameListener(new FrameListener());
        connection().addListener(new ConnectionListener());
        connection().remote().flowController().listener(new Http2RemoteFlowControllerListener());
        this.streamKey = connection().newKey();
        this.upgradeKey = connection().newKey();
        this.initialFlowControlWindowSize = http2Settings.initialWindowSize();
    }

    static /* synthetic */ int access$410(Http2FrameCodec http2FrameCodec) {
        int i2 = http2FrameCodec.numBufferedStreams;
        http2FrameCodec.numBufferedStreams = i2 - 1;
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleHeaderFuture(ChannelFuture channelFuture, int i2) {
        if (channelFuture.isSuccess()) {
            return;
        }
        this.frameStreamToInitializeMap.remove(i2);
    }

    private void increaseInitialConnectionWindow(int i2) throws Http2Exception {
        connection().local().flowController().incrementWindowSize(connection().connectionStream(), i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onHttp2StreamWritabilityChanged(ChannelHandlerContext channelHandlerContext, DefaultHttp2FrameStream defaultHttp2FrameStream, boolean z3) {
        channelHandlerContext.fireUserEventTriggered((Object) defaultHttp2FrameStream.writabilityChanged);
    }

    private void onHttp2UnknownStreamError(ChannelHandlerContext channelHandlerContext, Throwable th, Http2Exception.StreamException streamException) {
        LOG.log(streamException.error() == Http2Error.STREAM_CLOSED ? InternalLogLevel.DEBUG : InternalLogLevel.WARN, "Stream exception thrown for unknown stream {}.", Integer.valueOf(streamException.streamId()), th);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onStreamActive0(Http2Stream http2Stream) {
        if (http2Stream.id() == 1 || !connection().local().isValidStreamId(http2Stream.id())) {
            onHttp2StreamStateChanged(this.ctx, newStream().setStreamAndProperty(this.streamKey, http2Stream));
        }
    }

    private void onUpgradeEvent(ChannelHandlerContext channelHandlerContext, HttpServerUpgradeHandler.UpgradeEvent upgradeEvent) {
        channelHandlerContext.fireUserEventTriggered((Object) upgradeEvent);
    }

    private void tryExpandConnectionFlowControlWindow(Http2Connection http2Connection) throws Http2Exception {
        if (this.initialFlowControlWindowSize != null) {
            Http2Stream connectionStream = http2Connection.connectionStream();
            Http2LocalFlowController flowController = http2Connection.local().flowController();
            int intValue = this.initialFlowControlWindowSize.intValue() - flowController.initialWindowSize(connectionStream);
            if (intValue > 0) {
                flowController.incrementWindowSize(connectionStream, Math.max(intValue << 1, intValue));
                flush(this.ctx);
            }
        }
    }

    private void writeGoAwayFrame(ChannelHandlerContext channelHandlerContext, Http2GoAwayFrame http2GoAwayFrame, ChannelPromise channelPromise) {
        if (http2GoAwayFrame.lastStreamId() <= -1) {
            long lastStreamCreated = connection().remote().lastStreamCreated() + (http2GoAwayFrame.extraStreamIds() * 2);
            if (lastStreamCreated > 2147483647L) {
                lastStreamCreated = 2147483647L;
            }
            goAway(channelHandlerContext, (int) lastStreamCreated, http2GoAwayFrame.errorCode(), http2GoAwayFrame.content(), channelPromise);
            return;
        }
        http2GoAwayFrame.release();
        throw new IllegalArgumentException("Last stream id must not be set on GOAWAY frame");
    }

    private void writeHeadersFrame(ChannelHandlerContext channelHandlerContext, Http2HeadersFrame http2HeadersFrame, ChannelPromise channelPromise) {
        if (Http2CodecUtil.isStreamIdValid(http2HeadersFrame.stream().id())) {
            encoder().writeHeaders(channelHandlerContext, http2HeadersFrame.stream().id(), http2HeadersFrame.headers(), http2HeadersFrame.padding(), http2HeadersFrame.isEndStream(), channelPromise);
            return;
        }
        DefaultHttp2FrameStream defaultHttp2FrameStream = (DefaultHttp2FrameStream) http2HeadersFrame.stream();
        Http2Connection connection = connection();
        final int incrementAndGetNextStreamId = connection.local().incrementAndGetNextStreamId();
        if (incrementAndGetNextStreamId >= 0) {
            defaultHttp2FrameStream.id = incrementAndGetNextStreamId;
            this.frameStreamToInitializeMap.put(incrementAndGetNextStreamId, (int) defaultHttp2FrameStream);
            encoder().writeHeaders(channelHandlerContext, incrementAndGetNextStreamId, http2HeadersFrame.headers(), http2HeadersFrame.padding(), http2HeadersFrame.isEndStream(), channelPromise);
            if (!channelPromise.isDone()) {
                this.numBufferedStreams++;
                channelPromise.addListener((GenericFutureListener<? extends Future<? super Void>>) new ChannelFutureListener() { // from class: io.netty.handler.codec.http2.Http2FrameCodec.3
                    @Override // io.netty.util.concurrent.GenericFutureListener
                    public void operationComplete(ChannelFuture channelFuture) {
                        Http2FrameCodec.access$410(Http2FrameCodec.this);
                        Http2FrameCodec.this.handleHeaderFuture(channelFuture, incrementAndGetNextStreamId);
                    }
                });
                return;
            }
            handleHeaderFuture(channelPromise, incrementAndGetNextStreamId);
            return;
        }
        channelPromise.setFailure((Throwable) new Http2NoMoreStreamIdsException());
        onHttp2Frame(channelHandlerContext, new DefaultHttp2GoAwayFrame(connection.isServer() ? Integer.MAX_VALUE : 2147483646, Http2Error.NO_ERROR.code(), ByteBufUtil.writeAscii(channelHandlerContext.alloc(), "Stream IDs exhausted on local stream creation")));
    }

    final boolean consumeBytes(int i2, int i4) throws Http2Exception {
        Http2Stream stream = connection().stream(i2);
        if (stream != null && i2 == 1) {
            if (Boolean.TRUE.equals((Boolean) stream.getProperty(this.upgradeKey))) {
                return false;
            }
        }
        return connection().local().flowController().consumeBytes(stream, i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void forEachActiveStream(final Http2FrameStreamVisitor http2FrameStreamVisitor) throws Http2Exception {
        if (connection().numActiveStreams() > 0) {
            connection().forEachActiveStream(new Http2StreamVisitor() { // from class: io.netty.handler.codec.http2.Http2FrameCodec.1
                @Override // io.netty.handler.codec.http2.Http2StreamVisitor
                public boolean visit(Http2Stream http2Stream) {
                    try {
                        return http2FrameStreamVisitor.visit((Http2FrameStream) http2Stream.getProperty(Http2FrameCodec.this.streamKey));
                    } catch (Throwable th) {
                        Http2FrameCodec http2FrameCodec = Http2FrameCodec.this;
                        http2FrameCodec.onError(http2FrameCodec.ctx, false, th);
                        return false;
                    }
                }
            });
        }
    }

    @Override // io.netty.handler.codec.http2.Http2ConnectionHandler, io.netty.channel.ChannelHandlerAdapter, io.netty.channel.ChannelHandler
    public final void handlerAdded(ChannelHandlerContext channelHandlerContext) throws Exception {
        this.ctx = channelHandlerContext;
        super.handlerAdded(channelHandlerContext);
        handlerAdded0(channelHandlerContext);
        Http2Connection connection = connection();
        if (connection.isServer()) {
            tryExpandConnectionFlowControlWindow(connection);
        }
    }

    void handlerAdded0(ChannelHandlerContext channelHandlerContext) throws Exception {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.handler.codec.http2.Http2ConnectionHandler
    public final boolean isGracefulShutdownComplete() {
        return super.isGracefulShutdownComplete() && this.numBufferedStreams == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DefaultHttp2FrameStream newStream() {
        return new DefaultHttp2FrameStream();
    }

    int numInitializingStreams() {
        return this.frameStreamToInitializeMap.size();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.handler.codec.http2.Http2ConnectionHandler
    public void onConnectionError(ChannelHandlerContext channelHandlerContext, boolean z3, Throwable th, Http2Exception http2Exception) {
        if (!z3) {
            channelHandlerContext.fireExceptionCaught(th);
        }
        super.onConnectionError(channelHandlerContext, z3, th, http2Exception);
    }

    void onHttp2Frame(ChannelHandlerContext channelHandlerContext, Http2Frame http2Frame) {
        channelHandlerContext.fireChannelRead((Object) http2Frame);
    }

    void onHttp2FrameStreamException(ChannelHandlerContext channelHandlerContext, Http2FrameStreamException http2FrameStreamException) {
        channelHandlerContext.fireExceptionCaught((Throwable) http2FrameStreamException);
    }

    void onHttp2StreamStateChanged(ChannelHandlerContext channelHandlerContext, DefaultHttp2FrameStream defaultHttp2FrameStream) {
        channelHandlerContext.fireUserEventTriggered((Object) defaultHttp2FrameStream.stateChanged);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.handler.codec.http2.Http2ConnectionHandler
    public final void onStreamError(ChannelHandlerContext channelHandlerContext, boolean z3, Throwable th, Http2Exception.StreamException streamException) {
        Http2Stream stream = connection().stream(streamException.streamId());
        if (stream == null) {
            onHttp2UnknownStreamError(channelHandlerContext, th, streamException);
            super.onStreamError(channelHandlerContext, z3, th, streamException);
            return;
        }
        Http2FrameStream http2FrameStream = (Http2FrameStream) stream.getProperty(this.streamKey);
        if (http2FrameStream == null) {
            LOG.warn("Stream exception thrown without stream object attached.", th);
            super.onStreamError(channelHandlerContext, z3, th, streamException);
        } else if (z3) {
        } else {
            onHttp2FrameStreamException(channelHandlerContext, new Http2FrameStreamException(http2FrameStream, streamException.error(), th));
        }
    }

    @Override // io.netty.handler.codec.ByteToMessageDecoder, io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
    public final void userEventTriggered(final ChannelHandlerContext channelHandlerContext, final Object obj) throws Exception {
        if (obj == Http2ConnectionPrefaceAndSettingsFrameWrittenEvent.INSTANCE) {
            tryExpandConnectionFlowControlWindow(connection());
            channelHandlerContext.executor().execute(new Runnable() { // from class: io.netty.handler.codec.http2.Http2FrameCodec.2
                @Override // java.lang.Runnable
                public void run() {
                    channelHandlerContext.fireUserEventTriggered(obj);
                }
            });
        } else if (obj instanceof HttpServerUpgradeHandler.UpgradeEvent) {
            HttpServerUpgradeHandler.UpgradeEvent upgradeEvent = (HttpServerUpgradeHandler.UpgradeEvent) obj;
            try {
                onUpgradeEvent(channelHandlerContext, upgradeEvent.retain());
                Http2Stream stream = connection().stream(1);
                if (stream.getProperty(this.streamKey) == null) {
                    onStreamActive0(stream);
                }
                upgradeEvent.upgradeRequest().headers().setInt(HttpConversionUtil.ExtensionHeaderNames.STREAM_ID.text(), 1);
                stream.setProperty(this.upgradeKey, Boolean.TRUE);
                InboundHttpToHttp2Adapter.handle(channelHandlerContext, connection(), decoder().frameListener(), upgradeEvent.upgradeRequest().retain());
            } finally {
                upgradeEvent.release();
            }
        } else {
            channelHandlerContext.fireUserEventTriggered(obj);
        }
    }

    @Override // io.netty.handler.codec.http2.Http2ConnectionHandler, io.netty.channel.ChannelOutboundHandler
    public void write(ChannelHandlerContext channelHandlerContext, Object obj, ChannelPromise channelPromise) {
        if (obj instanceof Http2DataFrame) {
            Http2DataFrame http2DataFrame = (Http2DataFrame) obj;
            encoder().writeData(channelHandlerContext, http2DataFrame.stream().id(), http2DataFrame.content(), http2DataFrame.padding(), http2DataFrame.isEndStream(), channelPromise);
        } else if (obj instanceof Http2HeadersFrame) {
            writeHeadersFrame(channelHandlerContext, (Http2HeadersFrame) obj, channelPromise);
        } else if (obj instanceof Http2WindowUpdateFrame) {
            Http2WindowUpdateFrame http2WindowUpdateFrame = (Http2WindowUpdateFrame) obj;
            Http2FrameStream stream = http2WindowUpdateFrame.stream();
            try {
                if (stream == null) {
                    increaseInitialConnectionWindow(http2WindowUpdateFrame.windowSizeIncrement());
                } else {
                    consumeBytes(stream.id(), http2WindowUpdateFrame.windowSizeIncrement());
                }
                channelPromise.setSuccess();
            } catch (Throwable th) {
                channelPromise.setFailure(th);
            }
        } else if (obj instanceof Http2ResetFrame) {
            Http2ResetFrame http2ResetFrame = (Http2ResetFrame) obj;
            if (connection().streamMayHaveExisted(http2ResetFrame.stream().id())) {
                encoder().writeRstStream(channelHandlerContext, http2ResetFrame.stream().id(), http2ResetFrame.errorCode(), channelPromise);
                return;
            }
            ReferenceCountUtil.release(http2ResetFrame);
            channelPromise.setFailure((Throwable) Http2Exception.streamError(http2ResetFrame.stream().id(), Http2Error.PROTOCOL_ERROR, "Stream never existed", new Object[0]));
        } else if (obj instanceof Http2PingFrame) {
            Http2PingFrame http2PingFrame = (Http2PingFrame) obj;
            encoder().writePing(channelHandlerContext, http2PingFrame.ack(), http2PingFrame.content(), channelPromise);
        } else if (obj instanceof Http2SettingsFrame) {
            encoder().writeSettings(channelHandlerContext, ((Http2SettingsFrame) obj).settings(), channelPromise);
        } else if (obj instanceof Http2SettingsAckFrame) {
            encoder().writeSettingsAck(channelHandlerContext, channelPromise);
        } else if (obj instanceof Http2GoAwayFrame) {
            writeGoAwayFrame(channelHandlerContext, (Http2GoAwayFrame) obj, channelPromise);
        } else if (obj instanceof Http2UnknownFrame) {
            Http2UnknownFrame http2UnknownFrame = (Http2UnknownFrame) obj;
            encoder().writeFrame(channelHandlerContext, http2UnknownFrame.frameType(), http2UnknownFrame.stream().id(), http2UnknownFrame.flags(), http2UnknownFrame.content(), channelPromise);
        } else if (!(obj instanceof Http2Frame)) {
            channelHandlerContext.write(obj, channelPromise);
        } else {
            ReferenceCountUtil.release(obj);
            throw new UnsupportedMessageTypeException(obj, new Class[0]);
        }
    }
}
