package io.reactivex.internal.operators.completable;

import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: CompletableMergeDelayErrorArray.java */
/* loaded from: classes5.dex */
public final class r extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.g[] f66083a;

    /* compiled from: CompletableMergeDelayErrorArray.java */
    /* loaded from: classes5.dex */
    static final class a implements io.reactivex.d {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f66084a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.disposables.a f66085b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicThrowable f66086c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicInteger f66087d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(io.reactivex.d dVar, io.reactivex.disposables.a aVar, AtomicThrowable atomicThrowable, AtomicInteger atomicInteger) {
            this.f66084a = dVar;
            this.f66085b = aVar;
            this.f66086c = atomicThrowable;
            this.f66087d = atomicInteger;
        }

        void a() {
            if (this.f66087d.decrementAndGet() == 0) {
                Throwable c4 = this.f66086c.c();
                if (c4 == null) {
                    this.f66084a.onComplete();
                } else {
                    this.f66084a.onError(c4);
                }
            }
        }

        @Override // io.reactivex.d
        public void onComplete() {
            a();
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            if (this.f66086c.a(th)) {
                a();
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            this.f66085b.b(bVar);
        }
    }

    public r(io.reactivex.g[] gVarArr) {
        this.f66083a = gVarArr;
    }

    @Override // io.reactivex.a
    public void F0(io.reactivex.d dVar) {
        io.reactivex.g[] gVarArr;
        io.reactivex.disposables.a aVar = new io.reactivex.disposables.a();
        AtomicInteger atomicInteger = new AtomicInteger(this.f66083a.length + 1);
        AtomicThrowable atomicThrowable = new AtomicThrowable();
        dVar.onSubscribe(aVar);
        for (io.reactivex.g gVar : this.f66083a) {
            if (aVar.isDisposed()) {
                return;
            }
            if (gVar == null) {
                atomicThrowable.a(new NullPointerException("A completable source is null"));
                atomicInteger.decrementAndGet();
            } else {
                gVar.a(new a(dVar, aVar, atomicThrowable, atomicInteger));
            }
        }
        if (atomicInteger.decrementAndGet() == 0) {
            Throwable c4 = atomicThrowable.c();
            if (c4 == null) {
                dVar.onComplete();
            } else {
                dVar.onError(c4);
            }
        }
    }
}
