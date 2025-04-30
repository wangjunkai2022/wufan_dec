package kotlinx.coroutines;

import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.z0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CompletableDeferred.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0003\bf\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00028\u0000H&¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H&¨\u0006\n"}, d2 = {"Lkotlinx/coroutines/c0;", "T", "Lkotlinx/coroutines/z0;", "value", "", "x", "(Ljava/lang/Object;)Z", "", "exception", com.xinzhu.overmind.utils.helpers.d.f64708a, "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public interface c0<T> extends z0<T> {

    /* compiled from: CompletableDeferred.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    /* loaded from: classes.dex */
    public static final class a {
        public static <T, R> R b(@NotNull c0<T> c0Var, R r3, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
            return (R) z0.a.b(c0Var, r3, function2);
        }

        @Nullable
        public static <T, E extends CoroutineContext.Element> E c(@NotNull c0<T> c0Var, @NotNull CoroutineContext.Key<E> key) {
            return (E) z0.a.c(c0Var, key);
        }

        @NotNull
        public static <T> CoroutineContext d(@NotNull c0<T> c0Var, @NotNull CoroutineContext.Key<?> key) {
            return z0.a.d(c0Var, key);
        }

        @NotNull
        public static <T> CoroutineContext e(@NotNull c0<T> c0Var, @NotNull CoroutineContext coroutineContext) {
            return z0.a.e(c0Var, coroutineContext);
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "Operator '+' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`.")
        @NotNull
        public static <T> c2 f(@NotNull c0<T> c0Var, @NotNull c2 c2Var) {
            return z0.a.f(c0Var, c2Var);
        }
    }

    boolean d(@NotNull Throwable th);

    boolean x(T t3);
}
