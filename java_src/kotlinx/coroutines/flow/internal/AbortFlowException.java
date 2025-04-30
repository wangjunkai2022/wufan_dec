package kotlinx.coroutines.flow.internal;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlinx.coroutines.v0;
import org.jetbrains.annotations.NotNull;
/* compiled from: FlowExceptions.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0013\u0012\n\u0010\t\u001a\u0006\u0012\u0002\b\u00030\u0005¢\u0006\u0004\b\n\u0010\u000bJ\b\u0010\u0004\u001a\u00020\u0003H\u0016R\u001d\u0010\t\u001a\u0006\u0012\u0002\b\u00030\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\u0006\u0010\b¨\u0006\f"}, d2 = {"Lkotlinx/coroutines/flow/internal/AbortFlowException;", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "", "fillInStackTrace", "Lkotlinx/coroutines/flow/g;", "a", "Lkotlinx/coroutines/flow/g;", "()Lkotlinx/coroutines/flow/g;", "owner", "<init>", "(Lkotlinx/coroutines/flow/g;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class AbortFlowException extends CancellationException {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final kotlinx.coroutines.flow.g<?> f71943a;

    public AbortFlowException(@NotNull kotlinx.coroutines.flow.g<?> gVar) {
        super("Flow was aborted, no more elements needed");
        this.f71943a = gVar;
    }

    @NotNull
    public final kotlinx.coroutines.flow.g<?> a() {
        return this.f71943a;
    }

    @Override // java.lang.Throwable
    @NotNull
    public Throwable fillInStackTrace() {
        if (v0.d()) {
            return super.fillInStackTrace();
        }
        setStackTrace(new StackTraceElement[0]);
        return this;
    }
}
