package com.facebook.imagepipeline.memory;

import android.annotation.SuppressLint;
import android.util.SparseArray;
import android.util.SparseIntArray;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.common.memory.MemoryTrimType;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.NotThreadSafe;
/* loaded from: classes.dex */
public abstract class BasePool<V> implements com.facebook.common.memory.e<V> {

    /* renamed from: a  reason: collision with root package name */
    private final Class<?> f12781a = getClass();

    /* renamed from: b  reason: collision with root package name */
    final com.facebook.common.memory.c f12782b;

    /* renamed from: c  reason: collision with root package name */
    final e0 f12783c;
    @VisibleForTesting

    /* renamed from: d  reason: collision with root package name */
    final SparseArray<f<V>> f12784d;
    @VisibleForTesting

    /* renamed from: e  reason: collision with root package name */
    final Set<V> f12785e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f12786f;
    @VisibleForTesting
    @GuardedBy("this")

    /* renamed from: g  reason: collision with root package name */
    final a f12787g;
    @VisibleForTesting
    @GuardedBy("this")

    /* renamed from: h  reason: collision with root package name */
    final a f12788h;

    /* renamed from: i  reason: collision with root package name */
    private final f0 f12789i;

    /* loaded from: classes2.dex */
    public static class InvalidSizeException extends RuntimeException {
        public InvalidSizeException(Object obj) {
            super("Invalid size: " + obj.toString());
        }
    }

    /* loaded from: classes2.dex */
    public static class InvalidValueException extends RuntimeException {
        public InvalidValueException(Object obj) {
            super("Invalid value: " + obj.toString());
        }
    }

    /* loaded from: classes2.dex */
    public static class PoolSizeViolationException extends RuntimeException {
        public PoolSizeViolationException(int i2, int i4, int i5, int i6) {
            super("Pool hard cap violation? Hard cap = " + i2 + " Used size = " + i4 + " Free size = " + i5 + " Request size = " + i6);
        }
    }

