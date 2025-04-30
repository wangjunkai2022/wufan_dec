package kotlin;

import kotlin.Result;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DeepRecursive.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a4\u0010\u0004\u001a\u00028\u0001\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010\u0003\u001a\u00028\u0000H\u0087\u0002¢\u0006\u0004\b\u0004\u0010\u0005\"%\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0002@\u0003X\u0083\u0004ø\u0001\u0000¢\u0006\f\n\u0004\b\b\u0010\t\u0012\u0004\b\n\u0010\u000b*v\b\u0003\u0010\u0011\"5\b\u0001\u0012\f\u0012\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\r\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00070\f¢\u0006\u0002\b\u000f25\b\u0001\u0012\f\u0012\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\r\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00070\f¢\u0006\u0002\b\u000fB\u0002\b\u0010\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"T", "R", "Lkotlin/DeepRecursiveFunction;", "value", "invoke", "(Lkotlin/DeepRecursiveFunction;Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlin/Result;", "", "UNDEFINED_RESULT", "Ljava/lang/Object;", "getUNDEFINED_RESULT$annotations", "()V", "Lkotlin/Function3;", "Lkotlin/DeepRecursiveScope;", "Lkotlin/coroutines/Continuation;", "Lkotlin/ExtensionFunctionType;", "Lkotlin/ExperimentalStdlibApi;", "DeepRecursiveFunctionBlock", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class DeepRecursiveKt {
    private static final Object UNDEFINED_RESULT;

    static {
        Object coroutine_suspended;
        Result.Companion companion = Result.Companion;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        UNDEFINED_RESULT = Result.m24constructorimpl(coroutine_suspended);
    }

    @ExperimentalStdlibApi
    private static /* synthetic */ void DeepRecursiveFunctionBlock$annotations() {
    }

    private static /* synthetic */ void getUNDEFINED_RESULT$annotations() {
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalStdlibApi
    public static final <T, R> R invoke(@NotNull DeepRecursiveFunction<T, R> invoke, T t3) {
        Intrinsics.checkNotNullParameter(invoke, "$this$invoke");
        return (R) new DeepRecursiveScopeImpl(invoke.getBlock$kotlin_stdlib(), t3).runCallLoop();
    }
}
