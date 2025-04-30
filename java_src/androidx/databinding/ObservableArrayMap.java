package androidx.databinding;

import androidx.collection.ArrayMap;
import androidx.databinding.ObservableMap;
import java.util.Collection;
import java.util.Iterator;
/* loaded from: classes.dex */
public class ObservableArrayMap<K, V> extends ArrayMap<K, V> implements ObservableMap<K, V> {

    /* renamed from: n  reason: collision with root package name */
    private transient MapChangeRegistry f5239n;

    private void h(Object obj) {
        MapChangeRegistry mapChangeRegistry = this.f5239n;
        if (mapChangeRegistry != null) {
            mapChangeRegistry.notifyCallbacks(this, 0, obj);
        }
    }

    @Override // androidx.databinding.ObservableMap
    public void addOnMapChangedCallback(ObservableMap.OnMapChangedCallback<? extends ObservableMap<K, V>, K, V> onMapChangedCallback) {
        if (this.f5239n == null) {
            this.f5239n = new MapChangeRegistry();
        }
        this.f5239n.add(onMapChangedCallback);
    }

    @Override // androidx.collection.SimpleArrayMap, java.util.Map
    public void clear() {
        if (isEmpty()) {
            return;
        }
        super.clear();
        h(null);
    }

    @Override // androidx.collection.SimpleArrayMap, java.util.Map
    public V put(K k4, V v3) {
        super.put(k4, v3);
        h(k4);
        return v3;
    }

    @Override // androidx.collection.ArrayMap
    public boolean removeAll(Collection<?> collection) {
        Iterator<?> it2 = collection.iterator();
        boolean z3 = false;
        while (it2.hasNext()) {
            int indexOfKey = indexOfKey(it2.next());
            if (indexOfKey >= 0) {
                z3 = true;
                removeAt(indexOfKey);
            }
        }
        return z3;
    }

    @Override // androidx.collection.SimpleArrayMap
    public V removeAt(int i2) {
        K keyAt = keyAt(i2);
        V v3 = (V) super.removeAt(i2);
        if (v3 != null) {
            h(keyAt);
        }
        return v3;
    }

    @Override // androidx.databinding.ObservableMap
    public void removeOnMapChangedCallback(ObservableMap.OnMapChangedCallback<? extends ObservableMap<K, V>, K, V> onMapChangedCallback) {
        MapChangeRegistry mapChangeRegistry = this.f5239n;
        if (mapChangeRegistry != null) {
            mapChangeRegistry.remove(onMapChangedCallback);
        }
    }

    @Override // androidx.collection.ArrayMap
    public boolean retainAll(Collection<?> collection) {
        boolean z3 = false;
        for (int size = size() - 1; size >= 0; size--) {
            if (!collection.contains(keyAt(size))) {
                removeAt(size);
                z3 = true;
            }
        }
        return z3;
    }

    @Override // androidx.collection.SimpleArrayMap
    public V setValueAt(int i2, V v3) {
        K keyAt = keyAt(i2);
        V v4 = (V) super.setValueAt(i2, v3);
        h(keyAt);
        return v4;
    }
}
