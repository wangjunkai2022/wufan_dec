package com.facebook.cache.disk;

import android.content.Context;
import com.facebook.cache.common.CacheErrorLogger;
import com.facebook.cache.common.CacheEventListener;
import com.facebook.cache.disk.c;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.common.statfs.StatFsHelper;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;
/* compiled from: DiskStorageCache.java */
@ThreadSafe
/* loaded from: classes.dex */
public class d implements h, com.facebook.common.disk.a {

    /* renamed from: s  reason: collision with root package name */
    public static final int f11611s = 1;

    /* renamed from: v  reason: collision with root package name */
    private static final double f11614v = 0.02d;

    /* renamed from: w  reason: collision with root package name */
    private static final long f11615w = -1;

    /* renamed from: x  reason: collision with root package name */
    private static final String f11616x = "disk_entries_list";

    /* renamed from: a  reason: collision with root package name */
    private final long f11617a;

    /* renamed from: b  reason: collision with root package name */
    private final long f11618b;

    /* renamed from: c  reason: collision with root package name */
    private final CountDownLatch f11619c;

    /* renamed from: d  reason: collision with root package name */
    private long f11620d;

    /* renamed from: e  reason: collision with root package name */
    private final CacheEventListener f11621e;
    @VisibleForTesting
    @GuardedBy("mLock")

    /* renamed from: f  reason: collision with root package name */
    final Set<String> f11622f;

    /* renamed from: g  reason: collision with root package name */
    private long f11623g;

    /* renamed from: h  reason: collision with root package name */
    private final long f11624h;

    /* renamed from: i  reason: collision with root package name */
    private final StatFsHelper f11625i;

    /* renamed from: j  reason: collision with root package name */
    private final com.facebook.cache.disk.c f11626j;

    /* renamed from: k  reason: collision with root package name */
    private final g f11627k;

    /* renamed from: l  reason: collision with root package name */
    private final CacheErrorLogger f11628l;

    /* renamed from: m  reason: collision with root package name */
    private final boolean f11629m;

    /* renamed from: n  reason: collision with root package name */
    private final b f11630n;

    /* renamed from: o  reason: collision with root package name */
    private final com.facebook.common.time.a f11631o;

    /* renamed from: p  reason: collision with root package name */
    private final Object f11632p = new Object();

    /* renamed from: q  reason: collision with root package name */
    private boolean f11633q;

    /* renamed from: r  reason: collision with root package name */
    private static final Class<?> f11610r = d.class;

    /* renamed from: t  reason: collision with root package name */
    private static final long f11612t = TimeUnit.HOURS.toMillis(2);

    /* renamed from: u  reason: collision with root package name */
    private static final long f11613u = TimeUnit.MINUTES.toMillis(30);

    /* compiled from: DiskStorageCache.java */
    /* loaded from: classes2.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (d.this.f11632p) {
                d.this.t();
            }
            d.this.f11633q = true;
            d.this.f11619c.countDown();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DiskStorageCache.java */
    @VisibleForTesting
    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private boolean f11635a = false;

        /* renamed from: b  reason: collision with root package name */
        private long f11636b = -1;

        /* renamed from: c  reason: collision with root package name */
        private long f11637c = -1;

        b() {
        }

        public synchronized long a() {
            return this.f11637c;
        }

        public synchronized long b() {
            return this.f11636b;
        }

        public synchronized void c(long j4, long j5) {
            if (this.f11635a) {
                this.f11636b += j4;
                this.f11637c += j5;
            }
        }

        public synchronized boolean d() {
            return this.f11635a;
        }

        public synchronized void e() {
            this.f11635a = false;
            this.f11637c = -1L;
            this.f11636b = -1L;
        }

