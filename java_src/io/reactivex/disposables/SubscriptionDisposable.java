package io.reactivex.disposables;

import io.reactivex.annotations.NonNull;
/* loaded from: classes5.dex */
final class SubscriptionDisposable extends ReferenceDisposable<l3.d> {
    private static final long serialVersionUID = -707001650852963139L;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SubscriptionDisposable(l3.d dVar) {
        super(dVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.reactivex.disposables.ReferenceDisposable
    /* renamed from: b */
    public void a(@NonNull l3.d dVar) {
        dVar.cancel();
    }
}
