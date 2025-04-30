package io.netty.channel.epoll;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufAllocator;
import io.netty.buffer.ByteBufUtil;
import io.netty.buffer.Unpooled;
import io.netty.channel.AbstractChannel;
import io.netty.channel.Channel;
import io.netty.channel.ChannelConfig;
import io.netty.channel.ChannelException;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelFutureListener;
import io.netty.channel.ChannelMetadata;
import io.netty.channel.ChannelOutboundBuffer;
import io.netty.channel.ChannelPromise;
import io.netty.channel.ConnectTimeoutException;
import io.netty.channel.EventLoop;
import io.netty.channel.RecvByteBufAllocator;
import io.netty.channel.socket.ChannelInputShutdownEvent;
import io.netty.channel.socket.ChannelInputShutdownReadComplete;
import io.netty.channel.socket.SocketChannelConfig;
import io.netty.channel.unix.FileDescriptor;
import io.netty.channel.unix.Socket;
import io.netty.channel.unix.UnixChannel;
import io.netty.channel.unix.UnixChannelUtil;
import io.netty.util.ReferenceCountUtil;
import io.netty.util.concurrent.Future;
import io.netty.util.concurrent.GenericFutureListener;
import io.netty.util.internal.ObjectUtil;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.AlreadyConnectedException;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.ConnectionPendingException;
import java.nio.channels.NotYetConnectedException;
import java.nio.channels.UnresolvedAddressException;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class AbstractEpollChannel extends AbstractChannel implements UnixChannel {
    private static final ChannelMetadata METADATA = new ChannelMetadata(false);
    protected volatile boolean active;
    private ChannelPromise connectPromise;
    private ScheduledFuture<?> connectTimeoutFuture;
    boolean epollInReadyRunnablePending;
    protected int flags;
    boolean inputClosedSeenErrorOnRead;
    private volatile SocketAddress local;
    private volatile SocketAddress remote;
    private SocketAddress requestedRemoteAddress;
    final LinuxSocket socket;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes5.dex */
    public abstract class AbstractEpollUnsafe extends AbstractChannel.AbstractUnsafe {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private EpollRecvByteAllocatorHandle allocHandle;
        private final Runnable epollInReadyRunnable;
        boolean maybeMoreDataToRead;
        boolean readPending;

        /* JADX INFO: Access modifiers changed from: protected */
        public AbstractEpollUnsafe() {
            super();
            this.epollInReadyRunnable = new Runnable() { // from class: io.netty.channel.epoll.AbstractEpollChannel.AbstractEpollUnsafe.1
                @Override // java.lang.Runnable
                public void run() {
                    AbstractEpollUnsafe abstractEpollUnsafe = AbstractEpollUnsafe.this;
                    AbstractEpollChannel.this.epollInReadyRunnablePending = false;
                    abstractEpollUnsafe.epollInReady();
                }
            };
        }

        private void clearEpollRdHup() {
            try {
                AbstractEpollChannel.this.clearFlag(Native.EPOLLRDHUP);
            } catch (IOException e4) {
                AbstractEpollChannel.this.pipeline().fireExceptionCaught((Throwable) e4);
                close(voidPromise());
            }
        }

        private boolean doFinishConnect() throws Exception {
            if (AbstractEpollChannel.this.socket.finishConnect()) {
                AbstractEpollChannel.this.clearFlag(Native.EPOLLOUT);
                if (AbstractEpollChannel.this.requestedRemoteAddress instanceof InetSocketAddress) {
                    AbstractEpollChannel abstractEpollChannel = AbstractEpollChannel.this;
                    abstractEpollChannel.remote = UnixChannelUtil.computeRemoteAddr((InetSocketAddress) abstractEpollChannel.requestedRemoteAddress, AbstractEpollChannel.this.socket.remoteAddress());
                }
                AbstractEpollChannel.this.requestedRemoteAddress = null;
                return true;
            }
            AbstractEpollChannel.this.setFlag(Native.EPOLLOUT);
            return false;
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0049, code lost:
            if (r5.this$0.connectTimeoutFuture == null) goto L11;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x004c, code lost:
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void finishConnect() {
            /*
                r5 = this;
                r0 = 0
                r1 = 0
                io.netty.channel.epoll.AbstractEpollChannel r2 = io.netty.channel.epoll.AbstractEpollChannel.this     // Catch: java.lang.Throwable -> L2f
                boolean r2 = r2.isActive()     // Catch: java.lang.Throwable -> L2f
                boolean r3 = r5.doFinishConnect()     // Catch: java.lang.Throwable -> L2f
                if (r3 != 0) goto Lf
                return
            Lf:
                io.netty.channel.epoll.AbstractEpollChannel r3 = io.netty.channel.epoll.AbstractEpollChannel.this     // Catch: java.lang.Throwable -> L2f
                io.netty.channel.ChannelPromise r3 = io.netty.channel.epoll.AbstractEpollChannel.access$100(r3)     // Catch: java.lang.Throwable -> L2f
                r5.fulfillConnectPromise(r3, r2)     // Catch: java.lang.Throwable -> L2f
                io.netty.channel.epoll.AbstractEpollChannel r2 = io.netty.channel.epoll.AbstractEpollChannel.this
                java.util.concurrent.ScheduledFuture r2 = io.netty.channel.epoll.AbstractEpollChannel.access$300(r2)
                if (r2 == 0) goto L29
            L20:
                io.netty.channel.epoll.AbstractEpollChannel r2 = io.netty.channel.epoll.AbstractEpollChannel.this
                java.util.concurrent.ScheduledFuture r2 = io.netty.channel.epoll.AbstractEpollChannel.access$300(r2)
                r2.cancel(r0)
            L29:
                io.netty.channel.epoll.AbstractEpollChannel r0 = io.netty.channel.epoll.AbstractEpollChannel.this
                io.netty.channel.epoll.AbstractEpollChannel.access$102(r0, r1)
                goto L4c
            L2f:
                r2 = move-exception
                io.netty.channel.epoll.AbstractEpollChannel r3 = io.netty.channel.epoll.AbstractEpollChannel.this     // Catch: java.lang.Throwable -> L4d
                io.netty.channel.ChannelPromise r3 = io.netty.channel.epoll.AbstractEpollChannel.access$100(r3)     // Catch: java.lang.Throwable -> L4d
                io.netty.channel.epoll.AbstractEpollChannel r4 = io.netty.channel.epoll.AbstractEpollChannel.this     // Catch: java.lang.Throwable -> L4d
                java.net.SocketAddress r4 = io.netty.channel.epoll.AbstractEpollChannel.access$200(r4)     // Catch: java.lang.Throwable -> L4d
                java.lang.Throwable r2 = r5.annotateConnectException(r2, r4)     // Catch: java.lang.Throwable -> L4d
                r5.fulfillConnectPromise(r3, r2)     // Catch: java.lang.Throwable -> L4d
                io.netty.channel.epoll.AbstractEpollChannel r2 = io.netty.channel.epoll.AbstractEpollChannel.this
                java.util.concurrent.ScheduledFuture r2 = io.netty.channel.epoll.AbstractEpollChannel.access$300(r2)
                if (r2 == 0) goto L29
                goto L20
            L4c:
                return
            L4d:
                r2 = move-exception
                io.netty.channel.epoll.AbstractEpollChannel r3 = io.netty.channel.epoll.AbstractEpollChannel.this
                java.util.concurrent.ScheduledFuture r3 = io.netty.channel.epoll.AbstractEpollChannel.access$300(r3)
                if (r3 == 0) goto L5f
                io.netty.channel.epoll.AbstractEpollChannel r3 = io.netty.channel.epoll.AbstractEpollChannel.this
                java.util.concurrent.ScheduledFuture r3 = io.netty.channel.epoll.AbstractEpollChannel.access$300(r3)
                r3.cancel(r0)
            L5f:
                io.netty.channel.epoll.AbstractEpollChannel r0 = io.netty.channel.epoll.AbstractEpollChannel.this
                io.netty.channel.epoll.AbstractEpollChannel.access$102(r0, r1)
                goto L66
            L65:
                throw r2
            L66:
                goto L65
            */
            throw new UnsupportedOperationException("Method not decompiled: io.netty.channel.epoll.AbstractEpollChannel.AbstractEpollUnsafe.finishConnect():void");
        }

        private void fireEventAndClose(Object obj) {
            AbstractEpollChannel.this.pipeline().fireUserEventTriggered(obj);
            close(voidPromise());
        }

        private void fulfillConnectPromise(ChannelPromise channelPromise, boolean z3) {
            if (channelPromise == null) {
                return;
            }
            AbstractEpollChannel.this.active = true;
            boolean isActive = AbstractEpollChannel.this.isActive();
            boolean trySuccess = channelPromise.trySuccess();
            if (!z3 && isActive) {
                AbstractEpollChannel.this.pipeline().fireChannelActive();
            }
            if (trySuccess) {
                return;
            }
            close(voidPromise());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final void clearEpollIn0() {
            try {
                this.readPending = false;
                AbstractEpollChannel.this.clearFlag(Native.EPOLLIN);
            } catch (IOException e4) {
                AbstractEpollChannel.this.pipeline().fireExceptionCaught((Throwable) e4);
                AbstractEpollChannel.this.unsafe().close(AbstractEpollChannel.this.unsafe().voidPromise());
            }
        }

        @Override // io.netty.channel.Channel.Unsafe
        public void connect(final SocketAddress socketAddress, SocketAddress socketAddress2, ChannelPromise channelPromise) {
            if (channelPromise.setUncancellable() && ensureOpen(channelPromise)) {
                try {
                    if (AbstractEpollChannel.this.connectPromise == null) {
                        boolean isActive = AbstractEpollChannel.this.isActive();
                        if (!AbstractEpollChannel.this.doConnect(socketAddress, socketAddress2)) {
                            AbstractEpollChannel.this.connectPromise = channelPromise;
                            AbstractEpollChannel.this.requestedRemoteAddress = socketAddress;
                            int connectTimeoutMillis = AbstractEpollChannel.this.config().getConnectTimeoutMillis();
                            if (connectTimeoutMillis > 0) {
                                AbstractEpollChannel abstractEpollChannel = AbstractEpollChannel.this;
                                abstractEpollChannel.connectTimeoutFuture = abstractEpollChannel.eventLoop().schedule(new Runnable() { // from class: io.netty.channel.epoll.AbstractEpollChannel.AbstractEpollUnsafe.2
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        ChannelPromise channelPromise2 = AbstractEpollChannel.this.connectPromise;
                                        ConnectTimeoutException connectTimeoutException = new ConnectTimeoutException("connection timed out: " + socketAddress);
                                        if (channelPromise2 == null || !channelPromise2.tryFailure(connectTimeoutException)) {
                                            return;
                                        }
                                        AbstractEpollUnsafe abstractEpollUnsafe = AbstractEpollUnsafe.this;
                                        abstractEpollUnsafe.close(abstractEpollUnsafe.voidPromise());
                                    }
                                }, connectTimeoutMillis, TimeUnit.MILLISECONDS);
                            }
                            channelPromise.addListener((GenericFutureListener<? extends Future<? super Void>>) new ChannelFutureListener() { // from class: io.netty.channel.epoll.AbstractEpollChannel.AbstractEpollUnsafe.3
                                @Override // io.netty.util.concurrent.GenericFutureListener
                                public void operationComplete(ChannelFuture channelFuture) throws Exception {
                                    if (channelFuture.isCancelled()) {
                                        if (AbstractEpollChannel.this.connectTimeoutFuture != null) {
                                            AbstractEpollChannel.this.connectTimeoutFuture.cancel(false);
                                        }
                                        AbstractEpollChannel.this.connectPromise = null;
                                        AbstractEpollUnsafe abstractEpollUnsafe = AbstractEpollUnsafe.this;
                                        abstractEpollUnsafe.close(abstractEpollUnsafe.voidPromise());
                                    }
                                }
                            });
                            return;
                        }
                        fulfillConnectPromise(channelPromise, isActive);
                        return;
                    }
                    throw new ConnectionPendingException();
                } catch (Throwable th) {
                    closeIfClosed();
                    channelPromise.tryFailure(annotateConnectException(th, socketAddress));
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void epollInBefore() {
            this.maybeMoreDataToRead = false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void epollInFinally(ChannelConfig channelConfig) {
            boolean z3;
            this.maybeMoreDataToRead = this.allocHandle.maybeMoreDataToRead();
            if (!this.allocHandle.isReceivedRdHup() && (!(z3 = this.readPending) || !this.maybeMoreDataToRead)) {
                if (z3 || channelConfig.isAutoRead()) {
                    return;
                }
                AbstractEpollChannel.this.clearEpollIn();
                return;
            }
            executeEpollInReadyRunnable(channelConfig);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract void epollInReady();

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void epollOutReady() {
            if (AbstractEpollChannel.this.connectPromise != null) {
                finishConnect();
            } else if (AbstractEpollChannel.this.socket.isOutputShutdown()) {
            } else {
                super.flush0();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void epollRdHupReady() {
            recvBufAllocHandle().receivedRdHup();
            if (AbstractEpollChannel.this.isActive()) {
                epollInReady();
            } else {
                shutdownInput(true);
            }
            clearEpollRdHup();
        }

        final void executeEpollInReadyRunnable(ChannelConfig channelConfig) {
            AbstractEpollChannel abstractEpollChannel = AbstractEpollChannel.this;
            if (abstractEpollChannel.epollInReadyRunnablePending || !abstractEpollChannel.isActive() || AbstractEpollChannel.this.shouldBreakEpollInReady(channelConfig)) {
                return;
            }
            AbstractEpollChannel abstractEpollChannel2 = AbstractEpollChannel.this;
            abstractEpollChannel2.epollInReadyRunnablePending = true;
            abstractEpollChannel2.eventLoop().execute(this.epollInReadyRunnable);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.netty.channel.AbstractChannel.AbstractUnsafe
        public final void flush0() {
            if (AbstractEpollChannel.this.isFlagSet(Native.EPOLLOUT)) {
                return;
            }
            super.flush0();
        }

        EpollRecvByteAllocatorHandle newEpollHandle(RecvByteBufAllocator.ExtendedHandle extendedHandle) {
            return new EpollRecvByteAllocatorHandle(extendedHandle);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void shutdownInput(boolean z3) {
            if (AbstractEpollChannel.this.socket.isInputShutdown()) {
                if (z3) {
                    return;
                }
                AbstractEpollChannel abstractEpollChannel = AbstractEpollChannel.this;
                abstractEpollChannel.inputClosedSeenErrorOnRead = true;
                abstractEpollChannel.pipeline().fireUserEventTriggered((Object) ChannelInputShutdownReadComplete.INSTANCE);
            } else if (AbstractEpollChannel.isAllowHalfClosure(AbstractEpollChannel.this.config())) {
                try {
                    AbstractEpollChannel.this.socket.shutdown(true, false);
                } catch (IOException unused) {
                    fireEventAndClose(ChannelInputShutdownEvent.INSTANCE);
                    return;
                } catch (NotYetConnectedException unused2) {
                }
                AbstractEpollChannel.this.clearEpollIn();
                AbstractEpollChannel.this.pipeline().fireUserEventTriggered((Object) ChannelInputShutdownEvent.INSTANCE);
            } else {
                close(voidPromise());
            }
        }

        @Override // io.netty.channel.AbstractChannel.AbstractUnsafe, io.netty.channel.Channel.Unsafe
        public EpollRecvByteAllocatorHandle recvBufAllocHandle() {
            if (this.allocHandle == null) {
                this.allocHandle = newEpollHandle((RecvByteBufAllocator.ExtendedHandle) super.recvBufAllocHandle());
            }
            return this.allocHandle;
        }

        private void fulfillConnectPromise(ChannelPromise channelPromise, Throwable th) {
            if (channelPromise == null) {
                return;
            }
            channelPromise.tryFailure(th);
            closeIfClosed();
        }
    }

    AbstractEpollChannel(LinuxSocket linuxSocket) {
        this((Channel) null, linuxSocket, false);
    }

    protected static void checkResolvable(InetSocketAddress inetSocketAddress) {
        if (inetSocketAddress.isUnresolved()) {
            throw new UnresolvedAddressException();
        }
    }

    private boolean doConnect0(SocketAddress socketAddress) throws Exception {
        try {
            boolean connect = this.socket.connect(socketAddress);
            if (!connect) {
                setFlag(Native.EPOLLOUT);
            }
            return connect;
        } catch (Throwable th) {
            doClose();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isAllowHalfClosure(ChannelConfig channelConfig) {
        if (channelConfig instanceof EpollDomainSocketChannelConfig) {
            return ((EpollDomainSocketChannelConfig) channelConfig).isAllowHalfClosure();
        }
        return (channelConfig instanceof SocketChannelConfig) && ((SocketChannelConfig) channelConfig).isAllowHalfClosure();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isSoErrorZero(Socket socket) {
        try {
            return socket.getSoError() == 0;
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    private void modifyEvents() throws IOException {
        if (isOpen() && isRegistered()) {
            ((EpollEventLoop) eventLoop()).modify(this);
        }
    }

    private static ByteBuf newDirectBuffer0(Object obj, ByteBuf byteBuf, ByteBufAllocator byteBufAllocator, int i2) {
        ByteBuf directBuffer = byteBufAllocator.directBuffer(i2);
        directBuffer.writeBytes(byteBuf, byteBuf.readerIndex(), i2);
        ReferenceCountUtil.safeRelease(obj);
        return directBuffer;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void clearEpollIn() {
        if (isRegistered()) {
            EventLoop eventLoop = eventLoop();
            final AbstractEpollUnsafe abstractEpollUnsafe = (AbstractEpollUnsafe) unsafe();
            if (eventLoop.inEventLoop()) {
                abstractEpollUnsafe.clearEpollIn0();
                return;
            } else {
                eventLoop.execute(new Runnable() { // from class: io.netty.channel.epoll.AbstractEpollChannel.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (abstractEpollUnsafe.readPending || AbstractEpollChannel.this.config().isAutoRead()) {
                            return;
                        }
                        abstractEpollUnsafe.clearEpollIn0();
                    }
                });
                return;
            }
        }
        this.flags &= Native.EPOLLIN ^ (-1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clearFlag(int i2) throws IOException {
        if (isFlagSet(i2)) {
            this.flags = (i2 ^ (-1)) & this.flags;
            modifyEvents();
        }
    }

    @Override // io.netty.channel.Channel
    public abstract EpollChannelConfig config();

    @Override // io.netty.channel.AbstractChannel
    protected final void doBeginRead() throws Exception {
        AbstractEpollUnsafe abstractEpollUnsafe = (AbstractEpollUnsafe) unsafe();
        abstractEpollUnsafe.readPending = true;
        setFlag(Native.EPOLLIN);
        if (abstractEpollUnsafe.maybeMoreDataToRead) {
            abstractEpollUnsafe.executeEpollInReadyRunnable(config());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.channel.AbstractChannel
    public void doBind(SocketAddress socketAddress) throws Exception {
        if (socketAddress instanceof InetSocketAddress) {
            checkResolvable((InetSocketAddress) socketAddress);
        }
        this.socket.bind(socketAddress);
        this.local = this.socket.localAddress();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.channel.AbstractChannel
    public void doClose() throws Exception {
        this.active = false;
        this.inputClosedSeenErrorOnRead = true;
        try {
            ChannelPromise channelPromise = this.connectPromise;
            if (channelPromise != null) {
                channelPromise.tryFailure(new ClosedChannelException());
                this.connectPromise = null;
            }
            ScheduledFuture<?> scheduledFuture = this.connectTimeoutFuture;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(false);
                this.connectTimeoutFuture = null;
            }
            if (isRegistered()) {
                EventLoop eventLoop = eventLoop();
                if (eventLoop.inEventLoop()) {
                    doDeregister();
                } else {
                    eventLoop.execute(new Runnable() { // from class: io.netty.channel.epoll.AbstractEpollChannel.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                AbstractEpollChannel.this.doDeregister();
                            } catch (Throwable th) {
                                AbstractEpollChannel.this.pipeline().fireExceptionCaught(th);
                            }
                        }
                    });
                }
            }
        } finally {
            this.socket.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean doConnect(SocketAddress socketAddress, SocketAddress socketAddress2) throws Exception {
        if (socketAddress2 instanceof InetSocketAddress) {
            checkResolvable((InetSocketAddress) socketAddress2);
        }
        InetSocketAddress inetSocketAddress = socketAddress instanceof InetSocketAddress ? (InetSocketAddress) socketAddress : null;
        if (inetSocketAddress != null) {
            checkResolvable(inetSocketAddress);
        }
        if (this.remote == null) {
            if (socketAddress2 != null) {
                this.socket.bind(socketAddress2);
            }
            boolean doConnect0 = doConnect0(socketAddress);
            if (doConnect0) {
                if (inetSocketAddress != null) {
                    socketAddress = UnixChannelUtil.computeRemoteAddr(inetSocketAddress, this.socket.remoteAddress());
                }
                this.remote = socketAddress;
            }
            this.local = this.socket.localAddress();
            return doConnect0;
        }
        throw new AlreadyConnectedException();
    }

    @Override // io.netty.channel.AbstractChannel
    protected void doDeregister() throws Exception {
        ((EpollEventLoop) eventLoop()).remove(this);
    }

    @Override // io.netty.channel.AbstractChannel
    protected void doDisconnect() throws Exception {
        doClose();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int doReadBytes(ByteBuf byteBuf) throws Exception {
        int read;
        int writerIndex = byteBuf.writerIndex();
        unsafe().recvBufAllocHandle().attemptedBytesRead(byteBuf.writableBytes());
        if (byteBuf.hasMemoryAddress()) {
            read = this.socket.readAddress(byteBuf.memoryAddress(), writerIndex, byteBuf.capacity());
        } else {
            ByteBuffer internalNioBuffer = byteBuf.internalNioBuffer(writerIndex, byteBuf.writableBytes());
            read = this.socket.read(internalNioBuffer, internalNioBuffer.position(), internalNioBuffer.limit());
        }
        if (read > 0) {
            byteBuf.writerIndex(writerIndex + read);
        }
        return read;
    }

    @Override // io.netty.channel.AbstractChannel
    protected void doRegister() throws Exception {
        this.epollInReadyRunnablePending = false;
        ((EpollEventLoop) eventLoop()).add(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int doWriteBytes(ChannelOutboundBuffer channelOutboundBuffer, ByteBuf byteBuf) throws Exception {
        if (byteBuf.hasMemoryAddress()) {
            int writeAddress = this.socket.writeAddress(byteBuf.memoryAddress(), byteBuf.readerIndex(), byteBuf.writerIndex());
            if (writeAddress > 0) {
                channelOutboundBuffer.removeBytes(writeAddress);
                return 1;
            }
            return Integer.MAX_VALUE;
        }
        ByteBuffer internalNioBuffer = byteBuf.nioBufferCount() == 1 ? byteBuf.internalNioBuffer(byteBuf.readerIndex(), byteBuf.readableBytes()) : byteBuf.nioBuffer();
        int write = this.socket.write(internalNioBuffer, internalNioBuffer.position(), internalNioBuffer.limit());
        if (write > 0) {
            internalNioBuffer.position(internalNioBuffer.position() + write);
            channelOutboundBuffer.removeBytes(write);
            return 1;
        }
        return Integer.MAX_VALUE;
    }

    @Override // io.netty.channel.unix.UnixChannel
    public final FileDescriptor fd() {
        return this.socket;
    }

    @Override // io.netty.channel.Channel
    public boolean isActive() {
        return this.active;
    }

    @Override // io.netty.channel.AbstractChannel
    protected boolean isCompatible(EventLoop eventLoop) {
        return eventLoop instanceof EpollEventLoop;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isFlagSet(int i2) {
        return (i2 & this.flags) != 0;
    }

    @Override // io.netty.channel.Channel
    public boolean isOpen() {
        return this.socket.isOpen();
    }

    @Override // io.netty.channel.AbstractChannel
    protected SocketAddress localAddress0() {
        return this.local;
    }

    @Override // io.netty.channel.Channel
    public ChannelMetadata metadata() {
        return METADATA;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final ByteBuf newDirectBuffer(ByteBuf byteBuf) {
        return newDirectBuffer(byteBuf, byteBuf);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.channel.AbstractChannel
    public abstract AbstractEpollUnsafe newUnsafe();

    @Override // io.netty.channel.AbstractChannel
    protected SocketAddress remoteAddress0() {
        return this.remote;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void resetCachedAddresses() {
        this.local = this.socket.localAddress();
        this.remote = this.socket.remoteAddress();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setFlag(int i2) throws IOException {
        if (isFlagSet(i2)) {
            return;
        }
        this.flags = i2 | this.flags;
        modifyEvents();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean shouldBreakEpollInReady(ChannelConfig channelConfig) {
        return this.socket.isInputShutdown() && (this.inputClosedSeenErrorOnRead || !isAllowHalfClosure(channelConfig));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractEpollChannel(Channel channel, LinuxSocket linuxSocket, boolean z3) {
        super(channel);
        this.flags = Native.EPOLLET;
        this.socket = (LinuxSocket) ObjectUtil.checkNotNull(linuxSocket, IjkMediaPlayer.OnNativeInvokeListener.ARG_FD);
        this.active = z3;
        if (z3) {
            this.local = linuxSocket.localAddress();
            this.remote = linuxSocket.remoteAddress();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final ByteBuf newDirectBuffer(Object obj, ByteBuf byteBuf) {
        int readableBytes = byteBuf.readableBytes();
        if (readableBytes == 0) {
            ReferenceCountUtil.release(obj);
            return Unpooled.EMPTY_BUFFER;
        }
        ByteBufAllocator alloc = alloc();
        if (alloc.isDirectBufferPooled()) {
            return newDirectBuffer0(obj, byteBuf, alloc, readableBytes);
        }
        ByteBuf threadLocalDirectBuffer = ByteBufUtil.threadLocalDirectBuffer();
        if (threadLocalDirectBuffer == null) {
            return newDirectBuffer0(obj, byteBuf, alloc, readableBytes);
        }
        threadLocalDirectBuffer.writeBytes(byteBuf, byteBuf.readerIndex(), readableBytes);
        ReferenceCountUtil.safeRelease(obj);
        return threadLocalDirectBuffer;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractEpollChannel(Channel channel, LinuxSocket linuxSocket, SocketAddress socketAddress) {
        super(channel);
        this.flags = Native.EPOLLET;
        this.socket = (LinuxSocket) ObjectUtil.checkNotNull(linuxSocket, IjkMediaPlayer.OnNativeInvokeListener.ARG_FD);
        this.active = true;
        this.remote = socketAddress;
        this.local = linuxSocket.localAddress();
    }
}
