package io.reactivex.internal.subscriptions;

import io.reactivex.annotations.Nullable;
import l3.c;
/* loaded from: classes5.dex */
public class DeferredScalarSubscription<T> extends BasicIntQueueSubscription<T> {

    /* renamed from: c  reason: collision with root package name */
    static final int f70062c = 0;

    /* renamed from: d  reason: collision with root package name */
    static final int f70063d = 1;

    /* renamed from: e  reason: collision with root package name */
    static final int f70064e = 2;

    /* renamed from: f  reason: collision with root package name */
    static final int f70065f = 3;

    /* renamed from: g  reason: collision with root package name */
    static final int f70066g = 4;

    /* renamed from: h  reason: collision with root package name */
    static final int f70067h = 8;

    /* renamed from: i  reason: collision with root package name */
    static final int f70068i = 16;

    /* renamed from: j  reason: collision with root package name */
    static final int f70069j = 32;
    private static final long serialVersionUID = -2151279923272604993L;

    /* renamed from: a  reason: collision with root package name */
    protected final c<? super T> f70070a;

    /* renamed from: b  reason: collision with root package name */
    protected T f70071b;

    public DeferredScalarSubscription(c<? super T> cVar) {
        this.f70070a = cVar;
    }

    public void cancel() {
        set(4);
        this.f70071b = null;
    }

    @Override // x2.o
    public final void clear() {
        lazySet(32);
        this.f70071b = null;
    }

    public final void d(T t3) {
        int i2 = get();
        while (i2 != 8) {
            if ((i2 & (-3)) != 0) {
                return;
            }
            if (i2 == 2) {
                lazySet(3);
                c<? super T> cVar = this.f70070a;
                cVar.onNext(t3);
                if (get() != 4) {
                    cVar.onComplete();
                    return;
                }
                return;
            }
            this.f70071b = t3;
            if (compareAndSet(0, 1)) {
                return;
            }
            i2 = get();
            if (i2 == 4) {
                this.f70071b = null;
                return;
            }
        }
        this.f70071b = t3;
        lazySet(16);
        c<? super T> cVar2 = this.f70070a;
        cVar2.onNext(t3);
        if (get() != 4) {
            cVar2.onComplete();
        }
    }

    public final boolean e() {
        return get() == 4;
    }

    public final boolean f() {
        return getAndSet(4) != 4;
    }

    @Override // x2.o
    public final boolean isEmpty() {
        return get() != 16;
    }

    @Override // x2.o
    @Nullable
    public final T poll() {
        if (get() == 16) {
            lazySet(32);
            T t3 = this.f70071b;
            this.f70071b = null;
            return t3;
        }
        return null;
    }

    @Override // l3.d
    public final void request(long j4) {
        T t3;
        if (SubscriptionHelper.validate(j4)) {
            do {
                int i2 = get();
                if ((i2 & (-2)) != 0) {
                    return;
                }
                if (i2 == 1) {
                    if (!compareAndSet(1, 3) || (t3 = this.f70071b) == null) {
                        return;
                    }
                    this.f70071b = null;
                    c<? super T> cVar = this.f70070a;
                    cVar.onNext(t3);
                    if (get() != 4) {
                        cVar.onComplete();
                        return;
                    }
                    return;
                }
            } while (!compareAndSet(0, 2));
        }
    }

    @Override // x2.k
    public final int requestFusion(int i2) {
        if ((i2 & 2) != 0) {
            lazySet(8);
            return 2;
        }
        return 0;
    }
}
