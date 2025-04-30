package com.facebook.datasource;

import com.facebook.common.internal.k;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;
/* compiled from: IncreasingQualityDataSourceSupplier.java */
@ThreadSafe
/* loaded from: classes2.dex */
public class g<T> implements k<c<T>> {

    /* renamed from: a  reason: collision with root package name */
    private final List<k<c<T>>> f11810a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f11811b;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: IncreasingQualityDataSourceSupplier.java */
    @ThreadSafe
    /* loaded from: classes.dex */
    public class a extends AbstractDataSource<T> {
        @GuardedBy("IncreasingQualityDataSource.this")
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private ArrayList<c<T>> f11812g;
        @GuardedBy("IncreasingQualityDataSource.this")

        /* renamed from: h  reason: collision with root package name */
        private int f11813h;

        /* renamed from: i  reason: collision with root package name */
        private int f11814i;

        /* renamed from: j  reason: collision with root package name */
        private AtomicInteger f11815j;
        @Nullable

        /* renamed from: k  reason: collision with root package name */
        private Throwable f11816k;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: IncreasingQualityDataSourceSupplier.java */
        /* renamed from: com.facebook.datasource.g$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class C0065a implements e<T> {

            /* renamed from: a  reason: collision with root package name */
            private int f11818a;

            public C0065a(int i2) {
                this.f11818a = i2;
            }

            @Override // com.facebook.datasource.e
            public void a(c<T> cVar) {
            }

            @Override // com.facebook.datasource.e
            public void b(c<T> cVar) {
                a.this.B(this.f11818a, cVar);
            }

            @Override // com.facebook.datasource.e
            public void c(c<T> cVar) {
                if (cVar.a()) {
                    a.this.C(this.f11818a, cVar);
                } else if (cVar.c()) {
                    a.this.B(this.f11818a, cVar);
                }
            }

            @Override // com.facebook.datasource.e
            public void d(c<T> cVar) {
                if (this.f11818a == 0) {
                    a.this.o(cVar.getProgress());
                }
            }
        }

