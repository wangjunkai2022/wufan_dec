package io.reactivex.internal.observers;

import io.reactivex.internal.disposables.DisposableHelper;
/* compiled from: SubscriberCompletableObserver.java */
/* loaded from: classes5.dex */
public final class p<T> implements io.reactivex.d, l3.d {

    /* renamed from: a  reason: collision with root package name */
    final l3.c<? super T> f65943a;

    /* renamed from: b  reason: collision with root package name */
    io.reactivex.disposables.b f65944b;

    public p(l3.c<? super T> cVar) {
        this.f65943a = cVar;
    }

    @Override // l3.d
    public void cancel() {
        this.f65944b.dispose();
    }

    @Override // io.reactivex.d
    public void onComplete() {
        this.f65943a.onComplete();
    }

    @Override // io.reactivex.d
    public void onError(Throwable th) {
        this.f65943a.onError(th);
    }

    @Override // io.reactivex.d
    public void onSubscribe(io.reactivex.disposables.b bVar) {
        if (DisposableHelper.validate(this.f65944b, bVar)) {
            this.f65944b = bVar;
            this.f65943a.onSubscribe(this);
        }
    }

    @Override // l3.d
    public void request(long j4) {
    }
}
