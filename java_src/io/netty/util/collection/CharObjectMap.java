package io.netty.util.collection;

import java.util.Map;
/* loaded from: classes5.dex */
public interface CharObjectMap<V> extends Map<Character, V> {

    /* loaded from: classes5.dex */
    public interface PrimitiveEntry<V> {
        char key();

        void setValue(V v3);

        V value();
    }

    boolean containsKey(char c4);

    Iterable<PrimitiveEntry<V>> entries();

    V get(char c4);

    V put(char c4, V v3);

    V remove(char c4);
}
