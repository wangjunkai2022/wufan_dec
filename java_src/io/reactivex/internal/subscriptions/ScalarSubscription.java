package io.reactivex.internal.subscriptions;

import io.reactivex.annotations.Nullable;
import java.util.concurrent.atomic.AtomicInteger;
import l3.c;
import x2.l;
/* loaded from: classes5.dex */
public final class ScalarSubscription<T> extends AtomicInteger implements l<T> {

    /* renamed from: c  reason: collision with root package name */
    static final int f70072c = 0;

    /* renamed from: d  reason: collision with root package name */
    static final int f70073d = 1;

    /* renamed from: e  reason: collision with root package name */
    static final int f70074e = 2;
    private static final long serialVersionUID = -3830916580126663321L;

    /* renamed from: a  reason: collision with root package name */
    final T f70075a;

    /* renamed from: b  reason: collision with root package name */
    final c<? super T> f70076b;

    public ScalarSubscription(c<? super T> cVar, T t3) {
        this.f70076b = cVar;
        this.f70075a = t3;
    }

    public boolean a() {
        return get() == 2;
    }

    @Override // l3.d
    public void cancel() {
        lazySet(2);
    }

    @Override // x2.o
    public void clear() {
        lazySet(1);
    }

    @Override // x2.o
    public boolean isEmpty() {
        return get() != 0;
    }

    @Override // x2.o
    public boolean offer(T t3) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // x2.o
    @Nullable
    public T poll() {
        if (get() == 0) {
            lazySet(1);
            return this.f70075a;
        }
        return null;
    }

    @Override // l3.d
    public void request(long j4) {
        if (SubscriptionHelper.validate(j4) && compareAndSet(0, 1)) {
            c<? super T> cVar = this.f70076b;
            cVar.onNext((T) this.f70075a);
            if (get() != 2) {
                cVar.onComplete();
            }
        }
    }

    @Override // x2.k
    public int requestFusion(int i2) {
        return i2 & 1;
    }

    @Override // x2.o
    public boolean offer(T t3, T t4) {
        throw new UnsupportedOperationException("Should not be called!");
    }
}
