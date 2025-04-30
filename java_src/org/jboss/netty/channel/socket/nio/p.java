package org.jboss.netty.channel.socket.nio;
/* compiled from: NioSelector.java */
/* loaded from: classes5.dex */
public interface p extends Runnable {
    void rebuildSelector();

    void s(org.jboss.netty.channel.e eVar, org.jboss.netty.channel.j jVar);

    void shutdown();
}
