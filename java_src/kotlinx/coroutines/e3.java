package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ThreadContextElement.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\bf\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002J\u0017\u0010\u0005\u001a\u00028\u00002\u0006\u0010\u0004\u001a\u00020\u0003H&¢\u0006\u0004\b\u0005\u0010\u0006J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00028\u0000H&¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lkotlinx/coroutines/e3;", "S", "Lkotlin/coroutines/CoroutineContext$Element;", "Lkotlin/coroutines/CoroutineContext;", "context", "T", "(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;", "oldState", "", "w", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public interface e3<S> extends CoroutineContext.Element {

    /* compiled from: ThreadContextElement.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class a {
        public static <S, R> R a(@NotNull e3<S> e3Var, R r3, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
            return (R) CoroutineContext.Element.DefaultImpls.fold(e3Var, r3, function2);
        }

        @Nullable
        public static <S, E extends CoroutineContext.Element> E b(@NotNull e3<S> e3Var, @NotNull CoroutineContext.Key<E> key) {
            return (E) CoroutineContext.Element.DefaultImpls.get(e3Var, key);
        }

        @NotNull
        public static <S> CoroutineContext c(@NotNull e3<S> e3Var, @NotNull CoroutineContext.Key<?> key) {
            return CoroutineContext.Element.DefaultImpls.minusKey(e3Var, key);
        }

        @NotNull
        public static <S> CoroutineContext d(@NotNull e3<S> e3Var, @NotNull CoroutineContext coroutineContext) {
            return CoroutineContext.Element.DefaultImpls.plus(e3Var, coroutineContext);
        }
    }

    S T(@NotNull CoroutineContext coroutineContext);

    void w(@NotNull CoroutineContext coroutineContext, S s3);
}
