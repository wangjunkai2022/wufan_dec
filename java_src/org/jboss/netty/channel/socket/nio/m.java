package org.jboss.netty.channel.socket.nio;

import java.io.IOException;
import java.nio.channels.SocketChannel;
import org.jboss.netty.channel.ChannelException;
/* compiled from: NioClientSocketChannel.java */
/* loaded from: classes5.dex */
final class m extends r {
    volatile org.jboss.netty.channel.j I;
    volatile boolean J;
    long K;

    /* renamed from: n0  reason: collision with root package name */
    volatile org.jboss.netty.util.f f73533n0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(org.jboss.netty.channel.i iVar, org.jboss.netty.channel.n nVar, org.jboss.netty.channel.p pVar, t tVar) {
        super(null, iVar, nVar, pVar, Q0(), tVar);
        org.jboss.netty.channel.s.x(this);
    }

    private static SocketChannel Q0() {
        try {
            SocketChannel open = SocketChannel.open();
            try {
                try {
                    open.configureBlocking(false);
                    return open;
                } catch (Throwable th) {
                    try {
                        open.close();
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                    throw th;
                }
            } catch (IOException e5) {
                throw new ChannelException("Failed to enter non-blocking mode.", e5);
            }
        } catch (IOException e6) {
            throw new ChannelException("Failed to open a socket.", e6);
        }
    }
}
