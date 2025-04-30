package com.facebook.imagepipeline.datasource;

import com.facebook.datasource.AbstractDataSource;
import com.facebook.imagepipeline.producers.Consumer;
import com.facebook.imagepipeline.producers.i0;
import com.facebook.imagepipeline.producers.q0;
import com.facebook.imagepipeline.request.ImageRequest;
import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;
/* compiled from: AbstractProducerToDataSourceAdapter.java */
@ThreadSafe
/* loaded from: classes.dex */
public abstract class a<T> extends AbstractDataSource<T> implements com.facebook.imagepipeline.request.c {

    /* renamed from: g  reason: collision with root package name */
    private final q0 f12719g;

    /* renamed from: h  reason: collision with root package name */
    private final r0.c f12720h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractProducerToDataSourceAdapter.java */
    /* renamed from: com.facebook.imagepipeline.datasource.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0078a extends com.facebook.imagepipeline.producers.b<T> {
        C0078a() {
        }

        @Override // com.facebook.imagepipeline.producers.b
        protected void f() {
            a.this.w();
        }

        @Override // com.facebook.imagepipeline.producers.b
        protected void g(Throwable th) {
            a.this.x(th);
        }

        @Override // com.facebook.imagepipeline.producers.b
        protected void h(@Nullable T t3, int i2) {
            a.this.y(t3, i2);
        }

        @Override // com.facebook.imagepipeline.producers.b
        protected void i(float f4) {
            a.this.o(f4);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a(i0<T> i0Var, q0 q0Var, r0.c cVar) {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("AbstractProducerToDataSourceAdapter()");
        }
        this.f12719g = q0Var;
        this.f12720h = cVar;
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("AbstractProducerToDataSourceAdapter()->onRequestStart");
        }
        cVar.a(q0Var.b(), q0Var.c(), q0Var.getId(), q0Var.f());
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("AbstractProducerToDataSourceAdapter()->produceResult");
        }
        i0Var.b(v(), q0Var);
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
    }

    private Consumer<T> v() {
        return new C0078a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void w() {
        com.facebook.common.internal.h.o(isClosed());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x(Throwable th) {
        if (super.m(th)) {
            this.f12720h.i(this.f12719g.b(), this.f12719g.getId(), th, this.f12719g.f());
        }
    }

    @Override // com.facebook.imagepipeline.request.c
    public ImageRequest b() {
        return this.f12719g.b();
    }

    @Override // com.facebook.datasource.AbstractDataSource, com.facebook.datasource.c
    public boolean close() {
        if (super.close()) {
            if (super.c()) {
                return true;
            }
            this.f12720h.k(this.f12719g.getId());
            this.f12719g.l();
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void y(@Nullable T t3, int i2) {
        boolean d4 = com.facebook.imagepipeline.producers.b.d(i2);
        if (super.setResult(t3, d4) && d4) {
            this.f12720h.c(this.f12719g.b(), this.f12719g.getId(), this.f12719g.f());
        }
    }
}
