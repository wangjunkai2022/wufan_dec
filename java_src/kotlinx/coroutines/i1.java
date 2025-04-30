package kotlinx.coroutines;

import java.util.concurrent.Future;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Executors.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\t\u001a\u0006\u0012\u0002\b\u00030\u0006¢\u0006\u0004\b\n\u0010\u000bJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016R\u001a\u0010\t\u001a\u0006\u0012\u0002\b\u00030\u00068\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\f"}, d2 = {"Lkotlinx/coroutines/i1;", "Lkotlinx/coroutines/j1;", "", "dispose", "", "toString", "Ljava/util/concurrent/Future;", "a", "Ljava/util/concurrent/Future;", "future", "<init>", "(Ljava/util/concurrent/Future;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
final class i1 implements j1 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Future<?> f72135a;

    public i1(@NotNull Future<?> future) {
        this.f72135a = future;
    }

    @Override // kotlinx.coroutines.j1
    public void dispose() {
        this.f72135a.cancel(false);
    }

    @NotNull
    public String toString() {
        return "DisposableFutureHandle[" + this.f72135a + ']';
    }
}
