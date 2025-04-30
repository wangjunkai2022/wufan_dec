package org.jboss.netty.channel.socket.nio;

import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import org.jboss.netty.channel.socket.nio.e;
/* compiled from: AbstractNioWorkerPool.java */
/* loaded from: classes5.dex */
public abstract class f<E extends e> implements y<E>, org.jboss.netty.util.b {

    /* renamed from: a  reason: collision with root package name */
    private final e[] f73514a;

    /* renamed from: b  reason: collision with root package name */
    private final AtomicInteger f73515b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f73516c;

    /* renamed from: d  reason: collision with root package name */
    private volatile boolean f73517d;

    f(Executor executor, int i2) {
        this(executor, i2, true);
    }

    @Override // org.jboss.netty.util.b
    public void b() {
        shutdown();
        org.jboss.netty.util.internal.e.c(this.f73516c);
    }

    @Override // org.jboss.netty.channel.socket.nio.q
    public void c() {
        for (e eVar : this.f73514a) {
            eVar.rebuildSelector();
        }
    }

    @Deprecated
    protected E f(Executor executor) {
        throw new IllegalStateException("This will be removed. Override this and the newWorker(..) method!");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void g() {
        if (!this.f73517d) {
            this.f73517d = true;
            int i2 = 0;
            while (true) {
                e[] eVarArr = this.f73514a;
                if (i2 >= eVarArr.length) {
                    return;
                }
                eVarArr[i2] = h(this.f73516c);
                i2++;
            }
        } else {
            throw new IllegalStateException("Init was done before");
        }
    }

    protected E h(Executor executor) {
        return f(executor);
    }

    @Override // org.jboss.netty.channel.socket.nio.y
    /* renamed from: i */
    public E e() {
        return (E) this.f73514a[Math.abs(this.f73515b.getAndIncrement() % this.f73514a.length)];
    }

    @Override // org.jboss.netty.channel.socket.nio.q
    public void shutdown() {
        for (e eVar : this.f73514a) {
            eVar.shutdown();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(Executor executor, int i2, boolean z3) {
        this.f73515b = new AtomicInteger();
        Objects.requireNonNull(executor, "workerExecutor");
        if (i2 > 0) {
            this.f73514a = new e[i2];
            this.f73516c = executor;
            if (z3) {
                g();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("workerCount (" + i2 + ") must be a positive integer.");
    }
}
