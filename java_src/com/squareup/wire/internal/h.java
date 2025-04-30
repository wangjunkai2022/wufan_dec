package com.squareup.wire.internal;

import com.squareup.wire.ProtoAdapter;
import com.umeng.analytics.pro.ai;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.reflect.KClass;
import kotlin.text.StringsKt__StringsKt;
import org.apache.http.conn.ssl.TokenParser;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Internal.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000b\n\u0000\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010%\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010$\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u0012\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000\u001a\u001e\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005\"\u0004\b\u0000\u0010\u0003\"\u0004\b\u0001\u0010\u0004\u001a,\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u00002\u0006\u0010\b\u001a\u00020\u00072\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\tH\u0007\u001a \u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u00002\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\t\u001a>\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005\"\u0004\b\u0000\u0010\u0003\"\u0004\b\u0001\u0010\u00042\u0006\u0010\b\u001a\u00020\u00072\u0014\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\rH\u0007\u001a2\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005\"\u0004\b\u0000\u0010\u0003\"\u0004\b\u0001\u0010\u00042\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\r\u001a(\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00000\t\"\u0004\b\u0000\u0010\u00002\u0006\u0010\b\u001a\u00020\u00072\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\t\u001a:\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\r\"\u0004\b\u0000\u0010\u0003\"\u0004\b\u0001\u0010\u00042\u0006\u0010\b\u001a\u00020\u00072\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\r\u001a:\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\r\"\u0004\b\u0000\u0010\u0003\"\u0004\b\u0001\u0010\u00042\u0006\u0010\b\u001a\u00020\u00072\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\r\u001a#\u0010\u0015\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00002\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00028\u0000¢\u0006\u0004\b\u0015\u0010\u0016\u001a3\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00000\t\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\t2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u0017H\u0007¢\u0006\u0004\b\u0019\u0010\u001a\u001aE\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\r\"\u0004\b\u0000\u0010\u0003\"\u0004\b\u0001\u0010\u0004*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\r2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00010\u0017H\u0007¢\u0006\u0004\b\u001b\u0010\u001c\u001a\u001a\u0010\u001f\u001a\u00020\u001e2\b\u0010\u0019\u001a\u0004\u0018\u00010\u001d2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001d\u001a)\u0010$\u001a\u00060\"j\u0002`#2\u0016\u0010!\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u001d0 \"\u0004\u0018\u00010\u001d¢\u0006\u0004\b$\u0010%\u001a\u0012\u0010'\u001a\u00020&2\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\t\u001a\u0016\u0010(\u001a\u00020&2\u000e\u0010\u000e\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\r\u001a\u001a\u0010*\u001a\u00020)2\b\u0010\u0019\u001a\u0004\u0018\u00010\u001d2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001d\u001a$\u0010,\u001a\u00020)2\b\u0010\u0019\u001a\u0004\u0018\u00010\u001d2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001d2\b\u0010+\u001a\u0004\u0018\u00010\u001d\u001aM\u0010.\u001a\u00020)2\b\u0010\u0019\u001a\u0004\u0018\u00010\u001d2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001d2\b\u0010+\u001a\u0004\u0018\u00010\u001d2\b\u0010'\u001a\u0004\u0018\u00010\u001d2\u0016\u0010-\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u001d0 \"\u0004\u0018\u00010\u001d¢\u0006\u0004\b.\u0010/\u001a\u000e\u00100\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0007\u001a\u0014\u00102\u001a\u00020\u00072\f\u00101\u001a\b\u0012\u0004\u0012\u00020\u00070\t\u001a\u000e\u0010+\u001a\u00020\u00072\u0006\u00103\u001a\u00020\u0007\"\u0016\u00105\u001a\u00020\u00078\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0019\u00104\"\"\u00109\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u001d06*\u00020\u001d8B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b7\u00108¨\u0006:"}, d2 = {"T", "", ai.aF, "K", "V", "", ai.aE, "", "name", "", "list", "f", com.sdk.a.g.f56552a, "", "map", "h", ai.aA, "o", ai.av, "q", "value", net.lingala.zip4j.util.e.f73017f0, "(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;", "Lcom/squareup/wire/ProtoAdapter;", "adapter", "a", "(Ljava/util/List;Lcom/squareup/wire/ProtoAdapter;)Ljava/util/List;", "b", "(Ljava/util/Map;Lcom/squareup/wire/ProtoAdapter;)Ljava/util/Map;", "", "", "m", "", "args", "Ljava/lang/IllegalStateException;", "Lkotlin/IllegalStateException;", ai.az, "([Ljava/lang/Object;)Ljava/lang/IllegalStateException;", "", com.xinzhu.overmind.utils.helpers.d.f64708a, "e", "", "j", ai.aD, "k", "rest", "l", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)I", "v", "values", "w", "fieldName", "Ljava/lang/String;", "ESCAPED_CHARS", "Lkotlin/reflect/KClass;", "n", "(Ljava/lang/Object;)Lkotlin/reflect/KClass;", "typeName", "wire-runtime"}, k = 5, mv = {1, 4, 0}, xs = "com/squareup/wire/internal/Internal")
/* loaded from: classes.dex */
public final /* synthetic */ class h {

    /* renamed from: a  reason: collision with root package name */
    private static final String f56820a = ",[]{}\\";

    @JvmName(name = "-redactElements")
    @NotNull
    public static final <T> List<T> a(@NotNull List<? extends T> redactElements, @NotNull ProtoAdapter<T> adapter) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(redactElements, "$this$redactElements");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(redactElements, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (T t3 : redactElements) {
            arrayList.add(adapter.E(t3));
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @JvmName(name = "-redactElements")
    @NotNull
    public static final <K, V> Map<K, V> b(@NotNull Map<K, ? extends V> redactElements, @NotNull ProtoAdapter<V> adapter) {
        Intrinsics.checkNotNullParameter(redactElements, "$this$redactElements");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(redactElements.size()));
        Iterator<T> it2 = redactElements.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it2.next();
            linkedHashMap.put(entry.getKey(), adapter.E(entry.getValue()));
        }
        return linkedHashMap;
    }

    @NotNull
    public static final String c(@NotNull String fieldName) {
        Intrinsics.checkNotNullParameter(fieldName, "fieldName");
        return fieldName + "Keys";
    }

    public static final void d(@NotNull List<?> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (list.get(i2) == null) {
                throw new NullPointerException("Element at index " + i2 + " is null");
            }
        }
    }

    public static final void e(@NotNull Map<?, ?> map) {
        Intrinsics.checkNotNullParameter(map, "map");
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            Object key = entry.getKey();
            Object value = entry.getValue();
            Objects.requireNonNull(key, "map.containsKey(null)");
            if (value == null) {
                throw new NullPointerException("Value for key " + key + " is null");
            }
        }
    }

    @Deprecated(message = "Please regenerate code using wire-compiler version 3.0.0 or higher.", replaceWith = @ReplaceWith(expression = "com.squareup.internal.Internal.copyOf(list)", imports = {}))
    @NotNull
    public static final <T> List<T> f(@NotNull String name, @Nullable List<? extends T> list) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNull(list);
        return f.g(list);
    }

    @NotNull
    public static final <T> List<T> g(@NotNull List<? extends T> list) {
        List<? extends T> emptyList;
        Intrinsics.checkNotNullParameter(list, "list");
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        if (list != emptyList && !(list instanceof ImmutableList)) {
            return new ArrayList(list);
        }
        return new MutableOnWriteList(list);
    }

    @Deprecated(message = "Please regenerate code using wire-compiler version 3.0.0 or higher.", replaceWith = @ReplaceWith(expression = "com.squareup.internal.Internal.copyOf(map)", imports = {}))
    @NotNull
    public static final <K, V> Map<K, V> h(@NotNull String name, @Nullable Map<K, ? extends V> map) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNull(map);
        return f.i(map);
    }

    @NotNull
    public static final <K, V> Map<K, V> i(@NotNull Map<K, ? extends V> map) {
        Intrinsics.checkNotNullParameter(map, "map");
        return new LinkedHashMap(map);
    }

    public static final int j(@Nullable Object obj, @Nullable Object obj2) {
        return (obj != null ? 1 : 0) + (obj2 == null ? 0 : 1);
    }

    public static final int k(@Nullable Object obj, @Nullable Object obj2, @Nullable Object obj3) {
        return (obj != null ? 1 : 0) + (obj2 != null ? 1 : 0) + (obj3 == null ? 0 : 1);
    }

    public static final int l(@Nullable Object obj, @Nullable Object obj2, @Nullable Object obj3, @Nullable Object obj4, @NotNull Object... rest) {
        Intrinsics.checkNotNullParameter(rest, "rest");
        int i2 = obj != null ? 1 : 0;
        if (obj2 != null) {
            i2++;
        }
        if (obj3 != null) {
            i2++;
        }
        if (obj4 != null) {
            i2++;
        }
        for (Object obj5 : rest) {
            if (obj5 != null) {
                i2++;
            }
        }
        return i2;
    }

    public static final boolean m(@Nullable Object obj, @Nullable Object obj2) {
        return obj == obj2 || (obj != null && Intrinsics.areEqual(obj, obj2));
    }

    private static final KClass<? extends Object> n(Object obj) {
        return Reflection.getOrCreateKotlinClass(obj.getClass());
    }

    @NotNull
    public static final <T> List<T> o(@NotNull String name, @NotNull List<? extends T> list) {
        List<? extends T> emptyList;
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(list, "list");
        boolean z3 = list instanceof MutableOnWriteList;
        Collection collection = list;
        if (z3) {
            collection = (List<T>) ((MutableOnWriteList) list).a();
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        if (collection == emptyList || (collection instanceof ImmutableList)) {
            return (List<T>) collection;
        }
        ImmutableList immutableList = new ImmutableList((List) collection);
        if (!immutableList.contains(null)) {
            return immutableList;
        }
        throw new IllegalArgumentException((name + ".contains(null)").toString());
    }

    @NotNull
    public static final <K, V> Map<K, V> p(@NotNull String name, @NotNull Map<K, ? extends V> map) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(map, "map");
        if (map.isEmpty()) {
            return MapsKt.emptyMap();
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        Set<K> keySet = linkedHashMap.keySet();
        Objects.requireNonNull(keySet, "null cannot be cast to non-null type kotlin.collections.Collection<K?>");
        if (!keySet.contains(null)) {
            Collection<V> values = linkedHashMap.values();
            Objects.requireNonNull(values, "null cannot be cast to non-null type kotlin.collections.Collection<V?>");
            if (!values.contains(null)) {
                Map<K, V> unmodifiableMap = Collections.unmodifiableMap(linkedHashMap);
                Intrinsics.checkNotNullExpressionValue(unmodifiableMap, "Collections.unmodifiableMap(this)");
                return unmodifiableMap;
            }
            throw new IllegalArgumentException((name + ".containsValue(null)").toString());
        }
        throw new IllegalArgumentException((name + ".containsKey(null)").toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <K, V> Map<K, V> q(@NotNull String name, @NotNull Map<K, ? extends V> map) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(map, "map");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<K, ? extends V> entry : map.entrySet()) {
            K key = entry.getKey();
            V value = entry.getValue();
            if (!(key != null)) {
                throw new IllegalArgumentException((name + ".containsKey(null)").toString());
            }
            linkedHashMap.put(key, f.r(name, value));
        }
        Map<K, V> unmodifiableMap = Collections.unmodifiableMap(linkedHashMap);
        Intrinsics.checkNotNullExpressionValue(unmodifiableMap, "Collections.unmodifiableMap(this)");
        Objects.requireNonNull(unmodifiableMap, "null cannot be cast to non-null type kotlin.collections.Map<K, V>");
        return unmodifiableMap;
    }

    public static final <T> T r(@NotNull String name, T t3) {
        Intrinsics.checkNotNullParameter(name, "name");
        if (t3 == null || (t3 instanceof Boolean) || (t3 instanceof Double) || (t3 instanceof String)) {
            return t3;
        }
        if (t3 instanceof List) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : (List) t3) {
                arrayList.add(f.r(name, obj));
            }
            T t4 = (T) Collections.unmodifiableList(arrayList);
            Intrinsics.checkNotNullExpressionValue(t4, "Collections.unmodifiableList(this)");
            return t4;
        } else if (t3 instanceof Map) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry entry : ((Map) t3).entrySet()) {
                linkedHashMap.put(f.r(name, entry.getKey()), f.r(name, entry.getValue()));
            }
            T t5 = (T) Collections.unmodifiableMap(linkedHashMap);
            Intrinsics.checkNotNullExpressionValue(t5, "Collections.unmodifiableMap(this)");
            return t5;
        } else {
            throw new IllegalArgumentException("struct value " + name + " must be a JSON type (null, Boolean, Double, String, List, or Map) but was " + n(t3) + ": " + t3);
        }
    }

    @NotNull
    public static final IllegalStateException s(@NotNull Object... args) {
        IntRange until;
        IntProgression step;
        Intrinsics.checkNotNullParameter(args, "args");
        StringBuilder sb = new StringBuilder();
        until = RangesKt___RangesKt.until(0, args.length);
        step = RangesKt___RangesKt.step(until, 2);
        int first = step.getFirst();
        int last = step.getLast();
        int step2 = step.getStep();
        String str = "";
        if (step2 < 0 ? first >= last : first <= last) {
            while (true) {
                if (args[first] == null) {
                    if (sb.length() > 0) {
                        str = ai.az;
                    }
                    sb.append("\n  ");
                    sb.append(args[first + 1]);
                }
                if (first == last) {
                    break;
                }
                first += step2;
            }
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder().apply(builderAction).toString()");
        throw new IllegalStateException("Required field" + str + " not set:" + sb2);
    }

    @NotNull
    public static final <T> List<T> t() {
        List emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return new MutableOnWriteList(emptyList);
    }

    @NotNull
    public static final <K, V> Map<K, V> u() {
        return new LinkedHashMap();
    }

    @NotNull
    public static final String v(@NotNull String value) {
        boolean contains$default;
        Intrinsics.checkNotNullParameter(value, "value");
        StringBuilder sb = new StringBuilder(value.length());
        for (int i2 = 0; i2 < value.length(); i2++) {
            char charAt = value.charAt(i2);
            contains$default = StringsKt__StringsKt.contains$default((CharSequence) f56820a, charAt, false, 2, (Object) null);
            if (contains$default) {
                sb.append(TokenParser.ESCAPE);
            }
            sb.append(charAt);
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder(capacity).…builderAction).toString()");
        return sb2;
    }

    @NotNull
    public static final String w(@NotNull List<String> values) {
        int collectionSizeOrDefault;
        String joinToString$default;
        Intrinsics.checkNotNullParameter(values, "values");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(values, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (String str : values) {
            arrayList.add(f.x(str));
        }
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(arrayList, null, "[", "]", 0, null, null, 57, null);
        return joinToString$default;
    }
}
