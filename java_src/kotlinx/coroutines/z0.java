package kotlinx.coroutines;

import com.umeng.analytics.pro.ai;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.c2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Deferred.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\u00020\u0002J\u0013\u0010\u0003\u001a\u00028\u0000H¦@ø\u0001\u0000¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00028\u0000H'¢\u0006\u0004\b\u0005\u0010\u0006J\n\u0010\b\u001a\u0004\u0018\u00010\u0007H'R\u001c\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\t8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\r"}, d2 = {"Lkotlinx/coroutines/z0;", "T", "Lkotlinx/coroutines/c2;", "n", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "e", "()Ljava/lang/Object;", "", ai.aA, "Lkotlinx/coroutines/selects/d;", "D", "()Lkotlinx/coroutines/selects/d;", "onAwait", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public interface z0<T> extends c2 {

    /* compiled from: Deferred.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    /* loaded from: classes.dex */
    public static final class a {
        public static <T, R> R b(@NotNull z0<? extends T> z0Var, R r3, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
            return (R) c2.a.d(z0Var, r3, function2);
        }

        @Nullable
        public static <T, E extends CoroutineContext.Element> E c(@NotNull z0<? extends T> z0Var, @NotNull CoroutineContext.Key<E> key) {
            return (E) c2.a.e(z0Var, key);
        }

        @NotNull
        public static <T> CoroutineContext d(@NotNull z0<? extends T> z0Var, @NotNull CoroutineContext.Key<?> key) {
            return c2.a.g(z0Var, key);
        }

        @NotNull
        public static <T> CoroutineContext e(@NotNull z0<? extends T> z0Var, @NotNull CoroutineContext coroutineContext) {
            return c2.a.h(z0Var, coroutineContext);
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "Operator '+' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`.")
        @NotNull
        public static <T> c2 f(@NotNull z0<? extends T> z0Var, @NotNull c2 c2Var) {
            return c2.a.i(z0Var, c2Var);
        }
    }

    @NotNull
    kotlinx.coroutines.selects.d<T> D();

    @ExperimentalCoroutinesApi
    T e();

    @ExperimentalCoroutinesApi
    @Nullable
    Throwable i();

    @Nullable
    Object n(@NotNull Continuation<? super T> continuation);
}
