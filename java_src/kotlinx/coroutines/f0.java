package kotlinx.coroutines;

import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.c2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CompletableJob.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H&J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H&¨\u0006\u0007"}, d2 = {"Lkotlinx/coroutines/f0;", "Lkotlinx/coroutines/c2;", "", "complete", "", "exception", com.xinzhu.overmind.utils.helpers.d.f64708a, "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public interface f0 extends c2 {

    /* compiled from: CompletableJob.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    /* loaded from: classes.dex */
    public static final class a {
        public static <R> R b(@NotNull f0 f0Var, R r3, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
            return (R) c2.a.d(f0Var, r3, function2);
        }

        @Nullable
        public static <E extends CoroutineContext.Element> E c(@NotNull f0 f0Var, @NotNull CoroutineContext.Key<E> key) {
            return (E) c2.a.e(f0Var, key);
        }

        @NotNull
        public static CoroutineContext d(@NotNull f0 f0Var, @NotNull CoroutineContext.Key<?> key) {
            return c2.a.g(f0Var, key);
        }

        @NotNull
        public static CoroutineContext e(@NotNull f0 f0Var, @NotNull CoroutineContext coroutineContext) {
            return c2.a.h(f0Var, coroutineContext);
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "Operator '+' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`.")
        @NotNull
        public static c2 f(@NotNull f0 f0Var, @NotNull c2 c2Var) {
            return c2.a.i(f0Var, c2Var);
        }
    }

    boolean complete();

    boolean d(@NotNull Throwable th);
}
