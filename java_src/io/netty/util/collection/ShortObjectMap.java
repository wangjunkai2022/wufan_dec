package io.netty.util.collection;

import java.util.Map;
/* loaded from: classes5.dex */
public interface ShortObjectMap<V> extends Map<Short, V> {

    /* loaded from: classes5.dex */
    public interface PrimitiveEntry<V> {
        short key();

        void setValue(V v3);

        V value();
    }

    boolean containsKey(short s3);

    Iterable<PrimitiveEntry<V>> entries();

    V get(short s3);

    V put(short s3, V v3);

    V remove(short s3);
}
