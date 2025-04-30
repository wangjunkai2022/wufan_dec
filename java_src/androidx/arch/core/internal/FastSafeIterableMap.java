package androidx.arch.core.internal;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.arch.core.internal.SafeIterableMap;
import java.util.HashMap;
import java.util.Map;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class FastSafeIterableMap<K, V> extends SafeIterableMap<K, V> {

    /* renamed from: e  reason: collision with root package name */
    private HashMap<K, SafeIterableMap.Entry<K, V>> f1577e = new HashMap<>();

    @Override // androidx.arch.core.internal.SafeIterableMap
    protected SafeIterableMap.Entry<K, V> a(K k4) {
        return this.f1577e.get(k4);
    }

    public Map.Entry<K, V> ceil(K k4) {
        if (contains(k4)) {
            return this.f1577e.get(k4).f1585d;
        }
        return null;
    }

    public boolean contains(K k4) {
        return this.f1577e.containsKey(k4);
    }

    @Override // androidx.arch.core.internal.SafeIterableMap
    public V putIfAbsent(@NonNull K k4, @NonNull V v3) {
        SafeIterableMap.Entry<K, V> a4 = a(k4);
        if (a4 != null) {
            return a4.f1583b;
        }
        this.f1577e.put(k4, b(k4, v3));
        return null;
    }

    @Override // androidx.arch.core.internal.SafeIterableMap
    public V remove(@NonNull K k4) {
        V v3 = (V) super.remove(k4);
        this.f1577e.remove(k4);
        return v3;
    }
}
