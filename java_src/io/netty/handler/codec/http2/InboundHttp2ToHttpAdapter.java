package io.netty.handler.codec.http2;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufAllocator;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.http.FullHttpMessage;
import io.netty.handler.codec.http.FullHttpRequest;
import io.netty.handler.codec.http.FullHttpResponse;
import io.netty.handler.codec.http.HttpHeaderNames;
import io.netty.handler.codec.http.HttpResponseStatus;
import io.netty.handler.codec.http.HttpStatusClass;
import io.netty.handler.codec.http.HttpUtil;
import io.netty.handler.codec.http2.Http2Connection;
import io.netty.handler.codec.http2.HttpConversionUtil;
import io.netty.util.internal.ObjectUtil;
/* loaded from: classes5.dex */
public class InboundHttp2ToHttpAdapter extends Http2EventAdapter {
    private static final ImmediateSendDetector DEFAULT_SEND_DETECTOR = new ImmediateSendDetector() { // from class: io.netty.handler.codec.http2.InboundHttp2ToHttpAdapter.1
        @Override // io.netty.handler.codec.http2.InboundHttp2ToHttpAdapter.ImmediateSendDetector
        public FullHttpMessage copyIfNeeded(ByteBufAllocator byteBufAllocator, FullHttpMessage fullHttpMessage) {
            if (fullHttpMessage instanceof FullHttpRequest) {
                FullHttpRequest replace = ((FullHttpRequest) fullHttpMessage).replace(byteBufAllocator.buffer(0));
                replace.headers().remove(HttpHeaderNames.EXPECT);
                return replace;
            }
            return null;
        }

        @Override // io.netty.handler.codec.http2.InboundHttp2ToHttpAdapter.ImmediateSendDetector
        public boolean mustSendImmediately(FullHttpMessage fullHttpMessage) {
            if (fullHttpMessage instanceof FullHttpResponse) {
                return ((FullHttpResponse) fullHttpMessage).status().codeClass() == HttpStatusClass.INFORMATIONAL;
            } else if (fullHttpMessage instanceof FullHttpRequest) {
                return fullHttpMessage.headers().contains(HttpHeaderNames.EXPECT);
            } else {
                return false;
            }
        }
    };
    protected final Http2Connection connection;
    private final int maxContentLength;
    private final Http2Connection.a messageKey;
    private final boolean propagateSettings;
    private final ImmediateSendDetector sendDetector;
    protected final boolean validateHttpHeaders;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public interface ImmediateSendDetector {
        FullHttpMessage copyIfNeeded(ByteBufAllocator byteBufAllocator, FullHttpMessage fullHttpMessage);

        boolean mustSendImmediately(FullHttpMessage fullHttpMessage);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public InboundHttp2ToHttpAdapter(Http2Connection http2Connection, int i2, boolean z3, boolean z4) {
        if (i2 > 0) {
            this.connection = (Http2Connection) ObjectUtil.checkNotNull(http2Connection, "connection");
            this.maxContentLength = i2;
            this.validateHttpHeaders = z3;
            this.propagateSettings = z4;
            this.sendDetector = DEFAULT_SEND_DETECTOR;
            this.messageKey = http2Connection.newKey();
            return;
        }
        throw new IllegalArgumentException("maxContentLength: " + i2 + " (expected: > 0)");
    }

    private void processHeadersEnd(ChannelHandlerContext channelHandlerContext, Http2Stream http2Stream, FullHttpMessage fullHttpMessage, boolean z3) {
        if (z3) {
            fireChannelRead(channelHandlerContext, fullHttpMessage, getMessage(http2Stream) != fullHttpMessage, http2Stream);
        } else {
            putMessage(http2Stream, fullHttpMessage);
        }
    }

    protected void fireChannelRead(ChannelHandlerContext channelHandlerContext, FullHttpMessage fullHttpMessage, boolean z3, Http2Stream http2Stream) {
        removeMessage(http2Stream, z3);
        HttpUtil.setContentLength(fullHttpMessage, fullHttpMessage.content().readableBytes());
        channelHandlerContext.fireChannelRead((Object) fullHttpMessage);
    }

    protected final FullHttpMessage getMessage(Http2Stream http2Stream) {
        return (FullHttpMessage) http2Stream.getProperty(this.messageKey);
    }

    protected FullHttpMessage newMessage(Http2Stream http2Stream, Http2Headers http2Headers, boolean z3, ByteBufAllocator byteBufAllocator) throws Http2Exception {
        return this.connection.isServer() ? HttpConversionUtil.toFullHttpRequest(http2Stream.id(), http2Headers, byteBufAllocator, z3) : HttpConversionUtil.toFullHttpResponse(http2Stream.id(), http2Headers, byteBufAllocator, z3);
    }

    @Override // io.netty.handler.codec.http2.Http2EventAdapter, io.netty.handler.codec.http2.Http2FrameListener
    public int onDataRead(ChannelHandlerContext channelHandlerContext, int i2, ByteBuf byteBuf, int i4, boolean z3) throws Http2Exception {
        Http2Stream stream = this.connection.stream(i2);
        FullHttpMessage message = getMessage(stream);
        if (message != null) {
            ByteBuf content = message.content();
            int readableBytes = byteBuf.readableBytes();
            int readableBytes2 = content.readableBytes();
            int i5 = this.maxContentLength;
            if (readableBytes2 <= i5 - readableBytes) {
                content.writeBytes(byteBuf, byteBuf.readerIndex(), readableBytes);
                if (z3) {
                    fireChannelRead(channelHandlerContext, message, false, stream);
                }
                return readableBytes + i4;
            }
            throw Http2Exception.connectionError(Http2Error.INTERNAL_ERROR, "Content length exceeded max of %d for stream id %d", Integer.valueOf(i5), Integer.valueOf(i2));
        }
        throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "Data Frame received for unknown stream id %d", Integer.valueOf(i2));
    }

