package io.reactivex.internal.queue;

import io.reactivex.annotations.Nullable;
import io.reactivex.internal.util.l;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;
import x2.n;
/* compiled from: SpscLinkedArrayQueue.java */
/* loaded from: classes5.dex */
public final class a<T> implements n<T> {

    /* renamed from: i  reason: collision with root package name */
    static final int f69821i = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096).intValue();

    /* renamed from: j  reason: collision with root package name */
    private static final Object f69822j = new Object();

    /* renamed from: b  reason: collision with root package name */
    int f69824b;

    /* renamed from: c  reason: collision with root package name */
    long f69825c;

    /* renamed from: d  reason: collision with root package name */
    final int f69826d;

    /* renamed from: e  reason: collision with root package name */
    AtomicReferenceArray<Object> f69827e;

    /* renamed from: f  reason: collision with root package name */
    final int f69828f;

    /* renamed from: g  reason: collision with root package name */
    AtomicReferenceArray<Object> f69829g;

    /* renamed from: a  reason: collision with root package name */
    final AtomicLong f69823a = new AtomicLong();

    /* renamed from: h  reason: collision with root package name */
    final AtomicLong f69830h = new AtomicLong();

    public a(int i2) {
        int b4 = l.b(Math.max(8, i2));
        int i4 = b4 - 1;
        AtomicReferenceArray<Object> atomicReferenceArray = new AtomicReferenceArray<>(b4 + 1);
        this.f69827e = atomicReferenceArray;
        this.f69826d = i4;
        a(b4);
        this.f69829g = atomicReferenceArray;
        this.f69828f = i4;
        this.f69825c = i4 - 1;
        q(0L);
    }

    private void a(int i2) {
        this.f69824b = Math.min(i2 / 4, f69821i);
    }

    private static int b(int i2) {
        return i2;
    }

    private static int c(long j4, int i2) {
        return b(((int) j4) & i2);
    }

    private long d() {
        return this.f69830h.get();
    }

    private long e() {
        return this.f69823a.get();
    }

    private long f() {
        return this.f69830h.get();
    }

    private static <E> Object g(AtomicReferenceArray<Object> atomicReferenceArray, int i2) {
        return atomicReferenceArray.get(i2);
    }

    private AtomicReferenceArray<Object> h(AtomicReferenceArray<Object> atomicReferenceArray, int i2) {
        int b4 = b(i2);
        AtomicReferenceArray<Object> atomicReferenceArray2 = (AtomicReferenceArray) g(atomicReferenceArray, b4);
        o(atomicReferenceArray, b4, null);
        return atomicReferenceArray2;
    }

    private long i() {
        return this.f69823a.get();
    }

    private T j(AtomicReferenceArray<Object> atomicReferenceArray, long j4, int i2) {
        this.f69829g = atomicReferenceArray;
        return (T) g(atomicReferenceArray, c(j4, i2));
    }

    private T k(AtomicReferenceArray<Object> atomicReferenceArray, long j4, int i2) {
        this.f69829g = atomicReferenceArray;
        int c4 = c(j4, i2);
        T t3 = (T) g(atomicReferenceArray, c4);
        if (t3 != null) {
            o(atomicReferenceArray, c4, null);
            n(j4 + 1);
        }
        return t3;
    }

    private void l(AtomicReferenceArray<Object> atomicReferenceArray, long j4, int i2, T t3, long j5) {
        AtomicReferenceArray<Object> atomicReferenceArray2 = new AtomicReferenceArray<>(atomicReferenceArray.length());
        this.f69827e = atomicReferenceArray2;
        this.f69825c = (j5 + j4) - 1;
        o(atomicReferenceArray2, i2, t3);
        p(atomicReferenceArray, atomicReferenceArray2);
        o(atomicReferenceArray, i2, f69822j);
        q(j4 + 1);
    }

    private void n(long j4) {
        this.f69830h.lazySet(j4);
    }

    private static void o(AtomicReferenceArray<Object> atomicReferenceArray, int i2, Object obj) {
        atomicReferenceArray.lazySet(i2, obj);
    }

    private void p(AtomicReferenceArray<Object> atomicReferenceArray, AtomicReferenceArray<Object> atomicReferenceArray2) {
        o(atomicReferenceArray, b(atomicReferenceArray.length() - 1), atomicReferenceArray2);
    }

    private void q(long j4) {
        this.f69823a.lazySet(j4);
    }

    private boolean r(AtomicReferenceArray<Object> atomicReferenceArray, T t3, long j4, int i2) {
        o(atomicReferenceArray, i2, t3);
        q(j4 + 1);
        return true;
    }

    @Override // x2.o
    public void clear() {
        while (true) {
            if (poll() == null && isEmpty()) {
                return;
            }
        }
    }

    @Override // x2.o
    public boolean isEmpty() {
        return i() == f();
    }

    public int m() {
        long f4 = f();
        while (true) {
            long i2 = i();
            long f5 = f();
            if (f4 == f5) {
                return (int) (i2 - f5);
            }
            f4 = f5;
        }
    }

    @Override // x2.o
    public boolean offer(T t3) {
        Objects.requireNonNull(t3, "Null is not a valid element");
        AtomicReferenceArray<Object> atomicReferenceArray = this.f69827e;
        long e4 = e();
        int i2 = this.f69826d;
        int c4 = c(e4, i2);
        if (e4 < this.f69825c) {
            return r(atomicReferenceArray, t3, e4, c4);
        }
        long j4 = this.f69824b + e4;
        if (g(atomicReferenceArray, c(j4, i2)) == null) {
            this.f69825c = j4 - 1;
            return r(atomicReferenceArray, t3, e4, c4);
        } else if (g(atomicReferenceArray, c(1 + e4, i2)) == null) {
            return r(atomicReferenceArray, t3, e4, c4);
        } else {
            l(atomicReferenceArray, e4, c4, t3, i2);
            return true;
        }
    }

    public T peek() {
        AtomicReferenceArray<Object> atomicReferenceArray = this.f69829g;
        long d4 = d();
        int i2 = this.f69828f;
        T t3 = (T) g(atomicReferenceArray, c(d4, i2));
        return t3 == f69822j ? j(h(atomicReferenceArray, i2 + 1), d4, i2) : t3;
    }

    @Override // x2.n, x2.o
    @Nullable
    public T poll() {
        AtomicReferenceArray<Object> atomicReferenceArray = this.f69829g;
        long d4 = d();
        int i2 = this.f69828f;
        int c4 = c(d4, i2);
        T t3 = (T) g(atomicReferenceArray, c4);
        boolean z3 = t3 == f69822j;
        if (t3 == null || z3) {
            if (z3) {
                return k(h(atomicReferenceArray, i2 + 1), d4, i2);
            }
            return null;
        }
        o(atomicReferenceArray, c4, null);
        n(d4 + 1);
        return t3;
    }

    @Override // x2.o
    public boolean offer(T t3, T t4) {
        AtomicReferenceArray<Object> atomicReferenceArray = this.f69827e;
        long i2 = i();
        int i4 = this.f69826d;
        long j4 = 2 + i2;
        if (g(atomicReferenceArray, c(j4, i4)) == null) {
            int c4 = c(i2, i4);
            o(atomicReferenceArray, c4 + 1, t4);
            o(atomicReferenceArray, c4, t3);
            q(j4);
            return true;
        }
        AtomicReferenceArray<Object> atomicReferenceArray2 = new AtomicReferenceArray<>(atomicReferenceArray.length());
        this.f69827e = atomicReferenceArray2;
        int c5 = c(i2, i4);
        o(atomicReferenceArray2, c5 + 1, t4);
        o(atomicReferenceArray2, c5, t3);
        p(atomicReferenceArray, atomicReferenceArray2);
        o(atomicReferenceArray, c5, f69822j);
        q(j4);
        return true;
    }
}
