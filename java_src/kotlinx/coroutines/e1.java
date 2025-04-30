package kotlinx.coroutines;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.InlineMarker;
import kotlinx.coroutines.internal.ThreadContextKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: DispatchedTask.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0011\u001a \u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0000\u001a.\u0010\n\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u00062\u0006\u0010\t\u001a\u00020\bH\u0000\u001a\u0010\u0010\u000b\u001a\u00020\u0004*\u0006\u0012\u0002\b\u00030\u0001H\u0002\u001a'\u0010\u0010\u001a\u00020\u0004*\u0006\u0012\u0002\b\u00030\u00012\u0006\u0010\r\u001a\u00020\f2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\u000eH\u0080\b\u001a\u0019\u0010\u0013\u001a\u00020\u0004*\u0006\u0012\u0002\b\u00030\u00062\u0006\u0010\u0012\u001a\u00020\u0011H\u0080\b\"\u0016\u0010\u0015\u001a\u00020\u00028\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0014\"\u0016\u0010\u0017\u001a\u00020\u00028\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0016\u0010\u0014\"\u001a\u0010\u0019\u001a\u00020\b*\u00020\u00028@@\u0000X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0018\"\u001a\u0010\u001b\u001a\u00020\b*\u00020\u00028@@\u0000X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u0018\"\u001c\u0010\u001f\u001a\u00020\u00028\u0000@\u0001X\u0081T¢\u0006\f\n\u0004\b\u001c\u0010\u0014\u0012\u0004\b\u001d\u0010\u001e\"\u0016\u0010 \u001a\u00020\u00028\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b\n\u0010\u0014\"\u0016\u0010!\u001a\u00020\u00028\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u001a\u0010\u0014¨\u0006\""}, d2 = {"T", "Lkotlinx/coroutines/d1;", "", "mode", "", "a", "Lkotlin/coroutines/Continuation;", "delegate", "", "undispatched", "e", "f", "Lkotlinx/coroutines/n1;", "eventLoop", "Lkotlin/Function0;", "block", "h", "", "exception", com.sdk.a.g.f56552a, "I", "MODE_ATOMIC", com.xinzhu.overmind.utils.helpers.d.f64708a, "MODE_UNDISPATCHED", "(I)Z", "isReusableMode", ai.aD, "isCancellableMode", "b", "getMODE_CANCELLABLE$annotations", "()V", "MODE_CANCELLABLE", "MODE_UNINITIALIZED", "MODE_CANCELLABLE_REUSABLE", "kotlinx-coroutines-core"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class e1 {

    /* renamed from: a  reason: collision with root package name */
    public static final int f71198a = 0;

    /* renamed from: b  reason: collision with root package name */
    public static final int f71199b = 1;

    /* renamed from: c  reason: collision with root package name */
    public static final int f71200c = 2;

    /* renamed from: d  reason: collision with root package name */
    public static final int f71201d = 4;

    /* renamed from: e  reason: collision with root package name */
    public static final int f71202e = -1;

    public static final <T> void a(@NotNull d1<? super T> d1Var, int i2) {
        if (v0.b()) {
            if (!(i2 != -1)) {
                throw new AssertionError();
            }
        }
        Continuation<? super T> e4 = d1Var.e();
        boolean z3 = i2 == 4;
        if (!z3 && (e4 instanceof kotlinx.coroutines.internal.j) && c(i2) == c(d1Var.f71104c)) {
            CoroutineDispatcher coroutineDispatcher = ((kotlinx.coroutines.internal.j) e4).f72182d;
            CoroutineContext context = e4.getContext();
            if (coroutineDispatcher.isDispatchNeeded(context)) {
                coroutineDispatcher.dispatch(context, d1Var);
                return;
            } else {
                f(d1Var);
                return;
            }
        }
        e(d1Var, e4, z3);
    }

    @PublishedApi
    public static /* synthetic */ void b() {
    }

    public static final boolean c(int i2) {
        return i2 == 1 || i2 == 2;
    }

    public static final boolean d(int i2) {
        return i2 == 2;
    }

    public static final <T> void e(@NotNull d1<? super T> d1Var, @NotNull Continuation<? super T> continuation, boolean z3) {
        Object g4;
        boolean v12;
        Object i2 = d1Var.i();
        Throwable f4 = d1Var.f(i2);
        if (f4 != null) {
            Result.Companion companion = Result.Companion;
            g4 = ResultKt.createFailure(f4);
        } else {
            Result.Companion companion2 = Result.Companion;
            g4 = d1Var.g(i2);
        }
        Object m24constructorimpl = Result.m24constructorimpl(g4);
        if (z3) {
            kotlinx.coroutines.internal.j jVar = (kotlinx.coroutines.internal.j) continuation;
            Continuation<T> continuation2 = jVar.f72183e;
            Object obj = jVar.f72185g;
            CoroutineContext context = continuation2.getContext();
            Object c4 = ThreadContextKt.c(context, obj);
            m3<?> f5 = c4 != ThreadContextKt.f72150a ? o0.f(continuation2, context, c4) : null;
            try {
                jVar.f72183e.resumeWith(m24constructorimpl);
                Unit unit = Unit.INSTANCE;
                if (f5 != null) {
                    if (!v12) {
                        return;
                    }
                }
                return;
            } finally {
                if (f5 == null || f5.v1()) {
                    ThreadContextKt.a(context, c4);
                }
            }
        }
        continuation.resumeWith(m24constructorimpl);
    }

    private static final void f(d1<?> d1Var) {
        n1 b4 = g3.f72123a.b();
        if (b4.J()) {
            b4.C(d1Var);
            return;
        }
        b4.G(true);
        try {
            e(d1Var, d1Var.e(), true);
            do {
            } while (b4.M());
        } finally {
            try {
            } finally {
            }
        }
    }

    public static final void g(@NotNull Continuation<?> continuation, @NotNull Throwable th) {
        Result.Companion companion = Result.Companion;
        if (v0.e() && (continuation instanceof CoroutineStackFrame)) {
            th = kotlinx.coroutines.internal.h0.o(th, (CoroutineStackFrame) continuation);
        }
        continuation.resumeWith(Result.m24constructorimpl(ResultKt.createFailure(th)));
    }

    public static final void h(@NotNull d1<?> d1Var, @NotNull n1 n1Var, @NotNull Function0<Unit> function0) {
        n1Var.G(true);
        try {
            function0.invoke();
            do {
            } while (n1Var.M());
            InlineMarker.finallyStart(1);
        } catch (Throwable th) {
            try {
                d1Var.h(th, null);
                InlineMarker.finallyStart(1);
            } catch (Throwable th2) {
                InlineMarker.finallyStart(1);
                n1Var.y(true);
                InlineMarker.finallyEnd(1);
                throw th2;
            }
        }
        n1Var.y(true);
        InlineMarker.finallyEnd(1);
    }
}
