package com.facebook.imagepipeline.cache;

import android.graphics.Bitmap;
import android.os.SystemClock;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.common.memory.MemoryTrimType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;
/* compiled from: CountingMemoryCache.java */
@ThreadSafe
/* loaded from: classes.dex */
public class h<K, V> implements p<K, V>, com.facebook.common.memory.b {
    @VisibleForTesting

    /* renamed from: i  reason: collision with root package name */
    static final long f12496i = TimeUnit.MINUTES.toMillis(5);
    @VisibleForTesting
    @GuardedBy("this")

    /* renamed from: a  reason: collision with root package name */
    final g<K, d<K, V>> f12497a;
    @VisibleForTesting
    @GuardedBy("this")

    /* renamed from: b  reason: collision with root package name */
    final g<K, d<K, V>> f12498b;

    /* renamed from: d  reason: collision with root package name */
    private final v<V> f12500d;

    /* renamed from: e  reason: collision with root package name */
    private final c f12501e;

    /* renamed from: f  reason: collision with root package name */
    private final com.facebook.common.internal.k<q> f12502f;
    @GuardedBy("this")

    /* renamed from: g  reason: collision with root package name */
    protected q f12503g;
    @VisibleForTesting
    @GuardedBy("this")

    /* renamed from: c  reason: collision with root package name */
    final Map<Bitmap, Object> f12499c = new WeakHashMap();
    @GuardedBy("this")

    /* renamed from: h  reason: collision with root package name */
    private long f12504h = SystemClock.uptimeMillis();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CountingMemoryCache.java */
    /* loaded from: classes2.dex */
    public class a implements v<d<K, V>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ v f12505a;

        a(v vVar) {
            this.f12505a = vVar;
        }

        @Override // com.facebook.imagepipeline.cache.v
        /* renamed from: b */
        public int a(d<K, V> dVar) {
            return this.f12505a.a(dVar.f12510b.i());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CountingMemoryCache.java */
    /* loaded from: classes2.dex */
    public class b implements com.facebook.common.references.c<V> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ d f12507a;

        b(d dVar) {
            this.f12507a = dVar;
        }

        @Override // com.facebook.common.references.c
        public void release(V v3) {
            h.this.C(this.f12507a);
        }
    }

    /* compiled from: CountingMemoryCache.java */
    /* loaded from: classes2.dex */
    public interface c {
        double a(MemoryTrimType memoryTrimType);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CountingMemoryCache.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class d<K, V> {

        /* renamed from: a  reason: collision with root package name */
        public final K f12509a;

        /* renamed from: b  reason: collision with root package name */
        public final com.facebook.common.references.a<V> f12510b;

        /* renamed from: c  reason: collision with root package name */
        public int f12511c = 0;

        /* renamed from: d  reason: collision with root package name */
        public boolean f12512d = false;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        public final e<K> f12513e;

        private d(K k4, com.facebook.common.references.a<V> aVar, @Nullable e<K> eVar) {
            this.f12509a = (K) com.facebook.common.internal.h.i(k4);
            this.f12510b = (com.facebook.common.references.a) com.facebook.common.internal.h.i(com.facebook.common.references.a.d(aVar));
            this.f12513e = eVar;
        }

        @VisibleForTesting
        static <K, V> d<K, V> a(K k4, com.facebook.common.references.a<V> aVar, @Nullable e<K> eVar) {
            return new d<>(k4, aVar, eVar);
        }
    }

    /* compiled from: CountingMemoryCache.java */
    /* loaded from: classes2.dex */
    public interface e<K> {
        void a(K k4, boolean z3);
    }

    public h(v<V> vVar, c cVar, com.facebook.common.internal.k<q> kVar) {
        this.f12500d = vVar;
        this.f12497a = new g<>(F(vVar));
        this.f12498b = new g<>(F(vVar));
        this.f12501e = cVar;
        this.f12502f = kVar;
        this.f12503g = kVar.get();
    }

    private synchronized com.facebook.common.references.a<V> A(d<K, V> dVar) {
        q(dVar);
        return com.facebook.common.references.a.q(dVar.f12510b.i(), new b(dVar));
    }

