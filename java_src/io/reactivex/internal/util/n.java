package io.reactivex.internal.util;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.g0;
import io.reactivex.internal.queue.SpscArrayQueue;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicLong;
/* compiled from: QueueDrainHelper.java */
/* loaded from: classes5.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    static final long f70107a = Long.MIN_VALUE;

    /* renamed from: b  reason: collision with root package name */
    static final long f70108b = Long.MAX_VALUE;

    private n() {
        throw new IllegalStateException("No instances!");
    }

    public static <T, U> boolean a(boolean z3, boolean z4, g0<?> g0Var, boolean z5, x2.o<?> oVar, io.reactivex.disposables.b bVar, j<T, U> jVar) {
        if (jVar.cancelled()) {
            oVar.clear();
            bVar.dispose();
            return true;
        } else if (z3) {
            if (z5) {
                if (z4) {
                    if (bVar != null) {
                        bVar.dispose();
                    }
                    Throwable e4 = jVar.e();
                    if (e4 != null) {
                        g0Var.onError(e4);
                    } else {
                        g0Var.onComplete();
                    }
                    return true;
                }
                return false;
            }
            Throwable e5 = jVar.e();
            if (e5 != null) {
                oVar.clear();
                if (bVar != null) {
                    bVar.dispose();
                }
                g0Var.onError(e5);
                return true;
            } else if (z4) {
                if (bVar != null) {
                    bVar.dispose();
                }
                g0Var.onComplete();
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    public static <T, U> boolean b(boolean z3, boolean z4, l3.c<?> cVar, boolean z5, x2.o<?> oVar, m<T, U> mVar) {
        if (mVar.cancelled()) {
            oVar.clear();
            return true;
        } else if (z3) {
            if (z5) {
                if (z4) {
                    Throwable e4 = mVar.e();
                    if (e4 != null) {
                        cVar.onError(e4);
                    } else {
                        cVar.onComplete();
                    }
                    return true;
                }
                return false;
            }
            Throwable e5 = mVar.e();
            if (e5 != null) {
                oVar.clear();
                cVar.onError(e5);
                return true;
            } else if (z4) {
                cVar.onComplete();
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    public static <T> x2.o<T> c(int i2) {
        if (i2 < 0) {
            return new io.reactivex.internal.queue.a(-i2);
        }
        return new SpscArrayQueue(i2);
    }

    public static <T, U> void d(x2.n<T> nVar, g0<? super U> g0Var, boolean z3, io.reactivex.disposables.b bVar, j<T, U> jVar) {
        int i2 = 1;
        while (!a(jVar.c(), nVar.isEmpty(), g0Var, z3, nVar, bVar, jVar)) {
            while (true) {
                boolean c4 = jVar.c();
                T poll = nVar.poll();
                boolean z4 = poll == null;
                if (a(c4, z4, g0Var, z3, nVar, bVar, jVar)) {
                    return;
                }
                if (z4) {
                    i2 = jVar.a(-i2);
                    if (i2 == 0) {
                        return;
                    }
                } else {
                    jVar.f(g0Var, poll);
                }
            }
        }
    }

    public static <T, U> void e(x2.n<T> nVar, l3.c<? super U> cVar, boolean z3, io.reactivex.disposables.b bVar, m<T, U> mVar) {
        int i2 = 1;
        while (true) {
            boolean c4 = mVar.c();
            T poll = nVar.poll();
            boolean z4 = poll == null;
            if (b(c4, z4, cVar, z3, nVar, mVar)) {
                if (bVar != null) {
                    bVar.dispose();
                    return;
                }
                return;
            } else if (z4) {
                i2 = mVar.a(-i2);
                if (i2 == 0) {
                    return;
                }
            } else {
                long d4 = mVar.d();
                if (d4 != 0) {
                    if (mVar.f(cVar, poll) && d4 != Long.MAX_VALUE) {
                        mVar.g(1L);
                    }
                } else {
                    nVar.clear();
                    if (bVar != null) {
                        bVar.dispose();
                    }
                    cVar.onError(new MissingBackpressureException("Could not emit value due to lack of requests."));
                    return;
                }
            }
        }
    }

    static boolean f(w2.e eVar) {
        try {
            return eVar.a();
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            return true;
        }
    }

    public static <T> void g(l3.c<? super T> cVar, Queue<T> queue, AtomicLong atomicLong, w2.e eVar) {
        long j4;
        long j5;
        if (queue.isEmpty()) {
            cVar.onComplete();
        } else if (h(atomicLong.get(), cVar, queue, atomicLong, eVar)) {
        } else {
            do {
                j4 = atomicLong.get();
                if ((j4 & Long.MIN_VALUE) != 0) {
                    return;
                }
                j5 = j4 | Long.MIN_VALUE;
            } while (!atomicLong.compareAndSet(j4, j5));
            if (j4 != 0) {
                h(j5, cVar, queue, atomicLong, eVar);
            }
        }
    }

    static <T> boolean h(long j4, l3.c<? super T> cVar, Queue<T> queue, AtomicLong atomicLong, w2.e eVar) {
        long j5 = j4 & Long.MIN_VALUE;
        while (true) {
            if (j5 != j4) {
                if (f(eVar)) {
                    return true;
                }
                Object obj = (T) queue.poll();
                if (obj == null) {
                    cVar.onComplete();
                    return true;
                }
                cVar.onNext(obj);
                j5++;
            } else if (f(eVar)) {
                return true;
            } else {
                if (queue.isEmpty()) {
                    cVar.onComplete();
                    return true;
                }
                j4 = atomicLong.get();
                if (j4 == j5) {
                    long addAndGet = atomicLong.addAndGet(-(j5 & Long.MAX_VALUE));
                    if ((Long.MAX_VALUE & addAndGet) == 0) {
                        return false;
                    }
                    j4 = addAndGet;
                    j5 = addAndGet & Long.MIN_VALUE;
                } else {
                    continue;
                }
            }
        }
    }

    public static <T> boolean i(long j4, l3.c<? super T> cVar, Queue<T> queue, AtomicLong atomicLong, w2.e eVar) {
        long j5;
        do {
            j5 = atomicLong.get();
        } while (!atomicLong.compareAndSet(j5, b.c(Long.MAX_VALUE & j5, j4) | (j5 & Long.MIN_VALUE)));
        if (j5 == Long.MIN_VALUE) {
            h(j4 | Long.MIN_VALUE, cVar, queue, atomicLong, eVar);
            return true;
        }
        return false;
    }

    public static void j(l3.d dVar, int i2) {
        dVar.request(i2 < 0 ? Long.MAX_VALUE : i2);
    }
}
