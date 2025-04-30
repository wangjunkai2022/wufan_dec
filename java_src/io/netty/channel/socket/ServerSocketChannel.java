package io.netty.channel.socket;

import io.netty.channel.b;
import java.net.InetSocketAddress;
/* loaded from: classes5.dex */
public interface ServerSocketChannel extends b {
    @Override // io.netty.channel.Channel
    ServerSocketChannelConfig config();

    @Override // io.netty.channel.Channel
    InetSocketAddress localAddress();

    @Override // io.netty.channel.Channel
    InetSocketAddress remoteAddress();
}
