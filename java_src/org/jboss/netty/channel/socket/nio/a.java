package org.jboss.netty.channel.socket.nio;

import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import org.jboss.netty.channel.socket.nio.g;
/* compiled from: AbstractNioBossPool.java */
/* loaded from: classes5.dex */
public abstract class a<E extends g> implements h<E>, org.jboss.netty.util.b {

    /* renamed from: a  reason: collision with root package name */
    private final g[] f73474a;

    /* renamed from: b  reason: collision with root package name */
    private final AtomicInteger f73475b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f73476c;

    /* renamed from: d  reason: collision with root package name */
    private volatile boolean f73477d;

    a(Executor executor, int i2) {
        this(executor, i2, true);
    }

    @Override // org.jboss.netty.util.b
    public void b() {
        shutdown();
        org.jboss.netty.util.internal.e.c(this.f73476c);
    }

    @Override // org.jboss.netty.channel.socket.nio.q
    public void c() {
        for (g gVar : this.f73474a) {
            gVar.rebuildSelector();
        }
    }

    @Override // org.jboss.netty.channel.socket.nio.h
    public E d() {
        return (E) this.f73474a[Math.abs(this.f73475b.getAndIncrement() % this.f73474a.length)];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void f() {
        if (!this.f73477d) {
            this.f73477d = true;
            int i2 = 0;
            while (true) {
                g[] gVarArr = this.f73474a;
                if (i2 >= gVarArr.length) {
                    return;
                }
                gVarArr[i2] = g(this.f73476c);
                i2++;
            }
        } else {
            throw new IllegalStateException("Init was done before");
        }
    }

    protected abstract E g(Executor executor);

    @Override // org.jboss.netty.channel.socket.nio.q
    public void shutdown() {
        for (g gVar : this.f73474a) {
            gVar.shutdown();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Executor executor, int i2, boolean z3) {
        this.f73475b = new AtomicInteger();
        Objects.requireNonNull(executor, "bossExecutor");
        if (i2 > 0) {
            this.f73474a = new g[i2];
            this.f73476c = executor;
            if (z3) {
                f();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("bossCount (" + i2 + ") must be a positive integer.");
    }
}
