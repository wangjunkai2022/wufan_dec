package kotlinx.coroutines.flow.internal;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.internal.ThreadContextKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ChannelFlow.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u001e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0000\u001a&\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00042\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u001a]\u0010\u0010\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\b2\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00028\u00012\b\b\u0002\u0010\f\u001a\u00020\u000b2\"\u0010\u000f\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\rH\u0080@ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"T", "Lkotlinx/coroutines/flow/f;", "Lkotlinx/coroutines/flow/internal/ChannelFlow;", "b", "Lkotlinx/coroutines/flow/g;", "Lkotlin/coroutines/CoroutineContext;", "emitContext", "e", "V", "newContext", "value", "", "countOrElement", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "block", ai.aD, "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class d {
    @NotNull
    public static final <T> ChannelFlow<T> b(@NotNull kotlinx.coroutines.flow.f<? extends T> fVar) {
        ChannelFlow<T> channelFlow = fVar instanceof ChannelFlow ? (ChannelFlow) fVar : null;
        return channelFlow == null ? new e(fVar, null, 0, null, 14, null) : channelFlow;
    }

    @Nullable
    public static final <T, V> Object c(@NotNull CoroutineContext coroutineContext, V v3, @NotNull Object obj, @NotNull Function2<? super V, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
        Object coroutine_suspended;
        Object c4 = ThreadContextKt.c(coroutineContext, obj);
        try {
            o oVar = new o(continuation, coroutineContext);
            if (function2 != null) {
                Object invoke = ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2)).invoke(v3, oVar);
                ThreadContextKt.a(coroutineContext, c4);
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (invoke == coroutine_suspended) {
                    DebugProbesKt.probeCoroutineSuspended(continuation);
                }
                return invoke;
            }
            throw new NullPointerException("null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
        } catch (Throwable th) {
            ThreadContextKt.a(coroutineContext, c4);
            throw th;
        }
    }

    public static /* synthetic */ Object d(CoroutineContext coroutineContext, Object obj, Object obj2, Function2 function2, Continuation continuation, int i2, Object obj3) {
        if ((i2 & 4) != 0) {
            obj2 = ThreadContextKt.b(coroutineContext);
        }
        return c(coroutineContext, obj, obj2, function2, continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> kotlinx.coroutines.flow.g<T> e(kotlinx.coroutines.flow.g<? super T> gVar, CoroutineContext coroutineContext) {
        return gVar instanceof n ? true : gVar instanceof l ? gVar : new UndispatchedContextCollector(gVar, coroutineContext);
    }
}
