package io.netty.util.collection;

import java.util.Map;
/* loaded from: classes5.dex */
public interface ByteObjectMap<V> extends Map<Byte, V> {

    /* loaded from: classes5.dex */
    public interface PrimitiveEntry<V> {
        byte key();

        void setValue(V v3);

        V value();
    }

    boolean containsKey(byte b4);

    Iterable<PrimitiveEntry<V>> entries();

    V get(byte b4);

    V put(byte b4, V v3);

    V remove(byte b4);
}
