package b3;

import com.sdk.a.g;
import com.umeng.analytics.pro.ai;
import com.xinzhu.overmind.utils.helpers.d;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.h0;
import kotlinx.coroutines.internal.ThreadContextKt;
import kotlinx.coroutines.internal.e0;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.v0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Undispatched.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000>\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a@\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000*\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0000ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007\u001aT\u0010\u000b\u001a\u00020\u0005\"\u0004\b\u0000\u0010\b\"\u0004\b\u0001\u0010\u0000*\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\t2\u0006\u0010\n\u001a\u00028\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0002H\u0000ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\f\u001a@\u0010\r\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000*\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0000ø\u0001\u0000¢\u0006\u0004\b\r\u0010\u0007\u001aT\u0010\u000e\u001a\u00020\u0005\"\u0004\b\u0000\u0010\b\"\u0004\b\u0001\u0010\u0000*\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\t2\u0006\u0010\n\u001a\u00028\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0002H\u0000ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\f\u001a9\u0010\u0010\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u001a\u0010\u000f\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001H\u0082\b\u001a[\u0010\u0013\u001a\u0004\u0018\u00010\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\b*\b\u0012\u0004\u0012\u00028\u00000\u00112\u0006\u0010\n\u001a\u00028\u00012'\u0010\u000f\u001a#\b\u0001\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\t¢\u0006\u0002\b\u0012H\u0000ø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014\u001a[\u0010\u0015\u001a\u0004\u0018\u00010\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\b*\b\u0012\u0004\u0012\u00028\u00000\u00112\u0006\u0010\n\u001a\u00028\u00012'\u0010\u000f\u001a#\b\u0001\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\t¢\u0006\u0002\b\u0012H\u0000ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0014\u001a?\u0010\u001b\u001a\u0004\u0018\u00010\u0003\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00112\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00170\u00012\u000e\u0010\u001a\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0019H\u0082\b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001c"}, d2 = {"T", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "completion", "", ai.aD, "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V", "R", "Lkotlin/Function2;", "receiver", d.f64708a, "(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V", "a", "b", "block", "e", "Lkotlinx/coroutines/internal/e0;", "Lkotlin/ExtensionFunctionType;", "f", "(Lkotlinx/coroutines/internal/e0;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", g.f56552a, "", "", "shouldThrow", "Lkotlin/Function0;", "startBlock", "h", "kotlinx-coroutines-core"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class b {
    public static final <T> void a(@NotNull Function1<? super Continuation<? super T>, ? extends Object> function1, @NotNull Continuation<? super T> continuation) {
        Object coroutine_suspended;
        Continuation probeCoroutineCreated = DebugProbesKt.probeCoroutineCreated(continuation);
        try {
            CoroutineContext context = continuation.getContext();
            Object c4 = ThreadContextKt.c(context, null);
            if (function1 != null) {
                Object invoke = ((Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function1, 1)).invoke(probeCoroutineCreated);
                ThreadContextKt.a(context, c4);
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (invoke != coroutine_suspended) {
                    Result.Companion companion = Result.Companion;
                    probeCoroutineCreated.resumeWith(Result.m24constructorimpl(invoke));
                    return;
                }
                return;
            }
            throw new NullPointerException("null cannot be cast to non-null type (kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            probeCoroutineCreated.resumeWith(Result.m24constructorimpl(ResultKt.createFailure(th)));
        }
    }

    public static final <R, T> void b(@NotNull Function2<? super R, ? super Continuation<? super T>, ? extends Object> function2, R r3, @NotNull Continuation<? super T> continuation) {
        Object coroutine_suspended;
        Continuation probeCoroutineCreated = DebugProbesKt.probeCoroutineCreated(continuation);
        try {
            CoroutineContext context = continuation.getContext();
            Object c4 = ThreadContextKt.c(context, null);
            if (function2 != null) {
                Object invoke = ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2)).invoke(r3, probeCoroutineCreated);
                ThreadContextKt.a(context, c4);
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (invoke != coroutine_suspended) {
                    Result.Companion companion = Result.Companion;
                    probeCoroutineCreated.resumeWith(Result.m24constructorimpl(invoke));
                    return;
                }
                return;
            }
            throw new NullPointerException("null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            probeCoroutineCreated.resumeWith(Result.m24constructorimpl(ResultKt.createFailure(th)));
        }
    }

    public static final <T> void c(@NotNull Function1<? super Continuation<? super T>, ? extends Object> function1, @NotNull Continuation<? super T> continuation) {
        Object coroutine_suspended;
        Continuation probeCoroutineCreated = DebugProbesKt.probeCoroutineCreated(continuation);
        try {
            if (function1 != null) {
                Object invoke = ((Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function1, 1)).invoke(probeCoroutineCreated);
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (invoke != coroutine_suspended) {
                    Result.Companion companion = Result.Companion;
                    probeCoroutineCreated.resumeWith(Result.m24constructorimpl(invoke));
                    return;
                }
                return;
            }
            throw new NullPointerException("null cannot be cast to non-null type (kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            probeCoroutineCreated.resumeWith(Result.m24constructorimpl(ResultKt.createFailure(th)));
        }
    }

    public static final <R, T> void d(@NotNull Function2<? super R, ? super Continuation<? super T>, ? extends Object> function2, R r3, @NotNull Continuation<? super T> continuation) {
        Object coroutine_suspended;
        Continuation probeCoroutineCreated = DebugProbesKt.probeCoroutineCreated(continuation);
        try {
            if (function2 != null) {
                Object invoke = ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2)).invoke(r3, probeCoroutineCreated);
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (invoke != coroutine_suspended) {
                    Result.Companion companion = Result.Companion;
                    probeCoroutineCreated.resumeWith(Result.m24constructorimpl(invoke));
                    return;
                }
                return;
            }
            throw new NullPointerException("null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            probeCoroutineCreated.resumeWith(Result.m24constructorimpl(ResultKt.createFailure(th)));
        }
    }

    private static final <T> void e(Continuation<? super T> continuation, Function1<? super Continuation<? super T>, ? extends Object> function1) {
        Object coroutine_suspended;
        Continuation probeCoroutineCreated = DebugProbesKt.probeCoroutineCreated(continuation);
        try {
            Object invoke = function1.invoke(probeCoroutineCreated);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (invoke != coroutine_suspended) {
                Result.Companion companion = Result.Companion;
                probeCoroutineCreated.resumeWith(Result.m24constructorimpl(invoke));
            }
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            probeCoroutineCreated.resumeWith(Result.m24constructorimpl(ResultKt.createFailure(th)));
        }
    }

    @Nullable
    public static final <T, R> Object f(@NotNull e0<? super T> e0Var, R r3, @NotNull Function2<? super R, ? super Continuation<? super T>, ? extends Object> function2) {
        Object h0Var;
        Object coroutine_suspended;
        Object coroutine_suspended2;
        Object coroutine_suspended3;
        try {
        } catch (Throwable th) {
            h0Var = new h0(th, false, 2, null);
        }
        if (function2 != null) {
            h0Var = ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2)).invoke(r3, e0Var);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (h0Var == coroutine_suspended) {
                coroutine_suspended3 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                return coroutine_suspended3;
            }
            Object P0 = e0Var.P0(h0Var);
            if (P0 == j2.f72257b) {
                coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                return coroutine_suspended2;
            } else if (P0 instanceof h0) {
                Throwable th2 = ((h0) P0).f72127a;
                Continuation<? super T> continuation = e0Var.f72167c;
                if (v0.e() && (continuation instanceof CoroutineStackFrame)) {
                    throw kotlinx.coroutines.internal.h0.o(th2, (CoroutineStackFrame) continuation);
                }
                throw th2;
            } else {
                return j2.o(P0);
            }
        }
        throw new NullPointerException("null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
    }

    @Nullable
    public static final <T, R> Object g(@NotNull e0<? super T> e0Var, R r3, @NotNull Function2<? super R, ? super Continuation<? super T>, ? extends Object> function2) {
        Object h0Var;
        Object coroutine_suspended;
        Object coroutine_suspended2;
        Object coroutine_suspended3;
        boolean z3 = false;
        try {
        } catch (Throwable th) {
            h0Var = new h0(th, false, 2, null);
        }
        if (function2 != null) {
            h0Var = ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2)).invoke(r3, e0Var);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (h0Var == coroutine_suspended) {
                coroutine_suspended3 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                return coroutine_suspended3;
            }
            Object P0 = e0Var.P0(h0Var);
            if (P0 == j2.f72257b) {
                coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                return coroutine_suspended2;
            }
            if (P0 instanceof h0) {
                Throwable th2 = ((h0) P0).f72127a;
                if (((th2 instanceof TimeoutCancellationException) && ((TimeoutCancellationException) th2).f70737a == e0Var) ? true : true) {
                    Continuation<? super T> continuation = e0Var.f72167c;
                    if (v0.e() && (continuation instanceof CoroutineStackFrame)) {
                        throw kotlinx.coroutines.internal.h0.o(th2, (CoroutineStackFrame) continuation);
                    }
                    throw th2;
                } else if (h0Var instanceof h0) {
                    Throwable th3 = ((h0) h0Var).f72127a;
                    Continuation<? super T> continuation2 = e0Var.f72167c;
                    if (v0.e() && (continuation2 instanceof CoroutineStackFrame)) {
                        throw kotlinx.coroutines.internal.h0.o(th3, (CoroutineStackFrame) continuation2);
                    }
                    throw th3;
                }
            } else {
                h0Var = j2.o(P0);
            }
            return h0Var;
        }
        throw new NullPointerException("null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
    }

    private static final <T> Object h(e0<? super T> e0Var, Function1<? super Throwable, Boolean> function1, Function0<? extends Object> function0) {
        Object h0Var;
        Object coroutine_suspended;
        Object coroutine_suspended2;
        Object coroutine_suspended3;
        try {
            h0Var = function0.invoke();
        } catch (Throwable th) {
            h0Var = new h0(th, false, 2, null);
        }
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (h0Var == coroutine_suspended) {
            coroutine_suspended3 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return coroutine_suspended3;
        }
        Object P0 = e0Var.P0(h0Var);
        if (P0 == j2.f72257b) {
            coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return coroutine_suspended2;
        } else if (P0 instanceof h0) {
            h0 h0Var2 = (h0) P0;
            if (function1.invoke(h0Var2.f72127a).booleanValue()) {
                Throwable th2 = h0Var2.f72127a;
                Continuation<? super T> continuation = e0Var.f72167c;
                if (v0.e() && (continuation instanceof CoroutineStackFrame)) {
                    throw kotlinx.coroutines.internal.h0.o(th2, (CoroutineStackFrame) continuation);
                }
                throw th2;
            } else if (h0Var instanceof h0) {
                Throwable th3 = ((h0) h0Var).f72127a;
                Continuation<? super T> continuation2 = e0Var.f72167c;
                if (v0.e() && (continuation2 instanceof CoroutineStackFrame)) {
                    throw kotlinx.coroutines.internal.h0.o(th3, (CoroutineStackFrame) continuation2);
                }
                throw th3;
            } else {
                return h0Var;
            }
        } else {
            return j2.o(P0);
        }
    }
}
