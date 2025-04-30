package com.facebook.datasource;

import android.util.Pair;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes.dex */
public abstract class AbstractDataSource<T> implements c<T> {
    @GuardedBy("this")
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private T f11789c = null;
    @GuardedBy("this")

    /* renamed from: d  reason: collision with root package name */
    private Throwable f11790d = null;
    @GuardedBy("this")

    /* renamed from: e  reason: collision with root package name */
    private float f11791e = 0.0f;
    @GuardedBy("this")

    /* renamed from: b  reason: collision with root package name */
    private boolean f11788b = false;
    @GuardedBy("this")

    /* renamed from: a  reason: collision with root package name */
    private DataSourceStatus f11787a = DataSourceStatus.IN_PROGRESS;

    /* renamed from: f  reason: collision with root package name */
    private final ConcurrentLinkedQueue<Pair<e<T>, Executor>> f11792f = new ConcurrentLinkedQueue<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public enum DataSourceStatus {
        IN_PROGRESS,
        SUCCESS,
        FAILURE
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f11793a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ e f11794b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ boolean f11795c;

        a(boolean z3, e eVar, boolean z4) {
            this.f11793a = z3;
            this.f11794b = eVar;
            this.f11795c = z4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f11793a) {
                this.f11794b.b(AbstractDataSource.this);
            } else if (this.f11795c) {
                this.f11794b.a(AbstractDataSource.this);
            } else {
                this.f11794b.c(AbstractDataSource.this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ e f11797a;

        b(e eVar) {
            this.f11797a = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f11797a.d(AbstractDataSource.this);
        }
    }

    private void j(e<T> eVar, Executor executor, boolean z3, boolean z4) {
        executor.execute(new a(z3, eVar, z4));
    }

    private void k() {
        boolean h4 = h();
        boolean r3 = r();
        Iterator<Pair<e<T>, Executor>> it2 = this.f11792f.iterator();
        while (it2.hasNext()) {
            Pair<e<T>, Executor> next = it2.next();
            j((e) next.first, (Executor) next.second, h4, r3);
        }
    }

    private synchronized boolean n(Throwable th) {
        if (!this.f11788b && this.f11787a == DataSourceStatus.IN_PROGRESS) {
            this.f11787a = DataSourceStatus.FAILURE;
            this.f11790d = th;
            return true;
        }
        return false;
    }

    private synchronized boolean p(float f4) {
        if (!this.f11788b && this.f11787a == DataSourceStatus.IN_PROGRESS) {
            if (f4 < this.f11791e) {
                return false;
            }
            this.f11791e = f4;
            return true;
        }
        return false;
    }

    private boolean q(@Nullable T t3, boolean z3) {
        T t4;
        T t5 = null;
        try {
            synchronized (this) {
                try {
                    try {
                        if (!this.f11788b && this.f11787a == DataSourceStatus.IN_PROGRESS) {
                            if (z3) {
                                this.f11787a = DataSourceStatus.SUCCESS;
                                this.f11791e = 1.0f;
                            }
                            T t6 = this.f11789c;
                            if (t6 != t3) {
                                try {
                                    this.f11789c = t3;
                                    t4 = t6;
                                } catch (Throwable th) {
                                    th = th;
                                    t5 = t6;
                                    throw th;
                                }
                            } else {
                                t4 = null;
                            }
                            return true;
                        }
                        if (t3 != null) {
                            i(t3);
                        }
                        return false;
                    } catch (Throwable th2) {
                        t5 = t3;
                        th = th2;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            }
        } finally {
            if (t5 != null) {
                i(t5);
            }
        }
    }

    private synchronized boolean r() {
        boolean z3;
        if (isClosed()) {
            z3 = c() ? false : true;
        }
        return z3;
    }

    @Override // com.facebook.datasource.c
    public synchronized boolean a() {
        return this.f11789c != null;
    }

    @Override // com.facebook.datasource.c
    public synchronized boolean c() {
        return this.f11787a != DataSourceStatus.IN_PROGRESS;
    }

    @Override // com.facebook.datasource.c
    public boolean close() {
        synchronized (this) {
            if (this.f11788b) {
                return false;
            }
            this.f11788b = true;
            T t3 = this.f11789c;
            this.f11789c = null;
            if (t3 != null) {
                i(t3);
            }
            if (!c()) {
                k();
            }
            synchronized (this) {
                this.f11792f.clear();
            }
            return true;
        }
    }

    @Override // com.facebook.datasource.c
    @Nullable
    public synchronized Throwable d() {
        return this.f11790d;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:28:? A[RETURN, SYNTHETIC] */
    @Override // com.facebook.datasource.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void e(com.facebook.datasource.e<T> r3, java.util.concurrent.Executor r4) {
        /*
            r2 = this;
            com.facebook.common.internal.h.i(r3)
            com.facebook.common.internal.h.i(r4)
            monitor-enter(r2)
            boolean r0 = r2.f11788b     // Catch: java.lang.Throwable -> L41
            if (r0 == 0) goto Ld
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L41
            return
        Ld:
            com.facebook.datasource.AbstractDataSource$DataSourceStatus r0 = r2.f11787a     // Catch: java.lang.Throwable -> L41
            com.facebook.datasource.AbstractDataSource$DataSourceStatus r1 = com.facebook.datasource.AbstractDataSource.DataSourceStatus.IN_PROGRESS     // Catch: java.lang.Throwable -> L41
            if (r0 != r1) goto L1c
            java.util.concurrent.ConcurrentLinkedQueue<android.util.Pair<com.facebook.datasource.e<T>, java.util.concurrent.Executor>> r0 = r2.f11792f     // Catch: java.lang.Throwable -> L41
            android.util.Pair r1 = android.util.Pair.create(r3, r4)     // Catch: java.lang.Throwable -> L41
            r0.add(r1)     // Catch: java.lang.Throwable -> L41
        L1c:
            boolean r0 = r2.a()     // Catch: java.lang.Throwable -> L41
            if (r0 != 0) goto L31
            boolean r0 = r2.c()     // Catch: java.lang.Throwable -> L41
            if (r0 != 0) goto L31
            boolean r0 = r2.r()     // Catch: java.lang.Throwable -> L41
            if (r0 == 0) goto L2f
            goto L31
        L2f:
            r0 = 0
            goto L32
        L31:
            r0 = 1
        L32:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L41
            if (r0 == 0) goto L40
            boolean r0 = r2.h()
            boolean r1 = r2.r()
            r2.j(r3, r4, r0, r1)
        L40:
            return
        L41:
            r3 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L41
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.datasource.AbstractDataSource.e(com.facebook.datasource.e, java.util.concurrent.Executor):void");
    }

    @Override // com.facebook.datasource.c
    public boolean f() {
        return false;
    }

    @Override // com.facebook.datasource.c
    @Nullable
    public synchronized T g() {
        return this.f11789c;
    }

    @Override // com.facebook.datasource.c
    public synchronized float getProgress() {
        return this.f11791e;
    }

    @Override // com.facebook.datasource.c
    public synchronized boolean h() {
        return this.f11787a == DataSourceStatus.FAILURE;
    }

    protected void i(@Nullable T t3) {
    }

    @Override // com.facebook.datasource.c
    public synchronized boolean isClosed() {
        return this.f11788b;
    }

    protected void l() {
        Iterator<Pair<e<T>, Executor>> it2 = this.f11792f.iterator();
        while (it2.hasNext()) {
            Pair<e<T>, Executor> next = it2.next();
            ((Executor) next.second).execute(new b((e) next.first));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean m(Throwable th) {
        boolean n4 = n(th);
        if (n4) {
            k();
        }
        return n4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean o(float f4) {
        boolean p3 = p(f4);
        if (p3) {
            l();
        }
        return p3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean setResult(@Nullable T t3, boolean z3) {
        boolean q3 = q(t3, z3);
        if (q3) {
            k();
        }
        return q3;
    }
}
