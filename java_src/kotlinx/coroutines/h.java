package kotlinx.coroutines;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: EventLoop.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u001c\u0010\u0007\u001a\u00020\u00028\u0014@\u0014X\u0094\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, d2 = {"Lkotlinx/coroutines/h;", "Lkotlinx/coroutines/o1;", "Ljava/lang/Thread;", "f", "Ljava/lang/Thread;", "O", "()Ljava/lang/Thread;", "thread", "<init>", "(Ljava/lang/Thread;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class h extends o1 {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final Thread f72125f;

    public h(@NotNull Thread thread) {
        this.f72125f = thread;
    }

    @Override // kotlinx.coroutines.p1
    @NotNull
    protected Thread O() {
        return this.f72125f;
    }
}
