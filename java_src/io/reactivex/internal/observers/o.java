package io.reactivex.internal.observers;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.l0;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: ResumeSingleObserver.java */
/* loaded from: classes5.dex */
public final class o<T> implements l0<T> {

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<io.reactivex.disposables.b> f65941a;

    /* renamed from: b  reason: collision with root package name */
    final l0<? super T> f65942b;

    public o(AtomicReference<io.reactivex.disposables.b> atomicReference, l0<? super T> l0Var) {
        this.f65941a = atomicReference;
        this.f65942b = l0Var;
    }

    @Override // io.reactivex.l0
    public void onError(Throwable th) {
        this.f65942b.onError(th);
    }

    @Override // io.reactivex.l0
    public void onSubscribe(io.reactivex.disposables.b bVar) {
        DisposableHelper.replace(this.f65941a, bVar);
    }

    @Override // io.reactivex.l0
    public void onSuccess(T t3) {
        this.f65942b.onSuccess(t3);
    }
}
