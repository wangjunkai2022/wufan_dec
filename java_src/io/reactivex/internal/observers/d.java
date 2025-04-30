package io.reactivex.internal.observers;
/* compiled from: BlockingFirstObserver.java */
/* loaded from: classes5.dex */
public final class d<T> extends c<T> {
    @Override // io.reactivex.g0
    public void onError(Throwable th) {
        if (this.f65897a == null) {
            this.f65898b = th;
        }
        countDown();
    }

    @Override // io.reactivex.g0
    public void onNext(T t3) {
        if (this.f65897a == null) {
            this.f65897a = t3;
            this.f65899c.dispose();
            countDown();
        }
    }
}
