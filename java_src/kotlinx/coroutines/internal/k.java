package kotlinx.coroutines.internal;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.c2;
import kotlinx.coroutines.g3;
import kotlinx.coroutines.m3;
import kotlinx.coroutines.n1;
import kotlinx.coroutines.v0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DispatchedContinuation.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000L\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u001aW\u0010\u000b\u001a\u00020\t\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022%\b\u0002\u0010\n\u001a\u001f\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\t\u0018\u00010\u0004H\u0007ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\f\u001a\u0012\u0010\u000f\u001a\u00020\u000e*\b\u0012\u0004\u0012\u00020\t0\rH\u0000\u001a;\u0010\u0017\u001a\u00020\u000e*\u0006\u0012\u0002\b\u00030\r2\b\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0013\u001a\u00020\u00122\b\b\u0002\u0010\u0014\u001a\u00020\u000e2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\t0\u0015H\u0082\b\"\u001c\u0010\u001d\u001a\u00020\u00188\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u0012\u0004\b\u001b\u0010\u001c\"\u001c\u0010\u001f\u001a\u00020\u00188\u0000@\u0001X\u0081\u0004¢\u0006\f\n\u0004\b\u0017\u0010\u001a\u0012\u0004\b\u001e\u0010\u001c\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006 "}, d2 = {"T", "Lkotlin/coroutines/Continuation;", "Lkotlin/Result;", "result", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "cause", "", "onCancellation", "f", "(Lkotlin/coroutines/Continuation;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V", "Lkotlinx/coroutines/internal/j;", "", "h", "", "contState", "", "mode", "doYield", "Lkotlin/Function0;", "block", "b", "Lkotlinx/coroutines/internal/i0;", "a", "Lkotlinx/coroutines/internal/i0;", "getUNDEFINED$annotations", "()V", "UNDEFINED", "getREUSABLE_CLAIMED$annotations", "REUSABLE_CLAIMED", "kotlinx-coroutines-core"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class k {
    @NotNull

    /* renamed from: a */
    private static final i0 f72186a = new i0("UNDEFINED");
    @JvmField
    @NotNull

    /* renamed from: b */
    public static final i0 f72187b = new i0("REUSABLE_CLAIMED");

    private static final boolean b(j<?> jVar, Object obj, int i2, boolean z3, Function0<Unit> function0) {
        if (v0.b()) {
            if (!(i2 != -1)) {
                throw new AssertionError();
            }
        }
        n1 b4 = g3.f72123a.b();
        if (z3 && b4.K()) {
            return false;
        }
        if (b4.J()) {
            jVar.f72184f = obj;
            jVar.f71104c = i2;
            b4.C(jVar);
            return true;
        }
        b4.G(true);
        try {
            function0.invoke();
            do {
            } while (b4.M());
            InlineMarker.finallyStart(1);
        } catch (Throwable th) {
            try {
                jVar.h(th, null);
                InlineMarker.finallyStart(1);
            } catch (Throwable th2) {
                InlineMarker.finallyStart(1);
                b4.y(true);
                InlineMarker.finallyEnd(1);
                throw th2;
            }
        }
        b4.y(true);
        InlineMarker.finallyEnd(1);
        return false;
    }

    static /* synthetic */ boolean c(j jVar, Object obj, int i2, boolean z3, Function0 function0, int i4, Object obj2) {
        if ((i4 & 4) != 0) {
            z3 = false;
        }
        if (v0.b()) {
            if (!(i2 != -1)) {
                throw new AssertionError();
            }
        }
        n1 b4 = g3.f72123a.b();
        if (z3 && b4.K()) {
            return false;
        }
        if (b4.J()) {
            jVar.f72184f = obj;
            jVar.f71104c = i2;
            b4.C(jVar);
            return true;
        }
        b4.G(true);
        try {
            function0.invoke();
            do {
            } while (b4.M());
            InlineMarker.finallyStart(1);
        } catch (Throwable th) {
            try {
                jVar.h(th, null);
                InlineMarker.finallyStart(1);
            } catch (Throwable th2) {
                InlineMarker.finallyStart(1);
                b4.y(true);
                InlineMarker.finallyEnd(1);
                throw th2;
            }
        }
        b4.y(true);
        InlineMarker.finallyEnd(1);
        return false;
    }

    public static /* synthetic */ void d() {
    }

    private static /* synthetic */ void e() {
    }

    @InternalCoroutinesApi
    public static final <T> void f(@NotNull Continuation<? super T> continuation, @NotNull Object obj, @Nullable Function1<? super Throwable, Unit> function1) {
        boolean z3;
        if (continuation instanceof j) {
            j jVar = (j) continuation;
            Object b4 = kotlinx.coroutines.m0.b(obj, function1);
            if (jVar.f72182d.isDispatchNeeded(jVar.getContext())) {
                jVar.f72184f = b4;
                jVar.f71104c = 1;
                jVar.f72182d.dispatch(jVar.getContext(), jVar);
                return;
            }
            v0.b();
            n1 b5 = g3.f72123a.b();
            if (b5.J()) {
                jVar.f72184f = b4;
                jVar.f71104c = 1;
                b5.C(jVar);
                return;
            }
            b5.G(true);
            try {
                c2 c2Var = (c2) jVar.getContext().get(c2.Q);
                if (c2Var == null || c2Var.isActive()) {
                    z3 = false;
                } else {
                    CancellationException m4 = c2Var.m();
                    jVar.d(b4, m4);
                    Result.Companion companion = Result.Companion;
                    jVar.resumeWith(Result.m24constructorimpl(ResultKt.createFailure(m4)));
                    z3 = true;
                }
                if (!z3) {
                    Continuation<T> continuation2 = jVar.f72183e;
                    Object obj2 = jVar.f72185g;
                    CoroutineContext context = continuation2.getContext();
                    Object c4 = ThreadContextKt.c(context, obj2);
                    m3<?> f4 = c4 != ThreadContextKt.f72150a ? kotlinx.coroutines.o0.f(continuation2, context, c4) : null;
                    jVar.f72183e.resumeWith(obj);
                    Unit unit = Unit.INSTANCE;
                    if (f4 == null || f4.v1()) {
                        ThreadContextKt.a(context, c4);
                    }
                }
                do {
                } while (b5.M());
            } finally {
                try {
                    return;
                } finally {
                }
            }
            return;
        }
        continuation.resumeWith(obj);
    }

    public static /* synthetic */ void g(Continuation continuation, Object obj, Function1 function1, int i2, Object obj2) {
        if ((i2 & 2) != 0) {
            function1 = null;
        }
        f(continuation, obj, function1);
    }

    public static final boolean h(@NotNull j<? super Unit> jVar) {
        Unit unit = Unit.INSTANCE;
        v0.b();
        n1 b4 = g3.f72123a.b();
        if (b4.K()) {
            return false;
        }
        if (b4.J()) {
            jVar.f72184f = unit;
            jVar.f71104c = 1;
            b4.C(jVar);
            return true;
        }
        b4.G(true);
        try {
            jVar.run();
            do {
            } while (b4.M());
        } finally {
            try {
                return false;
            } finally {
            }
        }
        return false;
    }
}
