package kotlin.coroutines.jvm.internal;

import java.io.Serializable;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.SinceKotlin;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ContinuationImpl.kt */
@SinceKotlin(version = "1.3")
@Metadata(bv = {1, 0, 3}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\b!\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\u00020\u00032\u00020\u0004B\u0019\u0012\u0010\u0010\r\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u0001¢\u0006\u0004\b\u001a\u0010\u001bJ \u0010\b\u001a\u00020\u00072\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0005ø\u0001\u0000¢\u0006\u0004\b\b\u0010\tJ$\u0010\n\u001a\u0004\u0018\u00010\u00022\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0005H$ø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000bJ\b\u0010\f\u001a\u00020\u0007H\u0014J\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00070\u00012\n\u0010\r\u001a\u0006\u0012\u0002\b\u00030\u0001H\u0016J$\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00070\u00012\b\u0010\u000f\u001a\u0004\u0018\u00010\u00022\n\u0010\r\u001a\u0006\u0012\u0002\b\u00030\u0001H\u0016J\b\u0010\u0011\u001a\u00020\u0010H\u0016J\n\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016R#\u0010\r\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u00018\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00038V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001c"}, d2 = {"Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Ljava/io/Serializable;", "Lkotlin/Result;", "result", "", "resumeWith", "(Ljava/lang/Object;)V", "invokeSuspend", "(Ljava/lang/Object;)Ljava/lang/Object;", "releaseIntercepted", "completion", "create", "value", "", "toString", "Ljava/lang/StackTraceElement;", "getStackTraceElement", "Lkotlin/coroutines/Continuation;", "getCompletion", "()Lkotlin/coroutines/Continuation;", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "callerFrame", "<init>", "(Lkotlin/coroutines/Continuation;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public abstract class BaseContinuationImpl implements Continuation<Object>, CoroutineStackFrame, Serializable {
    @Nullable
    private final Continuation<Object> completion;

    public BaseContinuationImpl(@Nullable Continuation<Object> continuation) {
        this.completion = continuation;
    }

    @NotNull
    public Continuation<Unit> create(@NotNull Continuation<?> completion) {
        Intrinsics.checkNotNullParameter(completion, "completion");
        throw new UnsupportedOperationException("create(Continuation) has not been overridden");
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @Nullable
    public CoroutineStackFrame getCallerFrame() {
        Continuation<Object> continuation = this.completion;
        if (!(continuation instanceof CoroutineStackFrame)) {
            continuation = null;
        }
        return (CoroutineStackFrame) continuation;
    }

    @Nullable
    public final Continuation<Object> getCompletion() {
        return this.completion;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @Nullable
    public StackTraceElement getStackTraceElement() {
        return DebugMetadataKt.getStackTraceElement(this);
    }

    @Nullable
    protected abstract Object invokeSuspend(@NotNull Object obj);

    protected void releaseIntercepted() {
    }

    @Override // kotlin.coroutines.Continuation
    public final void resumeWith(@NotNull Object obj) {
        Object invokeSuspend;
        Object coroutine_suspended;
        BaseContinuationImpl baseContinuationImpl = this;
        while (true) {
            DebugProbesKt.probeCoroutineResumed(baseContinuationImpl);
            Continuation<Object> continuation = baseContinuationImpl.completion;
            Intrinsics.checkNotNull(continuation);
            try {
                invokeSuspend = baseContinuationImpl.invokeSuspend(obj);
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            } catch (Throwable th) {
                Result.Companion companion = Result.Companion;
                obj = Result.m24constructorimpl(ResultKt.createFailure(th));
            }
            if (invokeSuspend == coroutine_suspended) {
                return;
            }
            Result.Companion companion2 = Result.Companion;
            obj = Result.m24constructorimpl(invokeSuspend);
            baseContinuationImpl.releaseIntercepted();
            if (continuation instanceof BaseContinuationImpl) {
                baseContinuationImpl = (BaseContinuationImpl) continuation;
            } else {
                continuation.resumeWith(obj);
                return;
            }
        }
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Continuation at ");
        Object stackTraceElement = getStackTraceElement();
        if (stackTraceElement == null) {
            stackTraceElement = getClass().getName();
        }
        sb.append(stackTraceElement);
        return sb.toString();
    }

    @NotNull
    public Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> completion) {
        Intrinsics.checkNotNullParameter(completion, "completion");
        throw new UnsupportedOperationException("create(Any?;Continuation) has not been overridden");
    }
}
