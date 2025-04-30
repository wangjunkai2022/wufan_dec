package kotlinx.coroutines.flow;

import com.umeng.analytics.pro.ai;
import java.util.Iterator;
import kotlin.BuilderInference;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.ranges.IntRange;
import kotlin.ranges.LongRange;
import kotlin.sequences.Sequence;
import kotlinx.coroutines.FlowPreview;
import kotlinx.coroutines.channels.b0;
import kotlinx.coroutines.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Builders.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0086\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001c\n\u0000\n\u0002\u0010(\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\b\n\u0002\u0010\u0015\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0016\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u001aM\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\b\"\u0004\b\u0000\u0010\u00002/\b\u0001\u0010\u0007\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0001¢\u0006\u0002\b\u0006ø\u0001\u0000¢\u0006\u0004\b\t\u0010\n\u001a\u001e\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\b\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u000bH\u0007\u001a8\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\b\"\u0004\b\u0000\u0010\u0000*\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\rH\u0007ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000f\u001a\u001c\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00000\b\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0010\u001a\u001c\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\b\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0012\u001a\u001c\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\b\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0014\u001a-\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\b\"\u0004\b\u0000\u0010\u00002\u0012\u0010\u0017\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0016\"\u00028\u0000¢\u0006\u0004\b\u0018\u0010\u0019\u001a!\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00000\b\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u001a\u001a\u00028\u0000¢\u0006\u0004\b\u001b\u0010\u001c\u001a\u0012\u0010\u001d\u001a\b\u0012\u0004\u0012\u00028\u00000\b\"\u0004\b\u0000\u0010\u0000\u001a#\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028\u00000\b\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0016¢\u0006\u0004\b\u001e\u0010\u0019\u001a\u0010\u0010!\u001a\b\u0012\u0004\u0012\u00020 0\b*\u00020\u001f\u001a\u0010\u0010$\u001a\b\u0012\u0004\u0012\u00020#0\b*\u00020\"\u001a\u0010\u0010&\u001a\b\u0012\u0004\u0012\u00020 0\b*\u00020%\u001a\u0010\u0010(\u001a\b\u0012\u0004\u0012\u00020#0\b*\u00020'\u001aT\u0010/\u001a\b\u0012\u0004\u0012\u00028\u00000\b\"\u0004\b\u0000\u0010\u00002\b\b\u0002\u0010)\u001a\u00020 24\b\u0001\u0010\u0007\u001a.\u0012\u0004\u0012\u00020*\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00028\u00000+¢\u0006\f\b,\u0012\b\b-\u0012\u0004\b\b(.\u0012\u0004\u0012\u00020\u00040\u0001¢\u0006\u0002\b\u0006H\u0007\u001aM\u00101\u001a\b\u0012\u0004\u0012\u00028\u00000\b\"\u0004\b\u0000\u0010\u00002/\b\u0001\u0010\u0007\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u000000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0001¢\u0006\u0002\b\u0006ø\u0001\u0000¢\u0006\u0004\b1\u0010\n\u001aM\u00102\u001a\b\u0012\u0004\u0012\u00028\u00000\b\"\u0004\b\u0000\u0010\u00002/\b\u0001\u0010\u0007\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u000000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0001¢\u0006\u0002\b\u0006ø\u0001\u0000¢\u0006\u0004\b2\u0010\n\u0082\u0002\u0004\n\u0002\b\u0019¨\u00063"}, d2 = {"T", "Lkotlin/Function2;", "Lkotlinx/coroutines/flow/g;", "Lkotlin/coroutines/Continuation;", "", "", "Lkotlin/ExtensionFunctionType;", "block", "Lkotlinx/coroutines/flow/f;", "n", "(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/f;", "Lkotlin/Function0;", ai.aD, "Lkotlin/Function1;", com.xinzhu.overmind.utils.helpers.d.f64708a, "(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/f;", "", "a", "", "b", "Lkotlin/sequences/Sequence;", com.sdk.a.g.f56552a, "", "elements", ai.av, "([Ljava/lang/Object;)Lkotlinx/coroutines/flow/f;", "value", "o", "(Ljava/lang/Object;)Lkotlinx/coroutines/flow/f;", "m", "j", "", "", "h", "", "", ai.aA, "Lkotlin/ranges/IntRange;", "e", "Lkotlin/ranges/LongRange;", "f", "bufferSize", "Lkotlinx/coroutines/t0;", "Lkotlinx/coroutines/channels/b0;", "Lkotlin/ParameterName;", "name", "channel", "q", "Lkotlinx/coroutines/channels/w;", "l", "k", "kotlinx-coroutines-core"}, k = 5, mv = {1, 5, 1}, xs = "kotlinx/coroutines/flow/FlowKt")
/* loaded from: classes.dex */
public final /* synthetic */ class FlowKt__BuildersKt {

    /* compiled from: SafeCollector.common.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J!\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\b"}, d2 = {"kotlinx/coroutines/flow/FlowKt__BuildersKt$a", "Lkotlinx/coroutines/flow/f;", "Lkotlinx/coroutines/flow/g;", "collector", "", "e", "(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class a<T> implements f<T> {

        /* renamed from: a */
        final /* synthetic */ Function0 f71290a;

        public a(Function0 function0) {
            this.f71290a = function0;
        }

        @Override // kotlinx.coroutines.flow.f
        @Nullable
        public Object e(@NotNull g<? super T> gVar, @NotNull Continuation<? super Unit> continuation) {
            Object coroutine_suspended;
            Object emit = gVar.emit((Object) this.f71290a.invoke(), continuation);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return emit == coroutine_suspended ? emit : Unit.INSTANCE;
        }
    }

    /* compiled from: SafeCollector.common.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J!\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\b"}, d2 = {"kotlinx/coroutines/flow/FlowKt__BuildersKt$b", "Lkotlinx/coroutines/flow/f;", "Lkotlinx/coroutines/flow/g;", "collector", "", "e", "(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class b<T> implements f<T> {

        /* renamed from: a */
        final /* synthetic */ Object f71291a;

        public b(Object obj) {
            this.f71291a = obj;
        }

        @Override // kotlinx.coroutines.flow.f
        @Nullable
        public Object e(@NotNull g<? super T> gVar, @NotNull Continuation<? super Unit> continuation) {
            Object coroutine_suspended;
            Object emit = gVar.emit((Object) this.f71291a, continuation);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return emit == coroutine_suspended ? emit : Unit.INSTANCE;
        }
    }

    @NotNull
    public static final <T> f<T> a(@NotNull Iterable<? extends T> iterable) {
        return new FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$3(iterable);
    }

    @NotNull
    public static final <T> f<T> b(@NotNull Iterator<? extends T> it2) {
        return new FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4(it2);
    }

    @FlowPreview
    @NotNull
    public static final <T> f<T> c(@NotNull Function0<? extends T> function0) {
        return new a(function0);
    }

    @FlowPreview
    @NotNull
    public static final <T> f<T> d(@NotNull Function1<? super Continuation<? super T>, ? extends Object> function1) {
        return new FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$2(function1);
    }

    @NotNull
    public static final f<Integer> e(@NotNull IntRange intRange) {
        return new FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$9(intRange);
    }

    @NotNull
    public static final f<Long> f(@NotNull LongRange longRange) {
        return new FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10(longRange);
    }

    @NotNull
    public static final <T> f<T> g(@NotNull Sequence<? extends T> sequence) {
        return new FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$5(sequence);
    }

    @NotNull
    public static final f<Integer> h(@NotNull int[] iArr) {
        return new FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$7(iArr);
    }

    @NotNull
    public static final f<Long> i(@NotNull long[] jArr) {
        return new FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8(jArr);
    }

    @NotNull
    public static final <T> f<T> j(@NotNull T[] tArr) {
        return new FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$6(tArr);
    }

    @NotNull
    public static final <T> f<T> k(@BuilderInference @NotNull Function2<? super kotlinx.coroutines.channels.w<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return new CallbackFlowBuilder(function2, null, 0, null, 14, null);
    }

    @NotNull
    public static final <T> f<T> l(@BuilderInference @NotNull Function2<? super kotlinx.coroutines.channels.w<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return new d(function2, null, 0, null, 14, null);
    }

    @NotNull
    public static final <T> f<T> m() {
        return e.f71936a;
    }

    @NotNull
    public static final <T> f<T> n(@BuilderInference @NotNull Function2<? super g<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return new n(function2);
    }

    @NotNull
    public static final <T> f<T> o(T t3) {
        return new b(t3);
    }

    @NotNull
    public static final <T> f<T> p(@NotNull T... tArr) {
        return new FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$1(tArr);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Use channelFlow with awaitClose { } instead of flowViaChannel and invokeOnClose { }.")
    @FlowPreview
    @NotNull
    public static final <T> f<T> q(int i2, @BuilderInference @NotNull Function2<? super t0, ? super b0<? super T>, Unit> function2) {
        f<T> d4;
        d4 = i.d(h.y(new FlowKt__BuildersKt$flowViaChannel$1(function2, null)), i2, null, 2, null);
        return d4;
    }

    public static /* synthetic */ f r(int i2, Function2 function2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            i2 = -2;
        }
        return h.Q0(i2, function2);
    }
}
