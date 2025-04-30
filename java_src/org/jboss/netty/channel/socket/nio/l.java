package org.jboss.netty.channel.socket.nio;

import java.util.concurrent.Executor;
/* compiled from: NioClientBossPool.java */
/* loaded from: classes5.dex */
public class l extends a<k> {

    /* renamed from: e  reason: collision with root package name */
    private final org.jboss.netty.util.d f73530e;

    /* renamed from: f  reason: collision with root package name */
    private final org.jboss.netty.util.g f73531f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f73532g;

    public l(Executor executor, int i2, org.jboss.netty.util.g gVar, org.jboss.netty.util.d dVar) {
        super(executor, i2, false);
        this.f73530e = dVar;
        this.f73531f = gVar;
        f();
    }

    @Override // org.jboss.netty.channel.socket.nio.a, org.jboss.netty.util.b
    public void b() {
        super.b();
        this.f73531f.stop();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.jboss.netty.channel.socket.nio.a
    /* renamed from: h */
    public k g(Executor executor) {
        return new k(executor, this.f73531f, this.f73530e);
    }

    @Override // org.jboss.netty.channel.socket.nio.a, org.jboss.netty.channel.socket.nio.q
    public void shutdown() {
        super.shutdown();
        if (this.f73532g) {
            this.f73531f.stop();
        }
    }

    public l(Executor executor, int i2) {
        this(executor, i2, new org.jboss.netty.util.c(), null);
        this.f73532g = true;
    }
}
