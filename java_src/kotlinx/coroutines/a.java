package kotlinx.coroutines;

import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AbstractCoroutine.kt */
@InternalCoroutinesApi
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000f\b'\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\u00020\u00022\u00020\u00032\b\u0012\u0004\u0012\u00028\u00000\u00042\u00020\u0005B\u001f\u0012\u0006\u00102\u001a\u00020(\u0012\u0006\u00103\u001a\u00020\f\u0012\u0006\u00104\u001a\u00020\f¢\u0006\u0004\b5\u00106J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00028\u0000H\u0014¢\u0006\u0004\b\b\u0010\tJ\u0018\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0014J\b\u0010\u0010\u001a\u00020\u000fH\u0014J\u0012\u0010\u0013\u001a\u00020\u00072\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0004J\u001e\u0010\u0016\u001a\u00020\u00072\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u0014ø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\tJ\u0012\u0010\u0017\u001a\u00020\u00072\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0014J\u0017\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\nH\u0000¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u000fH\u0010¢\u0006\u0004\b\u001b\u0010\u001cJO\u0010$\u001a\u00020\u0007\"\u0004\b\u0001\u0010\u001d2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010 \u001a\u00028\u00012'\u0010#\u001a#\b\u0001\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00110!¢\u0006\u0002\b\"ø\u0001\u0000¢\u0006\u0004\b$\u0010%R\u0016\u0010&\u001a\u00020\f8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b&\u0010'R\u001f\u0010/\u001a\u00020(8\u0006@\u0006¢\u0006\u0012\n\u0004\b)\u0010*\u0012\u0004\b-\u0010.\u001a\u0004\b+\u0010,R\u0016\u00101\u001a\u00020(8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b0\u0010,\u0082\u0002\u0004\n\u0002\b\u0019¨\u00067"}, d2 = {"Lkotlinx/coroutines/a;", "T", "Lkotlinx/coroutines/JobSupport;", "Lkotlinx/coroutines/c2;", "Lkotlin/coroutines/Continuation;", "Lkotlinx/coroutines/t0;", "value", "", "s1", "(Ljava/lang/Object;)V", "", "cause", "", "handled", "r1", "", "l0", "", NoticeTopAnimActivityDialog_.f34402n, "X0", "Lkotlin/Result;", "result", "resumeWith", "p1", "exception", "F0", "(Ljava/lang/Throwable;)V", "R0", "()Ljava/lang/String;", "R", "Lkotlinx/coroutines/CoroutineStart;", "start", "receiver", "Lkotlin/Function2;", "Lkotlin/ExtensionFunctionType;", "block", "t1", "(Lkotlinx/coroutines/CoroutineStart;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V", "isActive", "()Z", "Lkotlin/coroutines/CoroutineContext;", "b", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "getContext$annotations", "()V", "context", "getCoroutineContext", "coroutineContext", "parentContext", "initParentJob", "active", "<init>", "(Lkotlin/coroutines/CoroutineContext;ZZ)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public abstract class a<T> extends JobSupport implements c2, Continuation<T>, t0 {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final CoroutineContext f70743b;

    public a(@NotNull CoroutineContext coroutineContext, boolean z3, boolean z4) {
        super(z4);
        if (z3) {
            G0((c2) coroutineContext.get(c2.Q));
        }
        this.f70743b = coroutineContext.plus(this);
    }

    public static /* synthetic */ void q1() {
    }

    @Override // kotlinx.coroutines.JobSupport
    public final void F0(@NotNull Throwable th) {
        q0.b(this.f70743b, th);
    }

    @Override // kotlinx.coroutines.JobSupport
    @NotNull
    public String R0() {
        String b4 = o0.b(this.f70743b);
        if (b4 == null) {
            return super.R0();
        }
        return '\"' + b4 + "\":" + super.R0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.JobSupport
    protected final void X0(@Nullable Object obj) {
        if (obj instanceof h0) {
            h0 h0Var = (h0) obj;
            r1(h0Var.f72127a, h0Var.a());
            return;
        }
        s1(obj);
    }

    @Override // kotlin.coroutines.Continuation
    @NotNull
    public final CoroutineContext getContext() {
        return this.f70743b;
    }

    @Override // kotlinx.coroutines.t0
    @NotNull
    public CoroutineContext getCoroutineContext() {
        return this.f70743b;
    }

    @Override // kotlinx.coroutines.JobSupport, kotlinx.coroutines.c2
    public boolean isActive() {
        return super.isActive();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.JobSupport
    @NotNull
    public String l0() {
        return Intrinsics.stringPlus(w0.a(this), " was cancelled");
    }

    protected void p1(@Nullable Object obj) {
        c0(obj);
    }

    protected void r1(@NotNull Throwable th, boolean z3) {
    }

    @Override // kotlin.coroutines.Continuation
    public final void resumeWith(@NotNull Object obj) {
        Object P0 = P0(m0.d(obj, null, 1, null));
        if (P0 == j2.f72257b) {
            return;
        }
        p1(P0);
    }

    protected void s1(T t3) {
    }

    public final <R> void t1(@NotNull CoroutineStart coroutineStart, R r3, @NotNull Function2<? super R, ? super Continuation<? super T>, ? extends Object> function2) {
        coroutineStart.invoke(function2, r3, this);
    }
}
