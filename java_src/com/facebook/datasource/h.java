package com.facebook.datasource;

import com.facebook.common.internal.k;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.NotThreadSafe;
/* compiled from: RetainingDataSourceSupplier.java */
@NotThreadSafe
/* loaded from: classes.dex */
public class h<T> implements k<c<T>> {

    /* renamed from: a  reason: collision with root package name */
    private final Set<b> f11820a = Collections.newSetFromMap(new WeakHashMap());
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private k<c<T>> f11821b = null;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RetainingDataSourceSupplier.java */
    /* loaded from: classes.dex */
    public static class b<T> extends AbstractDataSource<T> {
        @GuardedBy("RetainingDataSource.this")
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private c<T> f11822g;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: RetainingDataSourceSupplier.java */
        /* loaded from: classes2.dex */
        public class a implements e<T> {
            private a() {
            }

            @Override // com.facebook.datasource.e
            public void a(c<T> cVar) {
            }

            @Override // com.facebook.datasource.e
            public void b(c<T> cVar) {
                b.this.w(cVar);
            }

            @Override // com.facebook.datasource.e
            public void c(c<T> cVar) {
                if (cVar.a()) {
                    b.this.x(cVar);
                } else if (cVar.c()) {
                    b.this.w(cVar);
                }
            }

            @Override // com.facebook.datasource.e
            public void d(c<T> cVar) {
                b.this.y(cVar);
            }
        }

        private b() {
            this.f11822g = null;
        }

        private static <T> void v(c<T> cVar) {
            if (cVar != null) {
                cVar.close();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void w(c<T> cVar) {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void x(c<T> cVar) {
            if (cVar == this.f11822g) {
                setResult(null, false);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void y(c<T> cVar) {
            if (cVar == this.f11822g) {
                o(cVar.getProgress());
            }
        }

        @Override // com.facebook.datasource.AbstractDataSource, com.facebook.datasource.c
        public synchronized boolean a() {
            boolean z3;
            c<T> cVar = this.f11822g;
            if (cVar != null) {
                z3 = cVar.a();
            }
            return z3;
        }

        @Override // com.facebook.datasource.AbstractDataSource, com.facebook.datasource.c
        public boolean close() {
            synchronized (this) {
                if (super.close()) {
                    c<T> cVar = this.f11822g;
                    this.f11822g = null;
                    v(cVar);
                    return true;
                }
                return false;
            }
        }

        @Override // com.facebook.datasource.AbstractDataSource, com.facebook.datasource.c
        public boolean f() {
            return true;
        }

        @Override // com.facebook.datasource.AbstractDataSource, com.facebook.datasource.c
        @Nullable
        public synchronized T g() {
            c<T> cVar;
            cVar = this.f11822g;
            return cVar != null ? cVar.g() : null;
        }

        public void z(@Nullable k<c<T>> kVar) {
            if (isClosed()) {
                return;
            }
            c<T> cVar = kVar != null ? kVar.get() : null;
            synchronized (this) {
                if (isClosed()) {
                    v(cVar);
                    return;
                }
                c<T> cVar2 = this.f11822g;
                this.f11822g = cVar;
                if (cVar != null) {
                    cVar.e(new a(), com.facebook.common.executors.a.a());
                }
                v(cVar2);
            }
        }
    }

    @Override // com.facebook.common.internal.k
    /* renamed from: a */
    public c<T> get() {
        b bVar = new b();
        bVar.z(this.f11821b);
        this.f11820a.add(bVar);
        return bVar;
    }

    public void b(k<c<T>> kVar) {
        this.f11821b = kVar;
        for (b bVar : this.f11820a) {
            if (!bVar.isClosed()) {
                bVar.z(kVar);
            }
        }
    }
}
