package io.reactivex.internal.operators.mixed;

import io.reactivex.d;
import io.reactivex.disposables.b;
import io.reactivex.g;
import io.reactivex.g0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.z;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import w2.o;
import x2.j;
/* loaded from: classes5.dex */
public final class ObservableConcatMapCompletable<T> extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final z<T> f68035a;

    /* renamed from: b  reason: collision with root package name */
    final o<? super T, ? extends g> f68036b;

    /* renamed from: c  reason: collision with root package name */
    final ErrorMode f68037c;

    /* renamed from: d  reason: collision with root package name */
    final int f68038d;

    /* loaded from: classes5.dex */
    static final class ConcatMapCompletableObserver<T> extends AtomicInteger implements g0<T>, b {
        private static final long serialVersionUID = 3610901111000061034L;

        /* renamed from: a  reason: collision with root package name */
        final d f68039a;

        /* renamed from: b  reason: collision with root package name */
        final o<? super T, ? extends g> f68040b;

        /* renamed from: c  reason: collision with root package name */
        final ErrorMode f68041c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f68042d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final ConcatMapInnerObserver f68043e = new ConcatMapInnerObserver(this);

        /* renamed from: f  reason: collision with root package name */
        final int f68044f;

        /* renamed from: g  reason: collision with root package name */
        x2.o<T> f68045g;

        /* renamed from: h  reason: collision with root package name */
        b f68046h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f68047i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f68048j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f68049k;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public static final class ConcatMapInnerObserver extends AtomicReference<b> implements d {
            private static final long serialVersionUID = 5638352172918776687L;

            /* renamed from: a  reason: collision with root package name */
            final ConcatMapCompletableObserver<?> f68050a;

            ConcatMapInnerObserver(ConcatMapCompletableObserver<?> concatMapCompletableObserver) {
                this.f68050a = concatMapCompletableObserver;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.d
            public void onComplete() {
                this.f68050a.b();
            }

            @Override // io.reactivex.d
            public void onError(Throwable th) {
                this.f68050a.c(th);
            }

            @Override // io.reactivex.d
            public void onSubscribe(b bVar) {
                DisposableHelper.replace(this, bVar);
            }
        }

        ConcatMapCompletableObserver(d dVar, o<? super T, ? extends g> oVar, ErrorMode errorMode, int i2) {
            this.f68039a = dVar;
            this.f68040b = oVar;
            this.f68041c = errorMode;
            this.f68044f = i2;
        }

        void a() {
            boolean z3;
            if (getAndIncrement() != 0) {
                return;
            }
            AtomicThrowable atomicThrowable = this.f68042d;
            ErrorMode errorMode = this.f68041c;
            while (!this.f68049k) {
                if (!this.f68047i) {
                    if (errorMode == ErrorMode.BOUNDARY && atomicThrowable.get() != null) {
                        this.f68049k = true;
                        this.f68045g.clear();
                        this.f68039a.onError(atomicThrowable.c());
                        return;
                    }
                    boolean z4 = this.f68048j;
                    g gVar = null;
                    try {
                        T poll = this.f68045g.poll();
                        if (poll != null) {
                            gVar = (g) io.reactivex.internal.functions.a.g(this.f68040b.apply(poll), "The mapper returned a null CompletableSource");
                            z3 = false;
                        } else {
                            z3 = true;
                        }
                        if (z4 && z3) {
                            this.f68049k = true;
                            Throwable c4 = atomicThrowable.c();
                            if (c4 != null) {
                                this.f68039a.onError(c4);
                                return;
                            } else {
                                this.f68039a.onComplete();
                                return;
                            }
                        } else if (!z3) {
                            this.f68047i = true;
                            gVar.a(this.f68043e);
                        }
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        this.f68049k = true;
                        this.f68045g.clear();
                        this.f68046h.dispose();
                        atomicThrowable.a(th);
                        this.f68039a.onError(atomicThrowable.c());
                        return;
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
            this.f68045g.clear();
        }

        void b() {
            this.f68047i = false;
            a();
        }

        void c(Throwable th) {
            if (this.f68042d.a(th)) {
                if (this.f68041c == ErrorMode.IMMEDIATE) {
                    this.f68049k = true;
                    this.f68046h.dispose();
                    Throwable c4 = this.f68042d.c();
                    if (c4 != ExceptionHelper.f70084a) {
                        this.f68039a.onError(c4);
                    }
                    if (getAndIncrement() == 0) {
                        this.f68045g.clear();
                        return;
                    }
                    return;
                }
                this.f68047i = false;
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f68049k = true;
            this.f68046h.dispose();
            this.f68043e.a();
            if (getAndIncrement() == 0) {
                this.f68045g.clear();
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68049k;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f68048j = true;
            a();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f68042d.a(th)) {
                if (this.f68041c == ErrorMode.IMMEDIATE) {
                    this.f68049k = true;
                    this.f68043e.a();
                    Throwable c4 = this.f68042d.c();
                    if (c4 != ExceptionHelper.f70084a) {
                        this.f68039a.onError(c4);
                    }
                    if (getAndIncrement() == 0) {
                        this.f68045g.clear();
                        return;
                    }
                    return;
                }
                this.f68048j = true;
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (t3 != null) {
                this.f68045g.offer(t3);
            }
            a();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(b bVar) {
            if (DisposableHelper.validate(this.f68046h, bVar)) {
                this.f68046h = bVar;
                if (bVar instanceof j) {
                    j jVar = (j) bVar;
                    int requestFusion = jVar.requestFusion(3);
                    if (requestFusion == 1) {
                        this.f68045g = jVar;
                        this.f68048j = true;
                        this.f68039a.onSubscribe(this);
                        a();
                        return;
                    } else if (requestFusion == 2) {
                        this.f68045g = jVar;
                        this.f68039a.onSubscribe(this);
                        return;
                    }
                }
                this.f68045g = new io.reactivex.internal.queue.a(this.f68044f);
                this.f68039a.onSubscribe(this);
            }
        }
    }

    public ObservableConcatMapCompletable(z<T> zVar, o<? super T, ? extends g> oVar, ErrorMode errorMode, int i2) {
        this.f68035a = zVar;
        this.f68036b = oVar;
        this.f68037c = errorMode;
        this.f68038d = i2;
    }

    @Override // io.reactivex.a
    protected void F0(d dVar) {
        if (a.a(this.f68035a, this.f68036b, dVar)) {
            return;
        }
        this.f68035a.a(new ConcatMapCompletableObserver(dVar, this.f68036b, this.f68037c, this.f68038d));
    }
}
