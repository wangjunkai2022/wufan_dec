package com.fasterxml.jackson.databind.util;
/* loaded from: classes2.dex */
public interface LookupCache<K, V> {
    void clear();

    V get(Object obj);

    V put(K k4, V v3);

    V putIfAbsent(K k4, V v3);

    int size();
}
