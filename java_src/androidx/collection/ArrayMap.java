package androidx.collection;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public class ArrayMap<K, V> extends SimpleArrayMap<K, V> implements Map<K, V> {
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    MapCollections<K, V> f1650m;

    public ArrayMap() {
    }

    private MapCollections<K, V> g() {
        if (this.f1650m == null) {
            this.f1650m = new MapCollections<K, V>() { // from class: androidx.collection.ArrayMap.1
                @Override // androidx.collection.MapCollections
                protected void a() {
                    ArrayMap.this.clear();
                }

                @Override // androidx.collection.MapCollections
                protected Object b(int i2, int i4) {
                    return ArrayMap.this.f1716b[(i2 << 1) + i4];
                }

                @Override // androidx.collection.MapCollections
                protected Map<K, V> c() {
                    return ArrayMap.this;
                }

                @Override // androidx.collection.MapCollections
                protected int d() {
                    return ArrayMap.this.f1717c;
                }

                @Override // androidx.collection.MapCollections
                protected int e(Object obj) {
                    return ArrayMap.this.indexOfKey(obj);
                }

                @Override // androidx.collection.MapCollections
                protected int f(Object obj) {
                    return ArrayMap.this.f(obj);
                }

                @Override // androidx.collection.MapCollections
                protected void g(K k4, V v3) {
                    ArrayMap.this.put(k4, v3);
                }

                @Override // androidx.collection.MapCollections
                protected void h(int i2) {
                    ArrayMap.this.removeAt(i2);
                }

                @Override // androidx.collection.MapCollections
                protected V i(int i2, V v3) {
                    return ArrayMap.this.setValueAt(i2, v3);
                }
            };
        }
        return this.f1650m;
    }

    public boolean containsAll(@NonNull Collection<?> collection) {
        return MapCollections.containsAllHelper(this, collection);
    }

    @Override // java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        return g().getEntrySet();
    }

    @Override // java.util.Map
    public Set<K> keySet() {
        return g().getKeySet();
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        ensureCapacity(this.f1717c + map.size());
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    public boolean removeAll(@NonNull Collection<?> collection) {
        return MapCollections.removeAllHelper(this, collection);
    }

    public boolean retainAll(@NonNull Collection<?> collection) {
        return MapCollections.retainAllHelper(this, collection);
    }

    @Override // java.util.Map
    public Collection<V> values() {
        return g().getValues();
    }

    public ArrayMap(int i2) {
        super(i2);
    }

    public ArrayMap(SimpleArrayMap simpleArrayMap) {
        super(simpleArrayMap);
    }
}
