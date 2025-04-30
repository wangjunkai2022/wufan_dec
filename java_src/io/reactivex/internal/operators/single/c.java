package io.reactivex.internal.operators.single;

import io.reactivex.h0;
import io.reactivex.i0;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.l0;
import io.reactivex.o0;
import java.util.concurrent.TimeUnit;
/* compiled from: SingleDelay.java */
/* loaded from: classes5.dex */
public final class c<T> extends i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final o0<? extends T> f69735a;

    /* renamed from: b  reason: collision with root package name */
    final long f69736b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f69737c;

    /* renamed from: d  reason: collision with root package name */
    final h0 f69738d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f69739e;

    /* compiled from: SingleDelay.java */
    /* loaded from: classes5.dex */
    final class a implements l0<T> {

        /* renamed from: a  reason: collision with root package name */
        private final SequentialDisposable f69740a;

        /* renamed from: b  reason: collision with root package name */
        final l0<? super T> f69741b;

        /* compiled from: SingleDelay.java */
        /* renamed from: io.reactivex.internal.operators.single.c$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        final class RunnableC0466a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            private final Throwable f69743a;

            RunnableC0466a(Throwable th) {
                this.f69743a = th;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.f69741b.onError(this.f69743a);
            }
        }

        /* compiled from: SingleDelay.java */
        /* loaded from: classes5.dex */
        final class b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            private final T f69745a;

            b(T t3) {
                this.f69745a = t3;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.f69741b.onSuccess((T) this.f69745a);
            }
        }

        a(SequentialDisposable sequentialDisposable, l0<? super T> l0Var) {
            this.f69740a = sequentialDisposable;
            this.f69741b = l0Var;
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            SequentialDisposable sequentialDisposable = this.f69740a;
            h0 h0Var = c.this.f69738d;
            RunnableC0466a runnableC0466a = new RunnableC0466a(th);
            c cVar = c.this;
            sequentialDisposable.a(h0Var.f(runnableC0466a, cVar.f69739e ? cVar.f69736b : 0L, cVar.f69737c));
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            this.f69740a.a(bVar);
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t3) {
            SequentialDisposable sequentialDisposable = this.f69740a;
            h0 h0Var = c.this.f69738d;
            b bVar = new b(t3);
            c cVar = c.this;
            sequentialDisposable.a(h0Var.f(bVar, cVar.f69736b, cVar.f69737c));
        }
    }

    public c(o0<? extends T> o0Var, long j4, TimeUnit timeUnit, h0 h0Var, boolean z3) {
        this.f69735a = o0Var;
        this.f69736b = j4;
        this.f69737c = timeUnit;
        this.f69738d = h0Var;
        this.f69739e = z3;
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super T> l0Var) {
        SequentialDisposable sequentialDisposable = new SequentialDisposable();
        l0Var.onSubscribe(sequentialDisposable);
        this.f69735a.a(new a(sequentialDisposable, l0Var));
    }
}
