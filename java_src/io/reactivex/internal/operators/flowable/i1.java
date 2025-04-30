package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.ArrayListSupplier;
import java.util.Collection;
import java.util.concurrent.Callable;
/* compiled from: FlowableToListSingle.java */
/* loaded from: classes5.dex */
public final class i1<T, U extends Collection<? super T>> extends io.reactivex.i0<U> implements x2.b<U> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.j<T> f67395a;

    /* renamed from: b  reason: collision with root package name */
    final Callable<U> f67396b;

    /* compiled from: FlowableToListSingle.java */
    /* loaded from: classes5.dex */
    static final class a<T, U extends Collection<? super T>> implements io.reactivex.o<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super U> f67397a;

        /* renamed from: b  reason: collision with root package name */
        l3.d f67398b;

        /* renamed from: c  reason: collision with root package name */
        U f67399c;

        a(io.reactivex.l0<? super U> l0Var, U u3) {
            this.f67397a = l0Var;
            this.f67399c = u3;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f67398b.cancel();
            this.f67398b = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f67398b == SubscriptionHelper.CANCELLED;
        }

        @Override // l3.c
        public void onComplete() {
            this.f67398b = SubscriptionHelper.CANCELLED;
            this.f67397a.onSuccess(this.f67399c);
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f67399c = null;
            this.f67398b = SubscriptionHelper.CANCELLED;
            this.f67397a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            this.f67399c.add(t3);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f67398b, dVar)) {
                this.f67398b = dVar;
                this.f67397a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }
    }

    public i1(io.reactivex.j<T> jVar) {
        this(jVar, ArrayListSupplier.asCallable());
    }

    @Override // io.reactivex.i0
    protected void Y0(io.reactivex.l0<? super U> l0Var) {
        try {
            this.f67395a.g6(new a(l0Var, (Collection) io.reactivex.internal.functions.a.g(this.f67396b.call(), "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.")));
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.error(th, l0Var);
        }
    }

    @Override // x2.b
    public io.reactivex.j<U> d() {
        return io.reactivex.plugins.a.P(new FlowableToList(this.f67395a, this.f67396b));
    }

    public i1(io.reactivex.j<T> jVar, Callable<U> callable) {
        this.f67395a = jVar;
        this.f67396b = callable;
    }
}
