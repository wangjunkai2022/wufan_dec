package io.reactivex.internal.subscribers;
/* compiled from: BlockingLastSubscriber.java */
/* loaded from: classes5.dex */
public final class e<T> extends c<T> {
    @Override // l3.c
    public void onError(Throwable th) {
        this.f70014a = null;
        this.f70015b = th;
        countDown();
    }

    @Override // l3.c
    public void onNext(T t3) {
        this.f70014a = t3;
    }
}
