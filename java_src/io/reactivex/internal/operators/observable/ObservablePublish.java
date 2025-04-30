package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ObservablePublish<T> extends io.reactivex.observables.a<T> implements x2.g<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<T> f68533a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<a<T>> f68534b;

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.e0<T> f68535c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class InnerDisposable<T> extends AtomicReference<Object> implements io.reactivex.disposables.b {
        private static final long serialVersionUID = -1100270633763673112L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f68536a;

        InnerDisposable(io.reactivex.g0<? super T> g0Var) {
            this.f68536a = g0Var;
        }

        void a(a<T> aVar) {
            if (compareAndSet(null, aVar)) {
                return;
            }
            aVar.b(this);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            Object andSet = getAndSet(this);
            if (andSet == null || andSet == this) {
                return;
            }
            ((a) andSet).b(this);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return get() == this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.b {

        /* renamed from: e  reason: collision with root package name */
        static final InnerDisposable[] f68537e = new InnerDisposable[0];

        /* renamed from: f  reason: collision with root package name */
        static final InnerDisposable[] f68538f = new InnerDisposable[0];

        /* renamed from: a  reason: collision with root package name */
        final AtomicReference<a<T>> f68539a;

        /* renamed from: d  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.b> f68542d = new AtomicReference<>();

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<InnerDisposable<T>[]> f68540b = new AtomicReference<>(f68537e);

        /* renamed from: c  reason: collision with root package name */
        final AtomicBoolean f68541c = new AtomicBoolean();

        a(AtomicReference<a<T>> atomicReference) {
            this.f68539a = atomicReference;
        }

        boolean a(InnerDisposable<T> innerDisposable) {
            InnerDisposable<T>[] innerDisposableArr;
            InnerDisposable<T>[] innerDisposableArr2;
            do {
                innerDisposableArr = this.f68540b.get();
                if (innerDisposableArr == f68538f) {
                    return false;
                }
                int length = innerDisposableArr.length;
                innerDisposableArr2 = new InnerDisposable[length + 1];
                System.arraycopy(innerDisposableArr, 0, innerDisposableArr2, 0, length);
                innerDisposableArr2[length] = innerDisposable;
            } while (!this.f68540b.compareAndSet(innerDisposableArr, innerDisposableArr2));
            return true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        void b(InnerDisposable<T> innerDisposable) {
            InnerDisposable<T>[] innerDisposableArr;
            InnerDisposable[] innerDisposableArr2;
            do {
                innerDisposableArr = this.f68540b.get();
                int length = innerDisposableArr.length;
                if (length == 0) {
                    return;
                }
                int i2 = -1;
                int i4 = 0;
                while (true) {
                    if (i4 >= length) {
                        break;
                    } else if (innerDisposableArr[i4].equals(innerDisposable)) {
                        i2 = i4;
                        break;
                    } else {
                        i4++;
                    }
                }
                if (i2 < 0) {
                    return;
                }
                if (length == 1) {
                    innerDisposableArr2 = f68537e;
                } else {
                    InnerDisposable[] innerDisposableArr3 = new InnerDisposable[length - 1];
                    System.arraycopy(innerDisposableArr, 0, innerDisposableArr3, 0, i2);
                    System.arraycopy(innerDisposableArr, i2 + 1, innerDisposableArr3, i2, (length - i2) - 1);
                    innerDisposableArr2 = innerDisposableArr3;
                }
            } while (!this.f68540b.compareAndSet(innerDisposableArr, innerDisposableArr2));
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            AtomicReference<InnerDisposable<T>[]> atomicReference = this.f68540b;
            InnerDisposable<T>[] innerDisposableArr = f68538f;
            if (atomicReference.getAndSet(innerDisposableArr) != innerDisposableArr) {
                this.f68539a.compareAndSet(this, null);
                DisposableHelper.dispose(this.f68542d);
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68540b.get() == f68538f;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f68539a.compareAndSet(this, null);
            for (InnerDisposable<T> innerDisposable : this.f68540b.getAndSet(f68538f)) {
                innerDisposable.f68536a.onComplete();
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f68539a.compareAndSet(this, null);
            InnerDisposable<T>[] andSet = this.f68540b.getAndSet(f68538f);
            if (andSet.length != 0) {
                for (InnerDisposable<T> innerDisposable : andSet) {
                    innerDisposable.f68536a.onError(th);
                }
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            for (InnerDisposable<T> innerDisposable : this.f68540b.get()) {
                innerDisposable.f68536a.onNext(t3);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.setOnce(this.f68542d, bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class b<T> implements io.reactivex.e0<T> {

        /* renamed from: a  reason: collision with root package name */
        private final AtomicReference<a<T>> f68543a;

        b(AtomicReference<a<T>> atomicReference) {
            this.f68543a = atomicReference;
        }

        @Override // io.reactivex.e0
        public void a(io.reactivex.g0<? super T> g0Var) {
            InnerDisposable innerDisposable = new InnerDisposable(g0Var);
            g0Var.onSubscribe(innerDisposable);
            while (true) {
                a<T> aVar = this.f68543a.get();
                if (aVar == null || aVar.isDisposed()) {
                    a<T> aVar2 = new a<>(this.f68543a);
                    if (this.f68543a.compareAndSet(aVar, aVar2)) {
                        aVar = aVar2;
                    } else {
                        continue;
                    }
                }
                if (aVar.a(innerDisposable)) {
                    innerDisposable.a(aVar);
                    return;
                }
            }
        }
    }

    private ObservablePublish(io.reactivex.e0<T> e0Var, io.reactivex.e0<T> e0Var2, AtomicReference<a<T>> atomicReference) {
        this.f68535c = e0Var;
        this.f68533a = e0Var2;
        this.f68534b = atomicReference;
    }

    public static <T> io.reactivex.observables.a<T> q8(io.reactivex.e0<T> e0Var) {
        AtomicReference atomicReference = new AtomicReference();
        return io.reactivex.plugins.a.U(new ObservablePublish(new b(atomicReference), e0Var, atomicReference));
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super T> g0Var) {
        this.f68535c.a(g0Var);
    }

    @Override // io.reactivex.observables.a
    public void j8(w2.g<? super io.reactivex.disposables.b> gVar) {
        a<T> aVar;
        while (true) {
            aVar = this.f68534b.get();
            if (aVar != null && !aVar.isDisposed()) {
                break;
            }
            a<T> aVar2 = new a<>(this.f68534b);
            if (this.f68534b.compareAndSet(aVar, aVar2)) {
                aVar = aVar2;
                break;
            }
        }
        boolean z3 = true;
        z3 = (aVar.f68541c.get() || !aVar.f68541c.compareAndSet(false, true)) ? false : false;
        try {
            gVar.accept(aVar);
            if (z3) {
                this.f68533a.a(aVar);
            }
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            throw ExceptionHelper.e(th);
        }
    }

    @Override // x2.g
    public io.reactivex.e0<T> source() {
        return this.f68533a;
    }
}
