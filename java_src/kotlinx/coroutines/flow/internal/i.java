package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.channels.v;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FlowCoroutine.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u001d\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\t¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¨\u0006\r"}, d2 = {"Lkotlinx/coroutines/flow/internal/i;", "T", "Lkotlinx/coroutines/channels/v;", "", "cause", "", "m0", "Lkotlin/coroutines/CoroutineContext;", "parentContext", "Lkotlinx/coroutines/channels/k;", "channel", "<init>", "(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/k;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class i<T> extends v<T> {
    public i(@NotNull CoroutineContext coroutineContext, @NotNull kotlinx.coroutines.channels.k<T> kVar) {
        super(coroutineContext, kVar);
    }

    @Override // kotlinx.coroutines.JobSupport
    public boolean m0(@NotNull Throwable th) {
        if (th instanceof ChildCancelledException) {
            return true;
        }
        return h0(th);
    }
}
