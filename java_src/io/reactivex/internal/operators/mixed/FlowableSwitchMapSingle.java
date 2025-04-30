package io.reactivex.internal.operators.mixed;

import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.j;
import io.reactivex.l0;
import io.reactivex.o0;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import l3.c;
import l3.d;
import w2.o;
/* loaded from: classes5.dex */
public final class FlowableSwitchMapSingle<T, R> extends j<R> {

    /* renamed from: b  reason: collision with root package name */
    final j<T> f68009b;

    /* renamed from: c  reason: collision with root package name */
    final o<? super T, ? extends o0<? extends R>> f68010c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f68011d;

    /* loaded from: classes5.dex */
    static final class SwitchMapSingleSubscriber<T, R> extends AtomicInteger implements io.reactivex.o<T>, d {

        /* renamed from: k  reason: collision with root package name */
        static final SwitchMapSingleObserver<Object> f68012k = new SwitchMapSingleObserver<>(null);
        private static final long serialVersionUID = -5402190102429853762L;

        /* renamed from: a  reason: collision with root package name */
        final c<? super R> f68013a;

        /* renamed from: b  reason: collision with root package name */
        final o<? super T, ? extends o0<? extends R>> f68014b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f68015c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f68016d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final AtomicLong f68017e = new AtomicLong();

        /* renamed from: f  reason: collision with root package name */
        final AtomicReference<SwitchMapSingleObserver<R>> f68018f = new AtomicReference<>();

        /* renamed from: g  reason: collision with root package name */
        d f68019g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f68020h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f68021i;

        /* renamed from: j  reason: collision with root package name */
        long f68022j;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public static final class SwitchMapSingleObserver<R> extends AtomicReference<b> implements l0<R> {
            private static final long serialVersionUID = 8042919737683345351L;

            /* renamed from: a  reason: collision with root package name */
            final SwitchMapSingleSubscriber<?, R> f68023a;

            /* renamed from: b  reason: collision with root package name */
            volatile R f68024b;

            SwitchMapSingleObserver(SwitchMapSingleSubscriber<?, R> switchMapSingleSubscriber) {
                this.f68023a = switchMapSingleSubscriber;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.l0
            public void onError(Throwable th) {
                this.f68023a.c(this, th);
            }

            @Override // io.reactivex.l0
            public void onSubscribe(b bVar) {
                DisposableHelper.setOnce(this, bVar);
            }

            @Override // io.reactivex.l0
            public void onSuccess(R r3) {
                this.f68024b = r3;
                this.f68023a.b();
            }
        }

        SwitchMapSingleSubscriber(c<? super R> cVar, o<? super T, ? extends o0<? extends R>> oVar, boolean z3) {
            this.f68013a = cVar;
            this.f68014b = oVar;
            this.f68015c = z3;
        }

        /* JADX WARN: Multi-variable type inference failed */
        void a() {
            SwitchMapSingleObserver<Object> switchMapSingleObserver = f68012k;
            SwitchMapSingleObserver<Object> switchMapSingleObserver2 = (SwitchMapSingleObserver) this.f68018f.getAndSet(switchMapSingleObserver);
            if (switchMapSingleObserver2 == null || switchMapSingleObserver2 == switchMapSingleObserver) {
                return;
            }
            switchMapSingleObserver2.a();
        }

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            c<? super R> cVar = this.f68013a;
            AtomicThrowable atomicThrowable = this.f68016d;
            AtomicReference<SwitchMapSingleObserver<R>> atomicReference = this.f68018f;
            AtomicLong atomicLong = this.f68017e;
            long j4 = this.f68022j;
            int i2 = 1;
            while (!this.f68021i) {
                if (atomicThrowable.get() != null && !this.f68015c) {
                    cVar.onError(atomicThrowable.c());
                    return;
                }
                boolean z3 = this.f68020h;
                SwitchMapSingleObserver<R> switchMapSingleObserver = atomicReference.get();
                boolean z4 = switchMapSingleObserver == null;
                if (z3 && z4) {
                    Throwable c4 = atomicThrowable.c();
                    if (c4 != null) {
                        cVar.onError(c4);
                        return;
                    } else {
                        cVar.onComplete();
                        return;
                    }
                } else if (!z4 && switchMapSingleObserver.f68024b != null && j4 != atomicLong.get()) {
                    atomicReference.compareAndSet(switchMapSingleObserver, null);
                    cVar.onNext((R) switchMapSingleObserver.f68024b);
                    j4++;
                } else {
                    this.f68022j = j4;
                    i2 = addAndGet(-i2);
                    if (i2 == 0) {
                        return;
                    }
                }
            }
        }

        void c(SwitchMapSingleObserver<R> switchMapSingleObserver, Throwable th) {
            if (this.f68018f.compareAndSet(switchMapSingleObserver, null) && this.f68016d.a(th)) {
                if (!this.f68015c) {
                    this.f68019g.cancel();
                    a();
                }
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // l3.d
        public void cancel() {
            this.f68021i = true;
            this.f68019g.cancel();
            a();
        }

        @Override // l3.c
        public void onComplete() {
            this.f68020h = true;
            b();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f68016d.a(th)) {
                if (!this.f68015c) {
                    a();
                }
                this.f68020h = true;
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // l3.c
        public void onNext(T t3) {
            SwitchMapSingleObserver<R> switchMapSingleObserver;
            SwitchMapSingleObserver<R> switchMapSingleObserver2 = this.f68018f.get();
            if (switchMapSingleObserver2 != null) {
                switchMapSingleObserver2.a();
            }
            try {
                o0 o0Var = (o0) io.reactivex.internal.functions.a.g(this.f68014b.apply(t3), "The mapper returned a null SingleSource");
                SwitchMapSingleObserver<R> switchMapSingleObserver3 = new SwitchMapSingleObserver<>(this);
                do {
                    switchMapSingleObserver = this.f68018f.get();
                    if (switchMapSingleObserver == f68012k) {
                        return;
                    }
                } while (!this.f68018f.compareAndSet(switchMapSingleObserver, switchMapSingleObserver3));
                o0Var.a(switchMapSingleObserver3);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f68019g.cancel();
                this.f68018f.getAndSet(f68012k);
                onError(th);
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.f68019g, dVar)) {
                this.f68019g = dVar;
                this.f68013a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            io.reactivex.internal.util.b.a(this.f68017e, j4);
            b();
        }
    }

    public FlowableSwitchMapSingle(j<T> jVar, o<? super T, ? extends o0<? extends R>> oVar, boolean z3) {
        this.f68009b = jVar;
        this.f68010c = oVar;
        this.f68011d = z3;
    }

    @Override // io.reactivex.j
    protected void h6(c<? super R> cVar) {
        this.f68009b.g6(new SwitchMapSingleSubscriber(cVar, this.f68010c, this.f68011d));
    }
}
