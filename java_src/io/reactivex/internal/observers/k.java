package io.reactivex.internal.observers;

import io.reactivex.g0;
/* compiled from: QueueDrainObserver.java */
/* loaded from: classes5.dex */
public abstract class k<T, U, V> extends m implements g0<T>, io.reactivex.internal.util.j<U, V> {
    protected final g0<? super V> F;
    protected final x2.n<U> G;
    protected volatile boolean H;
    protected volatile boolean I;
    protected Throwable J;

    public k(g0<? super V> g0Var, x2.n<U> nVar) {
        this.F = g0Var;
        this.G = nVar;
    }

    @Override // io.reactivex.internal.util.j
    public final int a(int i2) {
        return this.f65940p.addAndGet(i2);
    }

    @Override // io.reactivex.internal.util.j
    public final boolean b() {
        return this.f65940p.getAndIncrement() == 0;
    }

    @Override // io.reactivex.internal.util.j
    public final boolean c() {
        return this.I;
    }

    @Override // io.reactivex.internal.util.j
    public final boolean cancelled() {
        return this.H;
    }

    public final boolean d() {
        return this.f65940p.get() == 0 && this.f65940p.compareAndSet(0, 1);
    }

    @Override // io.reactivex.internal.util.j
    public final Throwable e() {
        return this.J;
    }

    @Override // io.reactivex.internal.util.j
    public void f(g0<? super V> g0Var, U u3) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void g(U u3, boolean z3, io.reactivex.disposables.b bVar) {
        g0<? super V> g0Var = this.F;
        x2.n<U> nVar = this.G;
        if (this.f65940p.get() == 0 && this.f65940p.compareAndSet(0, 1)) {
            f(g0Var, u3);
            if (a(-1) == 0) {
                return;
            }
        } else {
            nVar.offer(u3);
            if (!b()) {
                return;
            }
        }
        io.reactivex.internal.util.n.d(nVar, g0Var, z3, bVar, this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void h(U u3, boolean z3, io.reactivex.disposables.b bVar) {
        g0<? super V> g0Var = this.F;
        x2.n<U> nVar = this.G;
        if (this.f65940p.get() == 0 && this.f65940p.compareAndSet(0, 1)) {
            if (nVar.isEmpty()) {
                f(g0Var, u3);
                if (a(-1) == 0) {
                    return;
                }
            } else {
                nVar.offer(u3);
            }
        } else {
            nVar.offer(u3);
            if (!b()) {
                return;
            }
        }
        io.reactivex.internal.util.n.d(nVar, g0Var, z3, bVar, this);
    }
}
