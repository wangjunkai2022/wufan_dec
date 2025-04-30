package kotlinx.coroutines.internal;

import com.umeng.analytics.pro.ai;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.e3;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ThreadContext.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u0000\u001a\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0001\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0000\u001a\u001a\u0010\b\u001a\u00020\u00072\u0006\u0010\u0001\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002H\u0000\"(\u0010\u000e\u001a\u0014\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\n0\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r\"\u0016\u0010\u0011\u001a\u00020\u000f8\u0000@\u0001X\u0081\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0010\"4\u0010\u0013\u001a \u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u0012\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00120\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\r\",\u0010\u0014\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00020\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\r¨\u0006\u0015"}, d2 = {"Lkotlin/coroutines/CoroutineContext;", "context", "", "b", "countOrElement", ai.aD, "oldState", "", "a", "Lkotlin/Function2;", "Lkotlinx/coroutines/internal/s0;", "Lkotlin/coroutines/CoroutineContext$Element;", com.xinzhu.overmind.utils.helpers.d.f64708a, "Lkotlin/jvm/functions/Function2;", "updateState", "Lkotlinx/coroutines/internal/i0;", "Lkotlinx/coroutines/internal/i0;", "NO_THREAD_ELEMENTS", "Lkotlinx/coroutines/e3;", "findOne", "countAll", "kotlinx-coroutines-core"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class ThreadContextKt {
    @JvmField
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final i0 f72150a = new i0("NO_THREAD_ELEMENTS");
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final Function2<Object, CoroutineContext.Element, Object> f72151b = new Function2<Object, CoroutineContext.Element, Object>() { // from class: kotlinx.coroutines.internal.ThreadContextKt$countAll$1
        @Override // kotlin.jvm.functions.Function2
        @Nullable
        /* renamed from: a */
        public final Object invoke(@Nullable Object obj, @NotNull CoroutineContext.Element element) {
            if (element instanceof e3) {
                Integer num = obj instanceof Integer ? (Integer) obj : null;
                int intValue = num == null ? 1 : num.intValue();
                return intValue == 0 ? element : Integer.valueOf(intValue + 1);
            }
            return obj;
        }
    };
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final Function2<e3<?>, CoroutineContext.Element, e3<?>> f72152c = new Function2<e3<?>, CoroutineContext.Element, e3<?>>() { // from class: kotlinx.coroutines.internal.ThreadContextKt$findOne$1
        @Override // kotlin.jvm.functions.Function2
        @Nullable
        /* renamed from: a */
        public final e3<?> invoke(@Nullable e3<?> e3Var, @NotNull CoroutineContext.Element element) {
            if (e3Var != null) {
                return e3Var;
            }
            if (element instanceof e3) {
                return (e3) element;
            }
            return null;
        }
    };
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final Function2<s0, CoroutineContext.Element, s0> f72153d = new Function2<s0, CoroutineContext.Element, s0>() { // from class: kotlinx.coroutines.internal.ThreadContextKt$updateState$1
        @Override // kotlin.jvm.functions.Function2
        @NotNull
        /* renamed from: a */
        public final s0 invoke(@NotNull s0 s0Var, @NotNull CoroutineContext.Element element) {
            if (element instanceof e3) {
                e3<?> e3Var = (e3) element;
                s0Var.a(e3Var, e3Var.T(s0Var.f72219a));
            }
            return s0Var;
        }
    };

    public static final void a(@NotNull CoroutineContext coroutineContext, @Nullable Object obj) {
        if (obj == f72150a) {
            return;
        }
        if (obj instanceof s0) {
            ((s0) obj).b(coroutineContext);
            return;
        }
        Object fold = coroutineContext.fold(null, f72152c);
        Objects.requireNonNull(fold, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        ((e3) fold).w(coroutineContext, obj);
    }

    @NotNull
    public static final Object b(@NotNull CoroutineContext coroutineContext) {
        Object fold = coroutineContext.fold(0, f72151b);
        Intrinsics.checkNotNull(fold);
        return fold;
    }

    @Nullable
    public static final Object c(@NotNull CoroutineContext coroutineContext, @Nullable Object obj) {
        if (obj == null) {
            obj = b(coroutineContext);
        }
        if (obj == 0) {
            return f72150a;
        }
        if (obj instanceof Integer) {
            return coroutineContext.fold(new s0(coroutineContext, ((Number) obj).intValue()), f72153d);
        }
        return ((e3) obj).T(coroutineContext);
    }
}
