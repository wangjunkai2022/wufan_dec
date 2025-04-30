package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
/* compiled from: Executors.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002B\u001d\u0012\u0006\u0010\f\u001a\u00020\t\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005¢\u0006\u0004\b\r\u0010\u000eJ\b\u0010\u0004\u001a\u00020\u0003H\u0016R\u001c\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0016\u0010\f\u001a\u00020\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u000f"}, d2 = {"Lkotlinx/coroutines/v2;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "", "run", "Lkotlinx/coroutines/p;", "b", "Lkotlinx/coroutines/p;", "continuation", "Lkotlinx/coroutines/CoroutineDispatcher;", "a", "Lkotlinx/coroutines/CoroutineDispatcher;", "dispatcher", "<init>", "(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/p;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
final class v2 implements Runnable {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final CoroutineDispatcher f72529a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final p<Unit> f72530b;

    /* JADX WARN: Multi-variable type inference failed */
    public v2(@NotNull CoroutineDispatcher coroutineDispatcher, @NotNull p<? super Unit> pVar) {
        this.f72529a = coroutineDispatcher;
        this.f72530b = pVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f72530b.M(this.f72529a, Unit.INSTANCE);
    }
}
