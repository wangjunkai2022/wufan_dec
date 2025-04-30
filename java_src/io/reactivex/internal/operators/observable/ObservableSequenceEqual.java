package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.ArrayCompositeDisposable;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes5.dex */
public final class ObservableSequenceEqual<T> extends io.reactivex.z<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<? extends T> f68682a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.e0<? extends T> f68683b;

    /* renamed from: c  reason: collision with root package name */
    final w2.d<? super T, ? super T> f68684c;

    /* renamed from: d  reason: collision with root package name */
    final int f68685d;

    /* loaded from: classes5.dex */
    static final class EqualCoordinator<T> extends AtomicInteger implements io.reactivex.disposables.b {
        private static final long serialVersionUID = -6178010334400373240L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super Boolean> f68686a;

        /* renamed from: b  reason: collision with root package name */
        final w2.d<? super T, ? super T> f68687b;

        /* renamed from: c  reason: collision with root package name */
        final ArrayCompositeDisposable f68688c;

        /* renamed from: d  reason: collision with root package name */
        final io.reactivex.e0<? extends T> f68689d;

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.e0<? extends T> f68690e;

        /* renamed from: f  reason: collision with root package name */
        final a<T>[] f68691f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f68692g;

        /* renamed from: h  reason: collision with root package name */
        T f68693h;

        /* renamed from: i  reason: collision with root package name */
        T f68694i;

        EqualCoordinator(io.reactivex.g0<? super Boolean> g0Var, int i2, io.reactivex.e0<? extends T> e0Var, io.reactivex.e0<? extends T> e0Var2, w2.d<? super T, ? super T> dVar) {
            this.f68686a = g0Var;
            this.f68689d = e0Var;
            this.f68690e = e0Var2;
            this.f68687b = dVar;
            this.f68691f = r3;
            a<T>[] aVarArr = {new a<>(this, 0, i2), new a<>(this, 1, i2)};
            this.f68688c = new ArrayCompositeDisposable(2);
        }

        void a(io.reactivex.internal.queue.a<T> aVar, io.reactivex.internal.queue.a<T> aVar2) {
            this.f68692g = true;
            aVar.clear();
            aVar2.clear();
        }

        void b() {
            Throwable th;
            Throwable th2;
            if (getAndIncrement() != 0) {
                return;
            }
            a<T>[] aVarArr = this.f68691f;
            a<T> aVar = aVarArr[0];
            io.reactivex.internal.queue.a<T> aVar2 = aVar.f68696b;
            a<T> aVar3 = aVarArr[1];
            io.reactivex.internal.queue.a<T> aVar4 = aVar3.f68696b;
            int i2 = 1;
            while (!this.f68692g) {
                boolean z3 = aVar.f68698d;
                if (z3 && (th2 = aVar.f68699e) != null) {
                    a(aVar2, aVar4);
                    this.f68686a.onError(th2);
                    return;
                }
                boolean z4 = aVar3.f68698d;
                if (z4 && (th = aVar3.f68699e) != null) {
                    a(aVar2, aVar4);
                    this.f68686a.onError(th);
                    return;
                }
                if (this.f68693h == null) {
                    this.f68693h = aVar2.poll();
                }
                boolean z5 = this.f68693h == null;
                if (this.f68694i == null) {
                    this.f68694i = aVar4.poll();
                }
                T t3 = this.f68694i;
                boolean z6 = t3 == null;
                if (z3 && z4 && z5 && z6) {
                    this.f68686a.onNext(Boolean.TRUE);
                    this.f68686a.onComplete();
                    return;
                } else if (z3 && z4 && z5 != z6) {
                    a(aVar2, aVar4);
                    this.f68686a.onNext(Boolean.FALSE);
                    this.f68686a.onComplete();
                    return;
                } else {
                    if (!z5 && !z6) {
                        try {
                            if (!this.f68687b.a((T) this.f68693h, t3)) {
                                a(aVar2, aVar4);
                                this.f68686a.onNext(Boolean.FALSE);
                                this.f68686a.onComplete();
                                return;
                            }
                            this.f68693h = null;
                            this.f68694i = null;
                        } catch (Throwable th3) {
                            io.reactivex.exceptions.a.b(th3);
                            a(aVar2, aVar4);
                            this.f68686a.onError(th3);
                            return;
                        }
                    }
                    if (z5 || z6) {
                        i2 = addAndGet(-i2);
                        if (i2 == 0) {
                            return;
                        }
                    }
                }
            }
            aVar2.clear();
            aVar4.clear();
        }

        boolean c(io.reactivex.disposables.b bVar, int i2) {
            return this.f68688c.b(i2, bVar);
        }

        void d() {
            a<T>[] aVarArr = this.f68691f;
            this.f68689d.a(aVarArr[0]);
            this.f68690e.a(aVarArr[1]);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            if (this.f68692g) {
                return;
            }
            this.f68692g = true;
            this.f68688c.dispose();
            if (getAndIncrement() == 0) {
                a<T>[] aVarArr = this.f68691f;
                aVarArr[0].f68696b.clear();
                aVarArr[1].f68696b.clear();
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68692g;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class a<T> implements io.reactivex.g0<T> {

        /* renamed from: a  reason: collision with root package name */
        final EqualCoordinator<T> f68695a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.internal.queue.a<T> f68696b;

        /* renamed from: c  reason: collision with root package name */
        final int f68697c;

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f68698d;

        /* renamed from: e  reason: collision with root package name */
        Throwable f68699e;

        a(EqualCoordinator<T> equalCoordinator, int i2, int i4) {
            this.f68695a = equalCoordinator;
            this.f68697c = i2;
            this.f68696b = new io.reactivex.internal.queue.a<>(i4);
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f68698d = true;
            this.f68695a.b();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f68699e = th;
            this.f68698d = true;
            this.f68695a.b();
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            this.f68696b.offer(t3);
            this.f68695a.b();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            this.f68695a.c(bVar, this.f68697c);
        }
    }

    public ObservableSequenceEqual(io.reactivex.e0<? extends T> e0Var, io.reactivex.e0<? extends T> e0Var2, w2.d<? super T, ? super T> dVar, int i2) {
        this.f68682a = e0Var;
        this.f68683b = e0Var2;
        this.f68684c = dVar;
        this.f68685d = i2;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super Boolean> g0Var) {
        EqualCoordinator equalCoordinator = new EqualCoordinator(g0Var, this.f68685d, this.f68682a, this.f68683b, this.f68684c);
        g0Var.onSubscribe(equalCoordinator);
        equalCoordinator.d();
    }
}
