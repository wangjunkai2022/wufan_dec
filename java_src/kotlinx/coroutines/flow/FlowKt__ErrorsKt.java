package kotlinx.coroutines.flow;

import com.join.mgps.activity.SimulatorExitPlayActivity_;
import com.umeng.analytics.pro.ai;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.FlowPreview;
import kotlinx.coroutines.c2;
import kotlinx.coroutines.internal.h0;
import kotlinx.coroutines.v0;
import org.jetbrains.annotations.NotNull;
/* compiled from: Errors.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u001aj\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012B\u0010\f\u001a>\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0002¢\u0006\u0002\b\u000bø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000e\u001aB\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u00012\u0014\b\u0002\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00110\u0010H\u0007\u001ae\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\b\b\u0002\u0010\u0015\u001a\u00020\u001423\b\u0002\u0010\u0012\u001a-\b\u0001\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\b\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0016ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0018\u001a>\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\b\b\u0002\u0010\u0015\u001a\u00020\u00192\u0014\b\u0002\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00110\u0010H\u0007\u001a\u007f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012W\u0010\u0012\u001aS\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0013\u0012\u00110\u0014¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u001c\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\b\u0012\u0006\u0012\u0004\u0018\u00010\n0\u001b¢\u0006\u0002\b\u000bø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\u001e\u001a3\u0010 \u001a\u0004\u0018\u00010\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0080@ø\u0001\u0000¢\u0006\u0004\b \u0010!\u001a\u001b\u0010$\u001a\u00020\u0011*\u00020\u00042\u0006\u0010#\u001a\u00020\"H\u0002¢\u0006\u0004\b$\u0010%\u001a\u001d\u0010'\u001a\u00020\u0011*\u00020\u00042\b\u0010&\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b'\u0010(*\\\b\u0007\u00104\"\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00110\u00102\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00110\u0010B6\b)\u0012\n\b*\u0012\u0006\b\n0+8,\u0012\b\b-\u0012\u0004\b\b(.\u0012\u001c\b/\u0012\u0018\b\u000bB\u0014\b0\u0012\u0006\b1\u0012\u0002\b\f\u0012\b\b2\u0012\u0004\b\b(3\u0082\u0002\u0004\n\u0002\b\u0019¨\u00065"}, d2 = {"T", "Lkotlinx/coroutines/flow/f;", "Lkotlin/Function3;", "Lkotlinx/coroutines/flow/g;", "", "Lkotlin/ParameterName;", "name", "cause", "Lkotlin/coroutines/Continuation;", "", "", "Lkotlin/ExtensionFunctionType;", "action", "b", "(Lkotlinx/coroutines/flow/f;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/f;", "fallback", "Lkotlin/Function1;", "", "predicate", "f", "", "retries", "Lkotlin/Function2;", ai.aA, "(Lkotlinx/coroutines/flow/f;JLkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/f;", "", "h", "Lkotlin/Function4;", "attempt", "l", "(Lkotlinx/coroutines/flow/f;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/f;", "collector", ai.aD, "(Lkotlinx/coroutines/flow/f;Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/coroutines/CoroutineContext;", "coroutineContext", com.xinzhu.overmind.utils.helpers.d.f64708a, "(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)Z", "other", "e", "(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z", "Lkotlin/Deprecated;", SimulatorExitPlayActivity_.E, "Lkotlin/DeprecationLevel;", "ERROR", "message", "Use (Throwable) -> Boolean functional type", "replaceWith", "Lkotlin/ReplaceWith;", "imports", "expression", "(Throwable) -> Boolean", "ExceptionPredicate", "kotlinx-coroutines-core"}, k = 5, mv = {1, 5, 1}, xs = "kotlinx/coroutines/flow/FlowKt")
/* loaded from: classes.dex */
public final /* synthetic */ class FlowKt__ErrorsKt {
    @Deprecated(level = DeprecationLevel.ERROR, message = "Use (Throwable) -> Boolean functional type", replaceWith = @ReplaceWith(expression = "(Throwable) -> Boolean", imports = {}))
    public static /* synthetic */ void a() {
    }

    @NotNull
    public static final <T> f<T> b(@NotNull f<? extends T> fVar, @NotNull Function3<? super g<? super T>, ? super Throwable, ? super Continuation<? super Unit>, ? extends Object> function3) {
        return new FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1(fVar, function3);
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.lang.Object c(@org.jetbrains.annotations.NotNull kotlinx.coroutines.flow.f<? extends T> r4, @org.jetbrains.annotations.NotNull kotlinx.coroutines.flow.g<? super T> r5, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super java.lang.Throwable> r6) {
        /*
            boolean r0 = r6 instanceof kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$1
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$1 r0 = (kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$1) r0
            int r1 = r0.f71452c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f71452c = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$1 r0 = new kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$1
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f71451b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f71452c
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            java.lang.Object r4 = r0.f71450a
            kotlin.jvm.internal.Ref$ObjectRef r4 = (kotlin.jvm.internal.Ref.ObjectRef) r4
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.lang.Throwable -> L2d
            goto L4f
        L2d:
            r5 = move-exception
            goto L53
        L2f:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L37:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlin.jvm.internal.Ref$ObjectRef r6 = new kotlin.jvm.internal.Ref$ObjectRef
            r6.<init>()
            kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$$inlined$collect$1 r2 = new kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$$inlined$collect$1     // Catch: java.lang.Throwable -> L51
            r2.<init>(r5, r6)     // Catch: java.lang.Throwable -> L51
            r0.f71450a = r6     // Catch: java.lang.Throwable -> L51
            r0.f71452c = r3     // Catch: java.lang.Throwable -> L51
            java.lang.Object r4 = r4.e(r2, r0)     // Catch: java.lang.Throwable -> L51
            if (r4 != r1) goto L4f
            return r1
        L4f:
            r4 = 0
            return r4
        L51:
            r5 = move-exception
            r4 = r6
        L53:
            T r4 = r4.element
            java.lang.Throwable r4 = (java.lang.Throwable) r4
            boolean r4 = e(r5, r4)
            if (r4 != 0) goto L68
            kotlin.coroutines.CoroutineContext r4 = r0.getContext()
            boolean r4 = d(r5, r4)
            if (r4 != 0) goto L68
            return r5
        L68:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ErrorsKt.c(kotlinx.coroutines.flow.f, kotlinx.coroutines.flow.g, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private static final boolean d(Throwable th, CoroutineContext coroutineContext) {
        c2 c2Var = (c2) coroutineContext.get(c2.Q);
        if (c2Var == null || !c2Var.isCancelled()) {
            return false;
        }
        return e(th, c2Var.m());
    }

    private static final boolean e(Throwable th, Throwable th2) {
        if (th2 != null) {
            if (v0.e()) {
                th2 = h0.u(th2);
            }
            if (v0.e()) {
                th = h0.u(th);
            }
            if (Intrinsics.areEqual(th2, th)) {
                return true;
            }
        }
        return false;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Use catch { e -> if (predicate(e)) emitAll(fallback) else throw e }", replaceWith = @ReplaceWith(expression = "catch { e -> if (predicate(e)) emitAll(fallback) else throw e }", imports = {}))
    @NotNull
    public static final <T> f<T> f(@NotNull f<? extends T> fVar, @NotNull f<? extends T> fVar2, @NotNull Function1<? super Throwable, Boolean> function1) {
        return h.w(fVar, new FlowKt__ErrorsKt$onErrorCollect$2(function1, fVar2, null));
    }

    public static /* synthetic */ f g(f fVar, f fVar2, Function1 function1, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            function1 = new Function1<Throwable, Boolean>() { // from class: kotlinx.coroutines.flow.FlowKt__ErrorsKt$onErrorCollect$1
                public final boolean a(@NotNull Throwable th) {
                    return true;
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Boolean invoke(Throwable th) {
                    return Boolean.valueOf(a(th));
                }
            };
        }
        return h.m1(fVar, fVar2, function1);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "binary compatibility with retries: Int preview version")
    @FlowPreview
    public static final /* synthetic */ f h(f fVar, int i2, Function1 function1) {
        if (i2 > 0) {
            return h.H1(fVar, new FlowKt__ErrorsKt$retry$6(function1, i2, null));
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("Expected positive amount of retries, but had ", Integer.valueOf(i2)).toString());
    }

    @NotNull
    public static final <T> f<T> i(@NotNull f<? extends T> fVar, long j4, @NotNull Function2<? super Throwable, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        if (j4 > 0) {
            return h.H1(fVar, new FlowKt__ErrorsKt$retry$3(j4, function2, null));
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("Expected positive amount of retries, but had ", Long.valueOf(j4)).toString());
    }

    public static /* synthetic */ f j(f fVar, int i2, Function1 function1, int i4, Object obj) {
        f h4;
        if ((i4 & 1) != 0) {
            i2 = Integer.MAX_VALUE;
        }
        if ((i4 & 2) != 0) {
            function1 = new Function1<Throwable, Boolean>() { // from class: kotlinx.coroutines.flow.FlowKt__ErrorsKt$retry$4
                public final boolean a(@NotNull Throwable th) {
                    return true;
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Boolean invoke(Throwable th) {
                    return Boolean.valueOf(a(th));
                }
            };
        }
        h4 = h(fVar, i2, function1);
        return h4;
    }

    public static /* synthetic */ f k(f fVar, long j4, Function2 function2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            j4 = Long.MAX_VALUE;
        }
        if ((i2 & 2) != 0) {
            function2 = new FlowKt__ErrorsKt$retry$1(null);
        }
        return h.E1(fVar, j4, function2);
    }

    @NotNull
    public static final <T> f<T> l(@NotNull f<? extends T> fVar, @NotNull Function4<? super g<? super T>, ? super Throwable, ? super Long, ? super Continuation<? super Boolean>, ? extends Object> function4) {
        return new FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1(fVar, function4);
    }
}
