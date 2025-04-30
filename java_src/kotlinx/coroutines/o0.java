package kotlinx.coroutines;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.InlineMarker;
import kotlinx.coroutines.internal.ThreadContextKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CoroutineContext.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\u001a\b\u0010\u0001\u001a\u00020\u0000H\u0000\u001a\u0014\u0010\u0005\u001a\u00020\u0003*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u0007\u001a6\u0010\u000b\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00062\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\b\u001a\u0004\u0018\u00010\u00072\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\tH\u0080\b¢\u0006\u0004\b\u000b\u0010\f\u001a:\u0010\u000f\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00062\n\u0010\u000e\u001a\u0006\u0012\u0002\b\u00030\r2\b\u0010\b\u001a\u0004\u0018\u00010\u00072\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\tH\u0080\b¢\u0006\u0004\b\u000f\u0010\u0010\u001a(\u0010\u0013\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0012*\u0006\u0012\u0002\b\u00030\r2\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0011\u001a\u0004\u0018\u00010\u0007H\u0000\u001a\u0013\u0010\u0015\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0012*\u00020\u0014H\u0080\u0010\"\u0016\u0010\u0019\u001a\u00020\u00168\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018\"\u001c\u0010\u001e\u001a\u00020\u001a8\u0000@\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u0017\u0010\u001d\"\u001c\u0010 \u001a\u0004\u0018\u00010\u0016*\u00020\u00038@@\u0000X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001f\"\u0016\u0010!\u001a\u00020\u00168\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0001\u0010\u0018¨\u0006\""}, d2 = {"Lkotlinx/coroutines/CoroutineDispatcher;", "a", "Lkotlinx/coroutines/t0;", "Lkotlin/coroutines/CoroutineContext;", "context", com.xinzhu.overmind.utils.helpers.d.f64708a, "T", "", "countOrElement", "Lkotlin/Function0;", "block", "h", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "Lkotlin/coroutines/Continuation;", "continuation", com.sdk.a.g.f56552a, "(Lkotlin/coroutines/Continuation;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "oldValue", "Lkotlinx/coroutines/m3;", "f", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "e", "", ai.aD, "Ljava/lang/String;", "DEBUG_THREAD_NAME_SEPARATOR", "", "b", "Z", "()Z", "useCoroutinesScheduler", "(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/String;", "coroutineName", "COROUTINES_SCHEDULER_PROPERTY_NAME", "kotlinx-coroutines-core"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class o0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final String f72288a = "kotlinx.coroutines.scheduler";

    /* renamed from: b  reason: collision with root package name */
    private static final boolean f72289b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final String f72290c = " @";

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0027, code lost:
        if (r0.equals(kotlinx.coroutines.v0.f72522d) != false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0030, code lost:
        if (r0.equals("") != false) goto L21;
     */
    static {
        /*
            java.lang.String r0 = "kotlinx.coroutines.scheduler"
            java.lang.String r0 = kotlinx.coroutines.internal.k0.d(r0)
            if (r0 == 0) goto L53
            int r1 = r0.hashCode()
            if (r1 == 0) goto L2a
            r2 = 3551(0xddf, float:4.976E-42)
            if (r1 == r2) goto L21
            r2 = 109935(0x1ad6f, float:1.54052E-40)
            if (r1 != r2) goto L33
            java.lang.String r1 = "off"
            boolean r1 = r0.equals(r1)
            if (r1 == 0) goto L33
            r0 = 0
            goto L54
        L21:
            java.lang.String r1 = "on"
            boolean r1 = r0.equals(r1)
            if (r1 == 0) goto L33
            goto L53
        L2a:
            java.lang.String r1 = ""
            boolean r1 = r0.equals(r1)
            if (r1 == 0) goto L33
            goto L53
        L33:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "System property 'kotlinx.coroutines.scheduler' has unrecognized value '"
            r1.append(r2)
            r1.append(r0)
            r0 = 39
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r0 = r0.toString()
            r1.<init>(r0)
            throw r1
        L53:
            r0 = 1
        L54:
            kotlinx.coroutines.o0.f72289b = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.o0.<clinit>():void");
    }

    @NotNull
    public static final CoroutineDispatcher a() {
        return f72289b ? kotlinx.coroutines.scheduling.b.f72362g : b0.f70761b;
    }

    @Nullable
    public static final String b(@NotNull CoroutineContext coroutineContext) {
        r0 r0Var;
        String C;
        if (v0.d() && (r0Var = (r0) coroutineContext.get(r0.f72316b)) != null) {
            s0 s0Var = (s0) coroutineContext.get(s0.f72326b);
            String str = "coroutine";
            if (s0Var != null && (C = s0Var.C()) != null) {
                str = C;
            }
            return str + '#' + r0Var.C();
        }
        return null;
    }

    public static final boolean c() {
        return f72289b;
    }

    @ExperimentalCoroutinesApi
    @NotNull
    public static final CoroutineContext d(@NotNull t0 t0Var, @NotNull CoroutineContext coroutineContext) {
        CoroutineContext plus = t0Var.getCoroutineContext().plus(coroutineContext);
        CoroutineContext plus2 = v0.d() ? plus.plus(new r0(v0.c().incrementAndGet())) : plus;
        return (plus == g1.a() || plus.get(ContinuationInterceptor.Key) != null) ? plus2 : plus2.plus(g1.a());
    }

    @Nullable
    public static final m3<?> e(@NotNull CoroutineStackFrame coroutineStackFrame) {
        while (!(coroutineStackFrame instanceof c1) && (coroutineStackFrame = coroutineStackFrame.getCallerFrame()) != null) {
            if (coroutineStackFrame instanceof m3) {
                return (m3) coroutineStackFrame;
            }
        }
        return null;
    }

    @Nullable
    public static final m3<?> f(@NotNull Continuation<?> continuation, @NotNull CoroutineContext coroutineContext, @Nullable Object obj) {
        if (continuation instanceof CoroutineStackFrame) {
            if (coroutineContext.get(n3.f72287a) != null) {
                m3<?> e4 = e((CoroutineStackFrame) continuation);
                if (e4 != null) {
                    e4.w1(coroutineContext, obj);
                }
                return e4;
            }
            return null;
        }
        return null;
    }

    public static final <T> T g(@NotNull Continuation<?> continuation, @Nullable Object obj, @NotNull Function0<? extends T> function0) {
        CoroutineContext context = continuation.getContext();
        Object c4 = ThreadContextKt.c(context, obj);
        m3<?> f4 = c4 != ThreadContextKt.f72150a ? f(continuation, context, c4) : null;
        try {
            return function0.invoke();
        } finally {
            InlineMarker.finallyStart(1);
            if (f4 == null || f4.v1()) {
                ThreadContextKt.a(context, c4);
            }
            InlineMarker.finallyEnd(1);
        }
    }

    public static final <T> T h(@NotNull CoroutineContext coroutineContext, @Nullable Object obj, @NotNull Function0<? extends T> function0) {
        Object c4 = ThreadContextKt.c(coroutineContext, obj);
        try {
            return function0.invoke();
        } finally {
            InlineMarker.finallyStart(1);
            ThreadContextKt.a(coroutineContext, c4);
            InlineMarker.finallyEnd(1);
        }
    }
}
