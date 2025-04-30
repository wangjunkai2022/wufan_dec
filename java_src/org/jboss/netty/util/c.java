package org.jboss.netty.util;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import org.jboss.netty.util.internal.ConcurrentIdentityHashMap;
/* compiled from: HashedWheelTimer.java */
/* loaded from: classes5.dex */
public class c implements g {

    /* renamed from: k  reason: collision with root package name */
    private static final AtomicInteger f73621k = new AtomicInteger();

    /* renamed from: l  reason: collision with root package name */
    private static final org.jboss.netty.util.internal.g f73622l = new org.jboss.netty.util.internal.g();

    /* renamed from: a  reason: collision with root package name */
    private final b f73623a;

    /* renamed from: b  reason: collision with root package name */
    final Thread f73624b;

    /* renamed from: c  reason: collision with root package name */
    final AtomicInteger f73625c;

    /* renamed from: d  reason: collision with root package name */
    private final long f73626d;

    /* renamed from: e  reason: collision with root package name */
    final long f73627e;

    /* renamed from: f  reason: collision with root package name */
    final Set<a>[] f73628f;

    /* renamed from: g  reason: collision with root package name */
    final org.jboss.netty.util.internal.f<a>[] f73629g;

    /* renamed from: h  reason: collision with root package name */
    final int f73630h;

    /* renamed from: i  reason: collision with root package name */
    final ReadWriteLock f73631i;

    /* renamed from: j  reason: collision with root package name */
    volatile int f73632j;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: HashedWheelTimer.java */
    /* loaded from: classes5.dex */
    public final class a implements f {

        /* renamed from: g  reason: collision with root package name */
        private static final int f73633g = 0;

        /* renamed from: h  reason: collision with root package name */
        private static final int f73634h = 1;

        /* renamed from: i  reason: collision with root package name */
        private static final int f73635i = 2;

        /* renamed from: a  reason: collision with root package name */
        private final h f73636a;

        /* renamed from: b  reason: collision with root package name */
        final long f73637b;

        /* renamed from: c  reason: collision with root package name */
        volatile int f73638c;

        /* renamed from: d  reason: collision with root package name */
        volatile long f73639d;

        /* renamed from: e  reason: collision with root package name */
        private final AtomicInteger f73640e = new AtomicInteger(0);

        a(h hVar, long j4) {
            this.f73636a = hVar;
            this.f73637b = j4;
        }

        @Override // org.jboss.netty.util.f
        public h a() {
            return this.f73636a;
        }

        @Override // org.jboss.netty.util.f
        public g b() {
            return c.this;
        }

