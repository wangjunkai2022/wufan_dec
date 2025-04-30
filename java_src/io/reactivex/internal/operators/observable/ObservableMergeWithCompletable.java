package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ObservableMergeWithCompletable<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.g f68485b;

    /* loaded from: classes5.dex */
    static final class MergeWithObserver<T> extends AtomicInteger implements io.reactivex.g0<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = -4592979584110982903L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f68486a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.b> f68487b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        final OtherObserver f68488c = new OtherObserver(this);

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f68489d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f68490e;

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f68491f;

        /* loaded from: classes5.dex */
        static final class OtherObserver extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.d {
            private static final long serialVersionUID = -2935427570954647017L;

            /* renamed from: a  reason: collision with root package name */
            final MergeWithObserver<?> f68492a;

            OtherObserver(MergeWithObserver<?> mergeWithObserver) {
                this.f68492a = mergeWithObserver;
            }

            @Override // io.reactivex.d
            public void onComplete() {
                this.f68492a.a();
            }

            @Override // io.reactivex.d
            public void onError(Throwable th) {
                this.f68492a.b(th);
            }

            @Override // io.reactivex.d
            public void onSubscribe(io.reactivex.disposables.b bVar) {
                DisposableHelper.setOnce(this, bVar);
            }
        }

        MergeWithObserver(io.reactivex.g0<? super T> g0Var) {
            this.f68486a = g0Var;
        }

        void a() {
            this.f68491f = true;
            if (this.f68490e) {
                io.reactivex.internal.util.g.a(this.f68486a, this, this.f68489d);
            }
        }

        void b(Throwable th) {
            DisposableHelper.dispose(this.f68487b);
            io.reactivex.internal.util.g.c(this.f68486a, th, this, this.f68489d);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this.f68487b);
            DisposableHelper.dispose(this.f68488c);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f68487b.get());
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f68490e = true;
            if (this.f68491f) {
                io.reactivex.internal.util.g.a(this.f68486a, this, this.f68489d);
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            DisposableHelper.dispose(this.f68487b);
            io.reactivex.internal.util.g.c(this.f68486a, th, this, this.f68489d);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            io.reactivex.internal.util.g.e(this.f68486a, t3, this, this.f68489d);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.setOnce(this.f68487b, bVar);
        }
    }

    public ObservableMergeWithCompletable(io.reactivex.z<T> zVar, io.reactivex.g gVar) {
        super(zVar);
        this.f68485b = gVar;
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super T> g0Var) {
        MergeWithObserver mergeWithObserver = new MergeWithObserver(g0Var);
        g0Var.onSubscribe(mergeWithObserver);
        this.f68961a.a(mergeWithObserver);
        this.f68485b.a(mergeWithObserver.f68488c);
    }
}
