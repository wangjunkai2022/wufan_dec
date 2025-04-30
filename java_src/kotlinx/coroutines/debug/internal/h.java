package kotlinx.coroutines.debug.internal;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: StackTraceFrame.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\b\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\f\u0010\rJ\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u0016\u0010\u0006\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u00018\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n¨\u0006\u000e"}, d2 = {"Lkotlinx/coroutines/debug/internal/h;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Ljava/lang/StackTraceElement;", "getStackTraceElement", "b", "Ljava/lang/StackTraceElement;", "stackTraceElement", "a", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "callerFrame", "<init>", "(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;Ljava/lang/StackTraceElement;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class h implements CoroutineStackFrame {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final CoroutineStackFrame f71189a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final StackTraceElement f71190b;

    public h(@Nullable CoroutineStackFrame coroutineStackFrame, @NotNull StackTraceElement stackTraceElement) {
        this.f71189a = coroutineStackFrame;
        this.f71190b = stackTraceElement;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @Nullable
    public CoroutineStackFrame getCallerFrame() {
        return this.f71189a;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @NotNull
    public StackTraceElement getStackTraceElement() {
        return this.f71190b;
    }
}
