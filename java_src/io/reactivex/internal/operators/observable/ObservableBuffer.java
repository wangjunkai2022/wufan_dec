package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes5.dex */
public final class ObservableBuffer<T, U extends Collection<? super T>> extends io.reactivex.internal.operators.observable.a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final int f68149b;

    /* renamed from: c  reason: collision with root package name */
    final int f68150c;

    /* renamed from: d  reason: collision with root package name */
    final Callable<U> f68151d;

    /* loaded from: classes5.dex */
    static final class BufferSkipObserver<T, U extends Collection<? super T>> extends AtomicBoolean implements io.reactivex.g0<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = -8223395059921494546L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super U> f68152a;

        /* renamed from: b  reason: collision with root package name */
        final int f68153b;

        /* renamed from: c  reason: collision with root package name */
        final int f68154c;

        /* renamed from: d  reason: collision with root package name */
        final Callable<U> f68155d;

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.disposables.b f68156e;

        /* renamed from: f  reason: collision with root package name */
        final ArrayDeque<U> f68157f = new ArrayDeque<>();

        /* renamed from: g  reason: collision with root package name */
        long f68158g;

        BufferSkipObserver(io.reactivex.g0<? super U> g0Var, int i2, int i4, Callable<U> callable) {
            this.f68152a = g0Var;
            this.f68153b = i2;
            this.f68154c = i4;
            this.f68155d = callable;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f68156e.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68156e.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            while (!this.f68157f.isEmpty()) {
                this.f68152a.onNext(this.f68157f.poll());
            }
            this.f68152a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f68157f.clear();
            this.f68152a.onError(th);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.g0
        public void onNext(T t3) {
            long j4 = this.f68158g;
            this.f68158g = 1 + j4;
            if (j4 % this.f68154c == 0) {
                try {
                    this.f68157f.offer((Collection) io.reactivex.internal.functions.a.g(this.f68155d.call(), "The bufferSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources."));
                } catch (Throwable th) {
                    this.f68157f.clear();
                    this.f68156e.dispose();
                    this.f68152a.onError(th);
                    return;
                }
            }
            Iterator<U> it2 = this.f68157f.iterator();
            while (it2.hasNext()) {
                U next = it2.next();
                next.add(t3);
                if (this.f68153b <= next.size()) {
                    it2.remove();
                    this.f68152a.onNext(next);
                }
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f68156e, bVar)) {
                this.f68156e = bVar;
                this.f68152a.onSubscribe(this);
            }
        }
    }

    /* loaded from: classes5.dex */
    static final class a<T, U extends Collection<? super T>> implements io.reactivex.g0<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super U> f68159a;

        /* renamed from: b  reason: collision with root package name */
        final int f68160b;

        /* renamed from: c  reason: collision with root package name */
        final Callable<U> f68161c;

        /* renamed from: d  reason: collision with root package name */
        U f68162d;

        /* renamed from: e  reason: collision with root package name */
        int f68163e;

        /* renamed from: f  reason: collision with root package name */
        io.reactivex.disposables.b f68164f;

        a(io.reactivex.g0<? super U> g0Var, int i2, Callable<U> callable) {
            this.f68159a = g0Var;
            this.f68160b = i2;
            this.f68161c = callable;
        }

        boolean a() {
            try {
                this.f68162d = (U) io.reactivex.internal.functions.a.g(this.f68161c.call(), "Empty buffer supplied");
                return true;
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f68162d = null;
                io.reactivex.disposables.b bVar = this.f68164f;
                if (bVar == null) {
                    EmptyDisposable.error(th, this.f68159a);
                    return false;
                }
                bVar.dispose();
                this.f68159a.onError(th);
                return false;
            }
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f68164f.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68164f.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            U u3 = this.f68162d;
            if (u3 != null) {
                this.f68162d = null;
                if (!u3.isEmpty()) {
                    this.f68159a.onNext(u3);
                }
                this.f68159a.onComplete();
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f68162d = null;
            this.f68159a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            U u3 = this.f68162d;
            if (u3 != null) {
                u3.add(t3);
                int i2 = this.f68163e + 1;
                this.f68163e = i2;
                if (i2 >= this.f68160b) {
                    this.f68159a.onNext(u3);
                    this.f68163e = 0;
                    a();
                }
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f68164f, bVar)) {
                this.f68164f = bVar;
                this.f68159a.onSubscribe(this);
            }
        }
    }

    public ObservableBuffer(io.reactivex.e0<T> e0Var, int i2, int i4, Callable<U> callable) {
        super(e0Var);
        this.f68149b = i2;
        this.f68150c = i4;
        this.f68151d = callable;
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super U> g0Var) {
        int i2 = this.f68150c;
        int i4 = this.f68149b;
        if (i2 == i4) {
            a aVar = new a(g0Var, i4, this.f68151d);
            if (aVar.a()) {
                this.f68961a.a(aVar);
                return;
            }
            return;
        }
        this.f68961a.a(new BufferSkipObserver(g0Var, this.f68149b, this.f68150c, this.f68151d));
    }
}
