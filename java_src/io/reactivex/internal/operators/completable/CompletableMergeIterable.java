package io.reactivex.internal.operators.completable;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes5.dex */
public final class CompletableMergeIterable extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final Iterable<? extends io.reactivex.g> f66008a;

    /* loaded from: classes5.dex */
    static final class MergeCompletableObserver extends AtomicBoolean implements io.reactivex.d {
        private static final long serialVersionUID = -7730517613164279224L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.disposables.a f66009a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.d f66010b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicInteger f66011c;

        MergeCompletableObserver(io.reactivex.d dVar, io.reactivex.disposables.a aVar, AtomicInteger atomicInteger) {
            this.f66010b = dVar;
            this.f66009a = aVar;
            this.f66011c = atomicInteger;
        }

        @Override // io.reactivex.d
        public void onComplete() {
            if (this.f66011c.decrementAndGet() == 0 && compareAndSet(false, true)) {
                this.f66010b.onComplete();
            }
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            this.f66009a.dispose();
            if (compareAndSet(false, true)) {
                this.f66010b.onError(th);
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            this.f66009a.b(bVar);
        }
    }

    public CompletableMergeIterable(Iterable<? extends io.reactivex.g> iterable) {
        this.f66008a = iterable;
    }

    @Override // io.reactivex.a
    public void F0(io.reactivex.d dVar) {
        io.reactivex.disposables.a aVar = new io.reactivex.disposables.a();
        dVar.onSubscribe(aVar);
        try {
            Iterator it2 = (Iterator) io.reactivex.internal.functions.a.g(this.f66008a.iterator(), "The source iterator returned is null");
            AtomicInteger atomicInteger = new AtomicInteger(1);
            MergeCompletableObserver mergeCompletableObserver = new MergeCompletableObserver(dVar, aVar, atomicInteger);
            while (!aVar.isDisposed()) {
                try {
                    if (!it2.hasNext()) {
                        mergeCompletableObserver.onComplete();
                        return;
                    } else if (aVar.isDisposed()) {
                        return;
                    } else {
                        try {
                            io.reactivex.g gVar = (io.reactivex.g) io.reactivex.internal.functions.a.g(it2.next(), "The iterator returned a null CompletableSource");
                            if (aVar.isDisposed()) {
                                return;
                            }
                            atomicInteger.getAndIncrement();
                            gVar.a(mergeCompletableObserver);
                        } catch (Throwable th) {
                            io.reactivex.exceptions.a.b(th);
                            aVar.dispose();
                            mergeCompletableObserver.onError(th);
                            return;
                        }
                    }
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    aVar.dispose();
                    mergeCompletableObserver.onError(th2);
                    return;
                }
            }
        } catch (Throwable th3) {
            io.reactivex.exceptions.a.b(th3);
            dVar.onError(th3);
        }
    }
}