        public a() {
            if (g.this.f11811b) {
                return;
            }
            v();
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x0022 A[LOOP:0: B:17:0x0020->B:18:0x0022, LOOP_END] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void A(int r3, com.facebook.datasource.c<T> r4, boolean r5) {
            /*
                r2 = this;
                monitor-enter(r2)
                int r0 = r2.f11813h     // Catch: java.lang.Throwable -> L2f
                com.facebook.datasource.c r1 = r2.x(r3)     // Catch: java.lang.Throwable -> L2f
                if (r4 != r1) goto L2d
                int r4 = r2.f11813h     // Catch: java.lang.Throwable -> L2f
                if (r3 != r4) goto Le
                goto L2d
            Le:
                com.facebook.datasource.c r4 = r2.y()     // Catch: java.lang.Throwable -> L2f
                if (r4 == 0) goto L1d
                if (r5 == 0) goto L1b
                int r4 = r2.f11813h     // Catch: java.lang.Throwable -> L2f
                if (r3 >= r4) goto L1b
                goto L1d
            L1b:
                r3 = r0
                goto L1f
            L1d:
                r2.f11813h = r3     // Catch: java.lang.Throwable -> L2f
            L1f:
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L2f
            L20:
                if (r0 <= r3) goto L2c
                com.facebook.datasource.c r4 = r2.w(r0)
                r2.u(r4)
                int r0 = r0 + (-1)
                goto L20
            L2c:
                return
            L2d:
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L2f
                return
            L2f:
                r3 = move-exception
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L2f
                goto L33
            L32:
                throw r3
            L33:
                goto L32
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.datasource.g.a.A(int, com.facebook.datasource.c, boolean):void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void B(int i2, c<T> cVar) {
            u(D(i2, cVar));
            if (i2 == 0) {
                this.f11816k = cVar.d();
            }
            z();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void C(int i2, c<T> cVar) {
            A(i2, cVar, cVar.c());
            if (cVar == y()) {
                setResult(null, i2 == 0 && cVar.c());
            }
            z();
        }

        @Nullable
        private synchronized c<T> D(int i2, c<T> cVar) {
            if (cVar == y()) {
                return null;
            }
            if (cVar == x(i2)) {
                return w(i2);
            }
            return cVar;
        }

        private void u(c<T> cVar) {
            if (cVar != null) {
                cVar.close();
            }
        }

        private void v() {
            if (this.f11815j != null) {
                return;
            }
            synchronized (this) {
                if (this.f11815j == null) {
                    this.f11815j = new AtomicInteger(0);
                    int size = g.this.f11810a.size();
                    this.f11814i = size;
                    this.f11813h = size;
                    this.f11812g = new ArrayList<>(size);
                    for (int i2 = 0; i2 < size; i2++) {
                        c<T> cVar = (c) ((k) g.this.f11810a.get(i2)).get();
                        this.f11812g.add(cVar);
                        cVar.e(new C0065a(i2), com.facebook.common.executors.a.a());
                        if (cVar.a()) {
                            break;
                        }
                    }
                }
            }
        }

        @Nullable
        private synchronized c<T> w(int i2) {
            c<T> cVar;
            ArrayList<c<T>> arrayList = this.f11812g;
            cVar = null;
            if (arrayList != null && i2 < arrayList.size()) {
                cVar = this.f11812g.set(i2, null);
            }
            return cVar;
        }

        @Nullable
        private synchronized c<T> x(int i2) {
            ArrayList<c<T>> arrayList;
            arrayList = this.f11812g;
            return (arrayList == null || i2 >= arrayList.size()) ? null : this.f11812g.get(i2);
        }

        @Nullable
        private synchronized c<T> y() {
            return x(this.f11813h);
        }

        private void z() {
            Throwable th;
            if (this.f11815j.incrementAndGet() != this.f11814i || (th = this.f11816k) == null) {
                return;
            }
            m(th);
        }

        @Override // com.facebook.datasource.AbstractDataSource, com.facebook.datasource.c
        public synchronized boolean a() {
            boolean z3;
            if (g.this.f11811b) {
                v();
            }
            c<T> y3 = y();
            if (y3 != null) {
                z3 = y3.a();
            }
            return z3;
        }

        @Override // com.facebook.datasource.AbstractDataSource, com.facebook.datasource.c
        public boolean close() {
            if (g.this.f11811b) {
                v();
            }
            synchronized (this) {
                if (super.close()) {
                    ArrayList<c<T>> arrayList = this.f11812g;
                    this.f11812g = null;
                    if (arrayList != null) {
                        for (int i2 = 0; i2 < arrayList.size(); i2++) {
                            u(arrayList.get(i2));
                        }
                        return true;
                    }
                    return true;
                }
                return false;
            }
        }

        @Override // com.facebook.datasource.AbstractDataSource, com.facebook.datasource.c
        @Nullable
        public synchronized T g() {
            c<T> y3;
            if (g.this.f11811b) {
                v();
            }
            y3 = y();
            return y3 != null ? y3.g() : null;
        }
    }

    private g(List<k<c<T>>> list, boolean z3) {
        com.facebook.common.internal.h.e(!list.isEmpty(), "List of suppliers is empty!");
        this.f11810a = list;
        this.f11811b = z3;
    }

    public static <T> g<T> c(List<k<c<T>>> list) {
        return d(list, false);
    }

    public static <T> g<T> d(List<k<c<T>>> list, boolean z3) {
        return new g<>(list, z3);
    }

    @Override // com.facebook.common.internal.k
    /* renamed from: e */
    public c<T> get() {
        return new a();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof g) {
            return com.facebook.common.internal.g.a(this.f11810a, ((g) obj).f11810a);
        }
        return false;
    }

    public int hashCode() {
        return this.f11810a.hashCode();
    }

    public String toString() {
        return com.facebook.common.internal.g.f(this).f("list", this.f11810a).toString();
    }
}
