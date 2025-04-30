package kotlin;

import java.util.Objects;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DeepRecursive.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\b\u0003\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00032\b\u0012\u0004\u0012\u00028\u00010\u0004BM\u00129\u0010\"\u001a5\b\u0001\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005¢\u0006\u0002\b\u0007\u0012\u0006\u0010\u0011\u001a\u00028\u0000ø\u0001\u0000¢\u0006\u0004\b#\u0010$Je\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u000429\u0010\b\u001a5\b\u0001\u0012\f\u0012\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005¢\u0006\u0002\b\u00072\u000e\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004H\u0002ø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000bJ \u0010\u000f\u001a\u00020\u000e2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00010\fH\u0016ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010J\u001b\u0010\u0012\u001a\u00028\u00012\u0006\u0010\u0011\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013J7\u0010\u0012\u001a\u00028\u0003\"\u0004\b\u0002\u0010\u0014\"\u0004\b\u0003\u0010\u0015*\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00162\u0006\u0010\u0011\u001a\u00028\u0002H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0017J\r\u0010\u0018\u001a\u00028\u0001¢\u0006\u0004\b\u0018\u0010\u0019RL\u0010\u001a\u001a5\b\u0001\u0012\f\u0012\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005¢\u0006\u0002\b\u00078\u0002@\u0002X\u0082\u000eø\u0001\u0000¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001f\u001a\u00020\u001c8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001eR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010 R \u0010\t\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010!R$\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\f8\u0002@\u0002X\u0082\u000eø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\n\u0004\b\r\u0010 \u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006%"}, d2 = {"Lkotlin/DeepRecursiveScopeImpl;", "T", "R", "Lkotlin/DeepRecursiveScope;", "Lkotlin/coroutines/Continuation;", "Lkotlin/Function3;", "", "Lkotlin/ExtensionFunctionType;", "currentFunction", "cont", "crossFunctionCompletion", "(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;", "Lkotlin/Result;", "result", "", "resumeWith", "(Ljava/lang/Object;)V", "value", "callRecursive", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "U", "S", "Lkotlin/DeepRecursiveFunction;", "(Lkotlin/DeepRecursiveFunction;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "runCallLoop", "()Ljava/lang/Object;", "function", "Lkotlin/jvm/functions/Function3;", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "context", "Ljava/lang/Object;", "Lkotlin/coroutines/Continuation;", "block", "<init>", "(Lkotlin/jvm/functions/Function3;Ljava/lang/Object;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
@ExperimentalStdlibApi
/* loaded from: classes5.dex */
final class DeepRecursiveScopeImpl<T, R> extends DeepRecursiveScope<T, R> implements Continuation<R> {
    private Continuation<Object> cont;
    private Function3<? super DeepRecursiveScope<?, ?>, Object, ? super Continuation<Object>, ? extends Object> function;
    private Object result;
    private Object value;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DeepRecursiveScopeImpl(@NotNull Function3<? super DeepRecursiveScope<T, R>, ? super T, ? super Continuation<? super R>, ? extends Object> block, T t3) {
        super(null);
        Object obj;
        Intrinsics.checkNotNullParameter(block, "block");
        this.function = block;
        this.value = t3;
        this.cont = this;
        obj = DeepRecursiveKt.UNDEFINED_RESULT;
        this.result = obj;
    }

    private final Continuation<Object> crossFunctionCompletion(final Function3<? super DeepRecursiveScope<?, ?>, Object, ? super Continuation<Object>, ? extends Object> function3, final Continuation<Object> continuation) {
        final EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
        return new Continuation<Object>() { // from class: kotlin.DeepRecursiveScopeImpl$crossFunctionCompletion$$inlined$Continuation$1
            @Override // kotlin.coroutines.Continuation
            @NotNull
            public CoroutineContext getContext() {
                return CoroutineContext.this;
            }

            @Override // kotlin.coroutines.Continuation
            public void resumeWith(@NotNull Object obj) {
                this.function = function3;
                this.cont = continuation;
                this.result = obj;
            }
        };
    }

    @Override // kotlin.DeepRecursiveScope
    @Nullable
    public Object callRecursive(T t3, @NotNull Continuation<? super R> continuation) {
        Object coroutine_suspended;
        Object coroutine_suspended2;
        Objects.requireNonNull(continuation, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        this.cont = continuation;
        this.value = t3;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (coroutine_suspended == coroutine_suspended2) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return coroutine_suspended;
    }

    @Override // kotlin.coroutines.Continuation
    @NotNull
    public CoroutineContext getContext() {
        return EmptyCoroutineContext.INSTANCE;
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(@NotNull Object obj) {
        this.cont = null;
        this.result = obj;
    }

    public final R runCallLoop() {
        Object obj;
        Object obj2;
        Object coroutine_suspended;
        while (true) {
            R r3 = (R) this.result;
            Continuation<Object> continuation = this.cont;
            if (continuation != null) {
                obj = DeepRecursiveKt.UNDEFINED_RESULT;
                if (!Result.m26equalsimpl0(obj, r3)) {
                    obj2 = DeepRecursiveKt.UNDEFINED_RESULT;
                    this.result = obj2;
                    continuation.resumeWith(r3);
                } else {
                    try {
                        Function3<? super DeepRecursiveScope<?, ?>, Object, ? super Continuation<Object>, ? extends Object> function3 = this.function;
                        Object obj3 = this.value;
                        if (function3 != null) {
                            Object invoke = ((Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function3, 3)).invoke(this, obj3, continuation);
                            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                            if (invoke != coroutine_suspended) {
                                Result.Companion companion = Result.Companion;
                                continuation.resumeWith(Result.m24constructorimpl(invoke));
                            }
                        } else {
                            throw new NullPointerException("null cannot be cast to non-null type (R, P, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
                            break;
                        }
                    } catch (Throwable th) {
                        Result.Companion companion2 = Result.Companion;
                        continuation.resumeWith(Result.m24constructorimpl(ResultKt.createFailure(th)));
                    }
                }
            } else {
                ResultKt.throwOnFailure(r3);
                return r3;
            }
        }
    }

    @Override // kotlin.DeepRecursiveScope
    @Nullable
    public <U, S> Object callRecursive(@NotNull DeepRecursiveFunction<U, S> deepRecursiveFunction, U u3, @NotNull Continuation<? super S> continuation) {
        Object coroutine_suspended;
        Object coroutine_suspended2;
        Function3<DeepRecursiveScope<U, S>, U, Continuation<? super S>, Object> block$kotlin_stdlib = deepRecursiveFunction.getBlock$kotlin_stdlib();
        Objects.requireNonNull(block$kotlin_stdlib, "null cannot be cast to non-null type kotlin.DeepRecursiveFunctionBlock /* = suspend kotlin.DeepRecursiveScope<*, *>.(kotlin.Any?) -> kotlin.Any? */");
        Function3<? super DeepRecursiveScope<?, ?>, Object, ? super Continuation<Object>, ? extends Object> function3 = this.function;
        if (block$kotlin_stdlib != function3) {
            this.function = block$kotlin_stdlib;
            Objects.requireNonNull(continuation, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
            this.cont = crossFunctionCompletion(function3, continuation);
        } else {
            Objects.requireNonNull(continuation, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
            this.cont = continuation;
        }
        this.value = u3;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (coroutine_suspended == coroutine_suspended2) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return coroutine_suspended;
    }
}
