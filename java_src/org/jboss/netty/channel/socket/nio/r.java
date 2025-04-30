package org.jboss.netty.channel.socket.nio;

import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.nio.channels.SocketChannel;
/* compiled from: NioSocketChannel.java */
/* loaded from: classes5.dex */
public class r extends b<SocketChannel> implements k3.d {
    private static final int D = 0;
    private static final int E = 1;
    private static final int F = 2;
    private static final int G = -1;
    static final /* synthetic */ boolean H = false;
    volatile int B;
    private final s C;

    public r(org.jboss.netty.channel.e eVar, org.jboss.netty.channel.i iVar, org.jboss.netty.channel.n nVar, org.jboss.netty.channel.p pVar, SocketChannel socketChannel, t tVar) {
        super(eVar, iVar, nVar, pVar, tVar, socketChannel);
        this.B = 0;
        this.C = new i(socketChannel.socket());
    }

    @Override // org.jboss.netty.channel.socket.nio.b, org.jboss.netty.channel.e
    /* renamed from: M0 */
    public s getConfig() {
        return this.C;
    }

    @Override // org.jboss.netty.channel.socket.nio.b
    /* renamed from: N0 */
    public t y0() {
        return (t) super.y0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void O0() {
        this.B = 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void P0() {
        if (this.B != -1) {
            this.B = 2;
        }
    }

    @Override // org.jboss.netty.channel.socket.nio.b, org.jboss.netty.channel.a, org.jboss.netty.channel.e
    public /* bridge */ /* synthetic */ int Q() {
        return super.Q();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.jboss.netty.channel.socket.nio.b, org.jboss.netty.channel.a
    public boolean Y() {
        if (super.Y()) {
            this.B = -1;
            return true;
        }
        return false;
    }

    @Override // org.jboss.netty.channel.socket.nio.b, org.jboss.netty.channel.e
    public /* bridge */ /* synthetic */ InetSocketAddress getLocalAddress() {
        return super.getLocalAddress();
    }

    @Override // org.jboss.netty.channel.socket.nio.b, org.jboss.netty.channel.e
    public /* bridge */ /* synthetic */ InetSocketAddress getRemoteAddress() {
        return super.getRemoteAddress();
    }

    @Override // org.jboss.netty.channel.a, org.jboss.netty.channel.e
    public org.jboss.netty.channel.j i(Object obj, SocketAddress socketAddress) {
        if (socketAddress != null && !socketAddress.equals(getRemoteAddress())) {
            return U();
        }
        return super.i(obj, null);
    }

    @Override // org.jboss.netty.channel.e
    public boolean isConnected() {
        return this.B == 2;
    }

    @Override // org.jboss.netty.channel.a, org.jboss.netty.channel.e
    public boolean isOpen() {
        return this.B >= 0;
    }

    @Override // org.jboss.netty.channel.socket.nio.b
    InetSocketAddress k0() throws Exception {
        return (InetSocketAddress) ((SocketChannel) this.A).socket().getLocalSocketAddress();
    }

    @Override // org.jboss.netty.channel.e
    public boolean r() {
        return this.B >= 1;
    }

    @Override // org.jboss.netty.channel.socket.nio.b
    InetSocketAddress v0() throws Exception {
        return (InetSocketAddress) ((SocketChannel) this.A).socket().getRemoteSocketAddress();
    }
}
