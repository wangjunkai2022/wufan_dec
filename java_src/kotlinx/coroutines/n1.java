package kotlinx.coroutines;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import tv.danmaku.ijk.media.player.IjkMediaMeta;
/* compiled from: EventLoop.common.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0016\b \u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b$\u0010%J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\u0006\u0010\u0007\u001a\u00020\u0002J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0012\u0010\f\u001a\u00020\u000b2\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\tJ\u0010\u0010\r\u001a\u00020\u000b2\b\b\u0002\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u000e\u001a\u00020\u000b2\b\b\u0002\u0010\u0003\u001a\u00020\u0002J\b\u0010\u000f\u001a\u00020\u000bH\u0014R\"\u0010\u0013\u001a\u000e\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0016\u001a\u00020\u00028T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0013\u0010\u0018\u001a\u00020\u00028F@\u0006¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0015R\u0013\u0010\u001a\u001a\u00020\u00028F@\u0006¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u0015R\u0013\u0010\u001b\u001a\u00020\u00028F@\u0006¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u0015R\u0016\u0010\u001e\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010!\u001a\u00020\u00048T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010 R\u0016\u0010#\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010\u0017¨\u0006&"}, d2 = {"Lkotlinx/coroutines/n1;", "Lkotlinx/coroutines/CoroutineDispatcher;", "", "unconfined", "", "B", "L", "M", "N", "Lkotlinx/coroutines/d1;", "task", "", "C", "G", "y", "shutdown", "Lkotlinx/coroutines/internal/a;", ai.aD, "Lkotlinx/coroutines/internal/a;", "unconfinedQueue", "I", "()Z", "isEmpty", "J", "isUnconfinedLoopActive", "K", "isUnconfinedQueueEmpty", "isActive", "b", "Z", "shared", "F", "()J", "nextTime", "a", "useCount", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public abstract class n1 extends CoroutineDispatcher {

    /* renamed from: a  reason: collision with root package name */
    private long f72284a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f72285b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private kotlinx.coroutines.internal.a<d1<?>> f72286c;

    private final long B(boolean z3) {
        if (z3) {
            return IjkMediaMeta.AV_CH_WIDE_RIGHT;
        }
        return 1L;
    }

    public static /* synthetic */ void H(n1 n1Var, boolean z3, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: incrementUseCount");
        }
        if ((i2 & 1) != 0) {
            z3 = false;
        }
        n1Var.G(z3);
    }

    public static /* synthetic */ void z(n1 n1Var, boolean z3, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decrementUseCount");
        }
        if ((i2 & 1) != 0) {
            z3 = false;
        }
        n1Var.y(z3);
    }

    public final void C(@NotNull d1<?> d1Var) {
        kotlinx.coroutines.internal.a<d1<?>> aVar = this.f72286c;
        if (aVar == null) {
            aVar = new kotlinx.coroutines.internal.a<>();
            this.f72286c = aVar;
        }
        aVar.a(d1Var);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long F() {
        kotlinx.coroutines.internal.a<d1<?>> aVar = this.f72286c;
        return (aVar == null || aVar.d()) ? Long.MAX_VALUE : 0L;
    }

    public final void G(boolean z3) {
        this.f72284a += B(z3);
        if (z3) {
            return;
        }
        this.f72285b = true;
    }

    protected boolean I() {
        return K();
    }

    public final boolean J() {
        return this.f72284a >= B(true);
    }

    public final boolean K() {
        kotlinx.coroutines.internal.a<d1<?>> aVar = this.f72286c;
        if (aVar == null) {
            return true;
        }
        return aVar.d();
    }

    public long L() {
        return !M() ? Long.MAX_VALUE : 0L;
    }

    public final boolean M() {
        d1<?> e4;
        kotlinx.coroutines.internal.a<d1<?>> aVar = this.f72286c;
        if (aVar == null || (e4 = aVar.e()) == null) {
            return false;
        }
        e4.run();
        return true;
    }

    public boolean N() {
        return false;
    }

    public final boolean isActive() {
        return this.f72284a > 0;
    }

    protected void shutdown() {
    }

    public final void y(boolean z3) {
        long B = this.f72284a - B(z3);
        this.f72284a = B;
        if (B > 0) {
            return;
        }
        if (v0.b()) {
            if (!(this.f72284a == 0)) {
                throw new AssertionError();
            }
        }
        if (this.f72285b) {
            shutdown();
        }
    }
}
