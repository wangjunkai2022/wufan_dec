package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import java.util.concurrent.Future;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"kotlinx/coroutines/g2", "kotlinx/coroutines/h2"}, d2 = {}, k = 4, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class f2 {
    public static final void A(@NotNull CoroutineContext coroutineContext) {
        h2.y(coroutineContext);
    }

    public static final void B(@NotNull c2 c2Var) {
        h2.z(c2Var);
    }

    @NotNull
    public static final c2 C(@NotNull CoroutineContext coroutineContext) {
        return h2.A(coroutineContext);
    }

    public static final boolean D(@NotNull CoroutineContext coroutineContext) {
        return h2.B(coroutineContext);
    }

    @InternalCoroutinesApi
    @NotNull
    public static final j1 a(@NotNull Function0<Unit> function0) {
        return h2.a(function0);
    }

    @NotNull
    public static final f0 b(@Nullable c2 c2Var) {
        return h2.b(c2Var);
    }

    public static final void g(@NotNull CoroutineContext coroutineContext, @Nullable CancellationException cancellationException) {
        h2.g(coroutineContext, cancellationException);
    }

    public static final void h(@NotNull c2 c2Var, @NotNull String str, @Nullable Throwable th) {
        h2.h(c2Var, str, th);
    }

    public static /* synthetic */ void j(CoroutineContext coroutineContext, CancellationException cancellationException, int i2, Object obj) {
        h2.j(coroutineContext, cancellationException, i2, obj);
    }

    @Nullable
    public static final Object m(@NotNull c2 c2Var, @NotNull Continuation<? super Unit> continuation) {
        return h2.m(c2Var, continuation);
    }

    public static final void p(@NotNull CoroutineContext coroutineContext, @Nullable CancellationException cancellationException) {
        h2.p(coroutineContext, cancellationException);
    }

    public static final void s(@NotNull c2 c2Var, @Nullable CancellationException cancellationException) {
        h2.s(c2Var, cancellationException);
    }

    public static final void x(@NotNull p<?> pVar, @NotNull Future<?> future) {
        g2.a(pVar, future);
    }

    @InternalCoroutinesApi
    @NotNull
    public static final j1 y(@NotNull c2 c2Var, @NotNull Future<?> future) {
        return g2.b(c2Var, future);
    }

    @NotNull
    public static final j1 z(@NotNull c2 c2Var, @NotNull j1 j1Var) {
        return h2.x(c2Var, j1Var);
    }
}
