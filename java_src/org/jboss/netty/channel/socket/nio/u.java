package org.jboss.netty.channel.socket.nio;

import java.util.concurrent.Executor;
/* compiled from: NioWorkerPool.java */
/* loaded from: classes5.dex */
public class u extends f<t> {

    /* renamed from: e  reason: collision with root package name */
    private final org.jboss.netty.util.d f73549e;

    public u(Executor executor, int i2) {
        this(executor, i2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.jboss.netty.channel.socket.nio.f
    @Deprecated
    /* renamed from: j */
    public t f(Executor executor) {
        return new t(executor, this.f73549e);
    }

    public u(Executor executor, int i2, org.jboss.netty.util.d dVar) {
        super(executor, i2, false);
        this.f73549e = dVar;
        g();
    }
}
