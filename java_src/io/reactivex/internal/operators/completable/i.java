package io.reactivex.internal.operators.completable;
/* compiled from: CompletableFromAction.java */
/* loaded from: classes5.dex */
public final class i extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final w2.a f66067a;

    public i(w2.a aVar) {
        this.f66067a = aVar;
    }

    @Override // io.reactivex.a
    protected void F0(io.reactivex.d dVar) {
        io.reactivex.disposables.b b4 = io.reactivex.disposables.c.b();
        dVar.onSubscribe(b4);
        try {
            this.f66067a.run();
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
