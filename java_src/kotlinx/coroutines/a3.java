package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Builders.common.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0012\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0014¨\u0006\f"}, d2 = {"Lkotlinx/coroutines/a3;", "Lkotlinx/coroutines/a;", "", "", "exception", "", "E0", "Lkotlin/coroutines/CoroutineContext;", "parentContext", "active", "<init>", "(Lkotlin/coroutines/CoroutineContext;Z)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public class a3 extends a<Unit> {
    public a3(@NotNull CoroutineContext coroutineContext, boolean z3) {
        super(coroutineContext, true, z3);
    }

    @Override // kotlinx.coroutines.JobSupport
    protected boolean E0(@NotNull Throwable th) {
        q0.b(getContext(), th);
        return true;
    }
}
