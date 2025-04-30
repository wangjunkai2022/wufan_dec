package kotlinx.coroutines.flow;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.c0;
import kotlinx.coroutines.c2;
import kotlinx.coroutines.e0;
import kotlinx.coroutines.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Share.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000r\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a6\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\b\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u001a-\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\n\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000b\u0010\f\u001aM\u0010\u0014\u001a\u00020\u0013\"\u0004\b\u0000\u0010\u0000*\u00020\u00022\u0006\u0010\u000e\u001a\u00020\r2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u00012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00000\u00102\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u0014\u0010\u0015\u001a;\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00028\u0000¢\u0006\u0004\b\u0017\u0010\u0018\u001a1\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\u001a\u001aC\u0010\u001e\u001a\u00020\u001d\"\u0004\b\u0000\u0010\u0000*\u00020\u00022\u0006\u0010\u000e\u001a\u00020\r2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u00012\u0012\u0010\u001c\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00160\u001bH\u0002¢\u0006\u0004\b\u001e\u0010\u001f\u001a\u001c\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000\b\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0010\u001a\u001c\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000!\u001aU\u0010)\u001a\b\u0012\u0004\u0012\u00028\u00000\b\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\b2-\u0010(\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000$\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001d0%\u0012\u0006\u0012\u0004\u0018\u00010&0#¢\u0006\u0002\b'ø\u0001\u0000¢\u0006\u0004\b)\u0010*\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006+"}, d2 = {"T", "Lkotlinx/coroutines/flow/f;", "Lkotlinx/coroutines/t0;", "scope", "Lkotlinx/coroutines/flow/s;", "started", "", "replay", "Lkotlinx/coroutines/flow/o;", com.sdk.a.g.f56552a, "Lkotlinx/coroutines/flow/r;", ai.aD, "(Lkotlinx/coroutines/flow/f;I)Lkotlinx/coroutines/flow/r;", "Lkotlin/coroutines/CoroutineContext;", "context", "upstream", "Lkotlinx/coroutines/flow/j;", "shared", "initialValue", "Lkotlinx/coroutines/c2;", com.xinzhu.overmind.utils.helpers.d.f64708a, "(Lkotlinx/coroutines/t0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/flow/f;Lkotlinx/coroutines/flow/j;Lkotlinx/coroutines/flow/s;Ljava/lang/Object;)Lkotlinx/coroutines/c2;", "Lkotlinx/coroutines/flow/v;", "j", "(Lkotlinx/coroutines/flow/f;Lkotlinx/coroutines/t0;Lkotlinx/coroutines/flow/s;Ljava/lang/Object;)Lkotlinx/coroutines/flow/v;", ai.aA, "(Lkotlinx/coroutines/flow/f;Lkotlinx/coroutines/t0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/c0;", "result", "", "e", "(Lkotlinx/coroutines/t0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/flow/f;Lkotlinx/coroutines/c0;)V", "a", "Lkotlinx/coroutines/flow/k;", "b", "Lkotlin/Function2;", "Lkotlinx/coroutines/flow/g;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "action", "f", "(Lkotlinx/coroutines/flow/o;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/o;", "kotlinx-coroutines-core"}, k = 5, mv = {1, 5, 1}, xs = "kotlinx/coroutines/flow/FlowKt")
/* loaded from: classes5.dex */
public final /* synthetic */ class FlowKt__ShareKt {
    @NotNull
    public static final <T> o<T> a(@NotNull j<T> jVar) {
        return new l(jVar, null);
    }

    @NotNull
    public static final <T> v<T> b(@NotNull k<T> kVar) {
        return new m(kVar, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x0047, code lost:
        if (r9 == 0) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final <T> kotlinx.coroutines.flow.r<T> c(kotlinx.coroutines.flow.f<? extends T> r8, int r9) {
        /*
            boolean r0 = kotlinx.coroutines.v0.b()
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L16
            if (r9 < 0) goto Lc
            r0 = 1
            goto Ld
        Lc:
            r0 = 0
        Ld:
            if (r0 == 0) goto L10
            goto L16
        L10:
            java.lang.AssertionError r8 = new java.lang.AssertionError
            r8.<init>()
            throw r8
        L16:
            kotlinx.coroutines.channels.k$b r0 = kotlinx.coroutines.channels.k.R
            int r0 = r0.a()
            int r0 = kotlin.ranges.RangesKt.coerceAtLeast(r9, r0)
            int r0 = r0 - r9
            boolean r3 = r8 instanceof kotlinx.coroutines.flow.internal.ChannelFlow
            if (r3 == 0) goto L53
            r3 = r8
            kotlinx.coroutines.flow.internal.ChannelFlow r3 = (kotlinx.coroutines.flow.internal.ChannelFlow) r3
            kotlinx.coroutines.flow.f r4 = r3.k()
            if (r4 == 0) goto L53
            kotlinx.coroutines.flow.r r8 = new kotlinx.coroutines.flow.r
            int r5 = r3.f71945b
            r6 = -3
            if (r5 == r6) goto L3c
            r6 = -2
            if (r5 == r6) goto L3c
            if (r5 == 0) goto L3c
            r1 = r5
            goto L4b
        L3c:
            kotlinx.coroutines.channels.BufferOverflow r6 = r3.f71946c
            kotlinx.coroutines.channels.BufferOverflow r7 = kotlinx.coroutines.channels.BufferOverflow.SUSPEND
            if (r6 != r7) goto L47
            if (r5 != 0) goto L45
            goto L4a
        L45:
            r1 = r0
            goto L4b
        L47:
            if (r9 != 0) goto L4a
            goto L4b
        L4a:
            r1 = 0
        L4b:
            kotlinx.coroutines.channels.BufferOverflow r9 = r3.f71946c
            kotlin.coroutines.CoroutineContext r0 = r3.f71944a
            r8.<init>(r4, r1, r9, r0)
            return r8
        L53:
            kotlinx.coroutines.flow.r r9 = new kotlinx.coroutines.flow.r
            kotlinx.coroutines.channels.BufferOverflow r1 = kotlinx.coroutines.channels.BufferOverflow.SUSPEND
            kotlin.coroutines.EmptyCoroutineContext r2 = kotlin.coroutines.EmptyCoroutineContext.INSTANCE
            r9.<init>(r8, r0, r1, r2)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ShareKt.c(kotlinx.coroutines.flow.f, int):kotlinx.coroutines.flow.r");
    }

    private static final <T> c2 d(t0 t0Var, CoroutineContext coroutineContext, f<? extends T> fVar, j<T> jVar, s sVar, T t3) {
        c2 f4;
        f4 = kotlinx.coroutines.k.f(t0Var, coroutineContext, null, new FlowKt__ShareKt$launchSharing$1(sVar, fVar, jVar, t3, null), 2, null);
        return f4;
    }

    private static final <T> void e(t0 t0Var, CoroutineContext coroutineContext, f<? extends T> fVar, c0<v<T>> c0Var) {
        kotlinx.coroutines.k.f(t0Var, coroutineContext, null, new FlowKt__ShareKt$launchSharingDeferred$1(fVar, c0Var, null), 2, null);
    }

    @NotNull
    public static final <T> o<T> f(@NotNull o<? extends T> oVar, @NotNull Function2<? super g<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return new y(oVar, function2);
    }

    @NotNull
    public static final <T> o<T> g(@NotNull f<? extends T> fVar, @NotNull t0 t0Var, @NotNull s sVar, int i2) {
        r c4 = c(fVar, i2);
        j a4 = p.a(i2, c4.f72099b, c4.f72100c);
        return new l(a4, d(t0Var, c4.f72101d, c4.f72098a, a4, sVar, p.f72095a));
    }

    public static /* synthetic */ o h(f fVar, t0 t0Var, s sVar, int i2, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            i2 = 0;
        }
        return h.P1(fVar, t0Var, sVar, i2);
    }

    @Nullable
    public static final <T> Object i(@NotNull f<? extends T> fVar, @NotNull t0 t0Var, @NotNull Continuation<? super v<? extends T>> continuation) {
        r c4 = c(fVar, 1);
        c0 c5 = e0.c(null, 1, null);
        e(t0Var, c4.f72101d, c4.f72098a, c5);
        return c5.n(continuation);
    }

    @NotNull
    public static final <T> v<T> j(@NotNull f<? extends T> fVar, @NotNull t0 t0Var, @NotNull s sVar, T t3) {
        r c4 = c(fVar, 1);
        k a4 = w.a(t3);
        return new m(a4, d(t0Var, c4.f72101d, c4.f72098a, a4, sVar, t3));
    }
}
