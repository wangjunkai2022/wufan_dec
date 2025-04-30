package io.reactivex.internal.operators.completable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class CompletableResumeNext extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.g f66017a;

    /* renamed from: b  reason: collision with root package name */
    final w2.o<? super Throwable, ? extends io.reactivex.g> f66018b;

    /* loaded from: classes5.dex */
    static final class ResumeNextObserver extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.d, io.reactivex.disposables.b {
        private static final long serialVersionUID = 5018523762564524046L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f66019a;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super Throwable, ? extends io.reactivex.g> f66020b;

        /* renamed from: c  reason: collision with root package name */
        boolean f66021c;

        ResumeNextObserver(io.reactivex.d dVar, w2.o<? super Throwable, ? extends io.reactivex.g> oVar) {
            this.f66019a = dVar;
            this.f66020b = oVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.d
        public void onComplete() {
            this.f66019a.onComplete();
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            if (this.f66021c) {
                this.f66019a.onError(th);
                return;
            }
            this.f66021c = true;
            try {
                ((io.reactivex.g) io.reactivex.internal.functions.a.g(this.f66020b.apply(th), "The errorMapper returned a null CompletableSource")).a(this);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f66019a.onError(new CompositeException(th, th2));
            }
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.replace(this, bVar);
        }
    }

    public CompletableResumeNext(io.reactivex.g gVar, w2.o<? super Throwable, ? extends io.reactivex.g> oVar) {
        this.f66017a = gVar;
        this.f66018b = oVar;
    }

    @Override // io.reactivex.a
    protected void F0(io.reactivex.d dVar) {
        ResumeNextObserver resumeNextObserver = new ResumeNextObserver(dVar, this.f66018b);
        dVar.onSubscribe(resumeNextObserver);
        this.f66017a.a(resumeNextObserver);
    }
}
