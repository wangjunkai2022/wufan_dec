package io.reactivex.internal.operators.completable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class CompletableMerge extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final l3.b<? extends io.reactivex.g> f65994a;

    /* renamed from: b  reason: collision with root package name */
    final int f65995b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f65996c;

    /* loaded from: classes5.dex */
    static final class CompletableMergeSubscriber extends AtomicInteger implements io.reactivex.o<io.reactivex.g>, io.reactivex.disposables.b {
        private static final long serialVersionUID = -2108443387387077490L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f65997a;

        /* renamed from: b  reason: collision with root package name */
        final int f65998b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f65999c;

        /* renamed from: f  reason: collision with root package name */
        l3.d f66002f;

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.disposables.a f66001e = new io.reactivex.disposables.a();

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f66000d = new AtomicThrowable();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public final class MergeInnerObserver extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.d, io.reactivex.disposables.b {
            private static final long serialVersionUID = 251330541679988317L;

            MergeInnerObserver() {
            }

            @Override // io.reactivex.disposables.b
            public void dispose() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.disposables.b
            public boolean isDisposed() {
                return DisposableHelper.isDisposed(get());
            }

            @Override // io.reactivex.d
            public void onComplete() {
                CompletableMergeSubscriber.this.a(this);
            }

            @Override // io.reactivex.d
            public void onError(Throwable th) {
                CompletableMergeSubscriber.this.b(this, th);
            }

            @Override // io.reactivex.d
            public void onSubscribe(io.reactivex.disposables.b bVar) {
                DisposableHelper.setOnce(this, bVar);
            }
        }

        CompletableMergeSubscriber(io.reactivex.d dVar, int i2, boolean z3) {
            this.f65997a = dVar;
            this.f65998b = i2;
            this.f65999c = z3;
            lazySet(1);
        }

        void a(MergeInnerObserver mergeInnerObserver) {
            this.f66001e.delete(mergeInnerObserver);
            if (decrementAndGet() == 0) {
                Throwable th = this.f66000d.get();
                if (th != null) {
                    this.f65997a.onError(th);
                } else {
                    this.f65997a.onComplete();
                }
            } else if (this.f65998b != Integer.MAX_VALUE) {
                this.f66002f.request(1L);
            }
        }

        void b(MergeInnerObserver mergeInnerObserver, Throwable th) {
            this.f66001e.delete(mergeInnerObserver);
            if (!this.f65999c) {
                this.f66002f.cancel();
                this.f66001e.dispose();
                if (this.f66000d.a(th)) {
                    if (getAndSet(0) > 0) {
                        this.f65997a.onError(this.f66000d.c());
                        return;
                    }
                    return;
                }
                io.reactivex.plugins.a.Y(th);
            } else if (this.f66000d.a(th)) {
                if (decrementAndGet() == 0) {
                    this.f65997a.onError(this.f66000d.c());
                } else if (this.f65998b != Integer.MAX_VALUE) {
                    this.f66002f.request(1L);
                }
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // l3.c
        /* renamed from: c */
        public void onNext(io.reactivex.g gVar) {
            getAndIncrement();
            MergeInnerObserver mergeInnerObserver = new MergeInnerObserver();
            this.f66001e.b(mergeInnerObserver);
            gVar.a(mergeInnerObserver);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f66002f.cancel();
            this.f66001e.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f66001e.isDisposed();
        }

        @Override // l3.c
        public void onComplete() {
            if (decrementAndGet() == 0) {
                if (this.f66000d.get() != null) {
                    this.f65997a.onError(this.f66000d.c());
                } else {
                    this.f65997a.onComplete();
                }
            }
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (!this.f65999c) {
                this.f66001e.dispose();
                if (this.f66000d.a(th)) {
                    if (getAndSet(0) > 0) {
                        this.f65997a.onError(this.f66000d.c());
                        return;
                    }
                    return;
                }
                io.reactivex.plugins.a.Y(th);
            } else if (this.f66000d.a(th)) {
                if (decrementAndGet() == 0) {
                    this.f65997a.onError(this.f66000d.c());
                }
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f66002f, dVar)) {
                this.f66002f = dVar;
                this.f65997a.onSubscribe(this);
                int i2 = this.f65998b;
                if (i2 == Integer.MAX_VALUE) {
                    dVar.request(Long.MAX_VALUE);
                } else {
                    dVar.request(i2);
                }
            }
        }
    }

    public CompletableMerge(l3.b<? extends io.reactivex.g> bVar, int i2, boolean z3) {
        this.f65994a = bVar;
        this.f65995b = i2;
        this.f65996c = z3;
    }

    @Override // io.reactivex.a
    public void F0(io.reactivex.d dVar) {
        this.f65994a.c(new CompletableMergeSubscriber(dVar, this.f65995b, this.f65996c));
    }
}
