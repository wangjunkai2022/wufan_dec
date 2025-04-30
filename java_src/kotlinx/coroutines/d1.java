package kotlinx.coroutines;

import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import com.umeng.analytics.pro.ai;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.ThreadContextKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DispatchedTask.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b \u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\u00060\u0002j\u0002`\u0003B\u000f\u0012\u0006\u0010\u0019\u001a\u00020\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u0011\u0010\u0005\u001a\u0004\u0018\u00010\u0004H ¢\u0006\u0004\b\u0005\u0010\u0006J!\u0010\u000b\u001a\u00020\n2\b\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0006\u0010\t\u001a\u00020\bH\u0010¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\u000e\u001a\u00028\u0001\"\u0004\b\u0001\u0010\u00012\b\u0010\r\u001a\u0004\u0018\u00010\u0004H\u0010¢\u0006\u0004\b\u000e\u0010\u000fJ\u001b\u0010\u0010\u001a\u0004\u0018\u00010\b2\b\u0010\r\u001a\u0004\u0018\u00010\u0004H\u0010¢\u0006\u0004\b\u0010\u0010\u0011J\u0006\u0010\u0012\u001a\u00020\nJ\u001a\u0010\u0015\u001a\u00020\n2\b\u0010\u0013\u001a\u0004\u0018\u00010\b2\b\u0010\u0014\u001a\u0004\u0018\u00010\bR\u0016\u0010\u0019\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u001c\u0010\u001d\u001a\b\u0012\u0004\u0012\u00028\u00000\u001a8 @ X \u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001c¨\u0006 "}, d2 = {"Lkotlinx/coroutines/d1;", "T", "Lkotlinx/coroutines/scheduling/i;", "Lkotlinx/coroutines/SchedulerTask;", "", ai.aA, "()Ljava/lang/Object;", "takenState", "", "cause", "", com.xinzhu.overmind.utils.helpers.d.f64708a, "(Ljava/lang/Object;Ljava/lang/Throwable;)V", NoticeTopAnimActivityDialog_.f34402n, com.sdk.a.g.f56552a, "(Ljava/lang/Object;)Ljava/lang/Object;", "f", "(Ljava/lang/Object;)Ljava/lang/Throwable;", "run", "exception", "finallyException", "h", "", ai.aD, "I", "resumeMode", "Lkotlin/coroutines/Continuation;", "e", "()Lkotlin/coroutines/Continuation;", "delegate", "<init>", "(I)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public abstract class d1<T> extends kotlinx.coroutines.scheduling.i {
    @JvmField

    /* renamed from: c  reason: collision with root package name */
    public int f71104c;

    public d1(int i2) {
        this.f71104c = i2;
    }

    public void d(@Nullable Object obj, @NotNull Throwable th) {
    }

    @NotNull
    public abstract Continuation<T> e();

    @Nullable
    public Throwable f(@Nullable Object obj) {
        h0 h0Var = obj instanceof h0 ? (h0) obj : null;
        if (h0Var == null) {
            return null;
        }
        return h0Var.f72127a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T g(@Nullable Object obj) {
        return obj;
    }

    public final void h(@Nullable Throwable th, @Nullable Throwable th2) {
        if (th == null && th2 == null) {
            return;
        }
        if (th != null && th2 != null) {
            ExceptionsKt__ExceptionsKt.addSuppressed(th, th2);
        }
        if (th == null) {
            th = th2;
        }
        Intrinsics.checkNotNull(th);
        q0.b(e().getContext(), new CoroutinesInternalError("Fatal exception in coroutines machinery for " + this + ". Please read KDoc to 'handleFatalException' method and report this incident to maintainers", th));
    }

    @Nullable
    public abstract Object i();

    @Override // java.lang.Runnable
    public final void run() {
        Object m24constructorimpl;
        Object m24constructorimpl2;
        if (v0.b()) {
            if (!(this.f71104c != -1)) {
                throw new AssertionError();
            }
        }
        kotlinx.coroutines.scheduling.j jVar = this.f72379b;
        try {
            kotlinx.coroutines.internal.j jVar2 = (kotlinx.coroutines.internal.j) e();
            Continuation<T> continuation = jVar2.f72183e;
            Object obj = jVar2.f72185g;
            CoroutineContext context = continuation.getContext();
            Object c4 = ThreadContextKt.c(context, obj);
            m3<?> f4 = c4 != ThreadContextKt.f72150a ? o0.f(continuation, context, c4) : null;
            CoroutineContext context2 = continuation.getContext();
            Object i2 = i();
            Throwable f5 = f(i2);
            c2 c2Var = (f5 == null && e1.c(this.f71104c)) ? (c2) context2.get(c2.Q) : null;
            if (c2Var != null && !c2Var.isActive()) {
                Throwable m4 = c2Var.m();
                d(i2, m4);
                Result.Companion companion = Result.Companion;
                if (v0.e() && (continuation instanceof CoroutineStackFrame)) {
                    m4 = kotlinx.coroutines.internal.h0.o(m4, (CoroutineStackFrame) continuation);
                }
                continuation.resumeWith(Result.m24constructorimpl(ResultKt.createFailure(m4)));
            } else if (f5 != null) {
                Result.Companion companion2 = Result.Companion;
                continuation.resumeWith(Result.m24constructorimpl(ResultKt.createFailure(f5)));
            } else {
                T g4 = g(i2);
                Result.Companion companion3 = Result.Companion;
                continuation.resumeWith(Result.m24constructorimpl(g4));
            }
            Unit unit = Unit.INSTANCE;
            if (f4 == null || f4.v1()) {
                ThreadContextKt.a(context, c4);
            }
            try {
                Result.Companion companion4 = Result.Companion;
                jVar.q();
                m24constructorimpl2 = Result.m24constructorimpl(unit);
            } catch (Throwable th) {
                Result.Companion companion5 = Result.Companion;
                m24constructorimpl2 = Result.m24constructorimpl(ResultKt.createFailure(th));
            }
            h(null, Result.m27exceptionOrNullimpl(m24constructorimpl2));
        } catch (Throwable th2) {
            try {
                Result.Companion companion6 = Result.Companion;
                jVar.q();
                m24constructorimpl = Result.m24constructorimpl(Unit.INSTANCE);
            } catch (Throwable th3) {
                Result.Companion companion7 = Result.Companion;
                m24constructorimpl = Result.m24constructorimpl(ResultKt.createFailure(th3));
            }
            h(th2, Result.m27exceptionOrNullimpl(m24constructorimpl));
        }
    }
}
