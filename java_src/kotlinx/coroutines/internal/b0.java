package kotlinx.coroutines.internal;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlinx.coroutines.w0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Atomic.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001H&J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\u000e\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0000R\u001c\u0010\f\u001a\b\u0012\u0002\b\u0003\u0018\u00010\t8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006\u000f"}, d2 = {"Lkotlinx/coroutines/internal/b0;", "", "affected", ai.aD, "", "toString", "that", "", "b", "Lkotlinx/coroutines/internal/d;", "a", "()Lkotlinx/coroutines/internal/d;", "atomicOp", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public abstract class b0 {
    @Nullable
    public abstract d<?> a();

    public final boolean b(@NotNull b0 b0Var) {
        d<?> a4;
        d<?> a5 = a();
        return (a5 == null || (a4 = b0Var.a()) == null || a5.g() >= a4.g()) ? false : true;
    }

    @Nullable
    public abstract Object c(@Nullable Object obj);

    @NotNull
    public String toString() {
        return w0.a(this) + '@' + w0.b(this);
    }
}
