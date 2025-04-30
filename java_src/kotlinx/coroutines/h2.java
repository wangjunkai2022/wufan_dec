package kotlinx.coroutines;

import com.umeng.analytics.pro.ai;
import java.util.concurrent.CancellationException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.c2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Job.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\r\u001a\u0012\u0010\u0003\u001a\u00020\u00022\n\b\u0002\u0010\u0001\u001a\u0004\u0018\u00010\u0000\u001a\u001b\u0010\u0004\u001a\u00020\u00002\n\b\u0002\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\u0007¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u0019\u0010\n\u001a\u00020\t2\u000e\b\u0004\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0087\b\u001a\u0014\u0010\f\u001a\u00020\t*\u00020\u00002\u0006\u0010\u000b\u001a\u00020\tH\u0000\u001a\u0017\u0010\r\u001a\u00020\u0007*\u00020\u0000H\u0086@ø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000e\u001a\u001c\u0010\u0012\u001a\u00020\u0007*\u00020\u00002\u0010\b\u0002\u0010\u0011\u001a\n\u0018\u00010\u000fj\u0004\u0018\u0001`\u0010\u001a\f\u0010\u0013\u001a\u00020\u0007*\u00020\u0000H\u0007\u001a\u0018\u0010\u0015\u001a\u00020\u0007*\u00020\u00002\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0014H\u0007\u001a\u001c\u0010\u0017\u001a\u00020\u0007*\u00020\u00162\u0010\b\u0002\u0010\u0011\u001a\n\u0018\u00010\u000fj\u0004\u0018\u0001`\u0010\u001a\f\u0010\u0018\u001a\u00020\u0007*\u00020\u0016H\u0007\u001a\n\u0010\u0019\u001a\u00020\u0007*\u00020\u0000\u001a\n\u0010\u001a\u001a\u00020\u0007*\u00020\u0016\u001a\u001e\u0010\u001d\u001a\u00020\u0007*\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u001b2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0014\u001a\u0018\u0010\u001f\u001a\u00020\u001e*\u00020\u00162\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0014H\u0007\u001a\u001c\u0010 \u001a\u00020\u0007*\u00020\u00162\u0010\b\u0002\u0010\u0011\u001a\n\u0018\u00010\u000fj\u0004\u0018\u0001`\u0010\u001a\f\u0010!\u001a\u00020\u0007*\u00020\u0016H\u0007\u001a\u0018\u0010\"\u001a\u00020\u0007*\u00020\u00162\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0014H\u0007\u001a\u001d\u0010$\u001a\u00020\u0014*\u0004\u0018\u00010\u00142\u0006\u0010#\u001a\u00020\u0000H\u0002¢\u0006\u0004\b$\u0010%\"\u0017\u0010(\u001a\u00020\u001e*\u00020\u00168F@\u0006¢\u0006\u0006\u001a\u0004\b&\u0010'\"\u0017\u0010#\u001a\u00020\u0000*\u00020\u00168F@\u0006¢\u0006\u0006\u001a\u0004\b)\u0010*\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006+"}, d2 = {"Lkotlinx/coroutines/c2;", "parent", "Lkotlinx/coroutines/f0;", "b", ai.aD, "(Lkotlinx/coroutines/c2;)Lkotlinx/coroutines/c2;", "Lkotlin/Function0;", "", "block", "Lkotlinx/coroutines/j1;", "a", "handle", "x", "m", "(Lkotlinx/coroutines/c2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "cause", ai.az, "q", "", net.lingala.zip4j.util.e.f73017f0, "Lkotlin/coroutines/CoroutineContext;", com.sdk.a.g.f56552a, "f", ai.aB, "y", "", "message", "h", "", ai.aA, ai.av, "n", "o", "job", "C", "(Ljava/lang/Throwable;Lkotlinx/coroutines/c2;)Ljava/lang/Throwable;", "B", "(Lkotlin/coroutines/CoroutineContext;)Z", "isActive", "A", "(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/c2;", "kotlinx-coroutines-core"}, k = 5, mv = {1, 5, 1}, xs = "kotlinx/coroutines/JobKt")
/* loaded from: classes.dex */
public final /* synthetic */ class h2 {

    /* compiled from: Job.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0004"}, d2 = {"kotlinx/coroutines/h2$a", "Lkotlinx/coroutines/j1;", "", "dispose", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class a implements j1 {

        /* renamed from: a */
        final /* synthetic */ Function0<Unit> f72129a;

        public a(Function0<Unit> function0) {
            this.f72129a = function0;
        }

        @Override // kotlinx.coroutines.j1
        public void dispose() {
            this.f72129a.invoke();
        }
    }

    @NotNull
    public static final c2 A(@NotNull CoroutineContext coroutineContext) {
        c2 c2Var = (c2) coroutineContext.get(c2.Q);
        if (c2Var != null) {
            return c2Var;
        }
        throw new IllegalStateException(Intrinsics.stringPlus("Current context doesn't contain Job in it: ", coroutineContext).toString());
    }

    public static final boolean B(@NotNull CoroutineContext coroutineContext) {
        c2 c2Var = (c2) coroutineContext.get(c2.Q);
        return c2Var != null && c2Var.isActive();
    }

    private static final Throwable C(Throwable th, c2 c2Var) {
        return th == null ? new JobCancellationException("Job was cancelled", null, c2Var) : th;
    }

    @InternalCoroutinesApi
    @NotNull
    public static final j1 a(@NotNull Function0<Unit> function0) {
        return new a(function0);
    }

    @NotNull
    public static final f0 b(@Nullable c2 c2Var) {
        return new e2(c2Var);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    @JvmName(name = "Job")
    public static final /* synthetic */ c2 c(c2 c2Var) {
        return f2.b(c2Var);
    }

    public static /* synthetic */ f0 d(c2 c2Var, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            c2Var = null;
        }
        return f2.b(c2Var);
    }

    public static /* synthetic */ c2 e(c2 c2Var, int i2, Object obj) {
        c2 c4;
        if ((i2 & 1) != 0) {
            c2Var = null;
        }
        c4 = c(c2Var);
        return c4;
    }

    public static final void g(@NotNull CoroutineContext coroutineContext, @Nullable CancellationException cancellationException) {
        c2 c2Var = (c2) coroutineContext.get(c2.Q);
        if (c2Var == null) {
            return;
        }
        c2Var.b(cancellationException);
    }

    public static final void h(@NotNull c2 c2Var, @NotNull String str, @Nullable Throwable th) {
        c2Var.b(s1.a(str, th));
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    public static final /* synthetic */ boolean i(CoroutineContext coroutineContext, Throwable th) {
        CoroutineContext.Element element = coroutineContext.get(c2.Q);
        JobSupport jobSupport = element instanceof JobSupport ? (JobSupport) element : null;
        if (jobSupport == null) {
            return false;
        }
        jobSupport.i0(C(th, jobSupport));
        return true;
    }

    public static /* synthetic */ void j(CoroutineContext coroutineContext, CancellationException cancellationException, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            cancellationException = null;
        }
        f2.g(coroutineContext, cancellationException);
    }

    public static /* synthetic */ void k(c2 c2Var, String str, Throwable th, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            th = null;
        }
        f2.h(c2Var, str, th);
    }

    public static /* synthetic */ boolean l(CoroutineContext coroutineContext, Throwable th, int i2, Object obj) {
        boolean i4;
        if ((i2 & 1) != 0) {
            th = null;
        }
        i4 = i(coroutineContext, th);
        return i4;
    }

    @Nullable
    public static final Object m(@NotNull c2 c2Var, @NotNull Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        c2.a.b(c2Var, null, 1, null);
        Object E = c2Var.E(continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return E == coroutine_suspended ? E : Unit.INSTANCE;
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    public static final /* synthetic */ void o(CoroutineContext coroutineContext, Throwable th) {
        c2 c2Var = (c2) coroutineContext.get(c2.Q);
        if (c2Var == null) {
            return;
        }
        for (c2 c2Var2 : c2Var.h()) {
            JobSupport jobSupport = c2Var2 instanceof JobSupport ? (JobSupport) c2Var2 : null;
            if (jobSupport != null) {
                jobSupport.i0(C(th, c2Var));
            }
        }
    }

    public static final void p(@NotNull CoroutineContext coroutineContext, @Nullable CancellationException cancellationException) {
        c2 c2Var = (c2) coroutineContext.get(c2.Q);
        if (c2Var == null) {
            return;
        }
        for (c2 c2Var2 : c2Var.h()) {
            c2Var2.b(cancellationException);
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    public static final /* synthetic */ void r(c2 c2Var, Throwable th) {
        for (c2 c2Var2 : c2Var.h()) {
            JobSupport jobSupport = c2Var2 instanceof JobSupport ? (JobSupport) c2Var2 : null;
            if (jobSupport != null) {
                jobSupport.i0(C(th, c2Var));
            }
        }
    }

    public static final void s(@NotNull c2 c2Var, @Nullable CancellationException cancellationException) {
        for (c2 c2Var2 : c2Var.h()) {
            c2Var2.b(cancellationException);
        }
    }

    public static /* synthetic */ void t(CoroutineContext coroutineContext, Throwable th, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            th = null;
        }
        o(coroutineContext, th);
    }

    public static /* synthetic */ void u(CoroutineContext coroutineContext, CancellationException cancellationException, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            cancellationException = null;
        }
        f2.p(coroutineContext, cancellationException);
    }

    public static /* synthetic */ void v(c2 c2Var, Throwable th, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            th = null;
        }
        r(c2Var, th);
    }

    public static /* synthetic */ void w(c2 c2Var, CancellationException cancellationException, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            cancellationException = null;
        }
        f2.s(c2Var, cancellationException);
    }

    @NotNull
    public static final j1 x(@NotNull c2 c2Var, @NotNull j1 j1Var) {
        return c2Var.u(new l1(j1Var));
    }

    public static final void y(@NotNull CoroutineContext coroutineContext) {
        c2 c2Var = (c2) coroutineContext.get(c2.Q);
        if (c2Var == null) {
            return;
        }
        f2.B(c2Var);
    }

    public static final void z(@NotNull c2 c2Var) {
        if (!c2Var.isActive()) {
            throw c2Var.m();
        }
    }
}
