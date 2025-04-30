package kotlinx.coroutines;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CancellableContinuation.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a5\u0010\u0005\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00002\u001a\b\u0004\u0010\u0004\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\u0086Hø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a5\u0010\u0007\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00002\u001a\b\u0004\u0010\u0004\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\u0080Hø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\u0006\u001a\"\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\n\"\u0004\b\u0000\u0010\u00002\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\bH\u0000\u001a\u0018\u0010\u000e\u001a\u00020\u0003*\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\r\u001a\u00020\fH\u0000\u001a\u0018\u0010\u0011\u001a\u00020\u0003*\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0007\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"T", "Lkotlin/Function1;", "Lkotlinx/coroutines/p;", "", "block", com.xinzhu.overmind.utils.helpers.d.f64708a, "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "f", "Lkotlin/coroutines/Continuation;", "delegate", "Lkotlinx/coroutines/q;", "b", "Lkotlinx/coroutines/internal/s;", "node", ai.aD, "Lkotlinx/coroutines/j1;", "handle", "a", "kotlinx-coroutines-core"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class s {
    @InternalCoroutinesApi
    public static final void a(@NotNull p<?> pVar, @NotNull j1 j1Var) {
        pVar.l(new k1(j1Var));
    }

    @NotNull
    public static final <T> q<T> b(@NotNull Continuation<? super T> continuation) {
        if (!(continuation instanceof kotlinx.coroutines.internal.j)) {
            return new q<>(continuation, 1);
        }
        q<T> k4 = ((kotlinx.coroutines.internal.j) continuation).k();
        if (k4 == null || !k4.I()) {
            k4 = null;
        }
        return k4 == null ? new q<>(continuation, 2) : k4;
    }

    public static final void c(@NotNull p<?> pVar, @NotNull kotlinx.coroutines.internal.s sVar) {
        pVar.l(new s2(sVar));
    }

    @Nullable
    public static final <T> Object d(@NotNull Function1<? super p<? super T>, Unit> function1, @NotNull Continuation<? super T> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        q qVar = new q(intercepted, 1);
        qVar.N();
        function1.invoke(qVar);
        Object x3 = qVar.x();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (x3 == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return x3;
    }

    private static final <T> Object e(Function1<? super p<? super T>, Unit> function1, Continuation<? super T> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        InlineMarker.mark(0);
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        q qVar = new q(intercepted, 1);
        qVar.N();
        function1.invoke(qVar);
        Object x3 = qVar.x();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (x3 == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        InlineMarker.mark(1);
        return x3;
    }

    @Nullable
    public static final <T> Object f(@NotNull Function1<? super p<? super T>, Unit> function1, @NotNull Continuation<? super T> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        q b4 = b(intercepted);
        function1.invoke(b4);
        Object x3 = b4.x();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (x3 == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return x3;
    }

    private static final <T> Object g(Function1<? super p<? super T>, Unit> function1, Continuation<? super T> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        InlineMarker.mark(0);
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        q b4 = b(intercepted);
        function1.invoke(b4);
        Object x3 = b4.x();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (x3 == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        InlineMarker.mark(1);
        return x3;
    }
}
