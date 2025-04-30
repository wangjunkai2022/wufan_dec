package kotlin.coroutines.jvm.internal;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RunSuspend.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0011\u0010\u0012J \u0010\u0005\u001a\u00020\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0016ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006J\u0006\u0010\u0007\u001a\u00020\u0002R0\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00038\u0006@\u0006X\u0086\u000eø\u0001\u0000ø\u0001\u0001¢\u0006\u0012\n\u0004\b\u0004\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u0016\u0010\u0010\u001a\u00020\r8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0013"}, d2 = {"Lkotlin/coroutines/jvm/internal/RunSuspend;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/Result;", "result", "resumeWith", "(Ljava/lang/Object;)V", "await", "Lkotlin/Result;", "getResult-xLWZpok", "()Lkotlin/Result;", "setResult", "(Lkotlin/Result;)V", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "context", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
final class RunSuspend implements Continuation<Unit> {
    @Nullable
    private Result<Unit> result;

    public final void await() {
        synchronized (this) {
            while (true) {
                Result<Unit> result = this.result;
                if (result == null) {
                    wait();
                } else {
                    ResultKt.throwOnFailure(result.m33unboximpl());
                }
            }
        }
    }

    @Override // kotlin.coroutines.Continuation
    @NotNull
    public CoroutineContext getContext() {
        return EmptyCoroutineContext.INSTANCE;
    }

    @Nullable
    /* renamed from: getResult-xLWZpok  reason: not valid java name */
    public final Result<Unit> m1223getResultxLWZpok() {
        return this.result;
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(@NotNull Object obj) {
        synchronized (this) {
            this.result = Result.m23boximpl(obj);
            notifyAll();
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void setResult(@Nullable Result<Unit> result) {
        this.result = result;
    }
}
