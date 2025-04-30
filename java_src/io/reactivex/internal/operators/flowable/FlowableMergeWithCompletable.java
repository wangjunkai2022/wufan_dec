package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class FlowableMergeWithCompletable<T> extends a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.g f66639c;

    /* loaded from: classes5.dex */
    static final class MergeWithSubscriber<T> extends AtomicInteger implements io.reactivex.o<T>, l3.d {
        private static final long serialVersionUID = -4592979584110982903L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f66640a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<l3.d> f66641b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        final OtherObserver f66642c = new OtherObserver(this);

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f66643d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final AtomicLong f66644e = new AtomicLong();

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f66645f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f66646g;

        /* loaded from: classes5.dex */
        static final class OtherObserver extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.d {
            private static final long serialVersionUID = -2935427570954647017L;

            /* renamed from: a  reason: collision with root package name */
            final MergeWithSubscriber<?> f66647a;

            OtherObserver(MergeWithSubscriber<?> mergeWithSubscriber) {
                this.f66647a = mergeWithSubscriber;
            }

            @Override // io.reactivex.d
            public void onComplete() {
                this.f66647a.a();
            }

            @Override // io.reactivex.d
            public void onError(Throwable th) {
                this.f66647a.b(th);
            }

            @Override // io.reactivex.d
            public void onSubscribe(io.reactivex.disposables.b bVar) {
                DisposableHelper.setOnce(this, bVar);
            }
        }

        MergeWithSubscriber(l3.c<? super T> cVar) {
            this.f66640a = cVar;
        }

        void a() {
            this.f66646g = true;
            if (this.f66645f) {
                io.reactivex.internal.util.g.b(this.f66640a, this, this.f66643d);
            }
        }

        void b(Throwable th) {
            SubscriptionHelper.cancel(this.f66641b);
            io.reactivex.internal.util.g.d(this.f66640a, th, this, this.f66643d);
        }

        @Override // l3.d
        public void cancel() {
            SubscriptionHelper.cancel(this.f66641b);
            DisposableHelper.dispose(this.f66642c);
        }

        @Override // l3.c
        public void onComplete() {
            this.f66645f = true;
            if (this.f66646g) {
                io.reactivex.internal.util.g.b(this.f66640a, this, this.f66643d);
            }
        }

        @Override // l3.c
        public void onError(Throwable th) {
            SubscriptionHelper.cancel(this.f66641b);
            io.reactivex.internal.util.g.d(this.f66640a, th, this, this.f66643d);
        }

        @Override // l3.c
        public void onNext(T t3) {
            io.reactivex.internal.util.g.f(this.f66640a, t3, this, this.f66643d);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            SubscriptionHelper.deferredSetOnce(this.f66641b, this.f66644e, dVar);
        }

        @Override // l3.d
        public void request(long j4) {
            SubscriptionHelper.deferredRequest(this.f66641b, this.f66644e, j4);
        }
    }

    public FlowableMergeWithCompletable(io.reactivex.j<T> jVar, io.reactivex.g gVar) {
        super(jVar);
        this.f66639c = gVar;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        MergeWithSubscriber mergeWithSubscriber = new MergeWithSubscriber(cVar);
        cVar.onSubscribe(mergeWithSubscriber);
        this.f67288b.g6(mergeWithSubscriber);
        this.f66639c.a(mergeWithSubscriber.f66642c);
    }
}
