package io.netty.channel.unix;

import io.netty.channel.b;
/* loaded from: classes5.dex */
public interface ServerDomainSocketChannel extends b, UnixChannel {
    @Override // io.netty.channel.Channel
    DomainSocketAddress localAddress();

    @Override // io.netty.channel.Channel
    DomainSocketAddress remoteAddress();
}
