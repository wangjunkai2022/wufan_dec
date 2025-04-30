package kotlinx.coroutines;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: EventLoop.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\u001a\b\u0010\u0001\u001a\u00020\u0000H\u0000\u001a\b\u0010\u0003\u001a\u00020\u0002H\u0007¨\u0006\u0004"}, d2 = {"Lkotlinx/coroutines/n1;", "a", "", "b", "kotlinx-coroutines-core"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class q1 {
    @NotNull
    public static final n1 a() {
        return new h(Thread.currentThread());
    }

    @InternalCoroutinesApi
    public static final long b() {
        n1 a4 = g3.f72123a.a();
        if (a4 == null) {
            return Long.MAX_VALUE;
        }
        return a4.L();
    }
}
