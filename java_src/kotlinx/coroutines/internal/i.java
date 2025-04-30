package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.t0;
import org.jetbrains.annotations.NotNull;
/* compiled from: Scopes.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\u0004¢\u0006\u0004\b\u000b\u0010\fJ\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u001c\u0010\t\u001a\u00020\u00048\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\r"}, d2 = {"Lkotlinx/coroutines/internal/i;", "Lkotlinx/coroutines/t0;", "", "toString", "Lkotlin/coroutines/CoroutineContext;", "a", "Lkotlin/coroutines/CoroutineContext;", "getCoroutineContext", "()Lkotlin/coroutines/CoroutineContext;", "coroutineContext", "context", "<init>", "(Lkotlin/coroutines/CoroutineContext;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class i implements t0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final CoroutineContext f72179a;

    public i(@NotNull CoroutineContext coroutineContext) {
        this.f72179a = coroutineContext;
    }

    @Override // kotlinx.coroutines.t0
    @NotNull
    public CoroutineContext getCoroutineContext() {
        return this.f72179a;
    }

    @NotNull
    public String toString() {
        return "CoroutineScope(coroutineContext=" + getCoroutineContext() + ')';
    }
}
