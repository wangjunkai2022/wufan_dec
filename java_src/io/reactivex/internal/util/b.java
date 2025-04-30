package io.reactivex.internal.util;

import java.util.concurrent.atomic.AtomicLong;
/* compiled from: BackpressureHelper.java */
/* loaded from: classes5.dex */
public final class b {
    private b() {
        throw new IllegalStateException("No instances!");
    }

    public static long a(AtomicLong atomicLong, long j4) {
        long j5;
        do {
            j5 = atomicLong.get();
            if (j5 == Long.MAX_VALUE) {
                return Long.MAX_VALUE;
            }
        } while (!atomicLong.compareAndSet(j5, c(j5, j4)));
        return j5;
    }

    public static long b(AtomicLong atomicLong, long j4) {
        long j5;
        do {
            j5 = atomicLong.get();
            if (j5 == Long.MIN_VALUE) {
                return Long.MIN_VALUE;
            }
            if (j5 == Long.MAX_VALUE) {
                return Long.MAX_VALUE;
            }
        } while (!atomicLong.compareAndSet(j5, c(j5, j4)));
        return j5;
    }

    public static long c(long j4, long j5) {
        long j6 = j4 + j5;
        if (j6 < 0) {
            return Long.MAX_VALUE;
        }
        return j6;
    }

    public static long d(long j4, long j5) {
        long j6 = j4 * j5;
        if (((j4 | j5) >>> 31) == 0 || j6 / j4 == j5) {
            return j6;
        }
        return Long.MAX_VALUE;
    }

    public static long e(AtomicLong atomicLong, long j4) {
        long j5;
        long j6;
        do {
            j5 = atomicLong.get();
            if (j5 == Long.MAX_VALUE) {
                return Long.MAX_VALUE;
            }
            j6 = j5 - j4;
            if (j6 < 0) {
                io.reactivex.plugins.a.Y(new IllegalStateException("More produced than requested: " + j6));
                j6 = 0L;
            }
        } while (!atomicLong.compareAndSet(j5, j6));
        return j6;
    }

    public static long f(AtomicLong atomicLong, long j4) {
        long j5;
        long j6;
        do {
            j5 = atomicLong.get();
            if (j5 == Long.MIN_VALUE) {
                return Long.MIN_VALUE;
            }
            if (j5 == Long.MAX_VALUE) {
                return Long.MAX_VALUE;
            }
            j6 = j5 - j4;
            if (j6 < 0) {
                io.reactivex.plugins.a.Y(new IllegalStateException("More produced than requested: " + j6));
                j6 = 0L;
            }
        } while (!atomicLong.compareAndSet(j5, j6));
        return j6;
    }
}
