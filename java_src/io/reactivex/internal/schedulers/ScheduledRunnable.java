package io.reactivex.internal.schedulers;

import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicReferenceArray;
/* loaded from: classes5.dex */
public final class ScheduledRunnable extends AtomicReferenceArray<Object> implements Runnable, Callable<Object>, io.reactivex.disposables.b {

    /* renamed from: b  reason: collision with root package name */
    static final Object f69853b = new Object();

    /* renamed from: c  reason: collision with root package name */
    static final Object f69854c = new Object();

    /* renamed from: d  reason: collision with root package name */
    static final Object f69855d = new Object();

    /* renamed from: e  reason: collision with root package name */
    static final Object f69856e = new Object();

    /* renamed from: f  reason: collision with root package name */
    static final int f69857f = 0;

    /* renamed from: g  reason: collision with root package name */
    static final int f69858g = 1;

    /* renamed from: h  reason: collision with root package name */
    static final int f69859h = 2;
    private static final long serialVersionUID = -6120223772001106981L;

    /* renamed from: a  reason: collision with root package name */
    final Runnable f69860a;

    public ScheduledRunnable(Runnable runnable, io.reactivex.internal.disposables.a aVar) {
        super(3);
        this.f69860a = runnable;
        lazySet(0, aVar);
    }

    public void a(Future<?> future) {
        Object obj;
        do {
            obj = get(1);
            if (obj == f69856e) {
                return;
            }
            if (obj == f69854c) {
                future.cancel(false);
                return;
            } else if (obj == f69855d) {
                future.cancel(true);
                return;
            }
        } while (!compareAndSet(1, obj, future));
    }

    @Override // java.util.concurrent.Callable
    public Object call() {
        run();
        return null;
    }

    @Override // io.reactivex.disposables.b
    public void dispose() {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        while (true) {
            Object obj5 = get(1);
            if (obj5 == f69856e || obj5 == (obj3 = f69854c) || obj5 == (obj4 = f69855d)) {
                break;
            }
            boolean z3 = get(2) != Thread.currentThread();
            if (z3) {
                obj3 = obj4;
            }
            if (compareAndSet(1, obj5, obj3)) {
                if (obj5 != null) {
                    ((Future) obj5).cancel(z3);
                }
            }
        }
        do {
            obj = get(0);
            if (obj == f69856e || obj == (obj2 = f69853b) || obj == null) {
                return;
            }
        } while (!compareAndSet(0, obj, obj2));
        ((io.reactivex.internal.disposables.a) obj).delete(this);
    }

    @Override // io.reactivex.disposables.b
    public boolean isDisposed() {
        Object obj = get(0);
        return obj == f69853b || obj == f69856e;
    }

    @Override // java.lang.Runnable
    public void run() {
        Object obj;
        Object obj2;
        Object obj3;
        boolean compareAndSet;
        Object obj4;
        Object obj5;
        lazySet(2, Thread.currentThread());
        try {
            this.f69860a.run();
        } finally {
            try {
                lazySet(2, null);
                obj4 = get(0);
                if (obj4 != f69853b) {
                    ((io.reactivex.internal.disposables.a) obj4).delete(this);
                }
                do {
                    obj5 = get(1);
                    if (obj5 != f69854c) {
                        return;
                    }
                    return;
                } while (!compareAndSet(1, obj5, f69856e));
            } catch (Throwable th) {
                do {
                    if (obj == obj2) {
                        break;
                    } else if (obj == obj3) {
                        break;
                    }
                } while (!compareAndSet);
            }
        }
        lazySet(2, null);
        obj4 = get(0);
        if (obj4 != f69853b && compareAndSet(0, obj4, f69856e) && obj4 != null) {
            ((io.reactivex.internal.disposables.a) obj4).delete(this);
        }
        do {
            obj5 = get(1);
            if (obj5 != f69854c || obj5 == f69855d) {
                return;
            }
        } while (!compareAndSet(1, obj5, f69856e));
    }
}
