package kotlin.collections;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.tencent.cos.common.COSHttpResponseKey;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AbstractMap.kt */
@SinceKotlin(version = "1.1")
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010&\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0005\n\u0002\u0010\u001e\n\u0002\b\f\b'\u0018\u0000 -*\u0004\b\u0000\u0010\u0001*\u0006\b\u0001\u0010\u0002 \u00012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003:\u0001-B\t\b\u0004¢\u0006\u0004\b+\u0010,J\u001c\u0010\u0007\u001a\u00020\u00062\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004H\bJ\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0002J%\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u00042\u0006\u0010\n\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u0011\u0010\u000fJ!\u0010\u0014\u001a\u00020\r2\u0010\u0010\u0005\u001a\f\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0018\u00010\u0004H\u0000¢\u0006\u0004\b\u0012\u0010\u0013J\u0013\u0010\u0016\u001a\u00020\r2\b\u0010\u0015\u001a\u0004\u0018\u00010\bH\u0096\u0002J\u001a\u0010\u0017\u001a\u0004\u0018\u00018\u00012\u0006\u0010\n\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\b\u0010\u001a\u001a\u00020\u0019H\u0016J\b\u0010\u001b\u001a\u00020\rH\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0016R\u001e\u0010\u001d\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u001c\u0010!\u001a\b\u0012\u0004\u0012\u00028\u00000\u001c8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010 R\u001c\u0010%\u001a\b\u0012\u0004\u0012\u00028\u00010\"8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b#\u0010$R\u0016\u0010(\u001a\u00020\u00198V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b&\u0010'R\u001e\u0010)\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\"8\b@\bX\u0088\u000e¢\u0006\u0006\n\u0004\b)\u0010*¨\u0006."}, d2 = {"Lkotlin/collections/AbstractMap;", "K", "V", "", "", "entry", "", "toString", "", "o", "key", "implFindEntry", "(Ljava/lang/Object;)Ljava/util/Map$Entry;", "", "containsKey", "(Ljava/lang/Object;)Z", "value", "containsValue", "containsEntry$kotlin_stdlib", "(Ljava/util/Map$Entry;)Z", "containsEntry", "other", "equals", "get", "(Ljava/lang/Object;)Ljava/lang/Object;", "", TTDownloadField.TT_HASHCODE, "isEmpty", "", "_keys", "Ljava/util/Set;", "getKeys", "()Ljava/util/Set;", COSHttpResponseKey.Data.KEYS, "", "getValues", "()Ljava/util/Collection;", "values", "getSize", "()I", "size", "_values", "Ljava/util/Collection;", "<init>", "()V", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public abstract class AbstractMap<K, V> implements Map<K, V>, KMappedMarker {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private volatile Set<? extends K> _keys;
    private volatile Collection<? extends V> _values;

    /* compiled from: AbstractMap.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010&\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0080\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u001f\u0010\u0007\u001a\u00020\u00042\u000e\u0010\u0003\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0002H\u0000¢\u0006\u0004\b\u0005\u0010\u0006J\u001f\u0010\u000b\u001a\u00020\b2\u000e\u0010\u0003\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0002H\u0000¢\u0006\u0004\b\t\u0010\nJ)\u0010\u0010\u001a\u00020\r2\u000e\u0010\u0003\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00022\b\u0010\f\u001a\u0004\u0018\u00010\u0001H\u0000¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, d2 = {"Lkotlin/collections/AbstractMap$Companion;", "", "", "e", "", "entryHashCode$kotlin_stdlib", "(Ljava/util/Map$Entry;)I", "entryHashCode", "", "entryToString$kotlin_stdlib", "(Ljava/util/Map$Entry;)Ljava/lang/String;", "entryToString", "other", "", "entryEquals$kotlin_stdlib", "(Ljava/util/Map$Entry;Ljava/lang/Object;)Z", "entryEquals", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class Companion {
        private Companion() {
        }

        public final boolean entryEquals$kotlin_stdlib(@NotNull Map.Entry<?, ?> e4, @Nullable Object obj) {
            Intrinsics.checkNotNullParameter(e4, "e");
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                return Intrinsics.areEqual(e4.getKey(), entry.getKey()) && Intrinsics.areEqual(e4.getValue(), entry.getValue());
            }
            return false;
        }

        public final int entryHashCode$kotlin_stdlib(@NotNull Map.Entry<?, ?> e4) {
            Intrinsics.checkNotNullParameter(e4, "e");
            Object key = e4.getKey();
            int hashCode = key != null ? key.hashCode() : 0;
            Object value = e4.getValue();
            return hashCode ^ (value != null ? value.hashCode() : 0);
        }

        @NotNull
        public final String entryToString$kotlin_stdlib(@NotNull Map.Entry<?, ?> e4) {
            Intrinsics.checkNotNullParameter(e4, "e");
            StringBuilder sb = new StringBuilder();
            sb.append(e4.getKey());
            sb.append('=');
            sb.append(e4.getValue());
            return sb.toString();
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    protected AbstractMap() {
    }

    private final Map.Entry<K, V> implFindEntry(K k4) {
        Object obj;
        Iterator<T> it2 = entrySet().iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (Intrinsics.areEqual(((Map.Entry) obj).getKey(), k4)) {
                break;
            }
        }
        return (Map.Entry) obj;
    }

    @Override // java.util.Map
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final boolean containsEntry$kotlin_stdlib(@Nullable Map.Entry<?, ?> entry) {
        if (entry instanceof Map.Entry) {
            Object key = entry.getKey();
            Object value = entry.getValue();
            V v3 = get(key);
            if (!Intrinsics.areEqual(value, v3)) {
                return false;
            }
            return v3 != null || containsKey(key);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return implFindEntry(obj) != null;
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        Set<Map.Entry<K, V>> entrySet = entrySet();
        if ((entrySet instanceof Collection) && entrySet.isEmpty()) {
            return false;
        }
        Iterator<T> it2 = entrySet.iterator();
        while (it2.hasNext()) {
            if (Intrinsics.areEqual(((Map.Entry) it2.next()).getValue(), obj)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Map
    public final /* bridge */ Set<Map.Entry<K, V>> entrySet() {
        return getEntries();
    }

    @Override // java.util.Map
    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (size() != map.size()) {
                return false;
            }
            Set<Map.Entry<K, V>> entrySet = map.entrySet();
            if ((entrySet instanceof Collection) && entrySet.isEmpty()) {
                return true;
            }
            Iterator<T> it2 = entrySet.iterator();
            while (it2.hasNext()) {
                if (!containsEntry$kotlin_stdlib((Map.Entry) it2.next())) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    @Nullable
    public V get(Object obj) {
        Map.Entry<K, V> implFindEntry = implFindEntry(obj);
        if (implFindEntry != null) {
            return implFindEntry.getValue();
        }
        return null;
    }

    public abstract Set getEntries();

    @NotNull
    public Set<K> getKeys() {
        if (this._keys == null) {
            this._keys = new AbstractSet<K>() { // from class: kotlin.collections.AbstractMap$keys$1
                @Override // kotlin.collections.AbstractCollection, java.util.Collection
                public boolean contains(Object obj) {
                    return AbstractMap.this.containsKey(obj);
                }

                @Override // kotlin.collections.AbstractCollection
                public int getSize() {
                    return AbstractMap.this.size();
                }

                @Override // kotlin.collections.AbstractSet, kotlin.collections.AbstractCollection, java.util.Collection, java.lang.Iterable
                @NotNull
                public Iterator<K> iterator() {
                    return new AbstractMap$keys$1$iterator$1(AbstractMap.this.entrySet().iterator());
                }
            };
        }
        Set set = (Set<? extends K>) this._keys;
        Intrinsics.checkNotNull(set);
        return set;
    }

    public int getSize() {
        return entrySet().size();
    }

    @NotNull
    public Collection<V> getValues() {
        if (this._values == null) {
            this._values = new AbstractCollection<V>() { // from class: kotlin.collections.AbstractMap$values$1
                @Override // kotlin.collections.AbstractCollection, java.util.Collection
                public boolean contains(Object obj) {
                    return AbstractMap.this.containsValue(obj);
                }

                @Override // kotlin.collections.AbstractCollection
                public int getSize() {
                    return AbstractMap.this.size();
                }

                @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.lang.Iterable
                @NotNull
                public Iterator<V> iterator() {
                    return new AbstractMap$values$1$iterator$1(AbstractMap.this.entrySet().iterator());
                }
            };
        }
        Collection collection = (Collection<? extends V>) this._values;
        Intrinsics.checkNotNull(collection);
        return collection;
    }

    @Override // java.util.Map
    public int hashCode() {
        return entrySet().hashCode();
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public final /* bridge */ Set<K> keySet() {
        return getKeys();
    }

    @Override // java.util.Map
    public V put(K k4, V v3) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public V remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return getSize();
    }

    @NotNull
    public String toString() {
        String joinToString$default;
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(entrySet(), ", ", "{", "}", 0, null, new Function1<Map.Entry<? extends K, ? extends V>, CharSequence>() { // from class: kotlin.collections.AbstractMap$toString$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ CharSequence invoke(Object obj) {
                return invoke((Map.Entry) ((Map.Entry) obj));
            }

            @NotNull
            public final CharSequence invoke(@NotNull Map.Entry<? extends K, ? extends V> it2) {
                String abstractMap;
                Intrinsics.checkNotNullParameter(it2, "it");
                abstractMap = AbstractMap.this.toString((Map.Entry) it2);
                return abstractMap;
            }
        }, 24, null);
        return joinToString$default;
    }

    @Override // java.util.Map
    public final /* bridge */ Collection<V> values() {
        return getValues();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String toString(Map.Entry<? extends K, ? extends V> entry) {
        return toString(entry.getKey()) + SimpleComparison.EQUAL_TO_OPERATION + toString(entry.getValue());
    }

    private final String toString(Object obj) {
        return obj == this ? "(this Map)" : String.valueOf(obj);
    }
}
