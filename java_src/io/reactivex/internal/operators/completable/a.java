package io.reactivex.internal.operators.completable;

import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: CompletableAmb.java */
/* loaded from: classes5.dex */
public final class a extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    private final io.reactivex.g[] f66045a;

    /* renamed from: b  reason: collision with root package name */
    private final Iterable<? extends io.reactivex.g> f66046b;

    /* compiled from: CompletableAmb.java */
    /* renamed from: io.reactivex.internal.operators.completable.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    static final class C0451a implements io.reactivex.d {

        /* renamed from: a  reason: collision with root package name */
        private final AtomicBoolean f66047a;

        /* renamed from: b  reason: collision with root package name */
        private final io.reactivex.disposables.a f66048b;

        /* renamed from: c  reason: collision with root package name */
        private final io.reactivex.d f66049c;

        C0451a(AtomicBoolean atomicBoolean, io.reactivex.disposables.a aVar, io.reactivex.d dVar) {
            this.f66047a = atomicBoolean;
            this.f66048b = aVar;
            this.f66049c = dVar;
        }

        @Override // io.reactivex.d
        public void onComplete() {
            if (this.f66047a.compareAndSet(false, true)) {
                this.f66048b.dispose();
                this.f66049c.onComplete();
            }
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            if (this.f66047a.compareAndSet(false, true)) {
                this.f66048b.dispose();
                this.f66049c.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            this.f66048b.b(bVar);
        }
    }

    public a(io.reactivex.g[] gVarArr, Iterable<? extends io.reactivex.g> iterable) {
        this.f66045a = gVarArr;
        this.f66046b = iterable;
    }

    @Override // io.reactivex.a
    public void F0(io.reactivex.d dVar) {
        int length;
        io.reactivex.g[] gVarArr = this.f66045a;
        if (gVarArr == null) {
            gVarArr = new io.reactivex.g[8];
            try {
                length = 0;
                for (io.reactivex.g gVar : this.f66046b) {
                    if (gVar == null) {
                        EmptyDisposable.error(new NullPointerException("One of the sources is null"), dVar);
                        return;
                    }
                    if (length == gVarArr.length) {
                        io.reactivex.g[] gVarArr2 = new io.reactivex.g[(length >> 2) + length];
                        System.arraycopy(gVarArr, 0, gVarArr2, 0, length);
                        gVarArr = gVarArr2;
                    }
                    int i2 = length + 1;
                    gVarArr[length] = gVar;
                    length = i2;
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                EmptyDisposable.error(th, dVar);
                return;
            }
        } else {
            length = gVarArr.length;
        }
        io.reactivex.disposables.a aVar = new io.reactivex.disposables.a();
        dVar.onSubscribe(aVar);
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        C0451a c0451a = new C0451a(atomicBoolean, aVar, dVar);
        for (int i4 = 0; i4 < length; i4++) {
            io.reactivex.g gVar2 = gVarArr[i4];
            if (aVar.isDisposed()) {
                return;
            }
            if (gVar2 == null) {
                Throwable nullPointerException = new NullPointerException("One of the sources is null");
                if (atomicBoolean.compareAndSet(false, true)) {
                    aVar.dispose();
                    dVar.onError(nullPointerException);
                    return;
                }
                io.reactivex.plugins.a.Y(nullPointerException);
                return;
            }
            gVar2.a(c0451a);
        }
        if (length == 0) {
            dVar.onComplete();
        }
    }
}