    /* loaded from: classes2.dex */
    public static class SizeTooLargeException extends InvalidSizeException {
        public SizeTooLargeException(Object obj) {
            super(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    @NotThreadSafe
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: c  reason: collision with root package name */
        private static final String f12790c = "com.facebook.imagepipeline.memory.BasePool.Counter";

        /* renamed from: a  reason: collision with root package name */
        int f12791a;

        /* renamed from: b  reason: collision with root package name */
        int f12792b;

        a() {
        }

        public void a(int i2) {
            int i4;
            int i5 = this.f12792b;
            if (i5 >= i2 && (i4 = this.f12791a) > 0) {
                this.f12791a = i4 - 1;
                this.f12792b = i5 - i2;
                return;
            }
            com.facebook.common.logging.a.y0(f12790c, "Unexpected decrement of %d. Current numBytes = %d, count = %d", Integer.valueOf(i2), Integer.valueOf(this.f12792b), Integer.valueOf(this.f12791a));
        }

        public void b(int i2) {
            this.f12791a++;
            this.f12792b += i2;
        }

        public void c() {
            this.f12791a = 0;
            this.f12792b = 0;
        }
    }

    public BasePool(com.facebook.common.memory.c cVar, e0 e0Var, f0 f0Var) {
        this.f12782b = (com.facebook.common.memory.c) com.facebook.common.internal.h.i(cVar);
        e0 e0Var2 = (e0) com.facebook.common.internal.h.i(e0Var);
        this.f12783c = e0Var2;
        this.f12789i = (f0) com.facebook.common.internal.h.i(f0Var);
        this.f12784d = new SparseArray<>();
        if (e0Var2.f12858g) {
            n();
        } else {
            r(new SparseIntArray(0));
        }
        this.f12785e = com.facebook.common.internal.j.g();
        this.f12788h = new a();
        this.f12787g = new a();
    }

    private synchronized void c() {
        boolean z3;
        if (p() && this.f12788h.f12792b != 0) {
            z3 = false;
            com.facebook.common.internal.h.o(z3);
        }
        z3 = true;
        com.facebook.common.internal.h.o(z3);
    }

    private void e(SparseIntArray sparseIntArray) {
        this.f12784d.clear();
        for (int i2 = 0; i2 < sparseIntArray.size(); i2++) {
            int keyAt = sparseIntArray.keyAt(i2);
            this.f12784d.put(keyAt, new f<>(k(keyAt), sparseIntArray.valueAt(i2), 0, this.f12783c.f12858g));
        }
    }

    private synchronized f<V> h(int i2) {
        return this.f12784d.get(i2);
    }

    private synchronized void n() {
        SparseIntArray sparseIntArray = this.f12783c.f12854c;
        if (sparseIntArray != null) {
            e(sparseIntArray);
            this.f12786f = false;
        } else {
            this.f12786f = true;
        }
    }

    private synchronized void r(SparseIntArray sparseIntArray) {
        com.facebook.common.internal.h.i(sparseIntArray);
        this.f12784d.clear();
        SparseIntArray sparseIntArray2 = this.f12783c.f12854c;
        if (sparseIntArray2 != null) {
            for (int i2 = 0; i2 < sparseIntArray2.size(); i2++) {
                int keyAt = sparseIntArray2.keyAt(i2);
                this.f12784d.put(keyAt, new f<>(k(keyAt), sparseIntArray2.valueAt(i2), sparseIntArray.get(keyAt, 0), this.f12783c.f12858g));
            }
            this.f12786f = false;
        } else {
            this.f12786f = true;
        }
    }

    @SuppressLint({"InvalidAccessToGuardedField"})
    private void s() {
        if (com.facebook.common.logging.a.R(2)) {
            com.facebook.common.logging.a.Y(this.f12781a, "Used = (%d, %d); Free = (%d, %d)", Integer.valueOf(this.f12787g.f12791a), Integer.valueOf(this.f12787g.f12792b), Integer.valueOf(this.f12788h.f12791a), Integer.valueOf(this.f12788h.f12792b));
        }
    }

    private List<f<V>> v() {
        ArrayList arrayList = new ArrayList(this.f12784d.size());
        int size = this.f12784d.size();
        for (int i2 = 0; i2 < size; i2++) {
            f<V> valueAt = this.f12784d.valueAt(i2);
            int i4 = valueAt.f12861a;
            int i5 = valueAt.f12862b;
            int e4 = valueAt.e();
            if (valueAt.d() > 0) {
                arrayList.add(valueAt);
            }
            this.f12784d.setValueAt(i2, new f<>(k(i4), i5, e4, this.f12783c.f12858g));
        }
        return arrayList;
    }

    protected abstract V a(int i2);

    @VisibleForTesting
    synchronized boolean b(int i2) {
        e0 e0Var = this.f12783c;
        int i4 = e0Var.f12852a;
        int i5 = this.f12787g.f12792b;
        if (i2 > i4 - i5) {
            this.f12789i.g();
            return false;
        }
        int i6 = e0Var.f12853b;
        if (i2 > i6 - (i5 + this.f12788h.f12792b)) {
            x(i6 - i2);
        }
        if (i2 > i4 - (this.f12787g.f12792b + this.f12788h.f12792b)) {
            this.f12789i.g();
            return false;
        }
        return true;
    }

    @Override // com.facebook.common.memory.b
    public void d(MemoryTrimType memoryTrimType) {
        w();
    }

    @VisibleForTesting
    protected abstract void f(V v3);

    @VisibleForTesting
    synchronized f<V> g(int i2) {
        f<V> fVar = this.f12784d.get(i2);
        if (fVar == null && this.f12786f) {
            if (com.facebook.common.logging.a.R(2)) {
                com.facebook.common.logging.a.V(this.f12781a, "creating new bucket %s", Integer.valueOf(i2));
            }
            f<V> t3 = t(i2);
            this.f12784d.put(i2, t3);
            return t3;
        }
        return fVar;
    }

    @Override // com.facebook.common.memory.e
    public V get(int i2) {
        V m4;
        c();
        int i4 = i(i2);
        synchronized (this) {
            f<V> g4 = g(i4);
            if (g4 != null && (m4 = m(g4)) != null) {
                com.facebook.common.internal.h.o(this.f12785e.add(m4));
                int j4 = j(m4);
                int k4 = k(j4);
                this.f12787g.b(k4);
                this.f12788h.a(k4);
                this.f12789i.e(k4);
                s();
                if (com.facebook.common.logging.a.R(2)) {
                    com.facebook.common.logging.a.W(this.f12781a, "get (reuse) (object, size) = (%x, %s)", Integer.valueOf(System.identityHashCode(m4)), Integer.valueOf(j4));
                }
                return m4;
            }
            int k5 = k(i4);
            if (b(k5)) {
                this.f12787g.b(k5);
                if (g4 != null) {
                    g4.f();
                }
                V v3 = null;
                try {
                    v3 = a(i4);
                } catch (Throwable th) {
                    synchronized (this) {
                        this.f12787g.a(k5);
                        f<V> g5 = g(i4);
                        if (g5 != null) {
                            g5.b();
                        }
                        com.facebook.common.internal.m.f(th);
                    }
                }
                synchronized (this) {
                    com.facebook.common.internal.h.o(this.f12785e.add(v3));
                    y();
                    this.f12789i.d(k5);
                    s();
                    if (com.facebook.common.logging.a.R(2)) {
                        com.facebook.common.logging.a.W(this.f12781a, "get (alloc) (object, size) = (%x, %s)", Integer.valueOf(System.identityHashCode(v3)), Integer.valueOf(i4));
                    }
                }
                return v3;
            }
            throw new PoolSizeViolationException(this.f12783c.f12852a, this.f12787g.f12792b, this.f12788h.f12792b, k5);
        }
    }

    protected abstract int i(int i2);

    protected abstract int j(V v3);

    protected abstract int k(int i2);

    public synchronized Map<String, Integer> l() {
        HashMap hashMap;
        hashMap = new HashMap();
        for (int i2 = 0; i2 < this.f12784d.size(); i2++) {
            int keyAt = this.f12784d.keyAt(i2);
            hashMap.put(f0.f12866a + k(keyAt), Integer.valueOf(this.f12784d.valueAt(i2).e()));
        }
        hashMap.put(f0.f12871f, Integer.valueOf(this.f12783c.f12853b));
        hashMap.put(f0.f12872g, Integer.valueOf(this.f12783c.f12852a));
        hashMap.put(f0.f12867b, Integer.valueOf(this.f12787g.f12791a));
        hashMap.put(f0.f12868c, Integer.valueOf(this.f12787g.f12792b));
        hashMap.put(f0.f12869d, Integer.valueOf(this.f12788h.f12791a));
        hashMap.put(f0.f12870e, Integer.valueOf(this.f12788h.f12792b));
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public synchronized V m(f<V> fVar) {
        return fVar.c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void o() {
        this.f12782b.a(this);
        this.f12789i.f(this);
    }

    @VisibleForTesting
    synchronized boolean p() {
        boolean z3;
        z3 = this.f12787g.f12792b + this.f12788h.f12792b > this.f12783c.f12853b;
        if (z3) {
            this.f12789i.a();
        }
        return z3;
    }

    protected boolean q(V v3) {
        com.facebook.common.internal.h.i(v3);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0080, code lost:
        r2.b();
     */
    @Override // com.facebook.common.memory.e, com.facebook.common.references.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void release(V r8) {
        /*
            r7 = this;
            com.facebook.common.internal.h.i(r8)
            int r0 = r7.j(r8)
            int r1 = r7.k(r0)
            monitor-enter(r7)
            com.facebook.imagepipeline.memory.f r2 = r7.h(r0)     // Catch: java.lang.Throwable -> Lae
            java.util.Set<V> r3 = r7.f12785e     // Catch: java.lang.Throwable -> Lae
            boolean r3 = r3.remove(r8)     // Catch: java.lang.Throwable -> Lae
            r4 = 2
            if (r3 != 0) goto L3d
            java.lang.Class<?> r2 = r7.f12781a     // Catch: java.lang.Throwable -> Lae
            java.lang.String r3 = "release (free, value unrecognized) (object, size) = (%x, %s)"
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch: java.lang.Throwable -> Lae
            r5 = 0
            int r6 = java.lang.System.identityHashCode(r8)     // Catch: java.lang.Throwable -> Lae
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)     // Catch: java.lang.Throwable -> Lae
            r4[r5] = r6     // Catch: java.lang.Throwable -> Lae
            r5 = 1
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch: java.lang.Throwable -> Lae
            r4[r5] = r0     // Catch: java.lang.Throwable -> Lae
            com.facebook.common.logging.a.s(r2, r3, r4)     // Catch: java.lang.Throwable -> Lae
            r7.f(r8)     // Catch: java.lang.Throwable -> Lae
            com.facebook.imagepipeline.memory.f0 r8 = r7.f12789i     // Catch: java.lang.Throwable -> Lae
            r8.b(r1)     // Catch: java.lang.Throwable -> Lae
            goto La9
        L3d:
            if (r2 == 0) goto L7e
            boolean r3 = r2.g()     // Catch: java.lang.Throwable -> Lae
            if (r3 != 0) goto L7e
            boolean r3 = r7.p()     // Catch: java.lang.Throwable -> Lae
            if (r3 != 0) goto L7e
            boolean r3 = r7.q(r8)     // Catch: java.lang.Throwable -> Lae
            if (r3 != 0) goto L52
            goto L7e
        L52:
            r2.i(r8)     // Catch: java.lang.Throwable -> Lae
            com.facebook.imagepipeline.memory.BasePool$a r2 = r7.f12788h     // Catch: java.lang.Throwable -> Lae
            r2.b(r1)     // Catch: java.lang.Throwable -> Lae
            com.facebook.imagepipeline.memory.BasePool$a r2 = r7.f12787g     // Catch: java.lang.Throwable -> Lae
            r2.a(r1)     // Catch: java.lang.Throwable -> Lae
            com.facebook.imagepipeline.memory.f0 r2 = r7.f12789i     // Catch: java.lang.Throwable -> Lae
            r2.c(r1)     // Catch: java.lang.Throwable -> Lae
            boolean r1 = com.facebook.common.logging.a.R(r4)     // Catch: java.lang.Throwable -> Lae
            if (r1 == 0) goto La9
            java.lang.Class<?> r1 = r7.f12781a     // Catch: java.lang.Throwable -> Lae
            java.lang.String r2 = "release (reuse) (object, size) = (%x, %s)"
            int r8 = java.lang.System.identityHashCode(r8)     // Catch: java.lang.Throwable -> Lae
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)     // Catch: java.lang.Throwable -> Lae
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch: java.lang.Throwable -> Lae
            com.facebook.common.logging.a.W(r1, r2, r8, r0)     // Catch: java.lang.Throwable -> Lae
            goto La9
        L7e:
            if (r2 == 0) goto L83
            r2.b()     // Catch: java.lang.Throwable -> Lae
        L83:
            boolean r2 = com.facebook.common.logging.a.R(r4)     // Catch: java.lang.Throwable -> Lae
            if (r2 == 0) goto L9c
            java.lang.Class<?> r2 = r7.f12781a     // Catch: java.lang.Throwable -> Lae
            java.lang.String r3 = "release (free) (object, size) = (%x, %s)"
            int r4 = java.lang.System.identityHashCode(r8)     // Catch: java.lang.Throwable -> Lae
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)     // Catch: java.lang.Throwable -> Lae
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch: java.lang.Throwable -> Lae
            com.facebook.common.logging.a.W(r2, r3, r4, r0)     // Catch: java.lang.Throwable -> Lae
        L9c:
            r7.f(r8)     // Catch: java.lang.Throwable -> Lae
            com.facebook.imagepipeline.memory.BasePool$a r8 = r7.f12787g     // Catch: java.lang.Throwable -> Lae
            r8.a(r1)     // Catch: java.lang.Throwable -> Lae
            com.facebook.imagepipeline.memory.f0 r8 = r7.f12789i     // Catch: java.lang.Throwable -> Lae
            r8.b(r1)     // Catch: java.lang.Throwable -> Lae
        La9:
            r7.s()     // Catch: java.lang.Throwable -> Lae
            monitor-exit(r7)     // Catch: java.lang.Throwable -> Lae
            return
        Lae:
            r8 = move-exception
            monitor-exit(r7)     // Catch: java.lang.Throwable -> Lae
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.imagepipeline.memory.BasePool.release(java.lang.Object):void");
    }

    f<V> t(int i2) {
        return new f<>(k(i2), Integer.MAX_VALUE, 0, this.f12783c.f12858g);
    }

    protected void u() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @VisibleForTesting
    void w() {
        int i2;
        List arrayList;
        synchronized (this) {
            if (this.f12783c.f12858g) {
                arrayList = v();
            } else {
                arrayList = new ArrayList(this.f12784d.size());
                SparseIntArray sparseIntArray = new SparseIntArray();
                for (int i4 = 0; i4 < this.f12784d.size(); i4++) {
                    f<V> valueAt = this.f12784d.valueAt(i4);
                    if (valueAt.d() > 0) {
                        arrayList.add(valueAt);
                    }
                    sparseIntArray.put(this.f12784d.keyAt(i4), valueAt.e());
                }
                r(sparseIntArray);
            }
            this.f12788h.c();
            s();
        }
        u();
        for (i2 = 0; i2 < arrayList.size(); i2++) {
            f fVar = (f) arrayList.get(i2);
            while (true) {
                Object h4 = fVar.h();
                if (h4 == null) {
                    break;
                }
                f(h4);
            }
        }
    }

    @VisibleForTesting
    synchronized void x(int i2) {
        int i4 = this.f12787g.f12792b;
        int i5 = this.f12788h.f12792b;
        int min = Math.min((i4 + i5) - i2, i5);
        if (min <= 0) {
            return;
        }
        if (com.facebook.common.logging.a.R(2)) {
            com.facebook.common.logging.a.X(this.f12781a, "trimToSize: TargetSize = %d; Initial Size = %d; Bytes to free = %d", Integer.valueOf(i2), Integer.valueOf(this.f12787g.f12792b + this.f12788h.f12792b), Integer.valueOf(min));
        }
        s();
        for (int i6 = 0; i6 < this.f12784d.size() && min > 0; i6++) {
            f<V> valueAt = this.f12784d.valueAt(i6);
            while (min > 0) {
                V h4 = valueAt.h();
                if (h4 == null) {
                    break;
                }
                f(h4);
                int i7 = valueAt.f12861a;
                min -= i7;
                this.f12788h.a(i7);
            }
        }
        s();
        if (com.facebook.common.logging.a.R(2)) {
            com.facebook.common.logging.a.W(this.f12781a, "trimToSize: TargetSize = %d; Final Size = %d", Integer.valueOf(i2), Integer.valueOf(this.f12787g.f12792b + this.f12788h.f12792b));
        }
    }

    @VisibleForTesting
    synchronized void y() {
        if (p()) {
            x(this.f12783c.f12853b);
        }
    }
}
