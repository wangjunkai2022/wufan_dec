package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ObservableZip<T, R> extends io.reactivex.z<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<? extends T>[] f68943a;

    /* renamed from: b  reason: collision with root package name */
    final Iterable<? extends io.reactivex.e0<? extends T>> f68944b;

    /* renamed from: c  reason: collision with root package name */
    final w2.o<? super Object[], ? extends R> f68945c;

    /* renamed from: d  reason: collision with root package name */
    final int f68946d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f68947e;

    /* loaded from: classes5.dex */
    static final class ZipCoordinator<T, R> extends AtomicInteger implements io.reactivex.disposables.b {
        private static final long serialVersionUID = 2983708048395377667L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super R> f68948a;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super Object[], ? extends R> f68949b;

        /* renamed from: c  reason: collision with root package name */
        final a<T, R>[] f68950c;

        /* renamed from: d  reason: collision with root package name */
        final T[] f68951d;

        /* renamed from: e  reason: collision with root package name */
        final boolean f68952e;

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f68953f;

        ZipCoordinator(io.reactivex.g0<? super R> g0Var, w2.o<? super Object[], ? extends R> oVar, int i2, boolean z3) {
            this.f68948a = g0Var;
            this.f68949b = oVar;
            this.f68950c = new a[i2];
            this.f68951d = (T[]) new Object[i2];
            this.f68952e = z3;
        }

        void a() {
            clear();
            b();
        }

        void b() {
            for (a<T, R> aVar : this.f68950c) {
                aVar.a();
            }
        }

        boolean c(boolean z3, boolean z4, io.reactivex.g0<? super R> g0Var, boolean z5, a<?, ?> aVar) {
            if (this.f68953f) {
                a();
                return true;
            } else if (z3) {
                if (z5) {
                    if (z4) {
                        Throwable th = aVar.f68957d;
                        a();
                        if (th != null) {
                            g0Var.onError(th);
                        } else {
                            g0Var.onComplete();
                        }
                        return true;
                    }
                    return false;
                }
                Throwable th2 = aVar.f68957d;
                if (th2 != null) {
                    a();
                    g0Var.onError(th2);
                    return true;
                } else if (z4) {
                    a();
                    g0Var.onComplete();
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }

        void clear() {
            for (a<T, R> aVar : this.f68950c) {
                aVar.f68955b.clear();
            }
        }

        public void d() {
            Throwable th;
            if (getAndIncrement() != 0) {
                return;
            }
            a<T, R>[] aVarArr = this.f68950c;
            io.reactivex.g0<? super R> g0Var = this.f68948a;
            T[] tArr = this.f68951d;
            boolean z3 = this.f68952e;
            int i2 = 1;
            while (true) {
                int i4 = 0;
                int i5 = 0;
                for (a<T, R> aVar : aVarArr) {
                    if (tArr[i5] == null) {
                        boolean z4 = aVar.f68956c;
                        T poll = aVar.f68955b.poll();
                        boolean z5 = poll == null;
                        if (c(z4, z5, g0Var, z3, aVar)) {
                            return;
                        }
                        if (z5) {
                            i4++;
                        } else {
                            tArr[i5] = poll;
                        }
                    } else if (aVar.f68956c && !z3 && (th = aVar.f68957d) != null) {
                        a();
                        g0Var.onError(th);
                        return;
                    }
                    i5++;
                }
                if (i4 != 0) {
                    i2 = addAndGet(-i2);
                    if (i2 == 0) {
                        return;
                    }
                } else {
                    try {
                        g0Var.onNext((Object) io.reactivex.internal.functions.a.g(this.f68949b.apply(tArr.clone()), "The zipper returned a null value"));
                        Arrays.fill(tArr, (Object) null);
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        a();
                        g0Var.onError(th2);
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            if (this.f68953f) {
                return;
            }
            this.f68953f = true;
            b();
            if (getAndIncrement() == 0) {
                clear();
            }
        }

        public void e(io.reactivex.e0<? extends T>[] e0VarArr, int i2) {
            a<T, R>[] aVarArr = this.f68950c;
            int length = aVarArr.length;
            for (int i4 = 0; i4 < length; i4++) {
                aVarArr[i4] = new a<>(this, i2);
            }
            lazySet(0);
            this.f68948a.onSubscribe(this);
            for (int i5 = 0; i5 < length && !this.f68953f; i5++) {
                e0VarArr[i5].a(aVarArr[i5]);
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68953f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class a<T, R> implements io.reactivex.g0<T> {

        /* renamed from: a  reason: collision with root package name */
        final ZipCoordinator<T, R> f68954a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.internal.queue.a<T> f68955b;

        /* renamed from: c  reason: collision with root package name */
        volatile boolean f68956c;

        /* renamed from: d  reason: collision with root package name */
        Throwable f68957d;

        /* renamed from: e  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.b> f68958e = new AtomicReference<>();

        a(ZipCoordinator<T, R> zipCoordinator, int i2) {
            this.f68954a = zipCoordinator;
            this.f68955b = new io.reactivex.internal.queue.a<>(i2);
        }

        public void a() {
            DisposableHelper.dispose(this.f68958e);
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f68956c = true;
            this.f68954a.d();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f68957d = th;
            this.f68956c = true;
            this.f68954a.d();
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            this.f68955b.offer(t3);
            this.f68954a.d();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.setOnce(this.f68958e, bVar);
        }
    }

    public ObservableZip(io.reactivex.e0<? extends T>[] e0VarArr, Iterable<? extends io.reactivex.e0<? extends T>> iterable, w2.o<? super Object[], ? extends R> oVar, int i2, boolean z3) {
        this.f68943a = e0VarArr;
        this.f68944b = iterable;
        this.f68945c = oVar;
        this.f68946d = i2;
        this.f68947e = z3;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super R> g0Var) {
        int length;
        io.reactivex.e0<? extends T>[] e0VarArr = this.f68943a;
        if (e0VarArr == null) {
            e0VarArr = new io.reactivex.z[8];
            length = 0;
            for (io.reactivex.e0<? extends T> e0Var : this.f68944b) {
                if (length == e0VarArr.length) {
                    io.reactivex.e0<? extends T>[] e0VarArr2 = new io.reactivex.e0[(length >> 2) + length];
                    System.arraycopy(e0VarArr, 0, e0VarArr2, 0, length);
                    e0VarArr = e0VarArr2;
                }
                e0VarArr[length] = e0Var;
                length++;
            }
        } else {
            length = e0VarArr.length;
        }
        if (length == 0) {
            EmptyDisposable.complete(g0Var);
        } else {
            new ZipCoordinator(g0Var, this.f68945c, length, this.f68947e).e(e0VarArr, this.f68946d);
        }
    }
}
