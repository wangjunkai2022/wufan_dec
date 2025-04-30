package kotlinx.coroutines;

import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import com.umeng.analytics.pro.ai;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.c2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CancellableContinuationImpl.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000¸\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\n\b\u0011\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u00032\u00060\u0004j\u0002`\u0005B \u0012\r\u0010\u0081\u0001\u001a\b\u0012\u0004\u0012\u00028\u00000~\u0012\u0006\u0010-\u001a\u00020'¢\u0006\u0006\b\u0086\u0001\u0010\u0087\u0001J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u001e\u0010\u0010\u001a\u00020\u000e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rH\u0082\b¢\u0006\u0004\b\u0010\u0010\u0011JB\u0010\u0017\u001a\u00020\u000e2'\u0010\u0016\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\t¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000e0\u0012j\u0002`\u00152\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0019\u0010\bJ\u000f\u0010\u001a\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001a\u0010\bJ\u0011\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJB\u0010\"\u001a\u00020\u000e2'\u0010\u0016\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\t¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000e0\u0012j\u0002`\u00152\b\u0010!\u001a\u0004\u0018\u00010 H\u0002¢\u0006\u0004\b\"\u0010#J8\u0010%\u001a\u00020$2'\u0010\u0016\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\t¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000e0\u0012j\u0002`\u0015H\u0002¢\u0006\u0004\b%\u0010&J\u0017\u0010)\u001a\u00020\u000e2\u0006\u0010(\u001a\u00020'H\u0002¢\u0006\u0004\b)\u0010*JZ\u00100\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020+2\b\u0010,\u001a\u0004\u0018\u00010 2\u0006\u0010-\u001a\u00020'2#\u0010.\u001a\u001f\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u00122\b\u0010/\u001a\u0004\u0018\u00010 H\u0002¢\u0006\u0004\b0\u00101JH\u00102\u001a\u00020\u000e2\b\u0010,\u001a\u0004\u0018\u00010 2\u0006\u0010-\u001a\u00020'2%\b\u0002\u0010.\u001a\u001f\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0012H\u0002¢\u0006\u0004\b2\u00103JJ\u00105\u001a\u0004\u0018\u0001042\b\u0010,\u001a\u0004\u0018\u00010 2\b\u0010/\u001a\u0004\u0018\u00010 2#\u0010.\u001a\u001f\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0012H\u0002¢\u0006\u0004\b5\u00106J\u0019\u00108\u001a\u0002072\b\u0010,\u001a\u0004\u0018\u00010 H\u0002¢\u0006\u0004\b8\u00109J\u000f\u0010:\u001a\u00020\u000eH\u0002¢\u0006\u0004\b:\u0010\u001fJ\u000f\u0010;\u001a\u00020\u000eH\u0016¢\u0006\u0004\b;\u0010\u001fJ\u000f\u0010<\u001a\u00020\u0006H\u0001¢\u0006\u0004\b<\u0010\bJ\u0017\u0010?\u001a\n\u0018\u00010=j\u0004\u0018\u0001`>H\u0016¢\u0006\u0004\b?\u0010@J\u0011\u0010A\u001a\u0004\u0018\u00010 H\u0010¢\u0006\u0004\bA\u0010BJ!\u0010D\u001a\u00020\u000e2\b\u0010C\u001a\u0004\u0018\u00010 2\u0006\u0010\n\u001a\u00020\tH\u0010¢\u0006\u0004\bD\u0010EJ\u0019\u0010F\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\bF\u0010\fJ\u0017\u0010G\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\tH\u0000¢\u0006\u0004\bG\u0010HJ\u001f\u0010I\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020$2\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\bI\u0010JJ8\u0010K\u001a\u00020\u000e2!\u0010.\u001a\u001d\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000e0\u00122\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\bK\u0010\u0018J\u0017\u0010N\u001a\u00020\t2\u0006\u0010M\u001a\u00020LH\u0016¢\u0006\u0004\bN\u0010OJ\u0011\u0010P\u001a\u0004\u0018\u00010 H\u0001¢\u0006\u0004\bP\u0010BJ \u0010S\u001a\u00020\u000e2\f\u0010R\u001a\b\u0012\u0004\u0012\u00028\u00000QH\u0016ø\u0001\u0000¢\u0006\u0004\bS\u0010TJ<\u0010V\u001a\u00020\u000e2\u0006\u0010U\u001a\u00028\u00002#\u0010.\u001a\u001f\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0012H\u0016¢\u0006\u0004\bV\u0010WJ8\u0010X\u001a\u00020\u000e2'\u0010\u0016\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\t¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000e0\u0012j\u0002`\u0015H\u0016¢\u0006\u0004\bX\u0010YJ\u000f\u0010Z\u001a\u00020\u000eH\u0000¢\u0006\u0004\bZ\u0010\u001fJ#\u0010[\u001a\u0004\u0018\u00010 2\u0006\u0010U\u001a\u00028\u00002\b\u0010/\u001a\u0004\u0018\u00010 H\u0016¢\u0006\u0004\b[\u0010\\JH\u0010]\u001a\u0004\u0018\u00010 2\u0006\u0010U\u001a\u00028\u00002\b\u0010/\u001a\u0004\u0018\u00010 2#\u0010.\u001a\u001f\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0012H\u0016¢\u0006\u0004\b]\u0010^J\u0019\u0010`\u001a\u0004\u0018\u00010 2\u0006\u0010_\u001a\u00020\tH\u0016¢\u0006\u0004\b`\u0010aJ\u0017\u0010c\u001a\u00020\u000e2\u0006\u0010b\u001a\u00020 H\u0016¢\u0006\u0004\bc\u0010TJ\u001b\u0010e\u001a\u00020\u000e*\u00020d2\u0006\u0010U\u001a\u00028\u0000H\u0016¢\u0006\u0004\be\u0010fJ\u001b\u0010g\u001a\u00020\u000e*\u00020d2\u0006\u0010_\u001a\u00020\tH\u0016¢\u0006\u0004\bg\u0010hJ\u001f\u0010i\u001a\u00028\u0001\"\u0004\b\u0001\u0010\u00012\b\u0010!\u001a\u0004\u0018\u00010 H\u0010¢\u0006\u0004\bi\u0010jJ\u001b\u0010k\u001a\u0004\u0018\u00010\t2\b\u0010!\u001a\u0004\u0018\u00010 H\u0010¢\u0006\u0004\bk\u0010lJ\u000f\u0010n\u001a\u00020mH\u0016¢\u0006\u0004\bn\u0010oJ\u000f\u0010p\u001a\u00020mH\u0014¢\u0006\u0004\bp\u0010oR\u001e\u0010s\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u00058V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bq\u0010rR\u001c\u0010y\u001a\u00020t8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\bu\u0010v\u001a\u0004\bw\u0010xR\u0016\u0010z\u001a\u00020\u00068V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bz\u0010\bR\u0016\u0010{\u001a\u00020\u00068V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b{\u0010\bR\u0018\u0010}\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010|R$\u0010\u0081\u0001\u001a\b\u0012\u0004\u0012\u00028\u00000~8\u0000@\u0000X\u0080\u0004¢\u0006\r\n\u0004\bD\u0010\u007f\u001a\u0005\bu\u0010\u0080\u0001R\u0018\u0010\u0082\u0001\u001a\u00020\u00068V@\u0016X\u0096\u0004¢\u0006\u0007\u001a\u0005\b\u0082\u0001\u0010\bR\u0018\u0010\u0084\u0001\u001a\u00020m8B@\u0002X\u0082\u0004¢\u0006\u0007\u001a\u0005\b\u0083\u0001\u0010oR\u0019\u0010!\u001a\u0004\u0018\u00010 8@@\u0000X\u0080\u0004¢\u0006\u0007\u001a\u0005\b\u0085\u0001\u0010B\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0088\u0001"}, d2 = {"Lkotlinx/coroutines/q;", "T", "Lkotlinx/coroutines/d1;", "Lkotlinx/coroutines/p;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Lkotlinx/coroutines/internal/CoroutineStackFrame;", "", "C", "()Z", "", "cause", net.lingala.zip4j.util.e.f73017f0, "(Ljava/lang/Throwable;)Z", "Lkotlin/Function0;", "", "block", "n", "(Lkotlin/jvm/functions/Function0;)V", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "Lkotlinx/coroutines/CompletionHandler;", "handler", "k", "(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V", "R", "P", "Lkotlinx/coroutines/j1;", "B", "()Lkotlinx/coroutines/j1;", "H", "()V", "", NoticeTopAnimActivityDialog_.f34402n, "E", "(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V", "Lkotlinx/coroutines/n;", "D", "(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/n;", "", "mode", "v", "(I)V", "Lkotlinx/coroutines/q2;", "proposedUpdate", "resumeMode", "onCancellation", "idempotent", "O", "(Lkotlinx/coroutines/q2;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Object;", "J", "(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V", "Lkotlinx/coroutines/internal/i0;", "Q", "(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/i0;", "", "j", "(Ljava/lang/Object;)Ljava/lang/Void;", ai.aE, "N", "I", "Ljava/lang/StackTraceElement;", "Lkotlinx/coroutines/internal/StackTraceElement;", "getStackTraceElement", "()Ljava/lang/StackTraceElement;", ai.aA, "()Ljava/lang/Object;", "takenState", com.xinzhu.overmind.utils.helpers.d.f64708a, "(Ljava/lang/Object;Ljava/lang/Throwable;)V", "a", "G", "(Ljava/lang/Throwable;)V", "m", "(Lkotlinx/coroutines/n;Ljava/lang/Throwable;)V", "o", "Lkotlinx/coroutines/c2;", "parent", "w", "(Lkotlinx/coroutines/c2;)Ljava/lang/Throwable;", "x", "Lkotlin/Result;", "result", "resumeWith", "(Ljava/lang/Object;)V", "value", "y", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V", "l", "(Lkotlin/jvm/functions/Function1;)V", ai.aF, ai.aD, "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "L", "(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "exception", ai.av, "(Ljava/lang/Throwable;)Ljava/lang/Object;", "token", "V", "Lkotlinx/coroutines/CoroutineDispatcher;", "M", "(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Object;)V", "q", "(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Throwable;)V", com.sdk.a.g.f56552a, "(Ljava/lang/Object;)Ljava/lang/Object;", "f", "(Ljava/lang/Object;)Ljava/lang/Throwable;", "", "toString", "()Ljava/lang/String;", "F", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "callerFrame", "Lkotlin/coroutines/CoroutineContext;", "e", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "context", "isActive", "isCancelled", "Lkotlinx/coroutines/j1;", "parentHandle", "Lkotlin/coroutines/Continuation;", "Lkotlin/coroutines/Continuation;", "()Lkotlin/coroutines/Continuation;", "delegate", "isCompleted", "A", "stateDebugRepresentation", ai.aB, "<init>", "(Lkotlin/coroutines/Continuation;I)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
@PublishedApi
/* loaded from: classes5.dex */
public class q<T> extends d1<T> implements p<T>, CoroutineStackFrame {

    /* renamed from: g  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f72306g = AtomicIntegerFieldUpdater.newUpdater(q.class, "_decision");

    /* renamed from: h  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f72307h = AtomicReferenceFieldUpdater.newUpdater(q.class, Object.class, "_state");
    @NotNull
    private volatile /* synthetic */ int _decision;
    @NotNull
    private volatile /* synthetic */ Object _state;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final Continuation<T> f72308d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final CoroutineContext f72309e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private j1 f72310f;

    /* JADX WARN: Multi-variable type inference failed */
    public q(@NotNull Continuation<? super T> continuation, int i2) {
        super(i2);
        this.f72308d = continuation;
        if (v0.b()) {
            if (!(i2 != -1)) {
                throw new AssertionError();
            }
        }
        this.f72309e = continuation.getContext();
        this._decision = 0;
        this._state = d.f71103a;
    }

    private final String A() {
        Object z3 = z();
        return z3 instanceof q2 ? "Active" : z3 instanceof t ? "Cancelled" : "Completed";
    }

    private final j1 B() {
        c2 c2Var = (c2) getContext().get(c2.Q);
        if (c2Var == null) {
            return null;
        }
        j1 f4 = c2.a.f(c2Var, true, false, new u(this), 2, null);
        this.f72310f = f4;
        return f4;
    }

    private final boolean C() {
        return e1.d(this.f71104c) && ((kotlinx.coroutines.internal.j) this.f72308d).r();
    }

    private final n D(Function1<? super Throwable, Unit> function1) {
        return function1 instanceof n ? (n) function1 : new z1(function1);
    }

    private final void E(Function1<? super Throwable, Unit> function1, Object obj) {
        throw new IllegalStateException(("It's prohibited to register multiple handlers, tried to register " + function1 + ", already has " + obj).toString());
    }

    private final void H() {
        Continuation<T> continuation = this.f72308d;
        kotlinx.coroutines.internal.j jVar = continuation instanceof kotlinx.coroutines.internal.j ? (kotlinx.coroutines.internal.j) continuation : null;
        Throwable z3 = jVar != null ? jVar.z(this) : null;
        if (z3 == null) {
            return;
        }
        t();
        a(z3);
    }

    private final void J(Object obj, int i2, Function1<? super Throwable, Unit> function1) {
        Object obj2;
        do {
            obj2 = this._state;
            if (obj2 instanceof q2) {
            } else {
                if (obj2 instanceof t) {
                    t tVar = (t) obj2;
                    if (tVar.c()) {
                        if (function1 == null) {
                            return;
                        }
                        o(function1, tVar.f72127a);
                        return;
                    }
                }
                j(obj);
                throw new KotlinNothingValueException();
            }
        } while (!f72307h.compareAndSet(this, obj2, O((q2) obj2, obj, i2, function1, null)));
        u();
        v(i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void K(q qVar, Object obj, int i2, Function1 function1, int i4, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: resumeImpl");
        }
        if ((i4 & 4) != 0) {
            function1 = null;
        }
        qVar.J(obj, i2, function1);
    }

    private final Object O(q2 q2Var, Object obj, int i2, Function1<? super Throwable, Unit> function1, Object obj2) {
        if (obj instanceof h0) {
            if (v0.b()) {
                if (!(obj2 == null)) {
                    throw new AssertionError();
                }
            }
            if (v0.b()) {
                if (function1 == null) {
                    return obj;
                }
                throw new AssertionError();
            }
            return obj;
        } else if (e1.c(i2) || obj2 != null) {
            if (function1 != null || (((q2Var instanceof n) && !(q2Var instanceof f)) || obj2 != null)) {
                return new g0(obj, q2Var instanceof n ? (n) q2Var : null, function1, obj2, null, 16, null);
            }
            return obj;
        } else {
            return obj;
        }
    }

    private final boolean P() {
        do {
            int i2 = this._decision;
            if (i2 != 0) {
                if (i2 == 1) {
                    return false;
                }
                throw new IllegalStateException("Already resumed".toString());
            }
        } while (!f72306g.compareAndSet(this, 0, 2));
        return true;
    }

    private final kotlinx.coroutines.internal.i0 Q(Object obj, Object obj2, Function1<? super Throwable, Unit> function1) {
        Object obj3;
        do {
            obj3 = this._state;
            if (obj3 instanceof q2) {
            } else if (!(obj3 instanceof g0) || obj2 == null) {
                return null;
            } else {
                g0 g0Var = (g0) obj3;
                if (g0Var.f72117d == obj2) {
                    if (!v0.b() || Intrinsics.areEqual(g0Var.f72114a, obj)) {
                        return r.f72315d;
                    }
                    throw new AssertionError();
                }
                return null;
            }
        } while (!f72307h.compareAndSet(this, obj3, O((q2) obj3, obj, this.f71104c, function1, obj2)));
        u();
        return r.f72315d;
    }

    private final boolean R() {
        do {
            int i2 = this._decision;
            if (i2 != 0) {
                if (i2 == 2) {
                    return false;
                }
                throw new IllegalStateException("Already suspended".toString());
            }
        } while (!f72306g.compareAndSet(this, 0, 1));
        return true;
    }

    private final Void j(Object obj) {
        throw new IllegalStateException(Intrinsics.stringPlus("Already resumed, but proposed with update ", obj).toString());
    }

    private final void k(Function1<? super Throwable, Unit> function1, Throwable th) {
        try {
            function1.invoke(th);
        } catch (Throwable th2) {
            q0.b(getContext(), new CompletionHandlerException(Intrinsics.stringPlus("Exception in invokeOnCancellation handler for ", this), th2));
        }
    }

    private final void n(Function0<Unit> function0) {
        try {
            function0.invoke();
        } catch (Throwable th) {
            q0.b(getContext(), new CompletionHandlerException(Intrinsics.stringPlus("Exception in invokeOnCancellation handler for ", this), th));
        }
    }

    private final boolean r(Throwable th) {
        if (C()) {
            return ((kotlinx.coroutines.internal.j) this.f72308d).t(th);
        }
        return false;
    }

    private final void u() {
        if (C()) {
            return;
        }
        t();
    }

    private final void v(int i2) {
        if (P()) {
            return;
        }
        e1.a(this, i2);
    }

    @NotNull
    protected String F() {
        return "CancellableContinuation";
    }

    public final void G(@NotNull Throwable th) {
        if (r(th)) {
            return;
        }
        a(th);
        u();
    }

    @JvmName(name = "resetStateReusable")
    public final boolean I() {
        if (v0.b()) {
            if (!(this.f71104c == 2)) {
                throw new AssertionError();
            }
        }
        if (v0.b()) {
            if (!(this.f72310f != p2.f72305a)) {
                throw new AssertionError();
            }
        }
        Object obj = this._state;
        if (!v0.b() || (!(obj instanceof q2))) {
            if ((obj instanceof g0) && ((g0) obj).f72117d != null) {
                t();
                return false;
            }
            this._decision = 0;
            this._state = d.f71103a;
            return true;
        }
        throw new AssertionError();
    }

    @Override // kotlinx.coroutines.p
    @Nullable
    public Object L(T t3, @Nullable Object obj, @Nullable Function1<? super Throwable, Unit> function1) {
        return Q(t3, obj, function1);
    }

    @Override // kotlinx.coroutines.p
    public void M(@NotNull CoroutineDispatcher coroutineDispatcher, T t3) {
        Continuation<T> continuation = this.f72308d;
        kotlinx.coroutines.internal.j jVar = continuation instanceof kotlinx.coroutines.internal.j ? (kotlinx.coroutines.internal.j) continuation : null;
        K(this, t3, (jVar != null ? jVar.f72182d : null) == coroutineDispatcher ? 4 : this.f71104c, null, 4, null);
    }

    @Override // kotlinx.coroutines.p
    public void N() {
        j1 B = B();
        if (B != null && isCompleted()) {
            B.dispose();
            this.f72310f = p2.f72305a;
        }
    }

    @Override // kotlinx.coroutines.p
    public void V(@NotNull Object obj) {
        if (v0.b()) {
            if (!(obj == r.f72315d)) {
                throw new AssertionError();
            }
        }
        v(this.f71104c);
    }

    @Override // kotlinx.coroutines.p
    public boolean a(@Nullable Throwable th) {
        Object obj;
        boolean z3;
        do {
            obj = this._state;
            if (!(obj instanceof q2)) {
                return false;
            }
            z3 = obj instanceof n;
        } while (!f72307h.compareAndSet(this, obj, new t(this, th, z3)));
        n nVar = z3 ? (n) obj : null;
        if (nVar != null) {
            m(nVar, th);
        }
        u();
        v(this.f71104c);
        return true;
    }

    @Override // kotlinx.coroutines.p
    @Nullable
    public Object c(T t3, @Nullable Object obj) {
        return Q(t3, obj, null);
    }

    @Override // kotlinx.coroutines.d1
    public void d(@Nullable Object obj, @NotNull Throwable th) {
        while (true) {
            Object obj2 = this._state;
            if (!(obj2 instanceof q2)) {
                if (obj2 instanceof h0) {
                    return;
                }
                if (obj2 instanceof g0) {
                    g0 g0Var = (g0) obj2;
                    if (!g0Var.h()) {
                        if (f72307h.compareAndSet(this, obj2, g0.g(g0Var, null, null, null, null, th, 15, null))) {
                            g0Var.i(this, th);
                            return;
                        }
                    } else {
                        throw new IllegalStateException("Must be called at most once".toString());
                    }
                } else if (f72307h.compareAndSet(this, obj2, new g0(obj2, null, null, null, th, 14, null))) {
                    return;
                }
            } else {
                throw new IllegalStateException("Not completed".toString());
            }
        }
    }

    @Override // kotlinx.coroutines.d1
    @NotNull
    public final Continuation<T> e() {
        return this.f72308d;
    }

    @Override // kotlinx.coroutines.d1
    @Nullable
    public Throwable f(@Nullable Object obj) {
        Throwable f4 = super.f(obj);
        if (f4 == null) {
            return null;
        }
        Continuation<T> e4 = e();
        return (v0.e() && (e4 instanceof CoroutineStackFrame)) ? kotlinx.coroutines.internal.h0.o(f4, (CoroutineStackFrame) e4) : f4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.d1
    public <T> T g(@Nullable Object obj) {
        return obj instanceof g0 ? (T) ((g0) obj).f72114a : obj;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @Nullable
    public CoroutineStackFrame getCallerFrame() {
        Continuation<T> continuation = this.f72308d;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    @Override // kotlin.coroutines.Continuation
    @NotNull
    public CoroutineContext getContext() {
        return this.f72309e;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @Nullable
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override // kotlinx.coroutines.d1
    @Nullable
    public Object i() {
        return z();
    }

    @Override // kotlinx.coroutines.p
    public boolean isActive() {
        return z() instanceof q2;
    }

    @Override // kotlinx.coroutines.p
    public boolean isCancelled() {
        return z() instanceof t;
    }

    @Override // kotlinx.coroutines.p
    public boolean isCompleted() {
        return !(z() instanceof q2);
    }

    @Override // kotlinx.coroutines.p
    public void l(@NotNull Function1<? super Throwable, Unit> function1) {
        n D = D(function1);
        while (true) {
            Object obj = this._state;
            if (obj instanceof d) {
                if (f72307h.compareAndSet(this, obj, D)) {
                    return;
                }
            } else if (obj instanceof n) {
                E(function1, obj);
            } else {
                boolean z3 = obj instanceof h0;
                if (z3) {
                    h0 h0Var = (h0) obj;
                    if (!h0Var.b()) {
                        E(function1, obj);
                    }
                    if (obj instanceof t) {
                        if (!z3) {
                            h0Var = null;
                        }
                        k(function1, h0Var != null ? h0Var.f72127a : null);
                        return;
                    }
                    return;
                } else if (obj instanceof g0) {
                    g0 g0Var = (g0) obj;
                    if (g0Var.f72115b != null) {
                        E(function1, obj);
                    }
                    if (D instanceof f) {
                        return;
                    }
                    if (g0Var.h()) {
                        k(function1, g0Var.f72118e);
                        return;
                    } else {
                        if (f72307h.compareAndSet(this, obj, g0.g(g0Var, null, D, null, null, null, 29, null))) {
                            return;
                        }
                    }
                } else if (D instanceof f) {
                    return;
                } else {
                    if (f72307h.compareAndSet(this, obj, new g0(obj, D, null, null, null, 28, null))) {
                        return;
                    }
                }
            }
        }
    }

    public final void m(@NotNull n nVar, @Nullable Throwable th) {
        try {
            nVar.a(th);
        } catch (Throwable th2) {
            q0.b(getContext(), new CompletionHandlerException(Intrinsics.stringPlus("Exception in invokeOnCancellation handler for ", this), th2));
        }
    }

    public final void o(@NotNull Function1<? super Throwable, Unit> function1, @NotNull Throwable th) {
        try {
            function1.invoke(th);
        } catch (Throwable th2) {
            q0.b(getContext(), new CompletionHandlerException(Intrinsics.stringPlus("Exception in resume onCancellation handler for ", this), th2));
        }
    }

    @Override // kotlinx.coroutines.p
    @Nullable
    public Object p(@NotNull Throwable th) {
        return Q(new h0(th, false, 2, null), null, null);
    }

    @Override // kotlinx.coroutines.p
    public void q(@NotNull CoroutineDispatcher coroutineDispatcher, @NotNull Throwable th) {
        Continuation<T> continuation = this.f72308d;
        kotlinx.coroutines.internal.j jVar = continuation instanceof kotlinx.coroutines.internal.j ? (kotlinx.coroutines.internal.j) continuation : null;
        K(this, new h0(th, false, 2, null), (jVar != null ? jVar.f72182d : null) == coroutineDispatcher ? 4 : this.f71104c, null, 4, null);
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(@NotNull Object obj) {
        K(this, m0.c(obj, this), this.f71104c, null, 4, null);
    }

    public final void t() {
        j1 j1Var = this.f72310f;
        if (j1Var == null) {
            return;
        }
        j1Var.dispose();
        this.f72310f = p2.f72305a;
    }

    @NotNull
    public String toString() {
        return F() + '(' + w0.c(this.f72308d) + "){" + A() + "}@" + w0.b(this);
    }

    @NotNull
    public Throwable w(@NotNull c2 c2Var) {
        return c2Var.m();
    }

    @PublishedApi
    @Nullable
    public final Object x() {
        c2 c2Var;
        Object coroutine_suspended;
        boolean C = C();
        if (R()) {
            if (this.f72310f == null) {
                B();
            }
            if (C) {
                H();
            }
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return coroutine_suspended;
        }
        if (C) {
            H();
        }
        Object z3 = z();
        if (z3 instanceof h0) {
            Throwable th = ((h0) z3).f72127a;
            if (v0.e()) {
                throw kotlinx.coroutines.internal.h0.o(th, this);
            }
            throw th;
        } else if (e1.c(this.f71104c) && (c2Var = (c2) getContext().get(c2.Q)) != null && !c2Var.isActive()) {
            CancellationException m4 = c2Var.m();
            d(z3, m4);
            if (v0.e()) {
                throw kotlinx.coroutines.internal.h0.o(m4, this);
            }
            throw m4;
        } else {
            return g(z3);
        }
    }

    @Override // kotlinx.coroutines.p
    public void y(T t3, @Nullable Function1<? super Throwable, Unit> function1) {
        J(t3, this.f71104c, function1);
    }

    @Nullable
    public final Object z() {
        return this._state;
    }
}
