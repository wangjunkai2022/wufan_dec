package kotlinx.coroutines.internal;

import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import com.umeng.analytics.pro.ai;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.c2;
import kotlinx.coroutines.d1;
import kotlinx.coroutines.g3;
import kotlinx.coroutines.m3;
import kotlinx.coroutines.n1;
import kotlinx.coroutines.v0;
import kotlinx.coroutines.w0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DispatchedContinuation.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0010\b\u0000\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00000\u00022\u00060\u0003j\u0002`\u00042\b\u0012\u0004\u0012\u00028\u00000\u0005B\u001d\u0012\u0006\u0010@\u001a\u00020>\u0012\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005¢\u0006\u0004\bL\u0010MJ\u0017\u0010\b\u001a\n\u0018\u00010\u0006j\u0004\u0018\u0001`\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\r\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ\r\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\r¢\u0006\u0004\b\u0010\u0010\u000fJ\u0015\u0010\u0012\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0011¢\u0006\u0004\b\u0012\u0010\u0013J\u001b\u0010\u0017\u001a\u0004\u0018\u00010\u00162\n\u0010\u0015\u001a\u0006\u0012\u0002\b\u00030\u0014¢\u0006\u0004\b\u0017\u0010\u0018J\u0015\u0010\u001a\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u0011\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0010¢\u0006\u0004\b\u001d\u0010\u001eJ \u0010!\u001a\u00020\r2\f\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000\u001fH\u0016ø\u0001\u0000¢\u0006\u0004\b!\u0010\"JH\u0010'\u001a\u00020\r2\f\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000\u001f2%\b\b\u0010&\u001a\u001f\u0012\u0013\u0012\u00110\u0016¢\u0006\f\b$\u0012\b\b%\u0012\u0004\b\b(\u0019\u0012\u0004\u0012\u00020\r\u0018\u00010#H\u0086\bø\u0001\u0000¢\u0006\u0004\b'\u0010(J!\u0010*\u001a\u00020\r2\b\u0010)\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u0019\u001a\u00020\u0016H\u0010¢\u0006\u0004\b*\u0010+J\u001a\u0010-\u001a\u00020\n2\b\u0010,\u001a\u0004\u0018\u00010\u001cH\u0086\b¢\u0006\u0004\b-\u0010.J!\u0010/\u001a\u00020\r2\f\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000\u001fH\u0086\bø\u0001\u0000¢\u0006\u0004\b/\u0010\"J\u001f\u00103\u001a\u00020\r2\u0006\u00101\u001a\u0002002\u0006\u00102\u001a\u00028\u0000H\u0000¢\u0006\u0004\b3\u00104J\u000f\u00106\u001a\u000205H\u0016¢\u0006\u0004\b6\u00107R\u001e\u0010:\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`\u00048V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b8\u00109R\u001c\u0010=\u001a\b\u0012\u0004\u0012\u00028\u00000\u00058P@\u0010X\u0090\u0004¢\u0006\u0006\u001a\u0004\b;\u0010<R\u0016\u0010@\u001a\u00020>8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b*\u0010?R\u001e\u0010D\u001a\u0004\u0018\u00010\u001c8\u0000@\u0000X\u0081\u000e¢\u0006\f\n\u0004\bA\u0010B\u0012\u0004\bC\u0010\u000fR\u001c\u0010F\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00118B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\bE\u0010\u0013R\u001c\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u00058\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b;\u0010GR\u0016\u0010I\u001a\u00020\u001c8\u0000@\u0001X\u0081\u0004¢\u0006\u0006\n\u0004\bH\u0010BR\u0016\u00101\u001a\u0002008\u0016@\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\bJ\u0010K\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006N"}, d2 = {"Lkotlinx/coroutines/internal/j;", "T", "Lkotlinx/coroutines/d1;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Lkotlinx/coroutines/internal/CoroutineStackFrame;", "Lkotlin/coroutines/Continuation;", "Ljava/lang/StackTraceElement;", "Lkotlinx/coroutines/internal/StackTraceElement;", "getStackTraceElement", "()Ljava/lang/StackTraceElement;", "", net.lingala.zip4j.util.e.f73017f0, "()Z", "", "j", "()V", ai.aE, "Lkotlinx/coroutines/q;", "k", "()Lkotlinx/coroutines/q;", "Lkotlinx/coroutines/p;", "continuation", "", ai.aB, "(Lkotlinx/coroutines/p;)Ljava/lang/Throwable;", "cause", ai.aF, "(Ljava/lang/Throwable;)Z", "", ai.aA, "()Ljava/lang/Object;", "Lkotlin/Result;", "result", "resumeWith", "(Ljava/lang/Object;)V", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "onCancellation", "v", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V", "takenState", com.xinzhu.overmind.utils.helpers.d.f64708a, "(Ljava/lang/Object;Ljava/lang/Throwable;)V", NoticeTopAnimActivityDialog_.f34402n, "w", "(Ljava/lang/Object;)Z", "x", "Lkotlin/coroutines/CoroutineContext;", "context", "value", "m", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V", "", "toString", "()Ljava/lang/String;", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "callerFrame", "e", "()Lkotlin/coroutines/Continuation;", "delegate", "Lkotlinx/coroutines/CoroutineDispatcher;", "Lkotlinx/coroutines/CoroutineDispatcher;", "dispatcher", "f", "Ljava/lang/Object;", "get_state$kotlinx_coroutines_core$annotations", "_state", "n", "reusableCancellableContinuation", "Lkotlin/coroutines/Continuation;", com.sdk.a.g.f56552a, "countOrElement", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "<init>", "(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/coroutines/Continuation;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class j<T> extends d1<T> implements CoroutineStackFrame, Continuation<T> {

    /* renamed from: h  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f72181h = AtomicReferenceFieldUpdater.newUpdater(j.class, Object.class, "_reusableCancellableContinuation");
    @NotNull
    private volatile /* synthetic */ Object _reusableCancellableContinuation;
    @JvmField
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final CoroutineDispatcher f72182d;
    @JvmField
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final Continuation<T> f72183e;
    @JvmField
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public Object f72184f;
    @JvmField
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public final Object f72185g;

    /* JADX WARN: Multi-variable type inference failed */
    public j(@NotNull CoroutineDispatcher coroutineDispatcher, @NotNull Continuation<? super T> continuation) {
        super(-1);
        this.f72182d = coroutineDispatcher;
        this.f72183e = continuation;
        this.f72184f = k.a();
        this.f72185g = ThreadContextKt.b(getContext());
        this._reusableCancellableContinuation = null;
    }

    private final kotlinx.coroutines.q<?> n() {
        Object obj = this._reusableCancellableContinuation;
        if (obj instanceof kotlinx.coroutines.q) {
            return (kotlinx.coroutines.q) obj;
        }
        return null;
    }

    public static /* synthetic */ void o() {
    }

    @Override // kotlinx.coroutines.d1
    public void d(@Nullable Object obj, @NotNull Throwable th) {
        if (obj instanceof kotlinx.coroutines.i0) {
            ((kotlinx.coroutines.i0) obj).f72134b.invoke(th);
        }
    }

    @Override // kotlinx.coroutines.d1
    @NotNull
    public Continuation<T> e() {
        return this;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @Nullable
    public CoroutineStackFrame getCallerFrame() {
        Continuation<T> continuation = this.f72183e;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    @Override // kotlin.coroutines.Continuation
    @NotNull
    public CoroutineContext getContext() {
        return this.f72183e.getContext();
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @Nullable
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override // kotlinx.coroutines.d1
    @Nullable
    public Object i() {
        Object obj = this.f72184f;
        if (v0.b()) {
            if (!(obj != k.a())) {
                throw new AssertionError();
            }
        }
        this.f72184f = k.a();
        return obj;
    }

    public final void j() {
        do {
        } while (this._reusableCancellableContinuation == k.f72187b);
    }

    @Nullable
    public final kotlinx.coroutines.q<T> k() {
        while (true) {
            Object obj = this._reusableCancellableContinuation;
            if (obj == null) {
                this._reusableCancellableContinuation = k.f72187b;
                return null;
            } else if (obj instanceof kotlinx.coroutines.q) {
                if (f72181h.compareAndSet(this, obj, k.f72187b)) {
                    return (kotlinx.coroutines.q) obj;
                }
            } else if (obj != k.f72187b && !(obj instanceof Throwable)) {
                throw new IllegalStateException(Intrinsics.stringPlus("Inconsistent state ", obj).toString());
            }
        }
    }

    public final void m(@NotNull CoroutineContext coroutineContext, T t3) {
        this.f72184f = t3;
        this.f71104c = 1;
        this.f72182d.dispatchYield(coroutineContext, this);
    }

    public final boolean r() {
        return this._reusableCancellableContinuation != null;
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(@NotNull Object obj) {
        CoroutineContext context = this.f72183e.getContext();
        Object d4 = kotlinx.coroutines.m0.d(obj, null, 1, null);
        if (this.f72182d.isDispatchNeeded(context)) {
            this.f72184f = d4;
            this.f71104c = 0;
            this.f72182d.dispatch(context, this);
            return;
        }
        v0.b();
        n1 b4 = g3.f72123a.b();
        if (b4.J()) {
            this.f72184f = d4;
            this.f71104c = 0;
            b4.C(this);
            return;
        }
        b4.G(true);
        try {
            CoroutineContext context2 = getContext();
            Object c4 = ThreadContextKt.c(context2, this.f72185g);
            this.f72183e.resumeWith(obj);
            Unit unit = Unit.INSTANCE;
            ThreadContextKt.a(context2, c4);
            do {
            } while (b4.M());
        } finally {
            try {
            } finally {
            }
        }
    }

    public final boolean t(@NotNull Throwable th) {
        while (true) {
            Object obj = this._reusableCancellableContinuation;
            i0 i0Var = k.f72187b;
            if (Intrinsics.areEqual(obj, i0Var)) {
                if (f72181h.compareAndSet(this, i0Var, th)) {
                    return true;
                }
            } else if (obj instanceof Throwable) {
                return true;
            } else {
                if (f72181h.compareAndSet(this, obj, null)) {
                    return false;
                }
            }
        }
    }

    @NotNull
    public String toString() {
        return "DispatchedContinuation[" + this.f72182d + ", " + w0.c(this.f72183e) + ']';
    }

    public final void u() {
        j();
        kotlinx.coroutines.q<?> n4 = n();
        if (n4 == null) {
            return;
        }
        n4.t();
    }

    public final void v(@NotNull Object obj, @Nullable Function1<? super Throwable, Unit> function1) {
        boolean z3;
        Object b4 = kotlinx.coroutines.m0.b(obj, function1);
        if (this.f72182d.isDispatchNeeded(getContext())) {
            this.f72184f = b4;
            this.f71104c = 1;
            this.f72182d.dispatch(getContext(), this);
            return;
        }
        v0.b();
        n1 b5 = g3.f72123a.b();
        if (b5.J()) {
            this.f72184f = b4;
            this.f71104c = 1;
            b5.C(this);
            return;
        }
        b5.G(true);
        try {
            c2 c2Var = (c2) getContext().get(c2.Q);
            if (c2Var == null || c2Var.isActive()) {
                z3 = false;
            } else {
                CancellationException m4 = c2Var.m();
                d(b4, m4);
                Result.Companion companion = Result.Companion;
                resumeWith(Result.m24constructorimpl(ResultKt.createFailure(m4)));
                z3 = true;
            }
            if (!z3) {
                Continuation<T> continuation = this.f72183e;
                Object obj2 = this.f72185g;
                CoroutineContext context = continuation.getContext();
                Object c4 = ThreadContextKt.c(context, obj2);
                m3<?> f4 = c4 != ThreadContextKt.f72150a ? kotlinx.coroutines.o0.f(continuation, context, c4) : null;
                this.f72183e.resumeWith(obj);
                Unit unit = Unit.INSTANCE;
                InlineMarker.finallyStart(1);
                if (f4 == null || f4.v1()) {
                    ThreadContextKt.a(context, c4);
                }
                InlineMarker.finallyEnd(1);
            }
            do {
            } while (b5.M());
            InlineMarker.finallyStart(1);
        } catch (Throwable th) {
            try {
                h(th, null);
                InlineMarker.finallyStart(1);
            } catch (Throwable th2) {
                InlineMarker.finallyStart(1);
                b5.y(true);
                InlineMarker.finallyEnd(1);
                throw th2;
            }
        }
        b5.y(true);
        InlineMarker.finallyEnd(1);
    }

    public final boolean w(@Nullable Object obj) {
        c2 c2Var = (c2) getContext().get(c2.Q);
        if (c2Var == null || c2Var.isActive()) {
            return false;
        }
        CancellationException m4 = c2Var.m();
        d(obj, m4);
        Result.Companion companion = Result.Companion;
        resumeWith(Result.m24constructorimpl(ResultKt.createFailure(m4)));
        return true;
    }

    public final void x(@NotNull Object obj) {
        Continuation<T> continuation = this.f72183e;
        Object obj2 = this.f72185g;
        CoroutineContext context = continuation.getContext();
        Object c4 = ThreadContextKt.c(context, obj2);
        m3<?> f4 = c4 != ThreadContextKt.f72150a ? kotlinx.coroutines.o0.f(continuation, context, c4) : null;
        try {
            this.f72183e.resumeWith(obj);
            Unit unit = Unit.INSTANCE;
        } finally {
            InlineMarker.finallyStart(1);
            if (f4 == null || f4.v1()) {
                ThreadContextKt.a(context, c4);
            }
            InlineMarker.finallyEnd(1);
        }
    }

    @Nullable
    public final Throwable z(@NotNull kotlinx.coroutines.p<?> pVar) {
        i0 i0Var;
        do {
            Object obj = this._reusableCancellableContinuation;
            i0Var = k.f72187b;
            if (obj != i0Var) {
                if (obj instanceof Throwable) {
                    if (f72181h.compareAndSet(this, obj, null)) {
                        return (Throwable) obj;
                    }
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
                throw new IllegalStateException(Intrinsics.stringPlus("Inconsistent state ", obj).toString());
            }
        } while (!f72181h.compareAndSet(this, i0Var, pVar));
        return null;
    }
}
