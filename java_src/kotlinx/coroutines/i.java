package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"kotlinx/coroutines/j", "kotlinx/coroutines/k"}, d2 = {}, k = 4, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class i {
    @NotNull
    public static final <T> z0<T> a(@NotNull t0 t0Var, @NotNull CoroutineContext coroutineContext, @NotNull CoroutineStart coroutineStart, @NotNull Function2<? super t0, ? super Continuation<? super T>, ? extends Object> function2) {
        return k.a(t0Var, coroutineContext, coroutineStart, function2);
    }

    @Nullable
    public static final <T> Object c(@NotNull CoroutineDispatcher coroutineDispatcher, @NotNull Function2<? super t0, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
        return k.c(coroutineDispatcher, function2, continuation);
    }

    @NotNull
    public static final c2 d(@NotNull t0 t0Var, @NotNull CoroutineContext coroutineContext, @NotNull CoroutineStart coroutineStart, @NotNull Function2<? super t0, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return k.e(t0Var, coroutineContext, coroutineStart, function2);
    }

    public static /* synthetic */ c2 e(t0 t0Var, CoroutineContext coroutineContext, CoroutineStart coroutineStart, Function2 function2, int i2, Object obj) {
        return k.f(t0Var, coroutineContext, coroutineStart, function2, i2, obj);
    }

    public static final <T> T f(@NotNull CoroutineContext coroutineContext, @NotNull Function2<? super t0, ? super Continuation<? super T>, ? extends Object> function2) throws InterruptedException {
        return (T) j.a(coroutineContext, function2);
    }

    @Nullable
    public static final <T> Object h(@NotNull CoroutineContext coroutineContext, @NotNull Function2<? super t0, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
        return k.g(coroutineContext, function2, continuation);
    }
}
