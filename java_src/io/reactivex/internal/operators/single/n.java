package io.reactivex.internal.operators.single;

import io.reactivex.i0;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.l0;
import java.util.NoSuchElementException;
/* compiled from: SingleFromPublisher.java */
/* loaded from: classes5.dex */
public final class n<T> extends i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final l3.b<? extends T> f69786a;

    /* compiled from: SingleFromPublisher.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.o<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final l0<? super T> f69787a;

        /* renamed from: b  reason: collision with root package name */
        l3.d f69788b;

        /* renamed from: c  reason: collision with root package name */
        T f69789c;

        /* renamed from: d  reason: collision with root package name */
        boolean f69790d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f69791e;

        a(l0<? super T> l0Var) {
            this.f69787a = l0Var;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69791e = true;
            this.f69788b.cancel();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69791e;
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f69790d) {
                return;
            }
            this.f69790d = true;
            T t3 = this.f69789c;
            this.f69789c = null;
            if (t3 == null) {
                this.f69787a.onError(new NoSuchElementException("The source Publisher is empty"));
            } else {
                this.f69787a.onSuccess(t3);
            }
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f69790d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f69790d = true;
            this.f69789c = null;
            this.f69787a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f69790d) {
                return;
            }
            if (this.f69789c != null) {
                this.f69788b.cancel();
                this.f69790d = true;
                this.f69789c = null;
                this.f69787a.onError(new IndexOutOfBoundsException("Too many elements in the Publisher"));
                return;
            }
            this.f69789c = t3;
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f69788b, dVar)) {
                this.f69788b = dVar;
                this.f69787a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }
    }

    public n(l3.b<? extends T> bVar) {
        this.f69786a = bVar;
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super T> l0Var) {
        this.f69786a.c(new a(l0Var));
    }
}
