package kotlinx.coroutines.flow;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Distinct.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\n\u001a\u001c\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001\u001aT\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u000126\u0010\t\u001a2\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u0003\u001a6\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u000b*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\f\u001aw\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0014\u0010\r\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\f2:\u0010\t\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u000f¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0015\u0012\u0013\u0018\u00010\u000f¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u0003H\u0002¢\u0006\u0004\b\u0010\u0010\u0011\",\u0010\u0015\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\f8\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\u0002\u0010\u0012\u0012\u0004\b\u0013\u0010\u0014\"2\u0010\u0018\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0012\u0004\u0012\u00020\b0\u00038\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\n\u0010\u0016\u0012\u0004\b\u0017\u0010\u0014¨\u0006\u0019"}, d2 = {"T", "Lkotlinx/coroutines/flow/f;", "a", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "old", "new", "", "areEquivalent", "b", "K", "Lkotlin/Function1;", "keySelector", ai.aD, "", com.xinzhu.overmind.utils.helpers.d.f64708a, "(Lkotlinx/coroutines/flow/f;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/f;", "Lkotlin/jvm/functions/Function1;", "getDefaultKeySelector$annotations$FlowKt__DistinctKt", "()V", "defaultKeySelector", "Lkotlin/jvm/functions/Function2;", "getDefaultAreEquivalent$annotations$FlowKt__DistinctKt", "defaultAreEquivalent", "kotlinx-coroutines-core"}, k = 5, mv = {1, 5, 1}, xs = "kotlinx/coroutines/flow/FlowKt")
/* loaded from: classes5.dex */
final /* synthetic */ class FlowKt__DistinctKt {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final Function1<Object, Object> f71376a = new Function1<Object, Object>() { // from class: kotlinx.coroutines.flow.FlowKt__DistinctKt$defaultKeySelector$1
        @Override // kotlin.jvm.functions.Function1
        @Nullable
        public final Object invoke(@Nullable Object obj) {
            return obj;
        }
    };
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final Function2<Object, Object, Boolean> f71377b = new Function2<Object, Object, Boolean>() { // from class: kotlinx.coroutines.flow.FlowKt__DistinctKt$defaultAreEquivalent$1
        public final boolean a(@Nullable Object obj, @Nullable Object obj2) {
            return Intrinsics.areEqual(obj, obj2);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Boolean invoke(Object obj, Object obj2) {
            return Boolean.valueOf(a(obj, obj2));
        }
    };

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T> f<T> a(@NotNull f<? extends T> fVar) {
        return fVar instanceof v ? fVar : d(fVar, f71376a, f71377b);
    }

    @NotNull
    public static final <T> f<T> b(@NotNull f<? extends T> fVar, @NotNull Function2<? super T, ? super T, Boolean> function2) {
        return d(fVar, f71376a, function2);
    }

    @NotNull
    public static final <T, K> f<T> c(@NotNull f<? extends T> fVar, @NotNull Function1<? super T, ? extends K> function1) {
        return d(fVar, function1, f71377b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static final <T> f<T> d(f<? extends T> fVar, Function1<? super T, ? extends Object> function1, Function2<Object, Object, Boolean> function2) {
        if (fVar instanceof DistinctFlowImpl) {
            DistinctFlowImpl distinctFlowImpl = (DistinctFlowImpl) fVar;
            if (distinctFlowImpl.f71215b == function1 && distinctFlowImpl.f71216c == function2) {
                return fVar;
            }
        }
        return new DistinctFlowImpl(fVar, function1, function2);
    }

    private static /* synthetic */ void e() {
    }

    private static /* synthetic */ void f() {
    }
}
