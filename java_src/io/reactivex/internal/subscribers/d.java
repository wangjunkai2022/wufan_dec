package io.reactivex.internal.subscribers;
/* compiled from: BlockingFirstSubscriber.java */
/* loaded from: classes5.dex */
public final class d<T> extends c<T> {
    @Override // l3.c
    public void onError(Throwable th) {
        if (this.f70014a == null) {
            this.f70015b = th;
        } else {
            io.reactivex.plugins.a.Y(th);
        }
        countDown();
    }

    @Override // l3.c
    public void onNext(T t3) {
        if (this.f70014a == null) {
            this.f70014a = t3;
            this.f70016c.cancel();
            countDown();
        }
    }
}
