package io.reactivex.internal.subscribers;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicReference;
import w2.r;
/* loaded from: classes5.dex */
public final class ForEachWhileSubscriber<T> extends AtomicReference<l3.d> implements o<T>, io.reactivex.disposables.b {
    private static final long serialVersionUID = -4403180040475402120L;

    /* renamed from: a  reason: collision with root package name */
    final r<? super T> f69975a;

    /* renamed from: b  reason: collision with root package name */
    final w2.g<? super Throwable> f69976b;

    /* renamed from: c  reason: collision with root package name */
    final w2.a f69977c;

    /* renamed from: d  reason: collision with root package name */
    boolean f69978d;

    public ForEachWhileSubscriber(r<? super T> rVar, w2.g<? super Throwable> gVar, w2.a aVar) {
        this.f69975a = rVar;
        this.f69976b = gVar;
        this.f69977c = aVar;
    }

    @Override // io.reactivex.disposables.b
    public void dispose() {
        SubscriptionHelper.cancel(this);
    }

    @Override // io.reactivex.disposables.b
    public boolean isDisposed() {
        return SubscriptionHelper.isCancelled(get());
    }

    @Override // l3.c
    public void onComplete() {
        if (this.f69978d) {
            return;
        }
        this.f69978d = true;
        try {
            this.f69977c.run();
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            io.reactivex.plugins.a.Y(th);
        }
    }

    @Override // l3.c
    public void onError(Throwable th) {
        if (this.f69978d) {
            io.reactivex.plugins.a.Y(th);
            return;
        }
        this.f69978d = true;
        try {
            this.f69976b.accept(th);
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            io.reactivex.plugins.a.Y(new CompositeException(th, th2));
        }
    }

    @Override // l3.c
    public void onNext(T t3) {
        if (this.f69978d) {
            return;
        }
        try {
            if (this.f69975a.test(t3)) {
                return;
            }
            dispose();
            onComplete();
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            dispose();
            onError(th);
        }
    }

    @Override // io.reactivex.o, l3.c
    public void onSubscribe(l3.d dVar) {
        SubscriptionHelper.setOnce(this, dVar, Long.MAX_VALUE);
    }
}
