package io.reactivex.internal.operators.mixed;

import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.j;
import io.reactivex.t;
import io.reactivex.w;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import l3.c;
import l3.d;
import w2.o;
/* loaded from: classes5.dex */
public final class FlowableSwitchMapMaybe<T, R> extends j<R> {

    /* renamed from: b  reason: collision with root package name */
    final j<T> f67993b;

    /* renamed from: c  reason: collision with root package name */
    final o<? super T, ? extends w<? extends R>> f67994c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f67995d;

    /* loaded from: classes5.dex */
    static final class SwitchMapMaybeSubscriber<T, R> extends AtomicInteger implements io.reactivex.o<T>, d {

        /* renamed from: k  reason: collision with root package name */
        static final SwitchMapMaybeObserver<Object> f67996k = new SwitchMapMaybeObserver<>(null);
        private static final long serialVersionUID = -5402190102429853762L;

        /* renamed from: a  reason: collision with root package name */
        final c<? super R> f67997a;

        /* renamed from: b  reason: collision with root package name */
        final o<? super T, ? extends w<? extends R>> f67998b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f67999c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f68000d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final AtomicLong f68001e = new AtomicLong();

        /* renamed from: f  reason: collision with root package name */
        final AtomicReference<SwitchMapMaybeObserver<R>> f68002f = new AtomicReference<>();

        /* renamed from: g  reason: collision with root package name */
        d f68003g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f68004h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f68005i;

        /* renamed from: j  reason: collision with root package name */
        long f68006j;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public static final class SwitchMapMaybeObserver<R> extends AtomicReference<b> implements t<R> {
            private static final long serialVersionUID = 8042919737683345351L;

            /* renamed from: a  reason: collision with root package name */
            final SwitchMapMaybeSubscriber<?, R> f68007a;

            /* renamed from: b  reason: collision with root package name */
            volatile R f68008b;

            SwitchMapMaybeObserver(SwitchMapMaybeSubscriber<?, R> switchMapMaybeSubscriber) {
                this.f68007a = switchMapMaybeSubscriber;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.t
            public void onComplete() {
                this.f68007a.c(this);
            }

            @Override // io.reactivex.t
            public void onError(Throwable th) {
                this.f68007a.d(this, th);
            }

            @Override // io.reactivex.t
            public void onSubscribe(b bVar) {
                DisposableHelper.setOnce(this, bVar);
            }

            @Override // io.reactivex.t
            public void onSuccess(R r3) {
                this.f68008b = r3;
                this.f68007a.b();
            }
        }

        SwitchMapMaybeSubscriber(c<? super R> cVar, o<? super T, ? extends w<? extends R>> oVar, boolean z3) {
            this.f67997a = cVar;
            this.f67998b = oVar;
            this.f67999c = z3;
        }

        /* JADX WARN: Multi-variable type inference failed */
        void a() {
            SwitchMapMaybeObserver<Object> switchMapMaybeObserver = f67996k;
            SwitchMapMaybeObserver<Object> switchMapMaybeObserver2 = (SwitchMapMaybeObserver) this.f68002f.getAndSet(switchMapMaybeObserver);
            if (switchMapMaybeObserver2 == null || switchMapMaybeObserver2 == switchMapMaybeObserver) {
                return;
            }
            switchMapMaybeObserver2.a();
        }

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            c<? super R> cVar = this.f67997a;
            AtomicThrowable atomicThrowable = this.f68000d;
            AtomicReference<SwitchMapMaybeObserver<R>> atomicReference = this.f68002f;
            AtomicLong atomicLong = this.f68001e;
            long j4 = this.f68006j;
            int i2 = 1;
            while (!this.f68005i) {
                if (atomicThrowable.get() != null && !this.f67999c) {
                    cVar.onError(atomicThrowable.c());
                    return;
                }
                boolean z3 = this.f68004h;
                SwitchMapMaybeObserver<R> switchMapMaybeObserver = atomicReference.get();
                boolean z4 = switchMapMaybeObserver == null;
                if (z3 && z4) {
                    Throwable c4 = atomicThrowable.c();
                    if (c4 != null) {
                        cVar.onError(c4);
                        return;
                    } else {
                        cVar.onComplete();
                        return;
                    }
                } else if (!z4 && switchMapMaybeObserver.f68008b != null && j4 != atomicLong.get()) {
                    atomicReference.compareAndSet(switchMapMaybeObserver, null);
                    cVar.onNext((R) switchMapMaybeObserver.f68008b);
                    j4++;
                } else {
                    this.f68006j = j4;
                    i2 = addAndGet(-i2);
                    if (i2 == 0) {
                        return;
                    }
                }
            }
        }

        void c(SwitchMapMaybeObserver<R> switchMapMaybeObserver) {
            if (this.f68002f.compareAndSet(switchMapMaybeObserver, null)) {
                b();
            }
        }

        @Override // l3.d
        public void cancel() {
            this.f68005i = true;
            this.f68003g.cancel();
            a();
        }

        void d(SwitchMapMaybeObserver<R> switchMapMaybeObserver, Throwable th) {
            if (this.f68002f.compareAndSet(switchMapMaybeObserver, null) && this.f68000d.a(th)) {
                if (!this.f67999c) {
                    this.f68003g.cancel();
                    a();
                }
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // l3.c
        public void onComplete() {
            this.f68004h = true;
            b();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f68000d.a(th)) {
                if (!this.f67999c) {
                    a();
                }
                this.f68004h = true;
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // l3.c
        public void onNext(T t3) {
            SwitchMapMaybeObserver<R> switchMapMaybeObserver;
            SwitchMapMaybeObserver<R> switchMapMaybeObserver2 = this.f68002f.get();
            if (switchMapMaybeObserver2 != null) {
                switchMapMaybeObserver2.a();
            }
            try {
                w wVar = (w) io.reactivex.internal.functions.a.g(this.f67998b.apply(t3), "The mapper returned a null MaybeSource");
                SwitchMapMaybeObserver<R> switchMapMaybeObserver3 = new SwitchMapMaybeObserver<>(this);
                do {
                    switchMapMaybeObserver = this.f68002f.get();
                    if (switchMapMaybeObserver == f67996k) {
                        return;
                    }
                } while (!this.f68002f.compareAndSet(switchMapMaybeObserver, switchMapMaybeObserver3));
                wVar.a(switchMapMaybeObserver3);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f68003g.cancel();
                this.f68002f.getAndSet(f67996k);
                onError(th);
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.f68003g, dVar)) {
                this.f68003g = dVar;
                this.f67997a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            io.reactivex.internal.util.b.a(this.f68001e, j4);
            b();
        }
    }

    public FlowableSwitchMapMaybe(j<T> jVar, o<? super T, ? extends w<? extends R>> oVar, boolean z3) {
        this.f67993b = jVar;
        this.f67994c = oVar;
        this.f67995d = z3;
    }

    @Override // io.reactivex.j
    protected void h6(c<? super R> cVar) {
        this.f67993b.g6(new SwitchMapMaybeSubscriber(cVar, this.f67994c, this.f67995d));
    }
}
