package kotlin.coroutines;

import java.util.Objects;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ContinuationInterceptor.kt */
@SinceKotlin(version = "1.3")
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\bg\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fJ\"\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\"\u0004\b\u0000\u0010\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H&J\u0014\u0010\u0007\u001a\u00020\u00062\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0003H\u0016J*\u0010\u000b\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\b*\u00020\u00012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\tH\u0096\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0014\u0010\u000e\u001a\u00020\r2\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\tH\u0016¨\u0006\u0010"}, d2 = {"Lkotlin/coroutines/ContinuationInterceptor;", "Lkotlin/coroutines/CoroutineContext$Element;", "T", "Lkotlin/coroutines/Continuation;", "continuation", "interceptContinuation", "", "releaseInterceptedContinuation", "E", "Lkotlin/coroutines/CoroutineContext$Key;", "key", "get", "(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;", "Lkotlin/coroutines/CoroutineContext;", "minusKey", "Key", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public interface ContinuationInterceptor extends CoroutineContext.Element {
    @NotNull
    public static final Key Key = Key.$$INSTANCE;

    /* compiled from: ContinuationInterceptor.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class DefaultImpls {
        public static <R> R fold(@NotNull ContinuationInterceptor continuationInterceptor, R r3, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> operation) {
            Intrinsics.checkNotNullParameter(operation, "operation");
            return (R) CoroutineContext.Element.DefaultImpls.fold(continuationInterceptor, r3, operation);
        }

        @Nullable
        public static <E extends CoroutineContext.Element> E get(@NotNull ContinuationInterceptor continuationInterceptor, @NotNull CoroutineContext.Key<E> key) {
            Intrinsics.checkNotNullParameter(key, "key");
            if (key instanceof AbstractCoroutineContextKey) {
                AbstractCoroutineContextKey abstractCoroutineContextKey = (AbstractCoroutineContextKey) key;
                if (abstractCoroutineContextKey.isSubKey$kotlin_stdlib(continuationInterceptor.getKey())) {
                    E e4 = (E) abstractCoroutineContextKey.tryCast$kotlin_stdlib(continuationInterceptor);
                    if (e4 instanceof CoroutineContext.Element) {
                        return e4;
                    }
                    return null;
                }
                return null;
            } else if (ContinuationInterceptor.Key == key) {
                Objects.requireNonNull(continuationInterceptor, "null cannot be cast to non-null type E");
                return continuationInterceptor;
            } else {
                return null;
            }
        }

        @NotNull
        public static CoroutineContext minusKey(@NotNull ContinuationInterceptor continuationInterceptor, @NotNull CoroutineContext.Key<?> key) {
            Intrinsics.checkNotNullParameter(key, "key");
            if (!(key instanceof AbstractCoroutineContextKey)) {
                return ContinuationInterceptor.Key == key ? EmptyCoroutineContext.INSTANCE : continuationInterceptor;
            }
            AbstractCoroutineContextKey abstractCoroutineContextKey = (AbstractCoroutineContextKey) key;
            return (!abstractCoroutineContextKey.isSubKey$kotlin_stdlib(continuationInterceptor.getKey()) || abstractCoroutineContextKey.tryCast$kotlin_stdlib(continuationInterceptor) == null) ? continuationInterceptor : EmptyCoroutineContext.INSTANCE;
        }

        @NotNull
        public static CoroutineContext plus(@NotNull ContinuationInterceptor continuationInterceptor, @NotNull CoroutineContext context) {
            Intrinsics.checkNotNullParameter(context, "context");
            return CoroutineContext.Element.DefaultImpls.plus(continuationInterceptor, context);
        }

        public static void releaseInterceptedContinuation(@NotNull ContinuationInterceptor continuationInterceptor, @NotNull Continuation<?> continuation) {
            Intrinsics.checkNotNullParameter(continuation, "continuation");
        }
    }

    /* compiled from: ContinuationInterceptor.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lkotlin/coroutines/ContinuationInterceptor$Key;", "Lkotlin/coroutines/CoroutineContext$Key;", "Lkotlin/coroutines/ContinuationInterceptor;", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class Key implements CoroutineContext.Key<ContinuationInterceptor> {
        static final /* synthetic */ Key $$INSTANCE = new Key();

        private Key() {
        }
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @Nullable
    <E extends CoroutineContext.Element> E get(@NotNull CoroutineContext.Key<E> key);

    @NotNull
    <T> Continuation<T> interceptContinuation(@NotNull Continuation<? super T> continuation);

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @NotNull
    CoroutineContext minusKey(@NotNull CoroutineContext.Key<?> key);

    void releaseInterceptedContinuation(@NotNull Continuation<?> continuation);
}
