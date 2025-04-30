package io.reactivex.internal.disposables;

import java.util.concurrent.atomic.AtomicReferenceArray;
/* loaded from: classes5.dex */
public final class ArrayCompositeDisposable extends AtomicReferenceArray<io.reactivex.disposables.b> implements io.reactivex.disposables.b {
    private static final long serialVersionUID = 2746389416410565408L;

    public ArrayCompositeDisposable(int i2) {
        super(i2);
    }

    public io.reactivex.disposables.b a(int i2, io.reactivex.disposables.b bVar) {
        io.reactivex.disposables.b bVar2;
        do {
            bVar2 = get(i2);
            if (bVar2 == DisposableHelper.DISPOSED) {
                bVar.dispose();
                return null;
            }
        } while (!compareAndSet(i2, bVar2, bVar));
        return bVar2;
    }

    public boolean b(int i2, io.reactivex.disposables.b bVar) {
        io.reactivex.disposables.b bVar2;
        do {
            bVar2 = get(i2);
            if (bVar2 == DisposableHelper.DISPOSED) {
                bVar.dispose();
                return false;
            }
        } while (!compareAndSet(i2, bVar2, bVar));
        if (bVar2 != null) {
            bVar2.dispose();
            return true;
        }
        return true;
    }

    @Override // io.reactivex.disposables.b
    public void dispose() {
        io.reactivex.disposables.b andSet;
        if (get(0) != DisposableHelper.DISPOSED) {
            int length = length();
            for (int i2 = 0; i2 < length; i2++) {
                io.reactivex.disposables.b bVar = get(i2);
                DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
                if (bVar != disposableHelper && (andSet = getAndSet(i2, disposableHelper)) != disposableHelper && andSet != null) {
                    andSet.dispose();
                }
            }
        }
    }

    @Override // io.reactivex.disposables.b
    public boolean isDisposed() {
        return get(0) == DisposableHelper.DISPOSED;
    }
}
