package io.reactivex.internal.operators.maybe;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
/* compiled from: MaybeDoOnEvent.java */
/* loaded from: classes5.dex */
public final class g<T> extends io.reactivex.internal.operators.maybe.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final w2.b<? super T, ? super Throwable> f67855b;

    /* compiled from: MaybeDoOnEvent.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.t<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f67856a;

        /* renamed from: b  reason: collision with root package name */
        final w2.b<? super T, ? super Throwable> f67857b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.b f67858c;

        a(io.reactivex.t<? super T> tVar, w2.b<? super T, ? super Throwable> bVar) {
            this.f67856a = tVar;
            this.f67857b = bVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f67858c.dispose();
            this.f67858c = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f67858c.isDisposed();
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f67858c = DisposableHelper.DISPOSED;
            try {
                this.f67857b.a(null, null);
                this.f67856a.onComplete();
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f67856a.onError(th);
            }
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f67858c = DisposableHelper.DISPOSED;
            try {
                this.f67857b.a(null, th);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                th = new CompositeException(th, th2);
            }
            this.f67856a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f67858c, bVar)) {
                this.f67858c = bVar;
                this.f67856a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            this.f67858c = DisposableHelper.DISPOSED;
            try {
                this.f67857b.a(t3, null);
                this.f67856a.onSuccess(t3);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f67856a.onError(th);
            }
        }
    }

    public g(io.reactivex.w<T> wVar, w2.b<? super T, ? super Throwable> bVar) {
        super(wVar);
        this.f67855b = bVar;
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super T> tVar) {
        this.f67812a.a(new a(tVar, this.f67855b));
    }
}
