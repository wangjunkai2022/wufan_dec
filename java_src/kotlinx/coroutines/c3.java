package kotlinx.coroutines;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Supervisor.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lkotlinx/coroutines/c3;", "Lkotlinx/coroutines/e2;", "", "cause", "", "m0", "Lkotlinx/coroutines/c2;", "parent", "<init>", "(Lkotlinx/coroutines/c2;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
final class c3 extends e2 {
    public c3(@Nullable c2 c2Var) {
        super(c2Var);
    }

    @Override // kotlinx.coroutines.JobSupport
    public boolean m0(@NotNull Throwable th) {
        return false;
    }
}