        public synchronized void f(long j4, long j5) {
            this.f11637c = j5;
            this.f11636b = j4;
            this.f11635a = true;
        }
    }

    /* compiled from: DiskStorageCache.java */
    /* loaded from: classes2.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        public final long f11638a;

        /* renamed from: b  reason: collision with root package name */
        public final long f11639b;

        /* renamed from: c  reason: collision with root package name */
        public final long f11640c;

        public c(long j4, long j5, long j6) {
            this.f11638a = j4;
            this.f11639b = j5;
            this.f11640c = j6;
        }
    }

    public d(com.facebook.cache.disk.c cVar, g gVar, c cVar2, CacheEventListener cacheEventListener, CacheErrorLogger cacheErrorLogger, @Nullable com.facebook.common.disk.b bVar, Context context, Executor executor, boolean z3) {
        this.f11617a = cVar2.f11639b;
        long j4 = cVar2.f11640c;
        this.f11618b = j4;
        this.f11620d = j4;
        this.f11625i = StatFsHelper.e();
        this.f11626j = cVar;
        this.f11627k = gVar;
        this.f11623g = -1L;
        this.f11621e = cacheEventListener;
        this.f11624h = cVar2.f11638a;
        this.f11628l = cacheErrorLogger;
        this.f11630n = new b();
        this.f11631o = com.facebook.common.time.d.a();
        this.f11629m = z3;
        this.f11622f = new HashSet();
        if (bVar != null) {
            bVar.b(this);
        }
        if (z3) {
            this.f11619c = new CountDownLatch(1);
            executor.execute(new a());
            return;
        }
        this.f11619c = new CountDownLatch(0);
    }

    private a0.a o(c.d dVar, com.facebook.cache.common.c cVar, String str) throws IOException {
        a0.a c4;
        synchronized (this.f11632p) {
            c4 = dVar.c(cVar);
            this.f11622f.add(str);
            this.f11630n.c(c4.size(), 1L);
        }
        return c4;
    }

    @GuardedBy("mLock")
    private void p(long j4, CacheEventListener.EvictionReason evictionReason) throws IOException {
        try {
            Collection<c.InterfaceC0059c> q3 = q(this.f11626j.getEntries());
            long b4 = this.f11630n.b();
            long j5 = b4 - j4;
            int i2 = 0;
            long j6 = 0;
            for (c.InterfaceC0059c interfaceC0059c : q3) {
                if (j6 > j5) {
                    break;
                }
                long d4 = this.f11626j.d(interfaceC0059c);
                this.f11622f.remove(interfaceC0059c.getId());
                if (d4 > 0) {
                    i2++;
                    j6 += d4;
                    j l4 = j.h().q(interfaceC0059c.getId()).n(evictionReason).p(d4).m(b4 - j6).l(j4);
                    this.f11621e.e(l4);
                    l4.i();
                }
            }
            this.f11630n.c(-j6, -i2);
            this.f11626j.b();
        } catch (IOException e4) {
            CacheErrorLogger cacheErrorLogger = this.f11628l;
            CacheErrorLogger.CacheErrorCategory cacheErrorCategory = CacheErrorLogger.CacheErrorCategory.EVICTION;
            Class<?> cls = f11610r;
            cacheErrorLogger.a(cacheErrorCategory, cls, "evictAboveSize: " + e4.getMessage(), e4);
            throw e4;
        }
    }

    private Collection<c.InterfaceC0059c> q(Collection<c.InterfaceC0059c> collection) {
        long now = this.f11631o.now() + f11612t;
        ArrayList arrayList = new ArrayList(collection.size());
        ArrayList arrayList2 = new ArrayList(collection.size());
        for (c.InterfaceC0059c interfaceC0059c : collection) {
            if (interfaceC0059c.getTimestamp() > now) {
                arrayList.add(interfaceC0059c);
            } else {
                arrayList2.add(interfaceC0059c);
            }
        }
        Collections.sort(arrayList2, this.f11627k.get());
        arrayList.addAll(arrayList2);
        return arrayList;
    }

    private void s() throws IOException {
        synchronized (this.f11632p) {
            boolean t3 = t();
            x();
            long b4 = this.f11630n.b();
            if (b4 > this.f11620d && !t3) {
                this.f11630n.e();
                t();
            }
            long j4 = this.f11620d;
            if (b4 > j4) {
                p((j4 * 9) / 10, CacheEventListener.EvictionReason.CACHE_FULL);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @GuardedBy("mLock")
    public boolean t() {
        long now = this.f11631o.now();
        if (this.f11630n.d()) {
            long j4 = this.f11623g;
            if (j4 != -1 && now - j4 <= f11613u) {
                return false;
            }
        }
        return u();
    }

    @GuardedBy("mLock")
    private boolean u() {
        Set<String> hashSet;
        Set<String> set;
        long j4;
        long now = this.f11631o.now();
        long j5 = f11612t + now;
        if (this.f11629m && this.f11622f.isEmpty()) {
            hashSet = this.f11622f;
        } else {
            hashSet = this.f11629m ? new HashSet<>() : null;
        }
        try {
            long j6 = 0;
            long j7 = -1;
            int i2 = 0;
            boolean z3 = false;
            int i4 = 0;
            int i5 = 0;
            for (c.InterfaceC0059c interfaceC0059c : this.f11626j.getEntries()) {
                i4++;
                j6 += interfaceC0059c.getSize();
                if (interfaceC0059c.getTimestamp() > j5) {
                    i5++;
                    i2 = (int) (i2 + interfaceC0059c.getSize());
                    j4 = j5;
                    j7 = Math.max(interfaceC0059c.getTimestamp() - now, j7);
                    z3 = true;
                } else {
                    j4 = j5;
                    if (this.f11629m) {
                        hashSet.add(interfaceC0059c.getId());
                    }
                }
                j5 = j4;
            }
            if (z3) {
                this.f11628l.a(CacheErrorLogger.CacheErrorCategory.READ_INVALID_ENTRY, f11610r, "Future timestamp found in " + i5 + " files , with a total size of " + i2 + " bytes, and a maximum time delta of " + j7 + "ms", null);
            }
            long j8 = i4;
            if (this.f11630n.a() != j8 || this.f11630n.b() != j6) {
                if (this.f11629m && (set = this.f11622f) != hashSet) {
                    set.clear();
                    this.f11622f.addAll(hashSet);
                }
                this.f11630n.f(j6, j8);
            }
            this.f11623g = now;
            return true;
        } catch (IOException e4) {
            this.f11628l.a(CacheErrorLogger.CacheErrorCategory.GENERIC_IO, f11610r, "calcFileCacheSize: " + e4.getMessage(), e4);
            return false;
        }
    }

    private c.d v(String str, com.facebook.cache.common.c cVar) throws IOException {
        s();
        return this.f11626j.insert(str, cVar);
    }

    private void w(double d4) {
        synchronized (this.f11632p) {
            try {
                this.f11630n.e();
                t();
                long b4 = this.f11630n.b();
                double d5 = b4;
                Double.isNaN(d5);
                p(b4 - ((long) (d4 * d5)), CacheEventListener.EvictionReason.CACHE_MANAGER_TRIMMED);
            } catch (IOException e4) {
                this.f11628l.a(CacheErrorLogger.CacheErrorCategory.EVICTION, f11610r, "trimBy: " + e4.getMessage(), e4);
            }
        }
    }

    @GuardedBy("mLock")
    private void x() {
        if (this.f11625i.i(this.f11626j.isExternal() ? StatFsHelper.StorageType.EXTERNAL : StatFsHelper.StorageType.INTERNAL, this.f11618b - this.f11630n.b())) {
            this.f11620d = this.f11617a;
        } else {
            this.f11620d = this.f11618b;
        }
    }

    @Override // com.facebook.cache.disk.h
    public c.a a() throws IOException {
        return this.f11626j.a();
    }

    @Override // com.facebook.cache.disk.h
    public boolean b(com.facebook.cache.common.c cVar) {
        String str;
        IOException e4;
        String str2 = null;
        try {
            try {
                synchronized (this.f11632p) {
                    try {
                        List<String> b4 = com.facebook.cache.common.d.b(cVar);
                        int i2 = 0;
                        while (i2 < b4.size()) {
                            String str3 = b4.get(i2);
                            if (this.f11626j.c(str3, cVar)) {
                                this.f11622f.add(str3);
                                return true;
                            }
                            i2++;
                            str2 = str3;
                        }
                        return false;
                    } catch (Throwable th) {
                        str = str2;
                        th = th;
                        try {
                            throw th;
                        } catch (IOException e5) {
                            e4 = e5;
                            j o3 = j.h().k(cVar).q(str).o(e4);
                            this.f11621e.c(o3);
                            o3.i();
                            return false;
                        }
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e6) {
            str = null;
            e4 = e6;
        }
    }

    @Override // com.facebook.cache.disk.h
    @Nullable
    public a0.a c(com.facebook.cache.common.c cVar) {
        a0.a aVar;
        j k4 = j.h().k(cVar);
        try {
            synchronized (this.f11632p) {
                List<String> b4 = com.facebook.cache.common.d.b(cVar);
                String str = null;
                aVar = null;
                for (int i2 = 0; i2 < b4.size(); i2++) {
                    str = b4.get(i2);
                    k4.q(str);
                    aVar = this.f11626j.f(str, cVar);
                    if (aVar != null) {
                        break;
                    }
                }
                if (aVar == null) {
                    this.f11621e.a(k4);
                    this.f11622f.remove(str);
                } else {
                    this.f11621e.h(k4);
                    this.f11622f.add(str);
                }
            }
            return aVar;
        } catch (IOException e4) {
            this.f11628l.a(CacheErrorLogger.CacheErrorCategory.GENERIC_IO, f11610r, "getResource", e4);
            k4.o(e4);
            this.f11621e.c(k4);
            return null;
        } finally {
            k4.i();
        }
    }

    @Override // com.facebook.cache.disk.h
    public void clearAll() {
        synchronized (this.f11632p) {
            try {
                this.f11626j.clearAll();
                this.f11622f.clear();
                this.f11621e.f();
            } catch (IOException | NullPointerException e4) {
                CacheErrorLogger cacheErrorLogger = this.f11628l;
                CacheErrorLogger.CacheErrorCategory cacheErrorCategory = CacheErrorLogger.CacheErrorCategory.EVICTION;
                Class<?> cls = f11610r;
                cacheErrorLogger.a(cacheErrorCategory, cls, "clearAll: " + e4.getMessage(), e4);
            }
            this.f11630n.e();
        }
    }

    @Override // com.facebook.common.disk.a
    public void d() {
        clearAll();
    }

    @Override // com.facebook.cache.disk.h
    public long e(long j4) {
        long j5;
        long j6;
        synchronized (this.f11632p) {
            try {
                long now = this.f11631o.now();
                Collection<c.InterfaceC0059c> entries = this.f11626j.getEntries();
                long b4 = this.f11630n.b();
                int i2 = 0;
                long j7 = 0;
                j6 = 0;
                for (c.InterfaceC0059c interfaceC0059c : entries) {
                    try {
                        long j8 = now;
                        long max = Math.max(1L, Math.abs(now - interfaceC0059c.getTimestamp()));
                        if (max >= j4) {
                            long d4 = this.f11626j.d(interfaceC0059c);
                            this.f11622f.remove(interfaceC0059c.getId());
                            if (d4 > 0) {
                                i2++;
                                j7 += d4;
                                j m4 = j.h().q(interfaceC0059c.getId()).n(CacheEventListener.EvictionReason.CONTENT_STALE).p(d4).m(b4 - j7);
                                this.f11621e.e(m4);
                                m4.i();
                            }
                        } else {
                            j6 = Math.max(j6, max);
                        }
                        now = j8;
                    } catch (IOException e4) {
                        e = e4;
                        j5 = j6;
                        this.f11628l.a(CacheErrorLogger.CacheErrorCategory.EVICTION, f11610r, "clearOldEntries: " + e.getMessage(), e);
                        j6 = j5;
                        return j6;
                    }
                }
                this.f11626j.b();
                if (i2 > 0) {
                    t();
                    this.f11630n.c(-j7, -i2);
                }
            } catch (IOException e5) {
                e = e5;
                j5 = 0;
            }
        }
        return j6;
    }

    @Override // com.facebook.cache.disk.h
    public boolean f(com.facebook.cache.common.c cVar) {
        synchronized (this.f11632p) {
            List<String> b4 = com.facebook.cache.common.d.b(cVar);
            for (int i2 = 0; i2 < b4.size(); i2++) {
                if (this.f11622f.contains(b4.get(i2))) {
                    return true;
                }
            }
            return false;
        }
    }

    @Override // com.facebook.common.disk.a
    public void g() {
        synchronized (this.f11632p) {
            t();
            long b4 = this.f11630n.b();
            long j4 = this.f11624h;
            if (j4 <= 0 || b4 <= 0 || b4 < j4) {
                return;
            }
            double d4 = j4;
            double d5 = b4;
            Double.isNaN(d4);
            Double.isNaN(d5);
            double d6 = 1.0d - (d4 / d5);
            if (d6 > f11614v) {
                w(d6);
            }
        }
    }

    @Override // com.facebook.cache.disk.h
    public long getCount() {
        return this.f11630n.a();
    }

    @Override // com.facebook.cache.disk.h
    public long getSize() {
        return this.f11630n.b();
    }

    @Override // com.facebook.cache.disk.h
    public void h(com.facebook.cache.common.c cVar) {
        synchronized (this.f11632p) {
            try {
                List<String> b4 = com.facebook.cache.common.d.b(cVar);
                for (int i2 = 0; i2 < b4.size(); i2++) {
                    String str = b4.get(i2);
                    this.f11626j.remove(str);
                    this.f11622f.remove(str);
                }
            } catch (IOException e4) {
                CacheErrorLogger cacheErrorLogger = this.f11628l;
                CacheErrorLogger.CacheErrorCategory cacheErrorCategory = CacheErrorLogger.CacheErrorCategory.DELETE_FILE;
                Class<?> cls = f11610r;
                cacheErrorLogger.a(cacheErrorCategory, cls, "delete: " + e4.getMessage(), e4);
            }
        }
    }

    @Override // com.facebook.cache.disk.h
    public boolean i(com.facebook.cache.common.c cVar) {
        synchronized (this.f11632p) {
            if (f(cVar)) {
                return true;
            }
            try {
                List<String> b4 = com.facebook.cache.common.d.b(cVar);
                for (int i2 = 0; i2 < b4.size(); i2++) {
                    String str = b4.get(i2);
                    if (this.f11626j.e(str, cVar)) {
                        this.f11622f.add(str);
                        return true;
                    }
                }
                return false;
            } catch (IOException unused) {
                return false;
            }
        }
    }

    @Override // com.facebook.cache.disk.h
    public a0.a insert(com.facebook.cache.common.c cVar, com.facebook.cache.common.j jVar) throws IOException {
        String a4;
        j k4 = j.h().k(cVar);
        this.f11621e.d(k4);
        synchronized (this.f11632p) {
            a4 = com.facebook.cache.common.d.a(cVar);
        }
        k4.q(a4);
        try {
            try {
                c.d v3 = v(a4, cVar);
                try {
                    v3.b(jVar, cVar);
                    a0.a o3 = o(v3, cVar, a4);
                    k4.p(o3.size()).m(this.f11630n.b());
                    this.f11621e.b(k4);
                    return o3;
                } finally {
                    if (!v3.a()) {
                        com.facebook.common.logging.a.q(f11610r, "Failed to delete temp file");
                    }
                }
            } finally {
                k4.i();
            }
        } catch (IOException e4) {
            k4.o(e4);
            this.f11621e.g(k4);
            com.facebook.common.logging.a.r(f11610r, "Failed inserting a file into the cache", e4);
            throw e4;
        }
    }

    @Override // com.facebook.cache.disk.h
    public boolean isEnabled() {
        return this.f11626j.isEnabled();
    }

    @VisibleForTesting
    protected void n() {
        try {
            this.f11619c.await();
        } catch (InterruptedException unused) {
            com.facebook.common.logging.a.q(f11610r, "Memory Index is not ready yet. ");
        }
    }

    public boolean r() {
        return this.f11633q || !this.f11629m;
    }
}
