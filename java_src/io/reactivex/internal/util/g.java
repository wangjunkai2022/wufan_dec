package io.reactivex.internal.util;

import io.reactivex.g0;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: HalfSerializer.java */
/* loaded from: classes5.dex */
public final class g {
    private g() {
        throw new IllegalStateException("No instances!");
    }

    public static void a(g0<?> g0Var, AtomicInteger atomicInteger, AtomicThrowable atomicThrowable) {
        if (atomicInteger.getAndIncrement() == 0) {
            Throwable c4 = atomicThrowable.c();
            if (c4 != null) {
                g0Var.onError(c4);
            } else {
                g0Var.onComplete();
            }
        }
    }

    public static void b(l3.c<?> cVar, AtomicInteger atomicInteger, AtomicThrowable atomicThrowable) {
        if (atomicInteger.getAndIncrement() == 0) {
            Throwable c4 = atomicThrowable.c();
            if (c4 != null) {
                cVar.onError(c4);
            } else {
                cVar.onComplete();
            }
        }
    }

    public static void c(g0<?> g0Var, Throwable th, AtomicInteger atomicInteger, AtomicThrowable atomicThrowable) {
        if (atomicThrowable.a(th)) {
            if (atomicInteger.getAndIncrement() == 0) {
                g0Var.onError(atomicThrowable.c());
                return;
            }
            return;
        }
        io.reactivex.plugins.a.Y(th);
    }

    public static void d(l3.c<?> cVar, Throwable th, AtomicInteger atomicInteger, AtomicThrowable atomicThrowable) {
        if (atomicThrowable.a(th)) {
            if (atomicInteger.getAndIncrement() == 0) {
                cVar.onError(atomicThrowable.c());
                return;
            }
            return;
        }
        io.reactivex.plugins.a.Y(th);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> void e(g0<? super T> g0Var, T t3, AtomicInteger atomicInteger, AtomicThrowable atomicThrowable) {
        if (atomicInteger.get() == 0 && atomicInteger.compareAndSet(0, 1)) {
            g0Var.onNext(t3);
            if (atomicInteger.decrementAndGet() != 0) {
                Throwable c4 = atomicThrowable.c();
                if (c4 != null) {
                    g0Var.onError(c4);
                } else {
                    g0Var.onComplete();
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> void f(l3.c<? super T> cVar, T t3, AtomicInteger atomicInteger, AtomicThrowable atomicThrowable) {
        if (atomicInteger.get() == 0 && atomicInteger.compareAndSet(0, 1)) {
            cVar.onNext(t3);
            if (atomicInteger.decrementAndGet() != 0) {
                Throwable c4 = atomicThrowable.c();
                if (c4 != null) {
                    cVar.onError(c4);
                } else {
                    cVar.onComplete();
                }
            }
        }
    }
}
