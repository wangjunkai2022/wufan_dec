package kotlinx.coroutines;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Delay.kt */
@InternalCoroutinesApi
@Metadata(bv = {1, 0, 3}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bg\u0018\u00002\u00020\u0001J\u001b\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006J\u001e\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00022\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\bH&J$\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u00022\n\u0010\r\u001a\u00060\u000bj\u0002`\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"Lkotlinx/coroutines/b1;", "", "", "time", "", "v", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "timeMillis", "Lkotlinx/coroutines/p;", "continuation", com.sdk.a.g.f56552a, "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "Lkotlin/coroutines/CoroutineContext;", "context", "Lkotlinx/coroutines/j1;", ai.av, "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public interface b1 {

    /* compiled from: Delay.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class a {
        @Nullable
        public static Object a(@NotNull b1 b1Var, long j4, @NotNull Continuation<? super Unit> continuation) {
            Continuation intercepted;
            Object coroutine_suspended;
            Object coroutine_suspended2;
            if (j4 <= 0) {
                return Unit.INSTANCE;
            }
            intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
            q qVar = new q(intercepted, 1);
            qVar.N();
            b1Var.g(j4, qVar);
            Object x3 = qVar.x();
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (x3 == coroutine_suspended) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return x3 == coroutine_suspended2 ? x3 : Unit.INSTANCE;
        }

        @NotNull
        public static j1 b(@NotNull b1 b1Var, long j4, @NotNull Runnable runnable, @NotNull CoroutineContext coroutineContext) {
            return y0.a().p(j4, runnable, coroutineContext);
        }
    }

    void g(long j4, @NotNull p<? super Unit> pVar);

    @NotNull
    j1 p(long j4, @NotNull Runnable runnable, @NotNull CoroutineContext coroutineContext);

    @Nullable
    Object v(long j4, @NotNull Continuation<? super Unit> continuation);
}
