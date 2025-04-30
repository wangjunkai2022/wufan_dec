package org.jboss.netty.channel.socket.nio;
/* compiled from: AbstractNioChannelSink.java */
/* loaded from: classes5.dex */
public abstract class c extends org.jboss.netty.channel.b {
    @Override // org.jboss.netty.channel.b, org.jboss.netty.channel.p
    public org.jboss.netty.channel.j b(org.jboss.netty.channel.n nVar, Runnable runnable) {
        org.jboss.netty.channel.e channel = nVar.getChannel();
        if (channel instanceof b) {
            k3.a aVar = new k3.a(nVar.getChannel(), runnable);
            ((b) channel).f73478n.e0(aVar);
            return aVar;
        }
        return super.b(nVar, runnable);
    }

    @Override // org.jboss.netty.channel.b
    protected boolean d(org.jboss.netty.channel.h hVar, Throwable th) {
        org.jboss.netty.channel.e channel = hVar.getChannel();
        if (channel instanceof b) {
            return !e.p((b) channel);
        }
        return false;
    }
}
