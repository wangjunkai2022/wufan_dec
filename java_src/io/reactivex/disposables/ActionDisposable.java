package io.reactivex.disposables;

import io.reactivex.annotations.NonNull;
import io.reactivex.internal.util.ExceptionHelper;
/* loaded from: classes5.dex */
final class ActionDisposable extends ReferenceDisposable<w2.a> {
    private static final long serialVersionUID = -8219729196779211169L;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ActionDisposable(w2.a aVar) {
        super(aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.reactivex.disposables.ReferenceDisposable
    /* renamed from: b */
    public void a(@NonNull w2.a aVar) {
        try {
            aVar.run();
        } catch (Throwable th) {
            throw ExceptionHelper.e(th);
        }
    }
}
