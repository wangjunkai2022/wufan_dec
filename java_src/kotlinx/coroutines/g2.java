package kotlinx.coroutines;

import java.util.concurrent.Future;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Future.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u001a\u0018\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0001H\u0007\u001a\u001a\u0010\u0007\u001a\u00020\u0006*\u0006\u0012\u0002\b\u00030\u00052\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0001¨\u0006\b"}, d2 = {"Lkotlinx/coroutines/c2;", "Ljava/util/concurrent/Future;", "future", "Lkotlinx/coroutines/j1;", "b", "Lkotlinx/coroutines/p;", "", "a", "kotlinx-coroutines-core"}, k = 5, mv = {1, 5, 1}, xs = "kotlinx/coroutines/JobKt")
/* loaded from: classes5.dex */
public final /* synthetic */ class g2 {
    public static final void a(@NotNull p<?> pVar, @NotNull Future<?> future) {
        pVar.l(new l(future));
    }

    @InternalCoroutinesApi
    @NotNull
    public static final j1 b(@NotNull c2 c2Var, @NotNull Future<?> future) {
        return c2Var.u(new m(future));
    }
}
