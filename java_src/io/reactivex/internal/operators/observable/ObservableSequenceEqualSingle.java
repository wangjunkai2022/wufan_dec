package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.ArrayCompositeDisposable;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes5.dex */
public final class ObservableSequenceEqualSingle<T> extends io.reactivex.i0<Boolean> implements x2.d<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<? extends T> f68700a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.e0<? extends T> f68701b;

    /* renamed from: c  reason: collision with root package name */
    final w2.d<? super T, ? super T> f68702c;

    /* renamed from: d  reason: collision with root package name */
    final int f68703d;

    /* loaded from: classes5.dex */
    static final class EqualCoordinator<T> extends AtomicInteger implements io.reactivex.disposables.b {
        private static final long serialVersionUID = -6178010334400373240L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super Boolean> f68704a;

        /* renamed from: b  reason: collision with root package name */
        final w2.d<? super T, ? super T> f68705b;

        /* renamed from: c  reason: collision with root package name */
        final ArrayCompositeDisposable f68706c;

        /* renamed from: d  reason: collision with root package name */
        final io.reactivex.e0<? extends T> f68707d;

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.e0<? extends T> f68708e;

        /* renamed from: f  reason: collision with root package name */
        final a<T>[] f68709f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f68710g;

        /* renamed from: h  reason: collision with root package name */
        T f68711h;

        /* renamed from: i  reason: collision with root package name */
        T f68712i;

        EqualCoordinator(io.reactivex.l0<? super Boolean> l0Var, int i2, io.reactivex.e0<? extends T> e0Var, io.reactivex.e0<? extends T> e0Var2, w2.d<? super T, ? super T> dVar) {
            this.f68704a = l0Var;
            this.f68707d = e0Var;
            this.f68708e = e0Var2;
            this.f68705b = dVar;
            this.f68709f = r3;
            a<T>[] aVarArr = {new a<>(this, 0, i2), new a<>(this, 1, i2)};
            this.f68706c = new ArrayCompositeDisposable(2);
        }

        void a(io.reactivex.internal.queue.a<T> aVar, io.reactivex.internal.queue.a<T> aVar2) {
            this.f68710g = true;
            aVar.clear();
            aVar2.clear();
        }

        void b() {
            Throwable th;
            Throwable th2;
            if (getAndIncrement() != 0) {
                return;
            }
            a<T>[] aVarArr = this.f68709f;
            a<T> aVar = aVarArr[0];
            io.reactivex.internal.queue.a<T> aVar2 = aVar.f68714b;
            a<T> aVar3 = aVarArr[1];
            io.reactivex.internal.queue.a<T> aVar4 = aVar3.f68714b;
            int i2 = 1;
            while (!this.f68710g) {
                boolean z3 = aVar.f68716d;
                if (z3 && (th2 = aVar.f68717e) != null) {
                    a(aVar2, aVar4);
                    this.f68704a.onError(th2);
                    return;
                }
                boolean z4 = aVar3.f68716d;
                if (z4 && (th = aVar3.f68717e) != null) {
                    a(aVar2, aVar4);
                    this.f68704a.onError(th);
                    return;
                }
                if (this.f68711h == null) {
                    this.f68711h = aVar2.poll();
                }
                boolean z5 = this.f68711h == null;
                if (this.f68712i == null) {
                    this.f68712i = aVar4.poll();
                }
                T t3 = this.f68712i;
                boolean z6 = t3 == null;
                if (z3 && z4 && z5 && z6) {
                    this.f68704a.onSuccess(Boolean.TRUE);
                    return;
                } else if (z3 && z4 && z5 != z6) {
                    a(aVar2, aVar4);
                    this.f68704a.onSuccess(Boolean.FALSE);
                    return;
                } else {
                    if (!z5 && !z6) {
                        try {
                            if (!this.f68705b.a((T) this.f68711h, t3)) {
                                a(aVar2, aVar4);
                                this.f68704a.onSuccess(Boolean.FALSE);
                                return;
                            }
                            this.f68711h = null;
                            this.f68712i = null;
                        } catch (Throwable th3) {
                            io.reactivex.exceptions.a.b(th3);
                            a(aVar2, aVar4);
                            this.f68704a.onError(th3);
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
            return this.f68706c.b(i2, bVar);
        }

        void d() {
            a<T>[] aVarArr = this.f68709f;
            this.f68707d.a(aVarArr[0]);
            this.f68708e.a(aVarArr[1]);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            if (this.f68710g) {
                return;
            }
            this.f68710g = true;
            this.f68706c.dispose();
            if (getAndIncrement() == 0) {
                a<T>[] aVarArr = this.f68709f;
                aVarArr[0].f68714b.clear();
                aVarArr[1].f68714b.clear();
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68710g;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class a<T> implements io.reactivex.g0<T> {

        /* renamed from: a  reason: collision with root package name */
        final EqualCoordinator<T> f68713a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.internal.queue.a<T> f68714b;

        /* renamed from: c  reason: collision with root package name */
        final int f68715c;

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f68716d;

        /* renamed from: e  reason: collision with root package name */
        Throwable f68717e;

        a(EqualCoordinator<T> equalCoordinator, int i2, int i4) {
            this.f68713a = equalCoordinator;
            this.f68715c = i2;
            this.f68714b = new io.reactivex.internal.queue.a<>(i4);
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f68716d = true;
            this.f68713a.b();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f68717e = th;
            this.f68716d = true;
            this.f68713a.b();
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            this.f68714b.offer(t3);
            this.f68713a.b();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            this.f68713a.c(bVar, this.f68715c);
        }
    }

    public ObservableSequenceEqualSingle(io.reactivex.e0<? extends T> e0Var, io.reactivex.e0<? extends T> e0Var2, w2.d<? super T, ? super T> dVar, int i2) {
        this.f68700a = e0Var;
        this.f68701b = e0Var2;
        this.f68702c = dVar;
        this.f68703d = i2;
    }

    @Override // io.reactivex.i0
    public void Y0(io.reactivex.l0<? super Boolean> l0Var) {
        EqualCoordinator equalCoordinator = new EqualCoordinator(l0Var, this.f68703d, this.f68700a, this.f68701b, this.f68702c);
        l0Var.onSubscribe(equalCoordinator);
        equalCoordinator.d();
    }

    @Override // x2.d
    public io.reactivex.z<Boolean> b() {
        return io.reactivex.plugins.a.R(new ObservableSequenceEqual(this.f68700a, this.f68701b, this.f68702c, this.f68703d));
    }
}
