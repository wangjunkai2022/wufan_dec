package io.reactivex.internal.operators.completable;
/* compiled from: CompletableFromRunnable.java */
/* loaded from: classes5.dex */
public final class m extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final Runnable f66074a;

    public m(Runnable runnable) {
        this.f66074a = runnable;
    }

    @Override // io.reactivex.a
    protected void F0(io.reactivex.d dVar) {
        io.reactivex.disposables.b b4 = io.reactivex.disposables.c.b();
        dVar.onSubscribe(b4);
        try {
            this.f66074a.run();
            if (b4.isDisposed()) {
                return;
            }
            dVar.onComplete();
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            if (b4.isDisposed()) {
                return;
            }
            dVar.onError(th);
        }
    }
}
