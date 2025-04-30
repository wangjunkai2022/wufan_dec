package io.reactivex.internal.operators.mixed;

import io.reactivex.d;
import io.reactivex.disposables.b;
import io.reactivex.g;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.j;
import java.util.concurrent.atomic.AtomicReference;
import w2.o;
/* loaded from: classes5.dex */
public final class FlowableSwitchMapCompletable<T> extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final j<T> f67981a;

    /* renamed from: b  reason: collision with root package name */
    final o<? super T, ? extends g> f67982b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f67983c;

    /* loaded from: classes5.dex */
    static final class SwitchMapCompletableObserver<T> implements io.reactivex.o<T>, b {

        /* renamed from: h  reason: collision with root package name */
        static final SwitchMapInnerObserver f67984h = new SwitchMapInnerObserver(null);

        /* renamed from: a  reason: collision with root package name */
        final d f67985a;

        /* renamed from: b  reason: collision with root package name */
        final o<? super T, ? extends g> f67986b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f67987c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f67988d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final AtomicReference<SwitchMapInnerObserver> f67989e = new AtomicReference<>();

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f67990f;

        /* renamed from: g  reason: collision with root package name */
        l3.d f67991g;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public static final class SwitchMapInnerObserver extends AtomicReference<b> implements d {
            private static final long serialVersionUID = -8003404460084760287L;

            /* renamed from: a  reason: collision with root package name */
            final SwitchMapCompletableObserver<?> f67992a;

            SwitchMapInnerObserver(SwitchMapCompletableObserver<?> switchMapCompletableObserver) {
                this.f67992a = switchMapCompletableObserver;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.d
            public void onComplete() {
                this.f67992a.b(this);
            }

            @Override // io.reactivex.d
            public void onError(Throwable th) {
                this.f67992a.c(this, th);
            }

            @Override // io.reactivex.d
            public void onSubscribe(b bVar) {
                DisposableHelper.setOnce(this, bVar);
            }
        }

        SwitchMapCompletableObserver(d dVar, o<? super T, ? extends g> oVar, boolean z3) {
            this.f67985a = dVar;
            this.f67986b = oVar;
            this.f67987c = z3;
        }

        void a() {
            AtomicReference<SwitchMapInnerObserver> atomicReference = this.f67989e;
            SwitchMapInnerObserver switchMapInnerObserver = f67984h;
            SwitchMapInnerObserver andSet = atomicReference.getAndSet(switchMapInnerObserver);
            if (andSet == null || andSet == switchMapInnerObserver) {
                return;
            }
            andSet.a();
        }

        void b(SwitchMapInnerObserver switchMapInnerObserver) {
            if (this.f67989e.compareAndSet(switchMapInnerObserver, null) && this.f67990f) {
                Throwable c4 = this.f67988d.c();
                if (c4 == null) {
                    this.f67985a.onComplete();
                } else {
                    this.f67985a.onError(c4);
                }
            }
        }

        void c(SwitchMapInnerObserver switchMapInnerObserver, Throwable th) {
            if (this.f67989e.compareAndSet(switchMapInnerObserver, null) && this.f67988d.a(th)) {
                if (this.f67987c) {
                    if (this.f67990f) {
                        this.f67985a.onError(this.f67988d.c());
                        return;
                    }
                    return;
                }
                dispose();
                Throwable c4 = this.f67988d.c();
                if (c4 != ExceptionHelper.f70084a) {
                    this.f67985a.onError(c4);
                    return;
                }
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f67991g.cancel();
            a();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f67989e.get() == f67984h;
        }

        @Override // l3.c
        public void onComplete() {
            this.f67990f = true;
            if (this.f67989e.get() == null) {
                Throwable c4 = this.f67988d.c();
                if (c4 == null) {
                    this.f67985a.onComplete();
                } else {
                    this.f67985a.onError(c4);
                }
            }
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f67988d.a(th)) {
                if (this.f67987c) {
                    onComplete();
                    return;
                }
                a();
                Throwable c4 = this.f67988d.c();
                if (c4 != ExceptionHelper.f70084a) {
                    this.f67985a.onError(c4);
                    return;
                }
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            SwitchMapInnerObserver switchMapInnerObserver;
            try {
                g gVar = (g) io.reactivex.internal.functions.a.g(this.f67986b.apply(t3), "The mapper returned a null CompletableSource");
                SwitchMapInnerObserver switchMapInnerObserver2 = new SwitchMapInnerObserver(this);
                do {
                    switchMapInnerObserver = this.f67989e.get();
                    if (switchMapInnerObserver == f67984h) {
                        return;
                    }
                } while (!this.f67989e.compareAndSet(switchMapInnerObserver, switchMapInnerObserver2));
                if (switchMapInnerObserver != null) {
                    switchMapInnerObserver.a();
                }
                gVar.a(switchMapInnerObserver2);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f67991g.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f67991g, dVar)) {
                this.f67991g = dVar;
                this.f67985a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }
    }

    public FlowableSwitchMapCompletable(j<T> jVar, o<? super T, ? extends g> oVar, boolean z3) {
        this.f67981a = jVar;
        this.f67982b = oVar;
        this.f67983c = z3;
    }

    @Override // io.reactivex.a
    protected void F0(d dVar) {
        this.f67981a.g6(new SwitchMapCompletableObserver(dVar, this.f67982b, this.f67983c));
    }
}