    @Override // io.netty.handler.codec.http2.Http2EventAdapter, io.netty.handler.codec.http2.Http2FrameListener
    public void onHeadersRead(ChannelHandlerContext channelHandlerContext, int i2, Http2Headers http2Headers, int i4, boolean z3) throws Http2Exception {
        Http2Stream stream = this.connection.stream(i2);
        FullHttpMessage processHeadersBegin = processHeadersBegin(channelHandlerContext, stream, http2Headers, z3, true, true);
        if (processHeadersBegin != null) {
            processHeadersEnd(channelHandlerContext, stream, processHeadersBegin, z3);
        }
    }

    @Override // io.netty.handler.codec.http2.Http2EventAdapter, io.netty.handler.codec.http2.Http2FrameListener
    public void onPushPromiseRead(ChannelHandlerContext channelHandlerContext, int i2, int i4, Http2Headers http2Headers, int i5) throws Http2Exception {
        Http2Stream stream = this.connection.stream(i4);
        if (http2Headers.status() == null) {
            http2Headers.status(HttpResponseStatus.OK.codeAsText());
        }
        FullHttpMessage processHeadersBegin = processHeadersBegin(channelHandlerContext, stream, http2Headers, false, false, false);
        if (processHeadersBegin != null) {
            processHeadersBegin.headers().setInt(HttpConversionUtil.ExtensionHeaderNames.STREAM_PROMISE_ID.text(), i2);
            processHeadersBegin.headers().setShort(HttpConversionUtil.ExtensionHeaderNames.STREAM_WEIGHT.text(), (short) 16);
            processHeadersEnd(channelHandlerContext, stream, processHeadersBegin, false);
            return;
        }
        throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "Push Promise Frame received for pre-existing stream id %d", Integer.valueOf(i4));
    }

    @Override // io.netty.handler.codec.http2.Http2EventAdapter, io.netty.handler.codec.http2.Http2FrameListener
    public void onRstStreamRead(ChannelHandlerContext channelHandlerContext, int i2, long j4) throws Http2Exception {
        Http2Stream stream = this.connection.stream(i2);
        FullHttpMessage message = getMessage(stream);
        if (message != null) {
            onRstStreamRead(stream, message);
        }
        channelHandlerContext.fireExceptionCaught((Throwable) Http2Exception.streamError(i2, Http2Error.valueOf(j4), "HTTP/2 to HTTP layer caught stream reset", new Object[0]));
    }

    @Override // io.netty.handler.codec.http2.Http2EventAdapter, io.netty.handler.codec.http2.Http2FrameListener
    public void onSettingsRead(ChannelHandlerContext channelHandlerContext, Http2Settings http2Settings) throws Http2Exception {
        if (this.propagateSettings) {
            channelHandlerContext.fireChannelRead((Object) http2Settings);
        }
    }

    @Override // io.netty.handler.codec.http2.Http2EventAdapter, io.netty.handler.codec.http2.Http2Connection.Listener
    public void onStreamRemoved(Http2Stream http2Stream) {
        removeMessage(http2Stream, true);
    }

    protected FullHttpMessage processHeadersBegin(ChannelHandlerContext channelHandlerContext, Http2Stream http2Stream, Http2Headers http2Headers, boolean z3, boolean z4, boolean z5) throws Http2Exception {
        FullHttpMessage message = getMessage(http2Stream);
        boolean z6 = false;
        if (message == null) {
            message = newMessage(http2Stream, http2Headers, this.validateHttpHeaders, channelHandlerContext.alloc());
            z6 = true;
        } else if (z4) {
            HttpConversionUtil.addHttp2ToHttpHeaders(http2Stream.id(), http2Headers, message, z5);
        } else {
            message = null;
        }
        if (this.sendDetector.mustSendImmediately(message)) {
            FullHttpMessage copyIfNeeded = z3 ? null : this.sendDetector.copyIfNeeded(channelHandlerContext.alloc(), message);
            fireChannelRead(channelHandlerContext, message, z6, http2Stream);
            return copyIfNeeded;
        }
        return message;
    }

    protected final void putMessage(Http2Stream http2Stream, FullHttpMessage fullHttpMessage) {
        FullHttpMessage fullHttpMessage2 = (FullHttpMessage) http2Stream.setProperty(this.messageKey, fullHttpMessage);
        if (fullHttpMessage2 == fullHttpMessage || fullHttpMessage2 == null) {
            return;
        }
        fullHttpMessage2.release();
    }

    protected final void removeMessage(Http2Stream http2Stream, boolean z3) {
        FullHttpMessage fullHttpMessage = (FullHttpMessage) http2Stream.removeProperty(this.messageKey);
        if (!z3 || fullHttpMessage == null) {
            return;
        }
        fullHttpMessage.release();
    }

    @Override // io.netty.handler.codec.http2.Http2EventAdapter, io.netty.handler.codec.http2.Http2FrameListener
    public void onHeadersRead(ChannelHandlerContext channelHandlerContext, int i2, Http2Headers http2Headers, int i4, short s3, boolean z3, int i5, boolean z4) throws Http2Exception {
        Http2Stream stream = this.connection.stream(i2);
        FullHttpMessage processHeadersBegin = processHeadersBegin(channelHandlerContext, stream, http2Headers, z4, true, true);
        if (processHeadersBegin != null) {
            if (i4 != 0) {
                processHeadersBegin.headers().setInt(HttpConversionUtil.ExtensionHeaderNames.STREAM_DEPENDENCY_ID.text(), i4);
            }
            processHeadersBegin.headers().setShort(HttpConversionUtil.ExtensionHeaderNames.STREAM_WEIGHT.text(), s3);
            processHeadersEnd(channelHandlerContext, stream, processHeadersBegin, z4);
        }
    }

    protected void onRstStreamRead(Http2Stream http2Stream, FullHttpMessage fullHttpMessage) {
        removeMessage(http2Stream, true);
    }
}
