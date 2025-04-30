package kotlinx.coroutines.flow;

import com.umeng.analytics.pro.ai;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.FlowPreview;
import kotlinx.coroutines.c2;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.internal.j;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Context.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u001a0\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u001a(\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u0002H\u0007\u001a\u001c\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001\u001a$\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\n\u001a\u00020\t\u001a\u001c\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001\u001a[\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00010\u0001\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\r*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u000e\u001a\u00020\t2\b\b\u0002\u0010\u000f\u001a\u00020\u00022#\u0010\u0012\u001a\u001f\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00010\u0010¢\u0006\u0002\b\u0011H\u0007\u001a\u0017\u0010\u0015\u001a\u00020\u00142\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"T", "Lkotlinx/coroutines/flow/f;", "", "capacity", "Lkotlinx/coroutines/channels/BufferOverflow;", "onBufferOverflow", "b", "a", com.sdk.a.g.f56552a, "Lkotlin/coroutines/CoroutineContext;", "context", "h", "e", "R", "flowContext", "bufferSize", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "builder", ai.aA, "", "f", "(Lkotlin/coroutines/CoroutineContext;)V", "kotlinx-coroutines-core"}, k = 5, mv = {1, 5, 1}, xs = "kotlinx/coroutines/flow/FlowKt")
/* loaded from: classes.dex */
public final /* synthetic */ class i {

    /* compiled from: SafeCollector.common.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J!\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\b"}, d2 = {"kotlinx/coroutines/flow/i$a", "Lkotlinx/coroutines/flow/f;", "Lkotlinx/coroutines/flow/g;", "collector", "", "e", "(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class a<R> implements f<R> {

        /* renamed from: a */
        final /* synthetic */ f f71938a;

        /* renamed from: b */
        final /* synthetic */ int f71939b;

        /* renamed from: c */
        final /* synthetic */ Function1 f71940c;

        /* renamed from: d */
        final /* synthetic */ CoroutineContext f71941d;

        public a(f fVar, int i2, Function1 function1, CoroutineContext coroutineContext) {
            this.f71938a = fVar;
            this.f71939b = i2;
            this.f71940c = function1;
            this.f71941d = coroutineContext;
        }

        @Override // kotlinx.coroutines.flow.f
        @Nullable
        public Object e(@NotNull g<? super R> gVar, @NotNull Continuation<? super Unit> continuation) {
            f d4;
            f d5;
            Object coroutine_suspended;
            d4 = i.d(h.P0(this.f71938a, continuation.getContext().minusKey(c2.Q)), this.f71939b, null, 2, null);
            d5 = i.d(h.P0((f) this.f71940c.invoke(d4), this.f71941d), this.f71939b, null, 2, null);
            Object e4 = d5.e(new b(gVar), continuation);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return e4 == coroutine_suspended ? e4 : Unit.INSTANCE;
        }
    }

    /* compiled from: Collect.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/i$b", "Lkotlinx/coroutines/flow/g;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class b<R> implements g<R> {

        /* renamed from: a */
        final /* synthetic */ g f71942a;

        public b(g gVar) {
            this.f71942a = gVar;
        }

        @Override // kotlinx.coroutines.flow.g
        @Nullable
        public Object emit(R r3, @NotNull Continuation<? super Unit> continuation) {
            Object coroutine_suspended;
            Object emit = this.f71942a.emit(r3, continuation);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return emit == coroutine_suspended ? emit : Unit.INSTANCE;
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.4.0, binary compatibility with earlier versions")
    public static final /* synthetic */ f a(f fVar, int i2) {
        f d4;
        d4 = d(fVar, i2, null, 2, null);
        return d4;
    }

    @NotNull
    public static final <T> f<T> b(@NotNull f<? extends T> fVar, int i2, @NotNull BufferOverflow bufferOverflow) {
        int i4;
        BufferOverflow bufferOverflow2;
        boolean z3 = true;
        if (i2 >= 0 || i2 == -2 || i2 == -1) {
            if (i2 == -1 && bufferOverflow != BufferOverflow.SUSPEND) {
                z3 = false;
            }
            if (z3) {
                if (i2 == -1) {
                    bufferOverflow2 = BufferOverflow.DROP_OLDEST;
                    i4 = 0;
                } else {
                    i4 = i2;
                    bufferOverflow2 = bufferOverflow;
                }
                return fVar instanceof kotlinx.coroutines.flow.internal.j ? j.a.a((kotlinx.coroutines.flow.internal.j) fVar, null, i4, bufferOverflow2, 1, null) : new kotlinx.coroutines.flow.internal.e(fVar, null, i4, bufferOverflow2, 2, null);
            }
            throw new IllegalArgumentException("CONFLATED capacity cannot be used with non-default onBufferOverflow".toString());
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("Buffer size should be non-negative, BUFFERED, or CONFLATED, but was ", Integer.valueOf(i2)).toString());
    }

    public static /* synthetic */ f c(f fVar, int i2, int i4, Object obj) {
        f a4;
        if ((i4 & 1) != 0) {
            i2 = -2;
        }
        a4 = a(fVar, i2);
        return a4;
    }

    public static /* synthetic */ f d(f fVar, int i2, BufferOverflow bufferOverflow, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            i2 = -2;
        }
        if ((i4 & 2) != 0) {
            bufferOverflow = BufferOverflow.SUSPEND;
        }
        return h.q(fVar, i2, bufferOverflow);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T> f<T> e(@NotNull f<? extends T> fVar) {
        return fVar instanceof kotlinx.coroutines.flow.a ? fVar : new kotlinx.coroutines.flow.b(fVar);
    }

    private static final void f(CoroutineContext coroutineContext) {
        if (!(coroutineContext.get(c2.Q) == null)) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("Flow context cannot contain job in it. Had ", coroutineContext).toString());
        }
    }

    @NotNull
    public static final <T> f<T> g(@NotNull f<? extends T> fVar) {
        f<T> d4;
        d4 = d(fVar, -1, null, 2, null);
        return d4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T> f<T> h(@NotNull f<? extends T> fVar, @NotNull CoroutineContext coroutineContext) {
        f(coroutineContext);
        return Intrinsics.areEqual(coroutineContext, EmptyCoroutineContext.INSTANCE) ? fVar : fVar instanceof kotlinx.coroutines.flow.internal.j ? j.a.a((kotlinx.coroutines.flow.internal.j) fVar, coroutineContext, 0, null, 6, null) : new kotlinx.coroutines.flow.internal.e(fVar, coroutineContext, 0, null, 12, null);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "flowWith is deprecated without replacement, please refer to its KDoc for an explanation")
    @FlowPreview
    @NotNull
    public static final <T, R> f<R> i(@NotNull f<? extends T> fVar, @NotNull CoroutineContext coroutineContext, int i2, @NotNull Function1<? super f<? extends T>, ? extends f<? extends R>> function1) {
        f(coroutineContext);
        return new a(fVar, i2, function1, coroutineContext);
    }

    public static /* synthetic */ f j(f fVar, CoroutineContext coroutineContext, int i2, Function1 function1, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = -2;
        }
        return h.S0(fVar, coroutineContext, i2, function1);
    }
}
