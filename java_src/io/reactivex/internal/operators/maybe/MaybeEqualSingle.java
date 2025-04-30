package io.reactivex.internal.operators.maybe;

import io.reactivex.i0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.l0;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class MaybeEqualSingle<T> extends i0<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.w<? extends T> f67662a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.w<? extends T> f67663b;

    /* renamed from: c  reason: collision with root package name */
    final w2.d<? super T, ? super T> f67664c;

    /* loaded from: classes5.dex */
    static final class EqualCoordinator<T> extends AtomicInteger implements io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final l0<? super Boolean> f67665a;

        /* renamed from: b  reason: collision with root package name */
        final EqualObserver<T> f67666b;

        /* renamed from: c  reason: collision with root package name */
        final EqualObserver<T> f67667c;

        /* renamed from: d  reason: collision with root package name */
        final w2.d<? super T, ? super T> f67668d;

        EqualCoordinator(l0<? super Boolean> l0Var, w2.d<? super T, ? super T> dVar) {
            super(2);
            this.f67665a = l0Var;
            this.f67668d = dVar;
            this.f67666b = new EqualObserver<>(this);
            this.f67667c = new EqualObserver<>(this);
        }

        void a() {
            if (decrementAndGet() == 0) {
                Object obj = this.f67666b.f67670b;
                Object obj2 = this.f67667c.f67670b;
                if (obj != null && obj2 != null) {
                    try {
                        this.f67665a.onSuccess(Boolean.valueOf(this.f67668d.a(obj, obj2)));
                        return;
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        this.f67665a.onError(th);
                        return;
                    }
                }
                this.f67665a.onSuccess(Boolean.valueOf(obj == null && obj2 == null));
            }
        }

        void b(EqualObserver<T> equalObserver, Throwable th) {
            if (getAndSet(0) > 0) {
                EqualObserver<T> equalObserver2 = this.f67666b;
                if (equalObserver == equalObserver2) {
                    this.f67667c.a();
                } else {
                    equalObserver2.a();
                }
                this.f67665a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        void c(io.reactivex.w<? extends T> wVar, io.reactivex.w<? extends T> wVar2) {
            wVar.a(this.f67666b);
            wVar2.a(this.f67667c);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f67666b.a();
            this.f67667c.a();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f67666b.get());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class EqualObserver<T> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.t<T> {
        private static final long serialVersionUID = -3031974433025990931L;

        /* renamed from: a  reason: collision with root package name */
        final EqualCoordinator<T> f67669a;

        /* renamed from: b  reason: collision with root package name */
        Object f67670b;

        EqualObserver(EqualCoordinator<T> equalCoordinator) {
            this.f67669a = equalCoordinator;
        }

        public void a() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f67669a.a();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f67669a.b(this, th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            this.f67670b = t3;
            this.f67669a.a();
        }
    }

    public MaybeEqualSingle(io.reactivex.w<? extends T> wVar, io.reactivex.w<? extends T> wVar2, w2.d<? super T, ? super T> dVar) {
        this.f67662a = wVar;
        this.f67663b = wVar2;
        this.f67664c = dVar;
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super Boolean> l0Var) {
        EqualCoordinator equalCoordinator = new EqualCoordinator(l0Var, this.f67664c);
        l0Var.onSubscribe(equalCoordinator);
        equalCoordinator.c(this.f67662a, this.f67663b);
    }
}
