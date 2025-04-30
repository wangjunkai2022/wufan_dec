package com.facebook.datasource;

import com.facebook.common.internal.k;
import java.util.List;
import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;
/* compiled from: FirstAvailableDataSourceSupplier.java */
@ThreadSafe
/* loaded from: classes2.dex */
public class f<T> implements k<c<T>> {

    /* renamed from: a  reason: collision with root package name */
    private final List<k<c<T>>> f11804a;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FirstAvailableDataSourceSupplier.java */
    @ThreadSafe
    /* loaded from: classes.dex */
    public class b extends AbstractDataSource<T> {

        /* renamed from: g  reason: collision with root package name */
        private int f11805g = 0;

        /* renamed from: h  reason: collision with root package name */
        private c<T> f11806h = null;

        /* renamed from: i  reason: collision with root package name */
        private c<T> f11807i = null;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: FirstAvailableDataSourceSupplier.java */
        /* loaded from: classes2.dex */
        public class a implements e<T> {
            private a() {
            }

            @Override // com.facebook.datasource.e
            public void a(c<T> cVar) {
            }

            @Override // com.facebook.datasource.e
            public void b(c<T> cVar) {
                b.this.z(cVar);
            }

            @Override // com.facebook.datasource.e
            public void c(c<T> cVar) {
                if (cVar.a()) {
                    b.this.A(cVar);
                } else if (cVar.c()) {
                    b.this.z(cVar);
                }
            }

            @Override // com.facebook.datasource.e
            public void d(c<T> cVar) {
                b.this.o(Math.max(b.this.getProgress(), cVar.getProgress()));
            }
        }

        public b() {
            if (C()) {
                return;
            }
            m(new RuntimeException("No data source supplier or supplier returned null."));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void A(c<T> cVar) {
            y(cVar, cVar.c());
            if (cVar == w()) {
                setResult(null, cVar.c());
            }
        }

        private synchronized boolean B(c<T> cVar) {
            if (isClosed()) {
                return false;
            }
            this.f11806h = cVar;
            return true;
        }

        private boolean C() {
            k<c<T>> x3 = x();
            c<T> cVar = x3 != null ? x3.get() : null;
            if (B(cVar) && cVar != null) {
                cVar.e(new a(), com.facebook.common.executors.a.a());
                return true;
            }
            v(cVar);
            return false;
        }

        private synchronized boolean u(c<T> cVar) {
            if (!isClosed() && cVar == this.f11806h) {
                this.f11806h = null;
                return true;
            }
            return false;
        }

        private void v(c<T> cVar) {
            if (cVar != null) {
                cVar.close();
            }
        }

        @Nullable
        private synchronized c<T> w() {
            return this.f11807i;
        }

        @Nullable
        private synchronized k<c<T>> x() {
            if (isClosed() || this.f11805g >= f.this.f11804a.size()) {
                return null;
            }
            List list = f.this.f11804a;
            int i2 = this.f11805g;
            this.f11805g = i2 + 1;
            return (k) list.get(i2);
        }

        private void y(c<T> cVar, boolean z3) {
            c<T> cVar2;
            synchronized (this) {
                if (cVar == this.f11806h && cVar != (cVar2 = this.f11807i)) {
                    if (cVar2 != null && !z3) {
                        cVar2 = null;
                        v(cVar2);
                    }
                    this.f11807i = cVar;
                    v(cVar2);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void z(c<T> cVar) {
            if (u(cVar)) {
                if (cVar != w()) {
                    v(cVar);
                }
                if (C()) {
                    return;
                }
                m(cVar.d());
            }
        }

        @Override // com.facebook.datasource.AbstractDataSource, com.facebook.datasource.c
        public synchronized boolean a() {
            boolean z3;
            c<T> w3 = w();
            if (w3 != null) {
                z3 = w3.a();
            }
            return z3;
        }

        @Override // com.facebook.datasource.AbstractDataSource, com.facebook.datasource.c
        public boolean close() {
            synchronized (this) {
                if (super.close()) {
                    c<T> cVar = this.f11806h;
                    this.f11806h = null;
                    c<T> cVar2 = this.f11807i;
                    this.f11807i = null;
                    v(cVar2);
                    v(cVar);
                    return true;
                }
                return false;
            }
        }

        @Override // com.facebook.datasource.AbstractDataSource, com.facebook.datasource.c
        @Nullable
        public synchronized T g() {
            c<T> w3;
            w3 = w();
            return w3 != null ? w3.g() : null;
        }
    }

    private f(List<k<c<T>>> list) {
        com.facebook.common.internal.h.e(!list.isEmpty(), "List of suppliers is empty!");
        this.f11804a = list;
    }

    public static <T> f<T> b(List<k<c<T>>> list) {
        return new f<>(list);
    }

    @Override // com.facebook.common.internal.k
    /* renamed from: c */
    public c<T> get() {
        return new b();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f) {
            return com.facebook.common.internal.g.a(this.f11804a, ((f) obj).f11804a);
        }
        return false;
    }

    public int hashCode() {
        return this.f11804a.hashCode();
    }

    public String toString() {
        return com.facebook.common.internal.g.f(this).f("list", this.f11804a).toString();
    }
}
