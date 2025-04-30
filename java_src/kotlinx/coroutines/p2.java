package kotlinx.coroutines;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Job.kt */
@InternalCoroutinesApi
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\bÇ\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\t\b\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\b\u0010\n\u001a\u00020\tH\u0016R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u000b8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\r¨\u0006\u0011"}, d2 = {"Lkotlinx/coroutines/p2;", "Lkotlinx/coroutines/j1;", "Lkotlinx/coroutines/v;", "", "dispose", "", "cause", "", "x", "", "toString", "Lkotlinx/coroutines/c2;", "getParent", "()Lkotlinx/coroutines/c2;", "parent", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class p2 implements j1, v {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final p2 f72305a = new p2();

    private p2() {
    }

    @Override // kotlinx.coroutines.j1
    public void dispose() {
    }

    @Override // kotlinx.coroutines.v
    @Nullable
    public c2 getParent() {
        return null;
    }

    @NotNull
    public String toString() {
        return "NonDisposableHandle";
    }

    @Override // kotlinx.coroutines.v
    public boolean x(@NotNull Throwable th) {
        return false;
    }
}
