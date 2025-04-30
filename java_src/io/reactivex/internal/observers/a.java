package io.reactivex.internal.observers;

import io.reactivex.g0;
import io.reactivex.internal.disposables.DisposableHelper;
/* compiled from: BasicFuseableObserver.java */
/* loaded from: classes5.dex */
public abstract class a<T, R> implements g0<T>, x2.j<R> {

    /* renamed from: a  reason: collision with root package name */
    protected final g0<? super R> f65892a;

    /* renamed from: b  reason: collision with root package name */
    protected io.reactivex.disposables.b f65893b;

    /* renamed from: c  reason: collision with root package name */
    protected x2.j<T> f65894c;

    /* renamed from: d  reason: collision with root package name */
    protected boolean f65895d;

    /* renamed from: e  reason: collision with root package name */
    protected int f65896e;

    public a(g0<? super R> g0Var) {
        this.f65892a = g0Var;
    }

    protected void a() {
    }

    protected boolean b() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void c(Throwable th) {
        io.reactivex.exceptions.a.b(th);
        this.f65893b.dispose();
        onError(th);
    }

    @Override // x2.o
    public void clear() {
        this.f65894c.clear();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int d(int i2) {
        x2.j<T> jVar = this.f65894c;
        if (jVar == null || (i2 & 4) != 0) {
            return 0;
        }
        int requestFusion = jVar.requestFusion(i2);
        if (requestFusion != 0) {
            this.f65896e = requestFusion;
        }
        return requestFusion;
    }

    @Override // io.reactivex.disposables.b
    public void dispose() {
        this.f65893b.dispose();
    }

    @Override // io.reactivex.disposables.b
    public boolean isDisposed() {
        return this.f65893b.isDisposed();
    }

    @Override // x2.o
    public boolean isEmpty() {
        return this.f65894c.isEmpty();
    }

    @Override // x2.o
    public final boolean offer(R r3) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // io.reactivex.g0
    public void onComplete() {
        if (this.f65895d) {
            return;
        }
        this.f65895d = true;
        this.f65892a.onComplete();
    }

    @Override // io.reactivex.g0
    public void onError(Throwable th) {
        if (this.f65895d) {
            io.reactivex.plugins.a.Y(th);
            return;
        }
        this.f65895d = true;
        this.f65892a.onError(th);
    }

    @Override // io.reactivex.g0
    public final void onSubscribe(io.reactivex.disposables.b bVar) {
        if (DisposableHelper.validate(this.f65893b, bVar)) {
            this.f65893b = bVar;
            if (bVar instanceof x2.j) {
                this.f65894c = (x2.j) bVar;
            }
            if (b()) {
                this.f65892a.onSubscribe(this);
                a();
            }
        }
    }

    @Override // x2.o
    public final boolean offer(R r3, R r4) {
        throw new UnsupportedOperationException("Should not be called!");
    }
}
