package io.netty.util.collection;

import java.util.Map;
/* loaded from: classes5.dex */
public interface IntObjectMap<V> extends Map<Integer, V> {

    /* loaded from: classes5.dex */
    public interface PrimitiveEntry<V> {
        int key();

        void setValue(V v3);

        V value();
    }

    boolean containsKey(int i2);

    Iterable<PrimitiveEntry<V>> entries();

    V get(int i2);

    V put(int i2, V v3);

    V remove(int i2);
}
