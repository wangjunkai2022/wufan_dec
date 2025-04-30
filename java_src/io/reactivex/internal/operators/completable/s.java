package io.reactivex.internal.operators.completable;

import io.reactivex.internal.operators.completable.r;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: CompletableMergeDelayErrorIterable.java */
/* loaded from: classes5.dex */
public final class s extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final Iterable<? extends io.reactivex.g> f66088a;

    public s(Iterable<? extends io.reactivex.g> iterable) {
        this.f66088a = iterable;
    }

    @Override // io.reactivex.a
    public void F0(io.reactivex.d dVar) {
        io.reactivex.disposables.a aVar = new io.reactivex.disposables.a();
        dVar.onSubscribe(aVar);
        try {
            Iterator it2 = (Iterator) io.reactivex.internal.functions.a.g(this.f66088a.iterator(), "The source iterator returned is null");
            AtomicInteger atomicInteger = new AtomicInteger(1);
            AtomicThrowable atomicThrowable = new AtomicThrowable();
            while (!aVar.isDisposed()) {
                try {
                    if (it2.hasNext()) {
                        if (aVar.isDisposed()) {
                            return;
                        }
                        try {
                            io.reactivex.g gVar = (io.reactivex.g) io.reactivex.internal.functions.a.g(it2.next(), "The iterator returned a null CompletableSource");
                            if (aVar.isDisposed()) {
                                return;
                            }
                            atomicInteger.getAndIncrement();
                            gVar.a(new r.a(dVar, aVar, atomicThrowable, atomicInteger));
                        } catch (Throwable th) {
                            io.reactivex.exceptions.a.b(th);
                            atomicThrowable.a(th);
                        }
                    }
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    atomicThrowable.a(th2);
                }
                if (atomicInteger.decrementAndGet() == 0) {
                    Throwable c4 = atomicThrowable.c();
                    if (c4 == null) {
                        dVar.onComplete();
                        return;
                    } else {
                        dVar.onError(c4);
                        return;
                    }
                }
                return;
            }
        } catch (Throwable th3) {
            io.reactivex.exceptions.a.b(th3);
            dVar.onError(th3);
        }
    }
}
