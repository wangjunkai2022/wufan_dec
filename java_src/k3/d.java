package k3;

import java.net.InetSocketAddress;
/* compiled from: SocketChannel.java */
/* loaded from: classes5.dex */
public interface d extends org.jboss.netty.channel.e {
    @Override // org.jboss.netty.channel.e
    e getConfig();

    @Override // org.jboss.netty.channel.e
    InetSocketAddress getLocalAddress();

    @Override // org.jboss.netty.channel.e
    InetSocketAddress getRemoteAddress();
}
