package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CancellableContinuation.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fJ\u0013\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0096\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0016R\u0016\u0010\n\u001a\u00020\b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\t¨\u0006\r"}, d2 = {"Lkotlinx/coroutines/k1;", "Lkotlinx/coroutines/n;", "", "cause", "", "a", "", "toString", "Lkotlinx/coroutines/j1;", "Lkotlinx/coroutines/j1;", "handle", "<init>", "(Lkotlinx/coroutines/j1;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
final class k1 extends n {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final j1 f72273a;

    public k1(@NotNull j1 j1Var) {
        this.f72273a = j1Var;
    }

    @Override // kotlinx.coroutines.o
    public void a(@Nullable Throwable th) {
        this.f72273a.dispose();
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        a(th);
        return Unit.INSTANCE;
    }

    @NotNull
    public String toString() {
        return "DisposeOnCancel[" + this.f72273a + ']';
    }
}
