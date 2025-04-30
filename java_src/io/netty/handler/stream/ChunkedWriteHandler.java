package io.netty.handler.stream;

import io.netty.channel.ChannelDuplexHandler;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelProgressivePromise;
import io.netty.channel.ChannelPromise;
import io.netty.util.ReferenceCountUtil;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.nio.channels.ClosedChannelException;
import java.util.ArrayDeque;
import java.util.Queue;
/* loaded from: classes5.dex */
public class ChunkedWriteHandler extends ChannelDuplexHandler {
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(ChunkedWriteHandler.class);
    private volatile ChannelHandlerContext ctx;
    private final Queue<PendingWrite> queue = new ArrayDeque();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class PendingWrite {
        final Object msg;
        final ChannelPromise promise;

        PendingWrite(Object obj, ChannelPromise channelPromise) {
            this.msg = obj;
            this.promise = channelPromise;
        }

        void fail(Throwable th) {
            ReferenceCountUtil.release(this.msg);
            this.promise.tryFailure(th);
        }

        void progress(long j4, long j5) {
            ChannelPromise channelPromise = this.promise;
            if (channelPromise instanceof ChannelProgressivePromise) {
                ((ChannelProgressivePromise) channelPromise).tryProgress(j4, j5);
            }
        }

        void success(long j4) {
            if (this.promise.isDone()) {
                return;
            }
            progress(j4, j4);
            this.promise.trySuccess();
        }
    }

    public ChunkedWriteHandler() {
    }

    private static void closeInput(ChunkedInput<?> chunkedInput) {
        try {
            chunkedInput.close();
        } catch (Throwable th) {
            if (logger.isWarnEnabled()) {
                logger.warn("Failed to close a chunked input.", th);
            }
        }
    }

