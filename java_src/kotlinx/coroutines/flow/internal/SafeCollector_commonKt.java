package kotlinx.coroutines.flow.internal;

import com.umeng.analytics.pro.ai;
import kotlin.BuilderInference;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.c2;
import kotlinx.coroutines.internal.e0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SafeCollector.common.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0018\u0010\u0004\u001a\u00020\u0003*\u0006\u0012\u0002\b\u00030\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0001\u001a\u001b\u0010\u0007\u001a\u0004\u0018\u00010\u0005*\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0080\u0010\u001aP\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u000f\"\u0004\b\u0000\u0010\b2/\b\u0005\u0010\u000e\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\t¢\u0006\u0002\b\rH\u0081\bø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"Lkotlinx/coroutines/flow/internal/SafeCollector;", "Lkotlin/coroutines/CoroutineContext;", "currentContext", "", "a", "Lkotlinx/coroutines/c2;", "collectJob", "b", "T", "Lkotlin/Function2;", "Lkotlinx/coroutines/flow/g;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "block", "Lkotlinx/coroutines/flow/f;", ai.aD, "(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/f;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class SafeCollector_commonKt {
    @JvmName(name = "checkContext")
    public static final void a(@NotNull final SafeCollector<?> safeCollector, @NotNull CoroutineContext coroutineContext) {
        if (((Number) coroutineContext.fold(0, new Function2<Integer, CoroutineContext.Element, Integer>() { // from class: kotlinx.coroutines.flow.internal.SafeCollector_commonKt$checkContext$result$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            public final int a(int i2, @NotNull CoroutineContext.Element element) {
                CoroutineContext.Key<?> key = element.getKey();
                CoroutineContext.Element element2 = safeCollector.f72055b.get(key);
                if (key != c2.Q) {
                    if (element != element2) {
                        return Integer.MIN_VALUE;
                    }
                    return i2 + 1;
                }
                c2 c2Var = (c2) element2;
                c2 b4 = SafeCollector_commonKt.b((c2) element, c2Var);
                if (b4 == c2Var) {
                    return c2Var == null ? i2 : i2 + 1;
                }
                throw new IllegalStateException(("Flow invariant is violated:\n\t\tEmission from another coroutine is detected.\n\t\tChild of " + b4 + ", expected child of " + c2Var + ".\n\t\tFlowCollector is not thread-safe and concurrent emissions are prohibited.\n\t\tTo mitigate this restriction please use 'channelFlow' builder instead of 'flow'").toString());
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Integer invoke(Integer num, CoroutineContext.Element element) {
                return Integer.valueOf(a(num.intValue(), element));
            }
        })).intValue() == safeCollector.f72056c) {
            return;
        }
        throw new IllegalStateException(("Flow invariant is violated:\n\t\tFlow was collected in " + safeCollector.f72055b + ",\n\t\tbut emission happened in " + coroutineContext + ".\n\t\tPlease refer to 'flow' documentation or use 'flowOn' instead").toString());
    }

    @Nullable
    public static final c2 b(@Nullable c2 c2Var, @Nullable c2 c2Var2) {
        while (c2Var != null) {
            if (c2Var == c2Var2 || !(c2Var instanceof e0)) {
                return c2Var;
            }
            c2Var = ((e0) c2Var).u1();
        }
        return null;
    }

    @PublishedApi
    @NotNull
    public static final <T> kotlinx.coroutines.flow.f<T> c(@BuilderInference @NotNull Function2<? super kotlinx.coroutines.flow.g<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return new SafeCollector_commonKt$unsafeFlow$1(function2);
    }
}
