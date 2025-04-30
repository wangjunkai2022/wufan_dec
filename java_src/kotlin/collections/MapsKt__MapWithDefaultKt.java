package kotlin.collections;

import java.util.Map;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: MapWithDefault.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\b\u0003\u001a3\u0010\u0006\u001a\u00028\u0001\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010\u0003\u001a\u00028\u0000H\u0001¢\u0006\u0004\b\u0004\u0010\u0005\u001aQ\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022!\u0010\n\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u0003\u0012\u0004\u0012\u00028\u00010\u0007\u001aZ\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\f\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\f2!\u0010\n\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u0003\u0012\u0004\u0012\u00028\u00010\u0007H\u0007¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"K", "V", "", "key", "getOrImplicitDefaultNullable", "(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;", "getOrImplicitDefault", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "defaultValue", "withDefault", "", "withDefaultMutable", "(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/collections/MapsKt")
/* loaded from: classes.dex */
class MapsKt__MapWithDefaultKt {
    @PublishedApi
    @JvmName(name = "getOrImplicitDefaultNullable")
    public static final <K, V> V getOrImplicitDefaultNullable(@NotNull Map<K, ? extends V> getOrImplicitDefault, K k4) {
        Intrinsics.checkNotNullParameter(getOrImplicitDefault, "$this$getOrImplicitDefault");
        if (getOrImplicitDefault instanceof MapWithDefault) {
            return (V) ((MapWithDefault) getOrImplicitDefault).getOrImplicitDefault(k4);
        }
        V v3 = getOrImplicitDefault.get(k4);
        if (v3 != null || getOrImplicitDefault.containsKey(k4)) {
            return v3;
        }
        throw new NoSuchElementException("Key " + k4 + " is missing in the map.");
    }

    @NotNull
    public static final <K, V> Map<K, V> withDefault(@NotNull Map<K, ? extends V> withDefault, @NotNull Function1<? super K, ? extends V> defaultValue) {
        Intrinsics.checkNotNullParameter(withDefault, "$this$withDefault");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return withDefault instanceof MapWithDefault ? withDefault(((MapWithDefault) withDefault).getMap(), defaultValue) : new MapWithDefaultImpl(withDefault, defaultValue);
    }

    @JvmName(name = "withDefaultMutable")
    @NotNull
    public static final <K, V> Map<K, V> withDefaultMutable(@NotNull Map<K, V> withDefault, @NotNull Function1<? super K, ? extends V> defaultValue) {
        Intrinsics.checkNotNullParameter(withDefault, "$this$withDefault");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return withDefault instanceof MutableMapWithDefault ? withDefaultMutable(((MutableMapWithDefault) withDefault).getMap(), defaultValue) : new MutableMapWithDefaultImpl(withDefault, defaultValue);
    }
}
