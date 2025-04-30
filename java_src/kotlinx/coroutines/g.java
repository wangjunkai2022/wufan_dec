package kotlinx.coroutines;

import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import com.umeng.analytics.pro.ai;
import java.util.concurrent.locks.LockSupport;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Builders.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B!\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\f\u001a\u00020\t\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u0017\u0010\u0018J\u0012\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014J\r\u0010\u0007\u001a\u00028\u0000¢\u0006\u0004\b\u0007\u0010\bR\u0016\u0010\f\u001a\u00020\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0019"}, d2 = {"Lkotlinx/coroutines/g;", "T", "Lkotlinx/coroutines/a;", "", NoticeTopAnimActivityDialog_.f34402n, "", "c0", "u1", "()Ljava/lang/Object;", "Ljava/lang/Thread;", ai.aD, "Ljava/lang/Thread;", "blockedThread", "Lkotlinx/coroutines/n1;", com.xinzhu.overmind.utils.helpers.d.f64708a, "Lkotlinx/coroutines/n1;", "eventLoop", "", "J0", "()Z", "isScopedCoroutine", "Lkotlin/coroutines/CoroutineContext;", "parentContext", "<init>", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Thread;Lkotlinx/coroutines/n1;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class g<T> extends a<T> {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final Thread f72112c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final n1 f72113d;

    public g(@NotNull CoroutineContext coroutineContext, @NotNull Thread thread, @Nullable n1 n1Var) {
        super(coroutineContext, true, true);
        this.f72112c = thread;
        this.f72113d = n1Var;
    }

    @Override // kotlinx.coroutines.JobSupport
    protected boolean J0() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.JobSupport
    public void c0(@Nullable Object obj) {
        if (Intrinsics.areEqual(Thread.currentThread(), this.f72112c)) {
            return;
        }
        Thread thread = this.f72112c;
        b b4 = c.b();
        if (b4 == null) {
            LockSupport.unpark(thread);
        } else {
            b4.g(thread);
        }
    }

    public final T u1() {
        b b4 = c.b();
        if (b4 != null) {
            b4.d();
        }
        try {
            n1 n1Var = this.f72113d;
            if (n1Var != null) {
                n1.H(n1Var, false, 1, null);
            }
            while (!Thread.interrupted()) {
                n1 n1Var2 = this.f72113d;
                long L = n1Var2 == null ? Long.MAX_VALUE : n1Var2.L();
                if (isCompleted()) {
                    n1 n1Var3 = this.f72113d;
                    if (n1Var3 != null) {
                        n1.z(n1Var3, false, 1, null);
                    }
                    T t3 = (T) j2.o(D0());
                    h0 h0Var = t3 instanceof h0 ? (h0) t3 : null;
                    if (h0Var == null) {
                        return t3;
                    }
                    throw h0Var.f72127a;
                }
                b b5 = c.b();
                if (b5 == null) {
                    LockSupport.parkNanos(this, L);
                } else {
                    b5.c(this, L);
                }
            }
            InterruptedException interruptedException = new InterruptedException();
            g0(interruptedException);
            throw interruptedException;
        } finally {
            b b6 = c.b();
            if (b6 != null) {
                b6.h();
            }
        }
    }
}
