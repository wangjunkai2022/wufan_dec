package kotlin.coroutines.jvm.internal;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.FunctionBase;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ContinuationImpl.kt */
@SinceKotlin(version = "1.3")
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b!\u0018\u00002\u00020\u00012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00022\u00020\u0004B!\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0010\u0010\r\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\f¢\u0006\u0004\b\u000e\u0010\u000fB\u0011\b\u0016\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u000e\u0010\u0010J\b\u0010\u0006\u001a\u00020\u0005H\u0016R\u001c\u0010\b\u001a\u00020\u00078\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b¨\u0006\u0011"}, d2 = {"Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;", "Lkotlin/coroutines/jvm/internal/RestrictedContinuationImpl;", "Lkotlin/jvm/internal/FunctionBase;", "", "Lkotlin/coroutines/jvm/internal/SuspendFunction;", "", "toString", "", "arity", "I", "getArity", "()I", "Lkotlin/coroutines/Continuation;", "completion", "<init>", "(ILkotlin/coroutines/Continuation;)V", "(I)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public abstract class RestrictedSuspendLambda extends RestrictedContinuationImpl implements FunctionBase<Object>, SuspendFunction {
    private final int arity;

    public RestrictedSuspendLambda(int i2, @Nullable Continuation<Object> continuation) {
        super(continuation);
        this.arity = i2;
    }

    @Override // kotlin.jvm.internal.FunctionBase
    public int getArity() {
        return this.arity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public String toString() {
        if (getCompletion() == null) {
            String renderLambdaToString = Reflection.renderLambdaToString(this);
            Intrinsics.checkNotNullExpressionValue(renderLambdaToString, "Reflection.renderLambdaToString(this)");
            return renderLambdaToString;
        }
        return super.toString();
    }

    public RestrictedSuspendLambda(int i2) {
        this(i2, null);
    }
}
