package org.jboss.netty.channel;
/* compiled from: SucceededChannelFuture.java */
/* loaded from: classes5.dex */
public class n0 extends u {
    public n0(e eVar) {
        super(eVar);
    }

    @Override // org.jboss.netty.channel.j
    public Throwable a() {
        return null;
    }

    @Override // org.jboss.netty.channel.j
    @Deprecated
    public j e() throws Exception {
        return this;
    }

    @Override // org.jboss.netty.channel.j
    public boolean isSuccess() {
        return true;
    }

    @Override // org.jboss.netty.channel.j
    public j sync() throws InterruptedException {
        return this;
    }

    @Override // org.jboss.netty.channel.j
    public j syncUninterruptibly() {
        return this;
    }
}
