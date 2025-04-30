package io.netty.channel.epoll;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufAllocator;
import io.netty.channel.AbstractChannel;
import io.netty.channel.Channel;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelFutureListener;
import io.netty.channel.ChannelMetadata;
import io.netty.channel.ChannelOutboundBuffer;
import io.netty.channel.ChannelPipeline;
import io.netty.channel.ChannelPromise;
import io.netty.channel.DefaultFileRegion;
import io.netty.channel.EventLoop;
import io.netty.channel.FileRegion;
import io.netty.channel.RecvByteBufAllocator;
import io.netty.channel.epoll.AbstractEpollChannel;
import io.netty.channel.socket.DuplexChannel;
import io.netty.channel.unix.FileDescriptor;
import io.netty.channel.unix.IovArray;
import io.netty.channel.unix.SocketWritableByteChannel;
import io.netty.channel.unix.UnixChannelUtil;
import io.netty.util.concurrent.Future;
import io.netty.util.concurrent.GenericFutureListener;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.StringUtil;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.io.IOException;
import java.net.SocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.WritableByteChannel;
import java.util.Queue;
import java.util.concurrent.Executor;
/* loaded from: classes5.dex */
public abstract class AbstractEpollStreamChannel extends AbstractEpollChannel implements DuplexChannel {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private WritableByteChannel byteChannel;
    private final Runnable flushTask;
    private FileDescriptor pipeIn;
    private FileDescriptor pipeOut;
    private volatile Queue<SpliceInTask> spliceQueue;
    private static final ChannelMetadata METADATA = new ChannelMetadata(false, 16);
    private static final String EXPECTED_TYPES = " (expected: " + StringUtil.simpleClassName((Class<?>) ByteBuf.class) + ", " + StringUtil.simpleClassName((Class<?>) DefaultFileRegion.class) + ')';
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(AbstractEpollStreamChannel.class);

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class EpollSocketWritableByteChannel extends SocketWritableByteChannel {
        EpollSocketWritableByteChannel() {
            super(AbstractEpollStreamChannel.this.socket);
        }

        @Override // io.netty.channel.unix.SocketWritableByteChannel
        protected ByteBufAllocator alloc() {
            return AbstractEpollStreamChannel.this.alloc();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class EpollStreamUnsafe extends AbstractEpollChannel.AbstractEpollUnsafe {
        /* JADX INFO: Access modifiers changed from: package-private */
        public EpollStreamUnsafe() {
            super();
        }

        private void handleReadException(ChannelPipeline channelPipeline, ByteBuf byteBuf, Throwable th, boolean z3, EpollRecvByteAllocatorHandle epollRecvByteAllocatorHandle) {
            if (byteBuf != null) {
                if (byteBuf.isReadable()) {
                    this.readPending = false;
                    channelPipeline.fireChannelRead((Object) byteBuf);
                } else {
                    byteBuf.release();
                }
            }
            epollRecvByteAllocatorHandle.readComplete();
            channelPipeline.fireChannelReadComplete();
            channelPipeline.fireExceptionCaught(th);
            if (z3 || (th instanceof IOException)) {
                shutdownInput(false);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Code restructure failed: missing block: B:10:0x003c, code lost:
            if (r4 != null) goto L9;
         */
        /* JADX WARN: Removed duplicated region for block: B:39:0x009e A[Catch: all -> 0x00a2, TRY_LEAVE, TryCatch #0 {all -> 0x00a2, blocks: (B:28:0x007b, B:37:0x0096, B:39:0x009e), top: B:56:0x007b }] */
        @Override // io.netty.channel.epoll.AbstractEpollChannel.AbstractEpollUnsafe
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void epollInReady() {
            /*
                r10 = this;
                io.netty.channel.epoll.AbstractEpollStreamChannel r0 = io.netty.channel.epoll.AbstractEpollStreamChannel.this
                io.netty.channel.epoll.EpollChannelConfig r0 = r0.config()
                io.netty.channel.epoll.AbstractEpollStreamChannel r1 = io.netty.channel.epoll.AbstractEpollStreamChannel.this
                boolean r1 = r1.shouldBreakEpollInReady(r0)
                if (r1 == 0) goto L12
                r10.clearEpollIn0()
                return
            L12:
                io.netty.channel.epoll.EpollRecvByteAllocatorHandle r7 = r10.recvBufAllocHandle()
                io.netty.channel.epoll.AbstractEpollStreamChannel r1 = io.netty.channel.epoll.AbstractEpollStreamChannel.this
                int r2 = io.netty.channel.epoll.Native.EPOLLET
                boolean r1 = r1.isFlagSet(r2)
                r7.edgeTriggered(r1)
                io.netty.channel.epoll.AbstractEpollStreamChannel r1 = io.netty.channel.epoll.AbstractEpollStreamChannel.this
                io.netty.channel.ChannelPipeline r3 = r1.pipeline()
                io.netty.buffer.ByteBufAllocator r1 = r0.getAllocator()
                r7.reset(r0)
                r10.epollInBefore()
                r2 = 0
                r4 = r2
            L33:
                r5 = 0
                if (r4 != 0) goto L3e
                io.netty.channel.epoll.AbstractEpollStreamChannel r4 = io.netty.channel.epoll.AbstractEpollStreamChannel.this     // Catch: java.lang.Throwable -> Lab
                java.util.Queue r4 = io.netty.channel.epoll.AbstractEpollStreamChannel.access$400(r4)     // Catch: java.lang.Throwable -> Lab
                if (r4 == 0) goto L5a
            L3e:
                java.lang.Object r6 = r4.peek()     // Catch: java.lang.Throwable -> Lab
                io.netty.channel.epoll.AbstractEpollStreamChannel$SpliceInTask r6 = (io.netty.channel.epoll.AbstractEpollStreamChannel.SpliceInTask) r6     // Catch: java.lang.Throwable -> Lab
                if (r6 == 0) goto L5a
                boolean r6 = r6.spliceIn(r7)     // Catch: java.lang.Throwable -> Lab
                if (r6 == 0) goto L58
                io.netty.channel.epoll.AbstractEpollStreamChannel r6 = io.netty.channel.epoll.AbstractEpollStreamChannel.this     // Catch: java.lang.Throwable -> Lab
                boolean r6 = r6.isActive()     // Catch: java.lang.Throwable -> Lab
                if (r6 == 0) goto L8f
                r4.remove()     // Catch: java.lang.Throwable -> Lab
                goto L8f
            L58:
                r9 = 0
                goto L96
            L5a:
                io.netty.buffer.ByteBuf r6 = r7.allocate(r1)     // Catch: java.lang.Throwable -> Lab
                io.netty.channel.epoll.AbstractEpollStreamChannel r8 = io.netty.channel.epoll.AbstractEpollStreamChannel.this     // Catch: java.lang.Throwable -> La7
                int r8 = r8.doReadBytes(r6)     // Catch: java.lang.Throwable -> La7
                r7.lastBytesRead(r8)     // Catch: java.lang.Throwable -> La7
                int r8 = r7.lastBytesRead()     // Catch: java.lang.Throwable -> La7
                r9 = 1
                if (r8 > 0) goto L7e
                r6.release()     // Catch: java.lang.Throwable -> La7
                int r1 = r7.lastBytesRead()     // Catch: java.lang.Throwable -> Lab
                if (r1 >= 0) goto L78
                goto L79
            L78:
                r9 = 0
            L79:
                if (r9 == 0) goto L96
                r10.readPending = r5     // Catch: java.lang.Throwable -> La2
                goto L96
            L7e:
                r7.incMessagesRead(r9)     // Catch: java.lang.Throwable -> La7
                r10.readPending = r5     // Catch: java.lang.Throwable -> La7
                r3.fireChannelRead(r6)     // Catch: java.lang.Throwable -> La7
                io.netty.channel.epoll.AbstractEpollStreamChannel r6 = io.netty.channel.epoll.AbstractEpollStreamChannel.this     // Catch: java.lang.Throwable -> Lab
                boolean r6 = r6.shouldBreakEpollInReady(r0)     // Catch: java.lang.Throwable -> Lab
                if (r6 == 0) goto L8f
                goto L58
            L8f:
                boolean r6 = r7.continueReading()     // Catch: java.lang.Throwable -> Lab
                if (r6 != 0) goto L33
                goto L58
            L96:
                r7.readComplete()     // Catch: java.lang.Throwable -> La2
                r3.fireChannelReadComplete()     // Catch: java.lang.Throwable -> La2
                if (r9 == 0) goto Lb3
                r10.shutdownInput(r5)     // Catch: java.lang.Throwable -> La2
                goto Lb3
            La2:
                r1 = move-exception
                r5 = r1
                r4 = r2
                r6 = r9
                goto Laf
            La7:
                r1 = move-exception
                r5 = r1
                r4 = r6
                goto Lae
            Lab:
                r1 = move-exception
                r5 = r1
                r4 = r2
            Lae:
                r6 = 0
            Laf:
                r2 = r10
                r2.handleReadException(r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> Lb7
            Lb3:
                r10.epollInFinally(r0)
                return
            Lb7:
                r1 = move-exception
                r10.epollInFinally(r0)
                goto Lbd
            Lbc:
                throw r1
            Lbd:
                goto Lbc
            */
            throw new UnsupportedOperationException("Method not decompiled: io.netty.channel.epoll.AbstractEpollStreamChannel.EpollStreamUnsafe.epollInReady():void");
        }

        @Override // io.netty.channel.epoll.AbstractEpollChannel.AbstractEpollUnsafe
        EpollRecvByteAllocatorHandle newEpollHandle(RecvByteBufAllocator.ExtendedHandle extendedHandle) {
            return new EpollRecvByteAllocatorStreamingHandle(extendedHandle);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.netty.channel.AbstractChannel.AbstractUnsafe
        public Executor prepareToClose() {
            return super.prepareToClose();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class SpliceFdTask extends SpliceInTask {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private final FileDescriptor fd;
        private int offset;
        private final ChannelPromise promise;

        SpliceFdTask(FileDescriptor fileDescriptor, int i2, int i4, ChannelPromise channelPromise) {
            super(i4, channelPromise);
            this.fd = fileDescriptor;
            this.promise = channelPromise;
            this.offset = i2;
        }

        @Override // io.netty.channel.epoll.AbstractEpollStreamChannel.SpliceInTask
        public boolean spliceIn(RecvByteBufAllocator.Handle handle) {
            if (this.len == 0) {
                this.promise.setSuccess();
                return true;
            }
            try {
                FileDescriptor[] pipe = FileDescriptor.pipe();
                FileDescriptor fileDescriptor = pipe[0];
                FileDescriptor fileDescriptor2 = pipe[1];
                int spliceIn = spliceIn(fileDescriptor2, handle);
                if (spliceIn > 0) {
                    int i2 = this.len;
                    if (i2 != Integer.MAX_VALUE) {
                        this.len = i2 - spliceIn;
                    }
                    do {
                        int splice = Native.splice(fileDescriptor.intValue(), -1L, this.fd.intValue(), this.offset, spliceIn);
                        this.offset += splice;
                        spliceIn -= splice;
                    } while (spliceIn > 0);
                    if (this.len == 0) {
                        this.promise.setSuccess();
                        AbstractEpollStreamChannel.safeClosePipe(fileDescriptor);
                        AbstractEpollStreamChannel.safeClosePipe(fileDescriptor2);
                        return true;
                    }
                }
                AbstractEpollStreamChannel.safeClosePipe(fileDescriptor);
                AbstractEpollStreamChannel.safeClosePipe(fileDescriptor2);
                return false;
            } catch (Throwable th) {
                this.promise.setFailure(th);
                return true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class SpliceInChannelTask extends SpliceInTask implements ChannelFutureListener {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private final AbstractEpollStreamChannel ch;

        SpliceInChannelTask(AbstractEpollStreamChannel abstractEpollStreamChannel, int i2, ChannelPromise channelPromise) {
            super(i2, channelPromise);
            this.ch = abstractEpollStreamChannel;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v10, types: [java.util.concurrent.Future, io.netty.channel.ChannelPromise] */
        /* JADX WARN: Type inference failed for: r0v16 */
        @Override // io.netty.channel.epoll.AbstractEpollStreamChannel.SpliceInTask
        public boolean spliceIn(RecvByteBufAllocator.Handle handle) {
            ChannelPromise channelPromise;
            if (this.len != 0) {
                try {
                    FileDescriptor fileDescriptor = this.ch.pipeOut;
                    if (fileDescriptor == null) {
                        FileDescriptor[] pipe = FileDescriptor.pipe();
                        this.ch.pipeIn = pipe[0];
                        fileDescriptor = this.ch.pipeOut = pipe[1];
                    }
                    int spliceIn = spliceIn(fileDescriptor, handle);
                    if (spliceIn > 0) {
                        int i2 = this.len;
                        if (i2 != Integer.MAX_VALUE) {
                            this.len = i2 - spliceIn;
                        }
                        if (this.len == 0) {
                            channelPromise = this.promise;
                        } else {
                            channelPromise = this.ch.newPromise().addListener((GenericFutureListener<? extends Future<? super Void>>) this);
                        }
                        boolean isAutoRead = AbstractEpollStreamChannel.this.config().isAutoRead();
                        this.ch.unsafe().write(new SpliceOutTask(this.ch, spliceIn, isAutoRead), channelPromise);
                        this.ch.unsafe().flush();
                        if (isAutoRead && !channelPromise.isDone()) {
                            AbstractEpollStreamChannel.this.config().setAutoRead(false);
                        }
                    }
                    return this.len == 0;
                } catch (Throwable th) {
                    this.promise.setFailure(th);
                    return true;
                }
            }
            this.promise.setSuccess();
            return true;
        }

        @Override // io.netty.util.concurrent.GenericFutureListener
        public void operationComplete(ChannelFuture channelFuture) throws Exception {
            if (channelFuture.isSuccess()) {
                return;
            }
            this.promise.setFailure(channelFuture.cause());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes5.dex */
    public abstract class SpliceInTask {
        int len;
        final ChannelPromise promise;

        protected SpliceInTask(int i2, ChannelPromise channelPromise) {
            this.promise = channelPromise;
            this.len = i2;
        }

        protected final int spliceIn(FileDescriptor fileDescriptor, RecvByteBufAllocator.Handle handle) throws IOException {
            int min = Math.min(handle.guess(), this.len);
            int i2 = 0;
            while (true) {
                int splice = Native.splice(AbstractEpollStreamChannel.this.socket.intValue(), -1L, fileDescriptor.intValue(), -1L, min);
                if (splice == 0) {
                    return i2;
                }
                i2 += splice;
                min -= splice;
            }
        }

        abstract boolean spliceIn(RecvByteBufAllocator.Handle handle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class SpliceOutTask {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private final boolean autoRead;
        private final AbstractEpollStreamChannel ch;
        private int len;

        SpliceOutTask(AbstractEpollStreamChannel abstractEpollStreamChannel, int i2, boolean z3) {
            this.ch = abstractEpollStreamChannel;
            this.len = i2;
            this.autoRead = z3;
        }

        public boolean spliceOut() throws Exception {
            try {
                int splice = this.len - Native.splice(this.ch.pipeIn.intValue(), -1L, this.ch.socket.intValue(), -1L, this.len);
                this.len = splice;
                if (splice == 0) {
                    if (this.autoRead) {
                        AbstractEpollStreamChannel.this.config().setAutoRead(true);
                    }
                    return true;
                }
                return false;
            } catch (IOException e4) {
                if (this.autoRead) {
                    AbstractEpollStreamChannel.this.config().setAutoRead(true);
                }
                throw e4;
            }
        }
    }

    protected AbstractEpollStreamChannel(Channel channel, int i2) {
        this(channel, new LinuxSocket(i2));
    }

    private void addToSpliceQueue(SpliceInTask spliceInTask) {
        Queue<SpliceInTask> queue = this.spliceQueue;
        if (queue == null) {
            synchronized (this) {
                queue = this.spliceQueue;
                if (queue == null) {
                    queue = PlatformDependent.newMpscQueue();
                    this.spliceQueue = queue;
                }
            }
        }
        queue.add(spliceInTask);
    }

    private void adjustMaxBytesPerGatheringWrite(long j4, long j5, long j6) {
        if (j4 == j5) {
            long j7 = j4 << 1;
            if (j7 > j6) {
                config().setMaxBytesPerGatheringWrite(j7);
            }
        } else if (j4 > 4096) {
            long j8 = j4 >>> 1;
            if (j5 < j8) {
                config().setMaxBytesPerGatheringWrite(j8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearSpliceQueue() {
        Queue<SpliceInTask> queue = this.spliceQueue;
        if (queue == null) {
            return;
        }
        ClosedChannelException closedChannelException = null;
        while (true) {
            SpliceInTask poll = queue.poll();
            if (poll == null) {
                return;
            }
            if (closedChannelException == null) {
                closedChannelException = new ClosedChannelException();
            }
            poll.promise.tryFailure(closedChannelException);
        }
    }

    private int doWriteMultiple(ChannelOutboundBuffer channelOutboundBuffer) throws Exception {
        long maxBytesPerGatheringWrite = config().getMaxBytesPerGatheringWrite();
        IovArray cleanIovArray = ((EpollEventLoop) eventLoop()).cleanIovArray();
        cleanIovArray.maxBytes(maxBytesPerGatheringWrite);
        channelOutboundBuffer.forEachFlushedMessage(cleanIovArray);
        if (cleanIovArray.count() >= 1) {
            return writeBytesMultiple(channelOutboundBuffer, cleanIovArray);
        }
        channelOutboundBuffer.removeBytes(0L);
        return 0;
    }

    private void failSpliceIfClosed(ChannelPromise channelPromise) {
        if (isOpen() || !channelPromise.tryFailure(new ClosedChannelException())) {
            return;
        }
        eventLoop().execute(new Runnable() { // from class: io.netty.channel.epoll.AbstractEpollStreamChannel.2
            @Override // java.lang.Runnable
            public void run() {
                AbstractEpollStreamChannel.this.clearSpliceQueue();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void safeClosePipe(FileDescriptor fileDescriptor) {
        if (fileDescriptor != null) {
            try {
                fileDescriptor.close();
            } catch (IOException e4) {
                logger.warn("Error while closing a pipe", (Throwable) e4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void shutdownDone(ChannelFuture channelFuture, ChannelFuture channelFuture2, ChannelPromise channelPromise) {
        Throwable cause = channelFuture.cause();
        Throwable cause2 = channelFuture2.cause();
        if (cause != null) {
            if (cause2 != null) {
                logger.debug("Exception suppressed because a previous exception occurred.", cause2);
            }
            channelPromise.setFailure(cause);
        } else if (cause2 != null) {
            channelPromise.setFailure(cause2);
        } else {
            channelPromise.setSuccess();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void shutdownInput0(ChannelPromise channelPromise) {
        try {
            this.socket.shutdown(true, false);
            channelPromise.setSuccess();
        } catch (Throwable th) {
            channelPromise.setFailure(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void shutdownOutputDone(final ChannelFuture channelFuture, final ChannelPromise channelPromise) {
        ChannelFuture shutdownInput = shutdownInput();
        if (shutdownInput.isDone()) {
            shutdownDone(channelFuture, shutdownInput, channelPromise);
        } else {
            shutdownInput.addListener((GenericFutureListener<? extends Future<? super Void>>) new ChannelFutureListener() { // from class: io.netty.channel.epoll.AbstractEpollStreamChannel.7
                @Override // io.netty.util.concurrent.GenericFutureListener
                public void operationComplete(ChannelFuture channelFuture2) throws Exception {
                    AbstractEpollStreamChannel.shutdownDone(channelFuture, channelFuture2, channelPromise);
                }
            });
        }
    }

    private int writeBytes(ChannelOutboundBuffer channelOutboundBuffer, ByteBuf byteBuf) throws Exception {
        int readableBytes = byteBuf.readableBytes();
        if (readableBytes == 0) {
            channelOutboundBuffer.remove();
            return 0;
        } else if (!byteBuf.hasMemoryAddress() && byteBuf.nioBufferCount() != 1) {
            ByteBuffer[] nioBuffers = byteBuf.nioBuffers();
            return writeBytesMultiple(channelOutboundBuffer, nioBuffers, nioBuffers.length, readableBytes, config().getMaxBytesPerGatheringWrite());
        } else {
            return doWriteBytes(channelOutboundBuffer, byteBuf);
        }
    }

    private int writeBytesMultiple(ChannelOutboundBuffer channelOutboundBuffer, IovArray iovArray) throws IOException {
        long size = iovArray.size();
        long writevAddresses = this.socket.writevAddresses(iovArray.memoryAddress(0), iovArray.count());
        if (writevAddresses > 0) {
            adjustMaxBytesPerGatheringWrite(size, writevAddresses, iovArray.maxBytes());
            channelOutboundBuffer.removeBytes(writevAddresses);
            return 1;
        }
        return Integer.MAX_VALUE;
    }

    private int writeDefaultFileRegion(ChannelOutboundBuffer channelOutboundBuffer, DefaultFileRegion defaultFileRegion) throws Exception {
        long transferred = defaultFileRegion.transferred();
        long count = defaultFileRegion.count();
        if (transferred >= count) {
            channelOutboundBuffer.remove();
            return 0;
        }
        long sendFile = this.socket.sendFile(defaultFileRegion, defaultFileRegion.position(), transferred, count - transferred);
        if (sendFile <= 0) {
            if (sendFile == 0) {
                validateFileRegion(defaultFileRegion, transferred);
                return Integer.MAX_VALUE;
            }
            return Integer.MAX_VALUE;
        }
        channelOutboundBuffer.progress(sendFile);
        if (defaultFileRegion.transferred() >= count) {
            channelOutboundBuffer.remove();
            return 1;
        }
        return 1;
    }

    private int writeFileRegion(ChannelOutboundBuffer channelOutboundBuffer, FileRegion fileRegion) throws Exception {
        if (fileRegion.transferred() >= fileRegion.count()) {
            channelOutboundBuffer.remove();
            return 0;
        }
        if (this.byteChannel == null) {
            this.byteChannel = new EpollSocketWritableByteChannel();
        }
        long transferTo = fileRegion.transferTo(this.byteChannel, fileRegion.transferred());
        if (transferTo > 0) {
            channelOutboundBuffer.progress(transferTo);
            if (fileRegion.transferred() >= fileRegion.count()) {
                channelOutboundBuffer.remove();
                return 1;
            }
            return 1;
        }
        return Integer.MAX_VALUE;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.channel.epoll.AbstractEpollChannel, io.netty.channel.AbstractChannel
    public void doClose() throws Exception {
        try {
            super.doClose();
        } finally {
            safeClosePipe(this.pipeIn);
            safeClosePipe(this.pipeOut);
            clearSpliceQueue();
        }
    }

    @Override // io.netty.channel.AbstractChannel
    protected final void doShutdownOutput() throws Exception {
        this.socket.shutdown(false, true);
    }

    @Override // io.netty.channel.AbstractChannel
    protected void doWrite(ChannelOutboundBuffer channelOutboundBuffer) throws Exception {
        int doWriteSingle;
        int writeSpinCount = config().getWriteSpinCount();
        do {
            int size = channelOutboundBuffer.size();
            if (size > 1 && (channelOutboundBuffer.current() instanceof ByteBuf)) {
                doWriteSingle = doWriteMultiple(channelOutboundBuffer);
            } else if (size == 0) {
                clearFlag(Native.EPOLLOUT);
                return;
            } else {
                doWriteSingle = doWriteSingle(channelOutboundBuffer);
            }
            writeSpinCount -= doWriteSingle;
        } while (writeSpinCount > 0);
        if (writeSpinCount == 0) {
            clearFlag(Native.EPOLLOUT);
            eventLoop().execute(this.flushTask);
            return;
        }
        setFlag(Native.EPOLLOUT);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int doWriteSingle(ChannelOutboundBuffer channelOutboundBuffer) throws Exception {
        Object current = channelOutboundBuffer.current();
        if (current instanceof ByteBuf) {
            return writeBytes(channelOutboundBuffer, (ByteBuf) current);
        }
        if (current instanceof DefaultFileRegion) {
            return writeDefaultFileRegion(channelOutboundBuffer, (DefaultFileRegion) current);
        }
        if (current instanceof FileRegion) {
            return writeFileRegion(channelOutboundBuffer, (FileRegion) current);
        }
        if (current instanceof SpliceOutTask) {
            if (((SpliceOutTask) current).spliceOut()) {
                channelOutboundBuffer.remove();
                return 1;
            }
            return Integer.MAX_VALUE;
        }
        throw new Error();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.channel.AbstractChannel
    public Object filterOutboundMessage(Object obj) {
        if (obj instanceof ByteBuf) {
            ByteBuf byteBuf = (ByteBuf) obj;
            return UnixChannelUtil.isBufferCopyNeededForWrite(byteBuf) ? newDirectBuffer(byteBuf) : byteBuf;
        } else if ((obj instanceof FileRegion) || (obj instanceof SpliceOutTask)) {
            return obj;
        } else {
            throw new UnsupportedOperationException("unsupported message type: " + StringUtil.simpleClassName(obj) + EXPECTED_TYPES);
        }
    }

    @Override // io.netty.channel.epoll.AbstractEpollChannel, io.netty.channel.Channel
    public /* bridge */ /* synthetic */ boolean isActive() {
        return super.isActive();
    }

    @Override // io.netty.channel.socket.DuplexChannel
    public boolean isInputShutdown() {
        return this.socket.isInputShutdown();
    }

    @Override // io.netty.channel.epoll.AbstractEpollChannel, io.netty.channel.Channel
    public /* bridge */ /* synthetic */ boolean isOpen() {
        return super.isOpen();
    }

    @Override // io.netty.channel.socket.DuplexChannel
    public boolean isOutputShutdown() {
        return this.socket.isOutputShutdown();
    }

    @Override // io.netty.channel.socket.DuplexChannel
    public boolean isShutdown() {
        return this.socket.isShutdown();
    }

    @Override // io.netty.channel.epoll.AbstractEpollChannel, io.netty.channel.Channel
    public ChannelMetadata metadata() {
        return METADATA;
    }

    @Override // io.netty.channel.socket.DuplexChannel
    public ChannelFuture shutdown() {
        return shutdown(newPromise());
    }

    @Override // io.netty.channel.socket.DuplexChannel
    public ChannelFuture shutdownInput() {
        return shutdownInput(newPromise());
    }

    @Override // io.netty.channel.socket.DuplexChannel
    public ChannelFuture shutdownOutput() {
        return shutdownOutput(newPromise());
    }

    public final ChannelFuture spliceTo(AbstractEpollStreamChannel abstractEpollStreamChannel, int i2) {
        return spliceTo(abstractEpollStreamChannel, i2, newPromise());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractEpollStreamChannel(int i2) {
        this(new LinuxSocket(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.channel.epoll.AbstractEpollChannel, io.netty.channel.AbstractChannel
    public AbstractEpollChannel.AbstractEpollUnsafe newUnsafe() {
        return new EpollStreamUnsafe();
    }

    @Override // io.netty.channel.socket.DuplexChannel
    public ChannelFuture shutdown(final ChannelPromise channelPromise) {
        ChannelFuture shutdownOutput = shutdownOutput();
        if (shutdownOutput.isDone()) {
            shutdownOutputDone(shutdownOutput, channelPromise);
        } else {
            shutdownOutput.addListener((GenericFutureListener<? extends Future<? super Void>>) new ChannelFutureListener() { // from class: io.netty.channel.epoll.AbstractEpollStreamChannel.6
                @Override // io.netty.util.concurrent.GenericFutureListener
                public void operationComplete(ChannelFuture channelFuture) throws Exception {
                    AbstractEpollStreamChannel.this.shutdownOutputDone(channelFuture, channelPromise);
                }
            });
        }
        return channelPromise;
    }

    @Override // io.netty.channel.socket.DuplexChannel
    public ChannelFuture shutdownInput(final ChannelPromise channelPromise) {
        Executor prepareToClose = ((EpollStreamUnsafe) unsafe()).prepareToClose();
        if (prepareToClose != null) {
            prepareToClose.execute(new Runnable() { // from class: io.netty.channel.epoll.AbstractEpollStreamChannel.4
                @Override // java.lang.Runnable
                public void run() {
                    AbstractEpollStreamChannel.this.shutdownInput0(channelPromise);
                }
            });
        } else {
            EventLoop eventLoop = eventLoop();
            if (eventLoop.inEventLoop()) {
                shutdownInput0(channelPromise);
            } else {
                eventLoop.execute(new Runnable() { // from class: io.netty.channel.epoll.AbstractEpollStreamChannel.5
                    @Override // java.lang.Runnable
                    public void run() {
                        AbstractEpollStreamChannel.this.shutdownInput0(channelPromise);
                    }
                });
            }
        }
        return channelPromise;
    }

    @Override // io.netty.channel.socket.DuplexChannel
    public ChannelFuture shutdownOutput(final ChannelPromise channelPromise) {
        EventLoop eventLoop = eventLoop();
        if (eventLoop.inEventLoop()) {
            ((AbstractChannel.AbstractUnsafe) unsafe()).shutdownOutput(channelPromise);
        } else {
            eventLoop.execute(new Runnable() { // from class: io.netty.channel.epoll.AbstractEpollStreamChannel.3
                @Override // java.lang.Runnable
                public void run() {
                    ((AbstractChannel.AbstractUnsafe) AbstractEpollStreamChannel.this.unsafe()).shutdownOutput(channelPromise);
                }
            });
        }
        return channelPromise;
    }

    public final ChannelFuture spliceTo(AbstractEpollStreamChannel abstractEpollStreamChannel, int i2, ChannelPromise channelPromise) {
        if (abstractEpollStreamChannel.eventLoop() == eventLoop()) {
            ObjectUtil.checkPositiveOrZero(i2, "len");
            EpollMode epollMode = abstractEpollStreamChannel.config().getEpollMode();
            EpollMode epollMode2 = EpollMode.LEVEL_TRIGGERED;
            if (epollMode == epollMode2 && config().getEpollMode() == epollMode2) {
                ObjectUtil.checkNotNull(channelPromise, "promise");
                if (!isOpen()) {
                    channelPromise.tryFailure(new ClosedChannelException());
                } else {
                    addToSpliceQueue(new SpliceInChannelTask(abstractEpollStreamChannel, i2, channelPromise));
                    failSpliceIfClosed(channelPromise);
                }
                return channelPromise;
            }
            throw new IllegalStateException("spliceTo() supported only when using " + epollMode2);
        }
        throw new IllegalArgumentException("EventLoops are not the same.");
    }

    AbstractEpollStreamChannel(LinuxSocket linuxSocket) {
        this(linuxSocket, AbstractEpollChannel.isSoErrorZero(linuxSocket));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractEpollStreamChannel(Channel channel, LinuxSocket linuxSocket) {
        super(channel, linuxSocket, true);
        this.flushTask = new Runnable() { // from class: io.netty.channel.epoll.AbstractEpollStreamChannel.1
            @Override // java.lang.Runnable
            public void run() {
                ((AbstractEpollChannel.AbstractEpollUnsafe) AbstractEpollStreamChannel.this.unsafe()).flush0();
            }
        };
        this.flags |= Native.EPOLLRDHUP;
    }

    private int writeBytesMultiple(ChannelOutboundBuffer channelOutboundBuffer, ByteBuffer[] byteBufferArr, int i2, long j4, long j5) throws IOException {
        if (j4 > j5) {
            j4 = j5;
        }
        long writev = this.socket.writev(byteBufferArr, 0, i2, j4);
        if (writev > 0) {
            adjustMaxBytesPerGatheringWrite(j4, writev, j5);
            channelOutboundBuffer.removeBytes(writev);
            return 1;
        }
        return Integer.MAX_VALUE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractEpollStreamChannel(Channel channel, LinuxSocket linuxSocket, SocketAddress socketAddress) {
        super(channel, linuxSocket, socketAddress);
        this.flushTask = new Runnable() { // from class: io.netty.channel.epoll.AbstractEpollStreamChannel.1
            @Override // java.lang.Runnable
            public void run() {
                ((AbstractEpollChannel.AbstractEpollUnsafe) AbstractEpollStreamChannel.this.unsafe()).flush0();
            }
        };
        this.flags |= Native.EPOLLRDHUP;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractEpollStreamChannel(LinuxSocket linuxSocket, boolean z3) {
        super((Channel) null, linuxSocket, z3);
        this.flushTask = new Runnable() { // from class: io.netty.channel.epoll.AbstractEpollStreamChannel.1
            @Override // java.lang.Runnable
            public void run() {
                ((AbstractEpollChannel.AbstractEpollUnsafe) AbstractEpollStreamChannel.this.unsafe()).flush0();
            }
        };
        this.flags |= Native.EPOLLRDHUP;
    }

    public final ChannelFuture spliceTo(FileDescriptor fileDescriptor, int i2, int i4) {
        return spliceTo(fileDescriptor, i2, i4, newPromise());
    }

    public final ChannelFuture spliceTo(FileDescriptor fileDescriptor, int i2, int i4, ChannelPromise channelPromise) {
        ObjectUtil.checkPositiveOrZero(i4, "len");
        ObjectUtil.checkPositiveOrZero(i2, "offset");
        EpollMode epollMode = config().getEpollMode();
        EpollMode epollMode2 = EpollMode.LEVEL_TRIGGERED;
        if (epollMode == epollMode2) {
            ObjectUtil.checkNotNull(channelPromise, "promise");
            if (!isOpen()) {
                channelPromise.tryFailure(new ClosedChannelException());
            } else {
                addToSpliceQueue(new SpliceFdTask(fileDescriptor, i2, i4, channelPromise));
                failSpliceIfClosed(channelPromise);
            }
            return channelPromise;
        }
        throw new IllegalStateException("spliceTo() supported only when using " + epollMode2);
    }
}
