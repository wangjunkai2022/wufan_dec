package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
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
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bg\u0018\u00002\u00020\u0001J\f\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003H'¨\u0006\u0005"}, d2 = {"Lkotlinx/coroutines/r2;", "Lkotlinx/coroutines/c2;", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "A", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public interface r2 extends c2 {

    /* compiled from: Job.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    /* loaded from: classes.dex */
    public static final class a {
        public static <R> R b(@NotNull r2 r2Var, R r3, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
            return (R) c2.a.d(r2Var, r3, function2);
        }

        @Nullable
        public static <E extends CoroutineContext.Element> E c(@NotNull r2 r2Var, @NotNull CoroutineContext.Key<E> key) {
            return (E) c2.a.e(r2Var, key);
        }

        @NotNull
        public static CoroutineContext d(@NotNull r2 r2Var, @NotNull CoroutineContext.Key<?> key) {
            return c2.a.g(r2Var, key);
        }

        @NotNull
        public static CoroutineContext e(@NotNull r2 r2Var, @NotNull CoroutineContext coroutineContext) {
            return c2.a.h(r2Var, coroutineContext);
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "Operator '+' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`.")
        @NotNull
        public static c2 f(@NotNull r2 r2Var, @NotNull c2 c2Var) {
            return c2.a.i(r2Var, c2Var);
        }
    }

    @InternalCoroutinesApi
    @NotNull
    CancellationException A();
}
