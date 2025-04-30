package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.h0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class FlowableDebounceTimed<T> extends a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final long f66343c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f66344d;

    /* renamed from: e  reason: collision with root package name */
    final io.reactivex.h0 f66345e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class DebounceEmitter<T> extends AtomicReference<io.reactivex.disposables.b> implements Runnable, io.reactivex.disposables.b {
        private static final long serialVersionUID = 6812032969491025141L;

        /* renamed from: a  reason: collision with root package name */
        final T f66346a;

        /* renamed from: b  reason: collision with root package name */
        final long f66347b;

        /* renamed from: c  reason: collision with root package name */
        final DebounceTimedSubscriber<T> f66348c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicBoolean f66349d = new AtomicBoolean();

        DebounceEmitter(T t3, long j4, DebounceTimedSubscriber<T> debounceTimedSubscriber) {
            this.f66346a = t3;
            this.f66347b = j4;
            this.f66348c = debounceTimedSubscriber;
        }

        void a() {
            if (this.f66349d.compareAndSet(false, true)) {
                this.f66348c.a(this.f66347b, this.f66346a, this);
            }
        }

        public void b(io.reactivex.disposables.b bVar) {
            DisposableHelper.replace(this, bVar);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return get() == DisposableHelper.DISPOSED;
        }

        @Override // java.lang.Runnable
        public void run() {
            a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class DebounceTimedSubscriber<T> extends AtomicLong implements io.reactivex.o<T>, l3.d {
        private static final long serialVersionUID = -9102637559663639004L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f66350a;

        /* renamed from: b  reason: collision with root package name */
        final long f66351b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f66352c;

        /* renamed from: d  reason: collision with root package name */
        final h0.c f66353d;

        /* renamed from: e  reason: collision with root package name */
        l3.d f66354e;

        /* renamed from: f  reason: collision with root package name */
        io.reactivex.disposables.b f66355f;

        /* renamed from: g  reason: collision with root package name */
        volatile long f66356g;

        /* renamed from: h  reason: collision with root package name */
        boolean f66357h;

        DebounceTimedSubscriber(l3.c<? super T> cVar, long j4, TimeUnit timeUnit, h0.c cVar2) {
            this.f66350a = cVar;
            this.f66351b = j4;
            this.f66352c = timeUnit;
            this.f66353d = cVar2;
        }

        void a(long j4, T t3, DebounceEmitter<T> debounceEmitter) {
            if (j4 == this.f66356g) {
                if (get() != 0) {
                    this.f66350a.onNext(t3);
                    io.reactivex.internal.util.b.e(this, 1L);
                    debounceEmitter.dispose();
                    return;
                }
                cancel();
                this.f66350a.onError(new MissingBackpressureException("Could not deliver value due to lack of requests"));
            }
        }

        @Override // l3.d
        public void cancel() {
            this.f66354e.cancel();
            this.f66353d.dispose();
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f66357h) {
                return;
            }
            this.f66357h = true;
            io.reactivex.disposables.b bVar = this.f66355f;
            if (bVar != null) {
                bVar.dispose();
            }
            DebounceEmitter debounceEmitter = (DebounceEmitter) bVar;
            if (debounceEmitter != null) {
                debounceEmitter.a();
            }
            this.f66350a.onComplete();
            this.f66353d.dispose();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f66357h) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f66357h = true;
            io.reactivex.disposables.b bVar = this.f66355f;
            if (bVar != null) {
                bVar.dispose();
            }
            this.f66350a.onError(th);
            this.f66353d.dispose();
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f66357h) {
                return;
            }
            long j4 = this.f66356g + 1;
            this.f66356g = j4;
            io.reactivex.disposables.b bVar = this.f66355f;
            if (bVar != null) {
                bVar.dispose();
            }
            DebounceEmitter debounceEmitter = new DebounceEmitter(t3, j4, this);
            this.f66355f = debounceEmitter;
            debounceEmitter.b(this.f66353d.c(debounceEmitter, this.f66351b, this.f66352c));
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f66354e, dVar)) {
                this.f66354e = dVar;
                this.f66350a.onSubscribe(this);
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

    public FlowableDebounceTimed(io.reactivex.j<T> jVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        super(jVar);
        this.f66343c = j4;
        this.f66344d = timeUnit;
        this.f66345e = h0Var;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        this.f67288b.g6(new DebounceTimedSubscriber(new io.reactivex.subscribers.e(cVar), this.f66343c, this.f66344d, this.f66345e.c()));
    }
}
