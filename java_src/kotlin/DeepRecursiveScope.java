package kotlin;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.RestrictsSuspension;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DeepRecursive.kt */
@SinceKotlin(version = "1.4")
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0001\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u00020\u0003B\t\b\u0004¢\u0006\u0004\b\r\u0010\u000eJ\u001b\u0010\u0005\u001a\u00028\u00012\u0006\u0010\u0004\u001a\u00028\u0000H¦@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006J7\u0010\u0005\u001a\u00028\u0003\"\u0004\b\u0002\u0010\u0007\"\u0004\b\u0003\u0010\b*\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\t2\u0006\u0010\u0004\u001a\u00028\u0002H¦@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\nJ\u001f\u0010\f\u001a\u00020\u000b*\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\t2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0087\u0002\u0082\u0001\u0001\u000f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0010"}, d2 = {"Lkotlin/DeepRecursiveScope;", "T", "R", "", "value", "callRecursive", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "U", "S", "Lkotlin/DeepRecursiveFunction;", "(Lkotlin/DeepRecursiveFunction;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "invoke", "<init>", "()V", "Lkotlin/DeepRecursiveScopeImpl;", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
@ExperimentalStdlibApi
@RestrictsSuspension
/* loaded from: classes.dex */
public abstract class DeepRecursiveScope<T, R> {
    private DeepRecursiveScope() {
    }

    @Nullable
    public abstract Object callRecursive(T t3, @NotNull Continuation<? super R> continuation);

    @Nullable
    public abstract <U, S> Object callRecursive(@NotNull DeepRecursiveFunction<U, S> deepRecursiveFunction, U u3, @NotNull Continuation<? super S> continuation);

    @Deprecated(level = DeprecationLevel.ERROR, message = "'invoke' should not be called from DeepRecursiveScope. Use 'callRecursive' to do recursion in the heap instead of the call stack.", replaceWith = @ReplaceWith(expression = "this.callRecursive(value)", imports = {}))
    @NotNull
    public final Void invoke(@NotNull DeepRecursiveFunction<?, ?> invoke, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(invoke, "$this$invoke");
        throw new UnsupportedOperationException("Should not be called from DeepRecursiveScope");
    }

    public /* synthetic */ DeepRecursiveScope(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }
}
