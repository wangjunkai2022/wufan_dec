package io.reactivex.internal.operators.mixed;

import io.reactivex.d;
import io.reactivex.disposables.b;
import io.reactivex.g;
import io.reactivex.g0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.z;
import java.util.concurrent.atomic.AtomicReference;
import w2.o;
/* loaded from: classes5.dex */
public final class ObservableSwitchMapCompletable<T> extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final z<T> f68089a;

    /* renamed from: b  reason: collision with root package name */
    final o<? super T, ? extends g> f68090b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f68091c;

    /* loaded from: classes5.dex */
    static final class SwitchMapCompletableObserver<T> implements g0<T>, b {

        /* renamed from: h  reason: collision with root package name */
        static final SwitchMapInnerObserver f68092h = new SwitchMapInnerObserver(null);

        /* renamed from: a  reason: collision with root package name */
        final d f68093a;

        /* renamed from: b  reason: collision with root package name */
        final o<? super T, ? extends g> f68094b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f68095c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f68096d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final AtomicReference<SwitchMapInnerObserver> f68097e = new AtomicReference<>();

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f68098f;

        /* renamed from: g  reason: collision with root package name */
        b f68099g;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public static final class SwitchMapInnerObserver extends AtomicReference<b> implements d {
            private static final long serialVersionUID = -8003404460084760287L;

            /* renamed from: a  reason: collision with root package name */
            final SwitchMapCompletableObserver<?> f68100a;

            SwitchMapInnerObserver(SwitchMapCompletableObserver<?> switchMapCompletableObserver) {
                this.f68100a = switchMapCompletableObserver;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.d
            public void onComplete() {
                this.f68100a.b(this);
            }

            @Override // io.reactivex.d
            public void onError(Throwable th) {
                this.f68100a.c(this, th);
            }

            @Override // io.reactivex.d
            public void onSubscribe(b bVar) {
                DisposableHelper.setOnce(this, bVar);
            }
        }

        SwitchMapCompletableObserver(d dVar, o<? super T, ? extends g> oVar, boolean z3) {
            this.f68093a = dVar;
            this.f68094b = oVar;
            this.f68095c = z3;
        }

        void a() {
            AtomicReference<SwitchMapInnerObserver> atomicReference = this.f68097e;
            SwitchMapInnerObserver switchMapInnerObserver = f68092h;
            SwitchMapInnerObserver andSet = atomicReference.getAndSet(switchMapInnerObserver);
            if (andSet == null || andSet == switchMapInnerObserver) {
                return;
            }
            andSet.a();
        }

        void b(SwitchMapInnerObserver switchMapInnerObserver) {
            if (this.f68097e.compareAndSet(switchMapInnerObserver, null) && this.f68098f) {
                Throwable c4 = this.f68096d.c();
                if (c4 == null) {
                    this.f68093a.onComplete();
                } else {
                    this.f68093a.onError(c4);
                }
            }
        }

        void c(SwitchMapInnerObserver switchMapInnerObserver, Throwable th) {
            if (this.f68097e.compareAndSet(switchMapInnerObserver, null) && this.f68096d.a(th)) {
                if (this.f68095c) {
                    if (this.f68098f) {
                        this.f68093a.onError(this.f68096d.c());
                        return;
                    }
                    return;
                }
                dispose();
                Throwable c4 = this.f68096d.c();
                if (c4 != ExceptionHelper.f70084a) {
                    this.f68093a.onError(c4);
                    return;
                }
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f68099g.dispose();
            a();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68097e.get() == f68092h;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f68098f = true;
            if (this.f68097e.get() == null) {
                Throwable c4 = this.f68096d.c();
                if (c4 == null) {
                    this.f68093a.onComplete();
                } else {
                    this.f68093a.onError(c4);
                }
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f68096d.a(th)) {
                if (this.f68095c) {
                    onComplete();
                    return;
                }
                a();
                Throwable c4 = this.f68096d.c();
                if (c4 != ExceptionHelper.f70084a) {
                    this.f68093a.onError(c4);
                    return;
                }
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            SwitchMapInnerObserver switchMapInnerObserver;
            try {
                g gVar = (g) io.reactivex.internal.functions.a.g(this.f68094b.apply(t3), "The mapper returned a null CompletableSource");
                SwitchMapInnerObserver switchMapInnerObserver2 = new SwitchMapInnerObserver(this);
                do {
                    switchMapInnerObserver = this.f68097e.get();
                    if (switchMapInnerObserver == f68092h) {
                        return;
                    }
                } while (!this.f68097e.compareAndSet(switchMapInnerObserver, switchMapInnerObserver2));
                if (switchMapInnerObserver != null) {
                    switchMapInnerObserver.a();
                }
                gVar.a(switchMapInnerObserver2);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f68099g.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(b bVar) {
            if (DisposableHelper.validate(this.f68099g, bVar)) {
                this.f68099g = bVar;
                this.f68093a.onSubscribe(this);
            }
        }
    }

    public ObservableSwitchMapCompletable(z<T> zVar, o<? super T, ? extends g> oVar, boolean z3) {
        this.f68089a = zVar;
        this.f68090b = oVar;
        this.f68091c = z3;
    }

    @Override // io.reactivex.a
    protected void F0(d dVar) {
        if (a.a(this.f68089a, this.f68090b, dVar)) {
            return;
        }
        this.f68089a.a(new SwitchMapCompletableObserver(dVar, this.f68090b, this.f68091c));
    }
}
