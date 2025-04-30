package io.reactivex.disposables;

import io.reactivex.annotations.NonNull;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.Functions;
import java.util.concurrent.Future;
/* compiled from: Disposables.java */
/* loaded from: classes5.dex */
public final class c {
    private c() {
        throw new IllegalStateException("No instances!");
    }

    @NonNull
    public static b a() {
        return EmptyDisposable.INSTANCE;
    }

    @NonNull
    public static b b() {
        return f(Functions.f65823b);
    }

    @NonNull
    public static b c(@NonNull w2.a aVar) {
        io.reactivex.internal.functions.a.g(aVar, "run is null");
        return new ActionDisposable(aVar);
    }

    @NonNull
    public static b d(@NonNull Future<?> future) {
        io.reactivex.internal.functions.a.g(future, "future is null");
        return e(future, true);
    }

    @NonNull
    public static b e(@NonNull Future<?> future, boolean z3) {
        io.reactivex.internal.functions.a.g(future, "future is null");
        return new FutureDisposable(future, z3);
    }

    @NonNull
    public static b f(@NonNull Runnable runnable) {
        io.reactivex.internal.functions.a.g(runnable, "run is null");
        return new RunnableDisposable(runnable);
    }

    @NonNull
    public static b g(@NonNull l3.d dVar) {
        io.reactivex.internal.functions.a.g(dVar, "subscription is null");
        return new SubscriptionDisposable(dVar);
    }
}
