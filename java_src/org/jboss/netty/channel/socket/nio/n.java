package org.jboss.netty.channel.socket.nio;

import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* compiled from: NioClientSocketChannelFactory.java */
/* loaded from: classes5.dex */
public class n implements k3.b {

    /* renamed from: e  reason: collision with root package name */
    private static final int f73534e = 1;

    /* renamed from: a  reason: collision with root package name */
    private final h<k> f73535a;

    /* renamed from: b  reason: collision with root package name */
    private final y<t> f73536b;

    /* renamed from: c  reason: collision with root package name */
    private final o f73537c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f73538d;

    public n() {
        this(Executors.newCachedThreadPool(), Executors.newCachedThreadPool());
        this.f73538d = true;
    }

    private void c() {
        h<k> hVar = this.f73535a;
        if (hVar instanceof org.jboss.netty.util.b) {
            ((org.jboss.netty.util.b) hVar).b();
        }
        y<t> yVar = this.f73536b;
        if (yVar instanceof org.jboss.netty.util.b) {
            ((org.jboss.netty.util.b) yVar).b();
        }
    }

    @Override // org.jboss.netty.channel.i, org.jboss.netty.util.b
    public void b() {
        shutdown();
        c();
    }

    @Override // org.jboss.netty.channel.i
    public void shutdown() {
        this.f73535a.shutdown();
        this.f73536b.shutdown();
        if (this.f73538d) {
            c();
        }
    }

    @Override // org.jboss.netty.channel.i
    public k3.d a(org.jboss.netty.channel.n nVar) {
        return new m(this, nVar, this.f73537c, this.f73536b.e());
    }

    public n(Executor executor, Executor executor2) {
        this(executor, executor2, 1, v.f73550a);
    }

    public n(Executor executor, Executor executor2, int i2) {
        this(executor, executor2, 1, i2);
    }

    public n(Executor executor, Executor executor2, int i2, int i4) {
        this(executor, i2, new u(executor2, i4));
    }

    public n(Executor executor, int i2, y<t> yVar) {
        this(executor, i2, yVar, new org.jboss.netty.util.c());
    }

    public n(Executor executor, int i2, y<t> yVar, org.jboss.netty.util.g gVar) {
        this(new l(executor, i2, gVar, null), yVar);
    }

    public n(h<k> hVar, y<t> yVar) {
        Objects.requireNonNull(hVar, "bossPool");
        Objects.requireNonNull(yVar, "workerPool");
        this.f73535a = hVar;
        this.f73536b = yVar;
        this.f73537c = new o(hVar);
    }
}