    @Nullable
    private synchronized com.facebook.common.references.a<V> B(d<K, V> dVar) {
        com.facebook.common.internal.h.i(dVar);
        return (dVar.f12512d && dVar.f12511c == 0) ? dVar.f12510b : null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C(d<K, V> dVar) {
        boolean t3;
        com.facebook.common.references.a<V> B;
        com.facebook.common.internal.h.i(dVar);
        synchronized (this) {
            j(dVar);
            t3 = t(dVar);
            B = B(dVar);
        }
        com.facebook.common.references.a.g(B);
        if (!t3) {
            dVar = null;
        }
        w(dVar);
        z();
        v();
    }

    @Nullable
    private synchronized ArrayList<d<K, V>> E(int i2, int i4) {
        int max = Math.max(i2, 0);
        int max2 = Math.max(i4, 0);
        if (this.f12497a.d() <= max && this.f12497a.h() <= max2) {
            return null;
        }
        ArrayList<d<K, V>> arrayList = new ArrayList<>();
        while (true) {
            if (this.f12497a.d() <= max && this.f12497a.h() <= max2) {
                return arrayList;
            }
            K e4 = this.f12497a.e();
            this.f12497a.l(e4);
            arrayList.add(this.f12498b.l(e4));
        }
    }

    private v<d<K, V>> F(v<V> vVar) {
        return new a(vVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0022, code lost:
        if (o() <= (r3.f12503g.f12525a - r4)) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private synchronized boolean g(V r4) {
        /*
            r3 = this;
            monitor-enter(r3)
            com.facebook.imagepipeline.cache.v<V> r0 = r3.f12500d     // Catch: java.lang.Throwable -> L28
            int r4 = r0.a(r4)     // Catch: java.lang.Throwable -> L28
            com.facebook.imagepipeline.cache.q r0 = r3.f12503g     // Catch: java.lang.Throwable -> L28
            int r0 = r0.f12529e     // Catch: java.lang.Throwable -> L28
            r1 = 1
            if (r4 > r0) goto L25
            int r0 = r3.n()     // Catch: java.lang.Throwable -> L28
            com.facebook.imagepipeline.cache.q r2 = r3.f12503g     // Catch: java.lang.Throwable -> L28
            int r2 = r2.f12526b     // Catch: java.lang.Throwable -> L28
            int r2 = r2 - r1
            if (r0 > r2) goto L25
            int r0 = r3.o()     // Catch: java.lang.Throwable -> L28
            com.facebook.imagepipeline.cache.q r2 = r3.f12503g     // Catch: java.lang.Throwable -> L28
            int r2 = r2.f12525a     // Catch: java.lang.Throwable -> L28
            int r2 = r2 - r4
            if (r0 > r2) goto L25
            goto L26
        L25:
            r1 = 0
        L26:
            monitor-exit(r3)
            return r1
        L28:
            r4 = move-exception
            monitor-exit(r3)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.imagepipeline.cache.h.g(java.lang.Object):boolean");
    }

    private synchronized void j(d<K, V> dVar) {
        com.facebook.common.internal.h.i(dVar);
        com.facebook.common.internal.h.o(dVar.f12511c > 0);
        dVar.f12511c--;
    }

    private synchronized void q(d<K, V> dVar) {
        com.facebook.common.internal.h.i(dVar);
        com.facebook.common.internal.h.o(!dVar.f12512d);
        dVar.f12511c++;
    }

    private synchronized void r(d<K, V> dVar) {
        com.facebook.common.internal.h.i(dVar);
        com.facebook.common.internal.h.o(!dVar.f12512d);
        dVar.f12512d = true;
    }

    private synchronized void s(@Nullable ArrayList<d<K, V>> arrayList) {
        if (arrayList != null) {
            Iterator<d<K, V>> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                r(it2.next());
            }
        }
    }

    private synchronized boolean t(d<K, V> dVar) {
        if (dVar.f12512d || dVar.f12511c != 0) {
            return false;
        }
        this.f12497a.k(dVar.f12509a, dVar);
        return true;
    }

    private void u(@Nullable ArrayList<d<K, V>> arrayList) {
        if (arrayList != null) {
            Iterator<d<K, V>> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                com.facebook.common.references.a.g(B(it2.next()));
            }
        }
    }

    private void v() {
        ArrayList<d<K, V>> E;
        synchronized (this) {
            q qVar = this.f12503g;
            int min = Math.min(qVar.f12528d, qVar.f12526b - n());
            q qVar2 = this.f12503g;
            E = E(min, Math.min(qVar2.f12527c, qVar2.f12525a - o()));
            s(E);
        }
        u(E);
        y(E);
    }

    private static <K, V> void w(@Nullable d<K, V> dVar) {
        e<K> eVar;
        if (dVar == null || (eVar = dVar.f12513e) == null) {
            return;
        }
        eVar.a(dVar.f12509a, true);
    }

    private static <K, V> void x(@Nullable d<K, V> dVar) {
        e<K> eVar;
        if (dVar == null || (eVar = dVar.f12513e) == null) {
            return;
        }
        eVar.a(dVar.f12509a, false);
    }

    private void y(@Nullable ArrayList<d<K, V>> arrayList) {
        if (arrayList != null) {
            Iterator<d<K, V>> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                x(it2.next());
            }
        }
    }

    private synchronized void z() {
        if (this.f12504h + f12496i > SystemClock.uptimeMillis()) {
            return;
        }
        this.f12504h = SystemClock.uptimeMillis();
        this.f12503g = this.f12502f.get();
    }

    @Nullable
    public com.facebook.common.references.a<V> D(K k4) {
        d<K, V> l4;
        boolean z3;
        com.facebook.common.references.a<V> aVar;
        com.facebook.common.internal.h.i(k4);
        synchronized (this) {
            l4 = this.f12497a.l(k4);
            z3 = true;
            if (l4 != null) {
                d<K, V> l5 = this.f12498b.l(k4);
                com.facebook.common.internal.h.i(l5);
                com.facebook.common.internal.h.o(l5.f12511c == 0);
                aVar = l5.f12510b;
            } else {
                aVar = null;
                z3 = false;
            }
        }
        if (z3) {
            x(l4);
        }
        return aVar;
    }

    @Override // com.facebook.imagepipeline.cache.p
    public com.facebook.common.references.a<V> a(K k4, com.facebook.common.references.a<V> aVar) {
        return f(k4, aVar, null);
    }

    @Override // com.facebook.imagepipeline.cache.p
    public int b(com.facebook.common.internal.i<K> iVar) {
        ArrayList<d<K, V>> m4;
        ArrayList<d<K, V>> m5;
        synchronized (this) {
            m4 = this.f12497a.m(iVar);
            m5 = this.f12498b.m(iVar);
            s(m5);
        }
        u(m5);
        y(m4);
        z();
        v();
        return m5.size();
    }

    @Override // com.facebook.imagepipeline.cache.p
    public synchronized boolean c(com.facebook.common.internal.i<K> iVar) {
        return !this.f12498b.g(iVar).isEmpty();
    }

    @Override // com.facebook.common.memory.b
    public void d(MemoryTrimType memoryTrimType) {
        ArrayList<d<K, V>> E;
        double a4 = this.f12501e.a(memoryTrimType);
        synchronized (this) {
            double h4 = this.f12498b.h();
            Double.isNaN(h4);
            E = E(Integer.MAX_VALUE, Math.max(0, ((int) (h4 * (1.0d - a4))) - o()));
            s(E);
        }
        u(E);
        y(E);
        z();
        v();
    }

    @Nullable
    public com.facebook.common.references.a<V> f(K k4, com.facebook.common.references.a<V> aVar, e<K> eVar) {
        d<K, V> l4;
        com.facebook.common.references.a<V> aVar2;
        com.facebook.common.references.a<V> aVar3;
        com.facebook.common.internal.h.i(k4);
        com.facebook.common.internal.h.i(aVar);
        z();
        synchronized (this) {
            l4 = this.f12497a.l(k4);
            d<K, V> l5 = this.f12498b.l(k4);
            aVar2 = null;
            if (l5 != null) {
                r(l5);
                aVar3 = B(l5);
            } else {
                aVar3 = null;
            }
            if (g(aVar.i())) {
                d<K, V> a4 = d.a(k4, aVar, eVar);
                this.f12498b.k(k4, a4);
                aVar2 = A(a4);
            }
        }
        com.facebook.common.references.a.g(aVar3);
        x(l4);
        v();
        return aVar2;
    }

    @Override // com.facebook.imagepipeline.cache.p
    @Nullable
    public com.facebook.common.references.a<V> get(K k4) {
        d<K, V> l4;
        com.facebook.common.references.a<V> A;
        com.facebook.common.internal.h.i(k4);
        synchronized (this) {
            l4 = this.f12497a.l(k4);
            d<K, V> c4 = this.f12498b.c(k4);
            A = c4 != null ? A(c4) : null;
        }
        x(l4);
        z();
        v();
        return A;
    }

    public void h() {
        ArrayList<d<K, V>> a4;
        ArrayList<d<K, V>> a5;
        synchronized (this) {
            a4 = this.f12497a.a();
            a5 = this.f12498b.a();
            s(a5);
        }
        u(a5);
        y(a4);
        z();
    }

    public synchronized boolean i(K k4) {
        return this.f12498b.b(k4);
    }

    public synchronized int k() {
        return this.f12498b.d();
    }

    public synchronized int l() {
        return this.f12497a.d();
    }

    public synchronized int m() {
        return this.f12497a.h();
    }

    public synchronized int n() {
        return this.f12498b.d() - this.f12497a.d();
    }

    public synchronized int o() {
        return this.f12498b.h() - this.f12497a.h();
    }

    public synchronized int p() {
        return this.f12498b.h();
    }
}
