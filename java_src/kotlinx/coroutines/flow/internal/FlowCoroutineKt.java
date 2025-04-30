package kotlinx.coroutines.flow.internal;

import com.umeng.analytics.pro.ai;
import kotlin.BuilderInference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.channels.w;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FlowCoroutine.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000F\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001aD\u0010\u0007\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00002)\b\u0001\u0010\u0006\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0001¢\u0006\u0002\b\u0005H\u0080@ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\b\u001aU\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\f\"\u0004\b\u0000\u0010\u000025\b\u0001\u0010\u0006\u001a/\b\u0001\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\t¢\u0006\u0002\b\u0005H\u0000ø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000e\u001ae\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u0015\"\u0004\b\u0000\u0010\u000f*\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00102\b\b\u0002\u0010\u0013\u001a\u00020\u00122/\b\u0001\u0010\u0006\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0001¢\u0006\u0002\b\u0005H\u0000ø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0017\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0018"}, d2 = {"R", "Lkotlin/Function2;", "Lkotlinx/coroutines/t0;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "block", ai.aD, "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/Function3;", "Lkotlinx/coroutines/flow/g;", "", "Lkotlinx/coroutines/flow/f;", com.xinzhu.overmind.utils.helpers.d.f64708a, "(Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/f;", "T", "Lkotlin/coroutines/CoroutineContext;", "context", "", "capacity", "Lkotlinx/coroutines/channels/w;", "Lkotlinx/coroutines/channels/ReceiveChannel;", "a", "(Lkotlinx/coroutines/t0;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ReceiveChannel;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class FlowCoroutineKt {

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* compiled from: SafeCollector.common.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J!\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\b"}, d2 = {"kotlinx/coroutines/flow/internal/FlowCoroutineKt$a", "Lkotlinx/coroutines/flow/f;", "Lkotlinx/coroutines/flow/g;", "collector", "", "e", "(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class a<R> implements kotlinx.coroutines.flow.f<R> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function3 f72049a;

        public a(Function3 function3) {
            this.f72049a = function3;
        }

        @Override // kotlinx.coroutines.flow.f
        @Nullable
        public Object e(@NotNull kotlinx.coroutines.flow.g<? super R> gVar, @NotNull Continuation<? super Unit> continuation) {
            Object coroutine_suspended;
            Object c4 = FlowCoroutineKt.c(new FlowCoroutineKt$scopedFlow$1$1(this.f72049a, gVar, null), continuation);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return c4 == coroutine_suspended ? c4 : Unit.INSTANCE;
        }
    }

    @NotNull
    public static final <T> ReceiveChannel<T> a(@NotNull t0 t0Var, @NotNull CoroutineContext coroutineContext, int i2, @BuilderInference @NotNull Function2<? super w<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        i iVar = new i(o0.d(t0Var, coroutineContext), kotlinx.coroutines.channels.m.d(i2, null, null, 6, null));
        iVar.t1(CoroutineStart.ATOMIC, iVar, function2);
        return iVar;
    }

    public static /* synthetic */ ReceiveChannel b(t0 t0Var, CoroutineContext coroutineContext, int i2, Function2 function2, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        return a(t0Var, coroutineContext, i2, function2);
    }

    @Nullable
    public static final <R> Object c(@BuilderInference @NotNull Function2<? super t0, ? super Continuation<? super R>, ? extends Object> function2, @NotNull Continuation<? super R> continuation) {
        Object coroutine_suspended;
        g gVar = new g(continuation.getContext(), continuation);
        Object f4 = b3.b.f(gVar, gVar, function2);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (f4 == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return f4;
    }

    @NotNull
    public static final <R> kotlinx.coroutines.flow.f<R> d(@BuilderInference @NotNull Function3<? super t0, ? super kotlinx.coroutines.flow.g<? super R>, ? super Continuation<? super Unit>, ? extends Object> function3) {
        return new a(function3);
    }
}
