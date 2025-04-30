package kotlinx.coroutines;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EventLoop.common.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÁ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0010\u0010\u0007J\u0011\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0000¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0000¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\t\u0010\nR*\u0010\u000f\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u000bj\n\u0012\u0006\u0012\u0004\u0018\u00010\u0002`\f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0016\u0010\b\u001a\u00020\u00028@@\u0000X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u0004¨\u0006\u0011"}, d2 = {"Lkotlinx/coroutines/g3;", "", "Lkotlinx/coroutines/n1;", "a", "()Lkotlinx/coroutines/n1;", "", ai.aD, "()V", "eventLoop", com.xinzhu.overmind.utils.helpers.d.f64708a, "(Lkotlinx/coroutines/n1;)V", "Ljava/lang/ThreadLocal;", "Lkotlinx/coroutines/internal/CommonThreadLocal;", "b", "Ljava/lang/ThreadLocal;", "ref", "<init>", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class g3 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final g3 f72123a = new g3();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final ThreadLocal<n1> f72124b = new ThreadLocal<>();

    private g3() {
    }

    @Nullable
    public final n1 a() {
        return f72124b.get();
    }

    @NotNull
    public final n1 b() {
        ThreadLocal<n1> threadLocal = f72124b;
        n1 n1Var = threadLocal.get();
        if (n1Var == null) {
            n1 a4 = q1.a();
            threadLocal.set(a4);
            return a4;
        }
        return n1Var;
    }

    public final void c() {
        f72124b.set(null);
    }

    public final void d(@NotNull n1 n1Var) {
        f72124b.set(n1Var);
    }
}
