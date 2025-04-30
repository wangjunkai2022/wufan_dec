package io.netty.channel.kqueue;

import io.netty.channel.Channel;
import io.netty.channel.EventLoop;
import io.netty.channel.socket.ServerSocketChannel;
import io.netty.channel.unix.NativeInetAddress;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
/* loaded from: classes5.dex */
public final class KQueueServerSocketChannel extends AbstractKQueueServerChannel implements ServerSocketChannel {
    private final KQueueServerSocketChannelConfig config;

    public KQueueServerSocketChannel() {
        super(BsdSocket.newSocketStream(), false);
        this.config = new KQueueServerSocketChannelConfig(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.channel.kqueue.AbstractKQueueChannel, io.netty.channel.AbstractChannel
    public void doBind(SocketAddress socketAddress) throws Exception {
        super.doBind(socketAddress);
        this.socket.listen(this.config.getBacklog());
        this.active = true;
    }

    @Override // io.netty.channel.kqueue.AbstractKQueueServerChannel, io.netty.channel.kqueue.AbstractKQueueChannel, io.netty.channel.AbstractChannel
    protected boolean isCompatible(EventLoop eventLoop) {
        return eventLoop instanceof KQueueEventLoop;
    }

    @Override // io.netty.channel.kqueue.AbstractKQueueServerChannel
    protected Channel newChildChannel(int i2, byte[] bArr, int i4, int i5) throws Exception {
        return new KQueueSocketChannel(this, new BsdSocket(i2), NativeInetAddress.address(bArr, i4, i5));
    }

    @Override // io.netty.channel.AbstractChannel, io.netty.channel.Channel
    public InetSocketAddress localAddress() {
        return (InetSocketAddress) super.localAddress();
    }

    @Override // io.netty.channel.AbstractChannel, io.netty.channel.Channel
    public InetSocketAddress remoteAddress() {
        return (InetSocketAddress) super.remoteAddress();
    }

    public KQueueServerSocketChannel(int i2) {
        this(new BsdSocket(i2));
    }

    KQueueServerSocketChannel(BsdSocket bsdSocket) {
        super(bsdSocket);
        this.config = new KQueueServerSocketChannelConfig(this);
    }

    @Override // io.netty.channel.kqueue.AbstractKQueueChannel, io.netty.channel.Channel
    public KQueueServerSocketChannelConfig config() {
        return this.config;
    }

    KQueueServerSocketChannel(BsdSocket bsdSocket, boolean z3) {
        super(bsdSocket, z3);
        this.config = new KQueueServerSocketChannelConfig(this);
    }
}
