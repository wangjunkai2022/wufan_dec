package io.reactivex;

import io.reactivex.annotations.NonNull;
/* compiled from: Emitter.java */
/* loaded from: classes5.dex */
public interface i<T> {
    void onComplete();

    void onError(@NonNull Throwable th);

    void onNext(@NonNull T t3);
}
