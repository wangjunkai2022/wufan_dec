package kotlin.coroutines.intrinsics;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.coroutines.Continuation;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"kotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt", "kotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt"}, d2 = {}, k = 4, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class IntrinsicsKt extends IntrinsicsKt__IntrinsicsKt {
    private IntrinsicsKt() {
    }

    @NotNull
    public static /* bridge */ /* synthetic */ Object getCOROUTINE_SUSPENDED() {
        return IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
    }

    @SinceKotlin(version = "1.3")
    @NotNull
    public static /* bridge */ /* synthetic */ <T> Continuation<T> intercepted(@NotNull Continuation<? super T> continuation) {
        return IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
    }
}
