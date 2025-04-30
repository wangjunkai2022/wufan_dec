package io.reactivex.internal.observers;
/* compiled from: BlockingLastObserver.java */
/* loaded from: classes5.dex */
public final class e<T> extends c<T> {
    @Override // io.reactivex.g0
    public void onError(Throwable th) {
        this.f65897a = null;
        this.f65898b = th;
        countDown();
    }

    @Override // io.reactivex.g0
    public void onNext(T t3) {
        this.f65897a = t3;
    }
}
