package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class FlowableDebounce<T, U> extends a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final w2.o<? super T, ? extends l3.b<U>> f66331c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class DebounceSubscriber<T, U> extends AtomicLong implements io.reactivex.o<T>, l3.d {
        private static final long serialVersionUID = 6725975399620862591L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f66332a;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super T, ? extends l3.b<U>> f66333b;

        /* renamed from: c  reason: collision with root package name */
        l3.d f66334c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.b> f66335d = new AtomicReference<>();

        /* renamed from: e  reason: collision with root package name */
        volatile long f66336e;

        /* renamed from: f  reason: collision with root package name */
        boolean f66337f;

        /* loaded from: classes5.dex */
        static final class a<T, U> extends io.reactivex.subscribers.b<U> {

            /* renamed from: b  reason: collision with root package name */
            final DebounceSubscriber<T, U> f66338b;

            /* renamed from: c  reason: collision with root package name */
            final long f66339c;

            /* renamed from: d  reason: collision with root package name */
            final T f66340d;

            /* renamed from: e  reason: collision with root package name */
            boolean f66341e;

            /* renamed from: f  reason: collision with root package name */
            final AtomicBoolean f66342f = new AtomicBoolean();

            a(DebounceSubscriber<T, U> debounceSubscriber, long j4, T t3) {
                this.f66338b = debounceSubscriber;
                this.f66339c = j4;
                this.f66340d = t3;
            }

            void d() {
                if (this.f66342f.compareAndSet(false, true)) {
                    this.f66338b.a(this.f66339c, this.f66340d);
                }
            }

            @Override // l3.c
            public void onComplete() {
                if (this.f66341e) {
                    return;
                }
                this.f66341e = true;
                d();
            }

            @Override // l3.c
            public void onError(Throwable th) {
                if (this.f66341e) {
                    io.reactivex.plugins.a.Y(th);
                    return;
                }
                this.f66341e = true;
                this.f66338b.onError(th);
            }

            @Override // l3.c
            public void onNext(U u3) {
                if (this.f66341e) {
                    return;
                }
                this.f66341e = true;
                a();
                d();
            }
        }

        DebounceSubscriber(l3.c<? super T> cVar, w2.o<? super T, ? extends l3.b<U>> oVar) {
            this.f66332a = cVar;
            this.f66333b = oVar;
        }

        void a(long j4, T t3) {
            if (j4 == this.f66336e) {
                if (get() != 0) {
                    this.f66332a.onNext(t3);
                    io.reactivex.internal.util.b.e(this, 1L);
                    return;
                }
                cancel();
                this.f66332a.onError(new MissingBackpressureException("Could not deliver value due to lack of requests"));
            }
        }

        @Override // l3.d
        public void cancel() {
            this.f66334c.cancel();
            DisposableHelper.dispose(this.f66335d);
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f66337f) {
                return;
            }
            this.f66337f = true;
            io.reactivex.disposables.b bVar = this.f66335d.get();
            if (DisposableHelper.isDisposed(bVar)) {
                return;
            }
            ((a) bVar).d();
            DisposableHelper.dispose(this.f66335d);
            this.f66332a.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            DisposableHelper.dispose(this.f66335d);
            this.f66332a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f66337f) {
                return;
            }
            long j4 = this.f66336e + 1;
            this.f66336e = j4;
            io.reactivex.disposables.b bVar = this.f66335d.get();
            if (bVar != null) {
                bVar.dispose();
            }
            try {
                l3.b bVar2 = (l3.b) io.reactivex.internal.functions.a.g(this.f66333b.apply(t3), "The publisher supplied is null");
                a aVar = new a(this, j4, t3);
                if (this.f66335d.compareAndSet(bVar, aVar)) {
                    bVar2.c(aVar);
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                cancel();
                this.f66332a.onError(th);
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f66334c, dVar)) {
                this.f66334c = dVar;
                this.f66332a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this, j4);
            }
        }
    }

    public FlowableDebounce(io.reactivex.j<T> jVar, w2.o<? super T, ? extends l3.b<U>> oVar) {
        super(jVar);
        this.f66331c = oVar;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        this.f67288b.g6(new DebounceSubscriber(new io.reactivex.subscribers.e(cVar), this.f66331c));
    }
}