        public void c() {
            if (this.f73640e.compareAndSet(0, 2)) {
                try {
                    this.f73636a.a(this);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }

        @Override // org.jboss.netty.util.f
        public void cancel() {
            if (this.f73640e.compareAndSet(0, 1)) {
                c.this.f73628f[this.f73638c].remove(this);
            }
        }

        @Override // org.jboss.netty.util.f
        public boolean isCancelled() {
            return this.f73640e.get() == 1;
        }

        @Override // org.jboss.netty.util.f
        public boolean isExpired() {
            return this.f73640e.get() != 0;
        }

        public String toString() {
            long currentTimeMillis = this.f73637b - System.currentTimeMillis();
            StringBuilder sb = new StringBuilder(192);
            sb.append(a.class.getSimpleName());
            sb.append('(');
            sb.append("deadline: ");
            if (currentTimeMillis > 0) {
                sb.append(currentTimeMillis);
                sb.append(" ms later, ");
            } else if (currentTimeMillis < 0) {
                sb.append(-currentTimeMillis);
                sb.append(" ms ago, ");
            } else {
                sb.append("now, ");
            }
            if (isCancelled()) {
                sb.append(", cancelled");
            }
            sb.append(')');
            return sb.toString();
        }
    }

    /* compiled from: HashedWheelTimer.java */
    /* loaded from: classes5.dex */
    private final class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private long f73642a;

        /* renamed from: b  reason: collision with root package name */
        private long f73643b;

        b() {
        }

        private void a(List<a> list, long j4) {
            c.this.f73631i.writeLock().lock();
            try {
                c cVar = c.this;
                int i2 = (cVar.f73632j + 1) & c.this.f73630h;
                cVar.f73632j = i2;
                b(list, c.this.f73629g[i2], j4);
            } finally {
                c.this.f73631i.writeLock().unlock();
            }
        }

        private void b(List<a> list, org.jboss.netty.util.internal.f<a> fVar, long j4) {
            fVar.rewind();
            ArrayList<a> arrayList = null;
            while (fVar.hasNext()) {
                a next = fVar.next();
                if (next.f73639d <= 0) {
                    fVar.remove();
                    if (next.f73637b <= j4) {
                        list.add(next);
                    } else {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(next);
                    }
                } else {
                    next.f73639d--;
                }
            }
            if (arrayList != null) {
                for (a aVar : arrayList) {
                    c.this.e(aVar, aVar.f73637b - j4);
                }
            }
        }

        private void c(List<a> list) {
            for (int size = list.size() - 1; size >= 0; size--) {
                list.get(size).c();
            }
            list.clear();
        }

        private long d() {
            long j4 = this.f73642a + (c.this.f73627e * this.f73643b);
            while (true) {
                long currentTimeMillis = (c.this.f73627e * this.f73643b) - (System.currentTimeMillis() - this.f73642a);
                if (org.jboss.netty.util.internal.d.d()) {
                    currentTimeMillis = (currentTimeMillis / 10) * 10;
                }
                if (currentTimeMillis <= 0) {
                    this.f73643b++;
                    return j4;
                }
                try {
                    Thread.sleep(currentTimeMillis);
                } catch (InterruptedException unused) {
                    if (c.this.f73625c.get() != 1) {
                        return -1L;
                    }
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            ArrayList arrayList = new ArrayList();
            this.f73642a = System.currentTimeMillis();
            this.f73643b = 1L;
            while (c.this.f73625c.get() == 1) {
                long d4 = d();
                if (d4 > 0) {
                    a(arrayList, d4);
                    c(arrayList);
                }
            }
        }
    }

    public c() {
        this(Executors.defaultThreadFactory());
    }

    private static org.jboss.netty.util.internal.f<a>[] b(Set<a>[] setArr) {
        org.jboss.netty.util.internal.f<a>[] fVarArr = new org.jboss.netty.util.internal.f[setArr.length];
        for (int i2 = 0; i2 < setArr.length; i2++) {
            fVarArr[i2] = (org.jboss.netty.util.internal.f) setArr[i2].iterator();
        }
        return fVarArr;
    }

    private static Set<a>[] c(int i2) {
        if (i2 <= 0) {
            throw new IllegalArgumentException("ticksPerWheel must be greater than 0: " + i2);
        } else if (i2 <= 1073741824) {
            int d4 = d(i2);
            Set<a>[] setArr = new Set[d4];
            for (int i4 = 0; i4 < d4; i4++) {
                setArr[i4] = new MapBackedSet(new ConcurrentIdentityHashMap(16, 0.95f, 4));
            }
            return setArr;
        } else {
            throw new IllegalArgumentException("ticksPerWheel may not be greater than 2^30: " + i2);
        }
    }

    private static int d(int i2) {
        int i4 = 1;
        while (i4 < i2) {
            i4 <<= 1;
        }
        return i4;
    }

    @Override // org.jboss.netty.util.g
    public f a(h hVar, long j4, TimeUnit timeUnit) {
        long currentTimeMillis = System.currentTimeMillis();
        Objects.requireNonNull(hVar, "task");
        Objects.requireNonNull(timeUnit, "unit");
        f();
        long millis = timeUnit.toMillis(j4);
        a aVar = new a(hVar, currentTimeMillis + millis);
        e(aVar, millis);
        return aVar;
    }

    void e(a aVar, long j4) {
        long j5 = this.f73627e;
        if (j4 < j5) {
            j4 = j5;
        }
        long j6 = this.f73626d;
        long j7 = ((j4 % j6) / j5) + (j4 % j5 != 0 ? 1 : 0);
        long j8 = (j4 / j6) - (j4 % j6 != 0 ? 0 : 1);
        this.f73631i.readLock().lock();
        try {
            int i2 = (int) ((this.f73632j + j7) & this.f73630h);
            aVar.f73638c = i2;
            aVar.f73639d = j8;
            this.f73628f[i2].add(aVar);
        } finally {
            this.f73631i.readLock().unlock();
        }
    }

    public void f() {
        int i2 = this.f73625c.get();
        if (i2 == 0) {
            if (this.f73625c.compareAndSet(0, 1)) {
                this.f73624b.start();
            }
        } else if (i2 != 1) {
            if (i2 != 2) {
                throw new Error();
            }
            throw new IllegalStateException("cannot be started once stopped");
        }
    }

    @Override // org.jboss.netty.util.g
    public Set<f> stop() {
        Set<a>[] setArr;
        if (Thread.currentThread() != this.f73624b) {
            if (this.f73625c.getAndSet(2) != 1) {
                return Collections.emptySet();
            }
            boolean z3 = false;
            while (this.f73624b.isAlive()) {
                this.f73624b.interrupt();
                try {
                    this.f73624b.join(100L);
                } catch (InterruptedException unused) {
                    z3 = true;
                }
            }
            if (z3) {
                Thread.currentThread().interrupt();
            }
            f73622l.a();
            HashSet hashSet = new HashSet();
            for (Set<a> set : this.f73628f) {
                hashSet.addAll(set);
                set.clear();
            }
            return Collections.unmodifiableSet(hashSet);
        }
        throw new IllegalStateException(c.class.getSimpleName() + ".stop() cannot be called from " + h.class.getSimpleName());
    }

    public c(long j4, TimeUnit timeUnit) {
        this(Executors.defaultThreadFactory(), j4, timeUnit);
    }

    public c(long j4, TimeUnit timeUnit, int i2) {
        this(Executors.defaultThreadFactory(), j4, timeUnit, i2);
    }

    public c(ThreadFactory threadFactory) {
        this(threadFactory, 100L, TimeUnit.MILLISECONDS);
    }

    public c(ThreadFactory threadFactory, long j4, TimeUnit timeUnit) {
        this(threadFactory, j4, timeUnit, 512);
    }

    public c(ThreadFactory threadFactory, long j4, TimeUnit timeUnit, int i2) {
        b bVar = new b();
        this.f73623a = bVar;
        this.f73625c = new AtomicInteger();
        this.f73631i = new ReentrantReadWriteLock();
        Objects.requireNonNull(threadFactory, "threadFactory");
        Objects.requireNonNull(timeUnit, "unit");
        if (j4 <= 0) {
            throw new IllegalArgumentException("tickDuration must be greater than 0: " + j4);
        } else if (i2 > 0) {
            Set<a>[] c4 = c(i2);
            this.f73628f = c4;
            this.f73629g = b(c4);
            this.f73630h = c4.length - 1;
            long millis = timeUnit.toMillis(j4);
            this.f73627e = millis;
            if (millis != Long.MAX_VALUE && millis < Long.MAX_VALUE / c4.length) {
                this.f73626d = millis * c4.length;
                this.f73624b = threadFactory.newThread(new e(bVar, "Hashed wheel timer #" + f73621k.incrementAndGet()));
                f73622l.b();
                return;
            }
            throw new IllegalArgumentException("tickDuration is too long: " + millis + ' ' + timeUnit);
        } else {
            throw new IllegalArgumentException("ticksPerWheel must be greater than 0: " + i2);
        }
    }
}
