package kotlin.coroutines;

import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CoroutineContextImpl.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a-\u0010\u0004\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u0001*\u00020\u0000*\u00020\u00002\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0007¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u0018\u0010\u0007\u001a\u00020\u0006*\u00020\u00002\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0007¨\u0006\b"}, d2 = {"Lkotlin/coroutines/CoroutineContext$Element;", "E", "Lkotlin/coroutines/CoroutineContext$Key;", "key", "getPolymorphicElement", "(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;", "Lkotlin/coroutines/CoroutineContext;", "minusPolymorphicKey", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class CoroutineContextImplKt {
    /* JADX WARN: Multi-variable type inference failed */
    @SinceKotlin(version = "1.3")
    @ExperimentalStdlibApi
    @Nullable
    public static final <E extends CoroutineContext.Element> E getPolymorphicElement(@NotNull CoroutineContext.Element getPolymorphicElement, @NotNull CoroutineContext.Key<E> key) {
        Intrinsics.checkNotNullParameter(getPolymorphicElement, "$this$getPolymorphicElement");
        Intrinsics.checkNotNullParameter(key, "key");
        if (key instanceof AbstractCoroutineContextKey) {
            AbstractCoroutineContextKey abstractCoroutineContextKey = (AbstractCoroutineContextKey) key;
            if (abstractCoroutineContextKey.isSubKey$kotlin_stdlib(getPolymorphicElement.getKey())) {
                E e4 = (E) abstractCoroutineContextKey.tryCast$kotlin_stdlib(getPolymorphicElement);
                if (e4 instanceof CoroutineContext.Element) {
                    return e4;
                }
                return null;
            }
            return null;
        } else if (getPolymorphicElement.getKey() == key) {
            return getPolymorphicElement;
        } else {
            return null;
        }
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalStdlibApi
    @NotNull
    public static final CoroutineContext minusPolymorphicKey(@NotNull CoroutineContext.Element minusPolymorphicKey, @NotNull CoroutineContext.Key<?> key) {
        Intrinsics.checkNotNullParameter(minusPolymorphicKey, "$this$minusPolymorphicKey");
        Intrinsics.checkNotNullParameter(key, "key");
        if (!(key instanceof AbstractCoroutineContextKey)) {
            return minusPolymorphicKey.getKey() == key ? EmptyCoroutineContext.INSTANCE : minusPolymorphicKey;
        }
        AbstractCoroutineContextKey abstractCoroutineContextKey = (AbstractCoroutineContextKey) key;
        return (!abstractCoroutineContextKey.isSubKey$kotlin_stdlib(minusPolymorphicKey.getKey()) || abstractCoroutineContextKey.tryCast$kotlin_stdlib(minusPolymorphicKey) == null) ? minusPolymorphicKey : EmptyCoroutineContext.INSTANCE;
    }
}