    private void discard(Throwable th) {
        while (true) {
            PendingWrite poll = this.queue.poll();
            if (poll == null) {
                return;
            }
            Object obj = poll.msg;
            if (obj instanceof ChunkedInput) {
                ChunkedInput chunkedInput = (ChunkedInput) obj;
                try {
                    boolean isEndOfInput = chunkedInput.isEndOfInput();
                    long length = chunkedInput.length();
                    closeInput(chunkedInput);
                    if (!isEndOfInput) {
                        if (th == null) {
                            th = new ClosedChannelException();
                        }
                        poll.fail(th);
                    } else {
                        poll.success(length);
                    }
                } catch (Exception e4) {
                    closeInput(chunkedInput);
                    poll.fail(e4);
                    InternalLogger internalLogger = logger;
                    if (internalLogger.isWarnEnabled()) {
                        internalLogger.warn(ChunkedInput.class.getSimpleName() + " failed", (Throwable) e4);
                    }
                }
            } else {
                if (th == null) {
                    th = new ClosedChannelException();
                }
                poll.fail(th);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:65:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void doFlush(io.netty.channel.ChannelHandlerContext r11) {
        /*
            r10 = this;
            io.netty.channel.Channel r0 = r11.channel()
            boolean r1 = r0.isActive()
            r2 = 0
            if (r1 != 0) goto Lf
            r10.discard(r2)
            return
        Lf:
            io.netty.buffer.ByteBufAllocator r1 = r11.alloc()
            r3 = 1
            r4 = 1
        L15:
            boolean r5 = r0.isWritable()
            if (r5 == 0) goto Lb9
            java.util.Queue<io.netty.handler.stream.ChunkedWriteHandler$PendingWrite> r5 = r10.queue
            java.lang.Object r5 = r5.peek()
            io.netty.handler.stream.ChunkedWriteHandler$PendingWrite r5 = (io.netty.handler.stream.ChunkedWriteHandler.PendingWrite) r5
            if (r5 != 0) goto L27
            goto Lb9
        L27:
            io.netty.channel.ChannelPromise r6 = r5.promise
            boolean r6 = r6.isDone()
            if (r6 == 0) goto L35
            java.util.Queue<io.netty.handler.stream.ChunkedWriteHandler$PendingWrite> r5 = r10.queue
            r5.remove()
            goto L15
        L35:
            java.lang.Object r6 = r5.msg
            boolean r7 = r6 instanceof io.netty.handler.stream.ChunkedInput
            r8 = 0
            if (r7 == 0) goto La0
            io.netty.handler.stream.ChunkedInput r6 = (io.netty.handler.stream.ChunkedInput) r6
            java.lang.Object r7 = r6.readChunk(r1)     // Catch: java.lang.Throwable -> L8e
            boolean r6 = r6.isEndOfInput()     // Catch: java.lang.Throwable -> L8b
            if (r7 != 0) goto L4b
            r9 = r6 ^ 1
            goto L4c
        L4b:
            r9 = 0
        L4c:
            if (r9 == 0) goto L50
            goto Lb9
        L50:
            if (r7 != 0) goto L54
            io.netty.buffer.ByteBuf r7 = io.netty.buffer.Unpooled.EMPTY_BUFFER
        L54:
            io.netty.channel.ChannelFuture r4 = r11.writeAndFlush(r7)
            if (r6 == 0) goto L72
            java.util.Queue<io.netty.handler.stream.ChunkedWriteHandler$PendingWrite> r6 = r10.queue
            r6.remove()
            boolean r6 = r4.isDone()
            if (r6 == 0) goto L69
            handleEndOfInputFuture(r4, r5)
            goto L89
        L69:
            io.netty.handler.stream.ChunkedWriteHandler$2 r6 = new io.netty.handler.stream.ChunkedWriteHandler$2
            r6.<init>()
            r4.addListener(r6)
            goto L89
        L72:
            boolean r6 = r0.isWritable()
            r6 = r6 ^ r3
            boolean r7 = r4.isDone()
            if (r7 == 0) goto L81
            r10.handleFuture(r4, r5, r6)
            goto L89
        L81:
            io.netty.handler.stream.ChunkedWriteHandler$3 r7 = new io.netty.handler.stream.ChunkedWriteHandler$3
            r7.<init>()
            r4.addListener(r7)
        L89:
            r4 = 0
            goto Lab
        L8b:
            r0 = move-exception
            r2 = r7
            goto L8f
        L8e:
            r0 = move-exception
        L8f:
            java.util.Queue<io.netty.handler.stream.ChunkedWriteHandler$PendingWrite> r1 = r10.queue
            r1.remove()
            if (r2 == 0) goto L99
            io.netty.util.ReferenceCountUtil.release(r2)
        L99:
            closeInput(r6)
            r5.fail(r0)
            goto Lb9
        La0:
            java.util.Queue<io.netty.handler.stream.ChunkedWriteHandler$PendingWrite> r4 = r10.queue
            r4.remove()
            io.netty.channel.ChannelPromise r4 = r5.promise
            r11.write(r6, r4)
            r4 = 1
        Lab:
            boolean r5 = r0.isActive()
            if (r5 != 0) goto L15
            java.nio.channels.ClosedChannelException r0 = new java.nio.channels.ClosedChannelException
            r0.<init>()
            r10.discard(r0)
        Lb9:
            if (r4 == 0) goto Lbe
            r11.flush()
        Lbe:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.handler.stream.ChunkedWriteHandler.doFlush(io.netty.channel.ChannelHandlerContext):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void handleEndOfInputFuture(ChannelFuture channelFuture, PendingWrite pendingWrite) {
        ChunkedInput chunkedInput = (ChunkedInput) pendingWrite.msg;
        if (!channelFuture.isSuccess()) {
            closeInput(chunkedInput);
            pendingWrite.fail(channelFuture.cause());
            return;
        }
        long progress = chunkedInput.progress();
        long length = chunkedInput.length();
        closeInput(chunkedInput);
        pendingWrite.progress(progress, length);
        pendingWrite.success(length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleFuture(ChannelFuture channelFuture, PendingWrite pendingWrite, boolean z3) {
        ChunkedInput chunkedInput = (ChunkedInput) pendingWrite.msg;
        if (!channelFuture.isSuccess()) {
            closeInput(chunkedInput);
            pendingWrite.fail(channelFuture.cause());
            return;
        }
        pendingWrite.progress(chunkedInput.progress(), chunkedInput.length());
        if (z3 && channelFuture.channel().isWritable()) {
            resumeTransfer();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resumeTransfer0(ChannelHandlerContext channelHandlerContext) {
        try {
            doFlush(channelHandlerContext);
        } catch (Exception e4) {
            logger.warn("Unexpected exception while sending chunks.", (Throwable) e4);
        }
    }

    @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
    public void channelInactive(ChannelHandlerContext channelHandlerContext) throws Exception {
        doFlush(channelHandlerContext);
        channelHandlerContext.fireChannelInactive();
    }

    @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
    public void channelWritabilityChanged(ChannelHandlerContext channelHandlerContext) throws Exception {
        if (channelHandlerContext.channel().isWritable()) {
            doFlush(channelHandlerContext);
        }
        channelHandlerContext.fireChannelWritabilityChanged();
    }

    @Override // io.netty.channel.ChannelDuplexHandler, io.netty.channel.ChannelOutboundHandler
    public void flush(ChannelHandlerContext channelHandlerContext) throws Exception {
        doFlush(channelHandlerContext);
    }

    @Override // io.netty.channel.ChannelHandlerAdapter, io.netty.channel.ChannelHandler
    public void handlerAdded(ChannelHandlerContext channelHandlerContext) throws Exception {
        this.ctx = channelHandlerContext;
    }

    public void resumeTransfer() {
        final ChannelHandlerContext channelHandlerContext = this.ctx;
        if (channelHandlerContext == null) {
            return;
        }
        if (channelHandlerContext.executor().inEventLoop()) {
            resumeTransfer0(channelHandlerContext);
        } else {
            channelHandlerContext.executor().execute(new Runnable() { // from class: io.netty.handler.stream.ChunkedWriteHandler.1
                @Override // java.lang.Runnable
                public void run() {
                    ChunkedWriteHandler.this.resumeTransfer0(channelHandlerContext);
                }
            });
        }
    }

    @Override // io.netty.channel.ChannelDuplexHandler, io.netty.channel.ChannelOutboundHandler
    public void write(ChannelHandlerContext channelHandlerContext, Object obj, ChannelPromise channelPromise) throws Exception {
        this.queue.add(new PendingWrite(obj, channelPromise));
    }

    @Deprecated
    public ChunkedWriteHandler(int i2) {
        if (i2 > 0) {
            return;
        }
        throw new IllegalArgumentException("maxPendingWrites: " + i2 + " (expected: > 0)");
    }
}
