package kotlin.coroutines.intrinsics;

import com.alipay.sdk.authjs.a;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.SinceKotlin;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.RestrictedContinuationImpl;
import kotlin.internal.InlineOnly;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: IntrinsicsJvm.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\t\u001aC\u0010\u0005\u001a\u0004\u0018\u00010\u0003\"\u0004\b\u0000\u0010\u0000*\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a\\\u0010\u0005\u001a\u0004\u0018\u00010\u0003\"\u0004\b\u0000\u0010\u0007\"\u0004\b\u0001\u0010\u0000*#\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\b¢\u0006\u0002\b\t2\u0006\u0010\n\u001a\u00028\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0002H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u000b\u001ap\u0010\u0005\u001a\u0004\u0018\u00010\u0003\"\u0004\b\u0000\u0010\u0007\"\u0004\b\u0001\u0010\f\"\u0004\b\u0002\u0010\u0000*)\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\r¢\u0006\u0002\b\t2\u0006\u0010\n\u001a\u00028\u00002\u0006\u0010\u000e\u001a\u00028\u00012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00020\u0002H\u0081\bø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u000f\u001aF\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u0002\"\u0004\b\u0000\u0010\u0000*\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012\u001a_\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u0002\"\u0004\b\u0000\u0010\u0007\"\u0004\b\u0001\u0010\u0000*#\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\b¢\u0006\u0002\b\t2\u0006\u0010\n\u001a\u00028\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0002H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0013\u001a\u001e\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0007\u001aH\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00100\u0002\"\u0004\b\u0000\u0010\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u001c\b\u0004\u0010\u0015\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001H\u0083\b¢\u0006\u0004\b\u0016\u0010\u0017\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0019"}, d2 = {"T", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "completion", "startCoroutineUninterceptedOrReturn", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "R", "Lkotlin/Function2;", "Lkotlin/ExtensionFunctionType;", "receiver", "(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "P", "Lkotlin/Function3;", a.f9678l, "(Lkotlin/jvm/functions/Function3;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "createCoroutineUnintercepted", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;", "(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;", "intercepted", "block", "createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt", "(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)Lkotlin/coroutines/Continuation;", "createCoroutineFromSuspendFunction", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/coroutines/intrinsics/IntrinsicsKt")
/* loaded from: classes5.dex */
public class IntrinsicsKt__IntrinsicsJvmKt {
    @SinceKotlin(version = "1.3")
    private static final <T> Continuation<Unit> createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt(final Continuation<? super T> continuation, final Function1<? super Continuation<? super T>, ? extends Object> function1) {
        final CoroutineContext context = continuation.getContext();
        if (context == EmptyCoroutineContext.INSTANCE) {
            return new RestrictedContinuationImpl(continuation) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$1
                private int label;

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @Nullable
                protected Object invokeSuspend(@NotNull Object obj) {
                    int i2 = this.label;
                    if (i2 == 0) {
                        this.label = 1;
                        ResultKt.throwOnFailure(obj);
                        return Function1.this.invoke(this);
                    } else if (i2 == 1) {
                        this.label = 2;
                        ResultKt.throwOnFailure(obj);
                        return obj;
                    } else {
                        throw new IllegalStateException("This coroutine had already completed".toString());
                    }
                }
            };
        }
        return new ContinuationImpl(continuation, context) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$2
            private int label;

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @Nullable
            protected Object invokeSuspend(@NotNull Object obj) {
                int i2 = this.label;
                if (i2 == 0) {
                    this.label = 1;
                    ResultKt.throwOnFailure(obj);
                    return Function1.this.invoke(this);
                } else if (i2 == 1) {
                    this.label = 2;
                    ResultKt.throwOnFailure(obj);
                    return obj;
                } else {
                    throw new IllegalStateException("This coroutine had already completed".toString());
                }
            }
        };
    }

    @SinceKotlin(version = "1.3")
    @NotNull
    public static <T> Continuation<Unit> createCoroutineUnintercepted(@NotNull final Function1<? super Continuation<? super T>, ? extends Object> createCoroutineUnintercepted, @NotNull Continuation<? super T> completion) {
        Continuation<Unit> continuation;
        Intrinsics.checkNotNullParameter(createCoroutineUnintercepted, "$this$createCoroutineUnintercepted");
        Intrinsics.checkNotNullParameter(completion, "completion");
        final Continuation<?> probeCoroutineCreated = DebugProbesKt.probeCoroutineCreated(completion);
        if (createCoroutineUnintercepted instanceof BaseContinuationImpl) {
            return ((BaseContinuationImpl) createCoroutineUnintercepted).create(probeCoroutineCreated);
        }
        final CoroutineContext context = probeCoroutineCreated.getContext();
        if (context == EmptyCoroutineContext.INSTANCE) {
            continuation = new RestrictedContinuationImpl(probeCoroutineCreated) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$1
                private int label;

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @Nullable
                protected Object invokeSuspend(@NotNull Object obj) {
                    int i2 = this.label;
                    if (i2 != 0) {
                        if (i2 == 1) {
                            this.label = 2;
                            ResultKt.throwOnFailure(obj);
                            return obj;
                        }
                        throw new IllegalStateException("This coroutine had already completed".toString());
                    }
                    this.label = 1;
                    ResultKt.throwOnFailure(obj);
                    Function1 function1 = createCoroutineUnintercepted;
                    Objects.requireNonNull(function1, "null cannot be cast to non-null type (kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
                    return ((Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function1, 1)).invoke(this);
                }
            };
        } else {
            continuation = new ContinuationImpl(probeCoroutineCreated, context) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$2
                private int label;

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @Nullable
                protected Object invokeSuspend(@NotNull Object obj) {
                    int i2 = this.label;
                    if (i2 != 0) {
                        if (i2 == 1) {
                            this.label = 2;
                            ResultKt.throwOnFailure(obj);
                            return obj;
                        }
                        throw new IllegalStateException("This coroutine had already completed".toString());
                    }
                    this.label = 1;
                    ResultKt.throwOnFailure(obj);
                    Function1 function1 = createCoroutineUnintercepted;
                    Objects.requireNonNull(function1, "null cannot be cast to non-null type (kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
                    return ((Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function1, 1)).invoke(this);
                }
            };
        }
        return continuation;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SinceKotlin(version = "1.3")
    @NotNull
    public static <T> Continuation<T> intercepted(@NotNull Continuation<? super T> intercepted) {
        Continuation<T> continuation;
        Intrinsics.checkNotNullParameter(intercepted, "$this$intercepted");
        ContinuationImpl continuationImpl = !(intercepted instanceof ContinuationImpl) ? null : intercepted;
        return (continuationImpl == null || (continuation = (Continuation<T>) continuationImpl.intercepted()) == null) ? intercepted : continuation;
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final <T> Object startCoroutineUninterceptedOrReturn(Function1<? super Continuation<? super T>, ? extends Object> function1, Continuation<? super T> continuation) {
        Objects.requireNonNull(function1, "null cannot be cast to non-null type (kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
        return ((Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function1, 1)).invoke(continuation);
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final <R, T> Object startCoroutineUninterceptedOrReturn(Function2<? super R, ? super Continuation<? super T>, ? extends Object> function2, R r3, Continuation<? super T> continuation) {
        Objects.requireNonNull(function2, "null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
        return ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2)).invoke(r3, continuation);
    }

    @InlineOnly
    private static final <R, P, T> Object startCoroutineUninterceptedOrReturn(Function3<? super R, ? super P, ? super Continuation<? super T>, ? extends Object> function3, R r3, P p3, Continuation<? super T> continuation) {
        Objects.requireNonNull(function3, "null cannot be cast to non-null type (R, P, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
        return ((Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function3, 3)).invoke(r3, p3, continuation);
    }

    @SinceKotlin(version = "1.3")
    @NotNull
    public static <R, T> Continuation<Unit> createCoroutineUnintercepted(@NotNull final Function2<? super R, ? super Continuation<? super T>, ? extends Object> createCoroutineUnintercepted, final R r3, @NotNull Continuation<? super T> completion) {
        Continuation<Unit> continuation;
        Intrinsics.checkNotNullParameter(createCoroutineUnintercepted, "$this$createCoroutineUnintercepted");
        Intrinsics.checkNotNullParameter(completion, "completion");
        final Continuation<?> probeCoroutineCreated = DebugProbesKt.probeCoroutineCreated(completion);
        if (createCoroutineUnintercepted instanceof BaseContinuationImpl) {
            return ((BaseContinuationImpl) createCoroutineUnintercepted).create(r3, probeCoroutineCreated);
        }
        final CoroutineContext context = probeCoroutineCreated.getContext();
        if (context == EmptyCoroutineContext.INSTANCE) {
            continuation = new RestrictedContinuationImpl(probeCoroutineCreated) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$3
                private int label;

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @Nullable
                protected Object invokeSuspend(@NotNull Object obj) {
                    int i2 = this.label;
                    if (i2 != 0) {
                        if (i2 == 1) {
                            this.label = 2;
                            ResultKt.throwOnFailure(obj);
                            return obj;
                        }
                        throw new IllegalStateException("This coroutine had already completed".toString());
                    }
                    this.label = 1;
                    ResultKt.throwOnFailure(obj);
                    Function2 function2 = createCoroutineUnintercepted;
                    Objects.requireNonNull(function2, "null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
                    return ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2)).invoke(r3, this);
                }
            };
        } else {
            continuation = new ContinuationImpl(probeCoroutineCreated, context) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$4
                private int label;

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @Nullable
                protected Object invokeSuspend(@NotNull Object obj) {
                    int i2 = this.label;
                    if (i2 != 0) {
                        if (i2 == 1) {
                            this.label = 2;
                            ResultKt.throwOnFailure(obj);
                            return obj;
                        }
                        throw new IllegalStateException("This coroutine had already completed".toString());
                    }
                    this.label = 1;
                    ResultKt.throwOnFailure(obj);
                    Function2 function2 = createCoroutineUnintercepted;
                    Objects.requireNonNull(function2, "null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
                    return ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2)).invoke(r3, this);
                }
            };
        }
        return continuation;
    }
}
