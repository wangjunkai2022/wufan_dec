package io.reactivex.internal.operators.observable;

import io.reactivex.annotations.Nullable;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.Iterator;
/* compiled from: ObservableFromIterable.java */
/* loaded from: classes5.dex */
public final class m0<T> extends io.reactivex.z<T> {

    /* renamed from: a  reason: collision with root package name */
    final Iterable<? extends T> f69171a;

    /* compiled from: ObservableFromIterable.java */
    /* loaded from: classes5.dex */
    static final class a<T> extends io.reactivex.internal.observers.b<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f69172a;

        /* renamed from: b  reason: collision with root package name */
        final Iterator<? extends T> f69173b;

        /* renamed from: c  reason: collision with root package name */
        volatile boolean f69174c;

        /* renamed from: d  reason: collision with root package name */
        boolean f69175d;

        /* renamed from: e  reason: collision with root package name */
        boolean f69176e;

        /* renamed from: f  reason: collision with root package name */
        boolean f69177f;

        a(io.reactivex.g0<? super T> g0Var, Iterator<? extends T> it2) {
            this.f69172a = g0Var;
            this.f69173b = it2;
        }

        void a() {
            while (!isDisposed()) {
                try {
                    this.f69172a.onNext(io.reactivex.internal.functions.a.g(this.f69173b.next(), "The iterator returned a null value"));
                    if (isDisposed()) {
                        return;
                    }
                    try {
                        if (!this.f69173b.hasNext()) {
                            if (isDisposed()) {
                                return;
                            }
                            this.f69172a.onComplete();
                            return;
                        }
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        this.f69172a.onError(th);
                        return;
                    }
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    this.f69172a.onError(th2);
                    return;
                }
            }
        }

        @Override // x2.o
        public void clear() {
            this.f69176e = true;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69174c = true;
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69174c;
        }

        @Override // x2.o
        public boolean isEmpty() {
            return this.f69176e;
        }

        @Override // x2.o
        @Nullable
        public T poll() {
            if (this.f69176e) {
                return null;
            }
            if (this.f69177f) {
                if (!this.f69173b.hasNext()) {
                    this.f69176e = true;
                    return null;
                }
            } else {
                this.f69177f = true;
            }
            return (T) io.reactivex.internal.functions.a.g(this.f69173b.next(), "The iterator returned a null value");
        }

        @Override // x2.k
        public int requestFusion(int i2) {
            if ((i2 & 1) != 0) {
                this.f69175d = true;
                return 1;
            }
            return 0;
        }
    }

    public m0(Iterable<? extends T> iterable) {
        this.f69171a = iterable;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super T> g0Var) {
        try {
            Iterator<? extends T> it2 = this.f69171a.iterator();
            try {
                if (!it2.hasNext()) {
                    EmptyDisposable.complete(g0Var);
                    return;
                }
                a aVar = new a(g0Var, it2);
                g0Var.onSubscribe(aVar);
                if (aVar.f69175d) {
                    return;
                }
                aVar.a();
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                EmptyDisposable.error(th, g0Var);
            }
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            EmptyDisposable.error(th2, g0Var);
        }
    }
}
