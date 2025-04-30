package io.reactivex.internal.queue;

import io.reactivex.annotations.Nullable;
import io.reactivex.internal.util.l;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;
import x2.n;
/* loaded from: classes5.dex */
public final class SpscArrayQueue<E> extends AtomicReferenceArray<E> implements n<E> {

    /* renamed from: f  reason: collision with root package name */
    private static final Integer f69815f = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096);
    private static final long serialVersionUID = -1296597691183856449L;

    /* renamed from: a  reason: collision with root package name */
    final int f69816a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicLong f69817b;

    /* renamed from: c  reason: collision with root package name */
    long f69818c;

    /* renamed from: d  reason: collision with root package name */
    final AtomicLong f69819d;

    /* renamed from: e  reason: collision with root package name */
    final int f69820e;

    public SpscArrayQueue(int i2) {
        super(l.b(i2));
        this.f69816a = length() - 1;
        this.f69817b = new AtomicLong();
        this.f69819d = new AtomicLong();
        this.f69820e = Math.min(i2 / 4, f69815f.intValue());
    }

    int a(long j4) {
        return this.f69816a & ((int) j4);
    }

    int b(long j4, int i2) {
        return ((int) j4) & i2;
    }

    E c(int i2) {
        return get(i2);
    }

    @Override // x2.o
    public void clear() {
        while (true) {
            if (poll() == null && isEmpty()) {
                return;
            }
        }
    }

    void d(long j4) {
        this.f69819d.lazySet(j4);
    }

    void e(int i2, E e4) {
        lazySet(i2, e4);
    }

    void f(long j4) {
        this.f69817b.lazySet(j4);
    }

    @Override // x2.o
    public boolean isEmpty() {
        return this.f69817b.get() == this.f69819d.get();
    }

    @Override // x2.o
    public boolean offer(E e4) {
        Objects.requireNonNull(e4, "Null is not a valid element");
        int i2 = this.f69816a;
        long j4 = this.f69817b.get();
        int b4 = b(j4, i2);
        if (j4 >= this.f69818c) {
            long j5 = this.f69820e + j4;
            if (c(b(j5, i2)) == null) {
                this.f69818c = j5;
            } else if (c(b4) != null) {
                return false;
            }
        }
        e(b4, e4);
        f(j4 + 1);
        return true;
    }

    @Override // x2.n, x2.o
    @Nullable
    public E poll() {
        long j4 = this.f69819d.get();
        int a4 = a(j4);
        E c4 = c(a4);
        if (c4 == null) {
            return null;
        }
        d(j4 + 1);
        e(a4, null);
        return c4;
    }

    @Override // x2.o
    public boolean offer(E e4, E e5) {
        return offer(e4) && offer(e5);
    }
}
