package io.reactivex;

import io.reactivex.annotations.NonNull;
/* compiled from: CompletableObserver.java */
/* loaded from: classes5.dex */
public interface d {
    void onComplete();

    void onError(@NonNull Throwable th);

    void onSubscribe(@NonNull io.reactivex.disposables.b bVar);
}
