package kotlinx.coroutines;

import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.c2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Job.kt */
@Deprecated(level = DeprecationLevel.ERROR, message = "This is internal API and may be removed in the future releases")
@InternalCoroutinesApi
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H'¨\u0006\u0006"}, d2 = {"Lkotlinx/coroutines/x;", "Lkotlinx/coroutines/c2;", "Lkotlinx/coroutines/r2;", "parentJob", "", "o", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public interface x extends c2 {

    /* compiled from: Job.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    /* loaded from: classes.dex */
    public static final class a {
        public static <R> R b(@NotNull x xVar, R r3, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
            return (R) c2.a.d(xVar, r3, function2);
        }

        @Nullable
        public static <E extends CoroutineContext.Element> E c(@NotNull x xVar, @NotNull CoroutineContext.Key<E> key) {
            return (E) c2.a.e(xVar, key);
        }

        @NotNull
        public static CoroutineContext d(@NotNull x xVar, @NotNull CoroutineContext.Key<?> key) {
            return c2.a.g(xVar, key);
        }

        @NotNull
        public static CoroutineContext e(@NotNull x xVar, @NotNull CoroutineContext coroutineContext) {
            return c2.a.h(xVar, coroutineContext);
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "Operator '+' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`.")
        @NotNull
        public static c2 f(@NotNull x xVar, @NotNull c2 c2Var) {
            return c2.a.i(xVar, c2Var);
        }
    }

    @InternalCoroutinesApi
    void o(@NotNull r2 r2Var);
}
