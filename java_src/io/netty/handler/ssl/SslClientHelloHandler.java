package io.netty.handler.ssl;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufUtil;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelOutboundHandler;
import io.netty.channel.ChannelPromise;
import io.netty.handler.codec.ByteToMessageDecoder;
import io.netty.handler.codec.DecoderException;
import io.netty.util.concurrent.Future;
import io.netty.util.concurrent.a;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.net.SocketAddress;
import java.util.List;
/* loaded from: classes5.dex */
public abstract class SslClientHelloHandler<T> extends ByteToMessageDecoder implements ChannelOutboundHandler {
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(SslClientHelloHandler.class);
    private ByteBuf handshakeBuffer;
    private boolean handshakeFailed;
    private boolean readPending;
    private boolean suppressRead;

    private void releaseHandshakeBuffer() {
        releaseIfNotNull(this.handshakeBuffer);
        this.handshakeBuffer = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void releaseIfNotNull(ByteBuf byteBuf) {
        if (byteBuf != null) {
            byteBuf.release();
        }
    }

    private void select(final ChannelHandlerContext channelHandlerContext, final ByteBuf byteBuf) throws Exception {
        try {
            Future<T> lookup = lookup(channelHandlerContext, byteBuf);
            if (lookup.isDone()) {
                onLookupComplete(channelHandlerContext, lookup);
            } else {
                this.suppressRead = true;
                lookup.addListener(new a<T>() { // from class: io.netty.handler.ssl.SslClientHelloHandler.1
                    @Override // io.netty.util.concurrent.GenericFutureListener
                    public void operationComplete(Future<T> future) {
                        SslClientHelloHandler.releaseIfNotNull(byteBuf);
                        try {
                            SslClientHelloHandler.this.suppressRead = false;
                            try {
                                SslClientHelloHandler.this.onLookupComplete(channelHandlerContext, future);
                            } catch (DecoderException e4) {
                                channelHandlerContext.fireExceptionCaught((Throwable) e4);
                            } catch (Exception e5) {
                                channelHandlerContext.fireExceptionCaught((Throwable) new DecoderException(e5));
                            } catch (Throwable th) {
                                channelHandlerContext.fireExceptionCaught(th);
                            }
                        } finally {
                            if (SslClientHelloHandler.this.readPending) {
                                SslClientHelloHandler.this.readPending = false;
                                channelHandlerContext.read();
                            }
                        }
                    }
                });
                byteBuf = null;
            }
        } finally {
            try {
            } finally {
            }
        }
    }

    @Override // io.netty.channel.ChannelOutboundHandler
    public void bind(ChannelHandlerContext channelHandlerContext, SocketAddress socketAddress, ChannelPromise channelPromise) throws Exception {
        channelHandlerContext.bind(socketAddress, channelPromise);
    }

    @Override // io.netty.channel.ChannelOutboundHandler
    public void close(ChannelHandlerContext channelHandlerContext, ChannelPromise channelPromise) throws Exception {
        channelHandlerContext.close(channelPromise);
    }

    @Override // io.netty.channel.ChannelOutboundHandler
    public void connect(ChannelHandlerContext channelHandlerContext, SocketAddress socketAddress, SocketAddress socketAddress2, ChannelPromise channelPromise) throws Exception {
        channelHandlerContext.connect(socketAddress, socketAddress2, channelPromise);
    }

    @Override // io.netty.handler.codec.ByteToMessageDecoder
    protected void decode(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, List<Object> list) throws Exception {
        if (this.suppressRead || this.handshakeFailed) {
            return;
        }
        try {
            int readerIndex = byteBuf.readerIndex();
            int readableBytes = byteBuf.readableBytes();
            int i2 = -1;
            while (readableBytes >= 5) {
                switch (byteBuf.getUnsignedByte(readerIndex)) {
                    case 20:
                    case 21:
                        int encryptedPacketLength = SslUtils.getEncryptedPacketLength(byteBuf, readerIndex);
                        if (encryptedPacketLength != -2) {
                            if (encryptedPacketLength == -1) {
                                return;
                            }
                            select(channelHandlerContext, null);
                            return;
                        }
                        this.handshakeFailed = true;
                        NotSslRecordException notSslRecordException = new NotSslRecordException("not an SSL/TLS record: " + ByteBufUtil.hexDump(byteBuf));
                        byteBuf.skipBytes(byteBuf.readableBytes());
                        channelHandlerContext.fireUserEventTriggered((Object) new SniCompletionEvent(notSslRecordException));
                        SslUtils.handleHandshakeFailure(channelHandlerContext, notSslRecordException, true);
                        throw notSslRecordException;
                    case 22:
                        if (byteBuf.getUnsignedByte(readerIndex + 1) == 3) {
                            int unsignedShort = byteBuf.getUnsignedShort(readerIndex + 3) + 5;
                            if (readableBytes < unsignedShort) {
                                return;
                            }
                            if (unsignedShort == 5) {
                                select(channelHandlerContext, null);
                                return;
                            }
                            int i4 = readerIndex + unsignedShort;
                            if (i2 == -1) {
                                int i5 = readerIndex + 4;
                                if (i5 > i4) {
                                    return;
                                }
                                int i6 = readerIndex + 5;
                                if (byteBuf.getUnsignedByte(i6) != 1) {
                                    select(channelHandlerContext, null);
                                    return;
                                }
                                int unsignedMedium = byteBuf.getUnsignedMedium(i6 + 1);
                                unsignedShort -= 4;
                                if (unsignedMedium + 4 + 5 <= unsignedShort) {
                                    select(channelHandlerContext, byteBuf.retainedSlice(i5 + 5, unsignedMedium));
                                    return;
                                }
                                ByteBuf byteBuf2 = this.handshakeBuffer;
                                if (byteBuf2 == null) {
                                    this.handshakeBuffer = channelHandlerContext.alloc().buffer(unsignedMedium);
                                } else {
                                    byteBuf2.clear();
                                }
                                i2 = unsignedMedium;
                                readerIndex = i5;
                            }
                            this.handshakeBuffer.writeBytes(byteBuf, readerIndex + 5, unsignedShort - 5);
                            readerIndex += unsignedShort;
                            readableBytes -= unsignedShort;
                            if (i2 <= this.handshakeBuffer.readableBytes()) {
                                ByteBuf index = this.handshakeBuffer.setIndex(0, i2);
                                this.handshakeBuffer = null;
                                select(channelHandlerContext, index);
                                return;
                            }
                        } else {
                            select(channelHandlerContext, null);
                            return;
                        }
                    default:
                        select(channelHandlerContext, null);
                        return;
                }
            }
        } catch (NotSslRecordException e4) {
            throw e4;
        } catch (Exception e5) {
            InternalLogger internalLogger = logger;
            if (internalLogger.isDebugEnabled()) {
                internalLogger.debug("Unexpected client hello packet: " + ByteBufUtil.hexDump(byteBuf), (Throwable) e5);
            }
            select(channelHandlerContext, null);
        }
    }

    @Override // io.netty.channel.ChannelOutboundHandler
    public void deregister(ChannelHandlerContext channelHandlerContext, ChannelPromise channelPromise) throws Exception {
        channelHandlerContext.deregister(channelPromise);
    }

    @Override // io.netty.channel.ChannelOutboundHandler
    public void disconnect(ChannelHandlerContext channelHandlerContext, ChannelPromise channelPromise) throws Exception {
        channelHandlerContext.disconnect(channelPromise);
    }

    @Override // io.netty.channel.ChannelOutboundHandler
    public void flush(ChannelHandlerContext channelHandlerContext) throws Exception {
        channelHandlerContext.flush();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.handler.codec.ByteToMessageDecoder
    public void handlerRemoved0(ChannelHandlerContext channelHandlerContext) throws Exception {
        releaseHandshakeBuffer();
        super.handlerRemoved0(channelHandlerContext);
    }

    protected abstract Future<T> lookup(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf) throws Exception;

    protected abstract void onLookupComplete(ChannelHandlerContext channelHandlerContext, Future<T> future) throws Exception;

    @Override // io.netty.channel.ChannelOutboundHandler
    public void read(ChannelHandlerContext channelHandlerContext) throws Exception {
        if (this.suppressRead) {
            this.readPending = true;
        } else {
            channelHandlerContext.read();
        }
    }

    @Override // io.netty.channel.ChannelOutboundHandler
    public void write(ChannelHandlerContext channelHandlerContext, Object obj, ChannelPromise channelPromise) throws Exception {
        channelHandlerContext.write(obj, channelPromise);
    }
}
