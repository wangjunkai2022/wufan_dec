package com.facebook.common.internal;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class ImmutableMap<K, V> extends HashMap<K, V> {
    private ImmutableMap(Map<? extends K, ? extends V> map) {
        super(map);
    }

    public static <K, V> ImmutableMap<K, V> a(Map<? extends K, ? extends V> map) {
        return new ImmutableMap<>(map);
    }

    public static <K, V> Map<K, V> of() {
        return Collections.unmodifiableMap(new HashMap());
    }

    public static <K, V> Map<K, V> of(K k4, V v3) {
        HashMap hashMap = new HashMap(1);
        hashMap.put(k4, v3);
        return Collections.unmodifiableMap(hashMap);
    }

    public static <K, V> Map<K, V> of(K k4, V v3, K k5, V v4) {
        HashMap hashMap = new HashMap(2);
        hashMap.put(k4, v3);
        hashMap.put(k5, v4);
        return Collections.unmodifiableMap(hashMap);
    }

    public static <K, V> Map<K, V> of(K k4, V v3, K k5, V v4, K k6, V v5) {
        HashMap hashMap = new HashMap(3);
        hashMap.put(k4, v3);
        hashMap.put(k5, v4);
        hashMap.put(k6, v5);
        return Collections.unmodifiableMap(hashMap);
    }

    public static <K, V> Map<K, V> of(K k4, V v3, K k5, V v4, K k6, V v5, K k7, V v6) {
        HashMap hashMap = new HashMap(4);
        hashMap.put(k4, v3);
        hashMap.put(k5, v4);
        hashMap.put(k6, v5);
        hashMap.put(k7, v6);
        return Collections.unmodifiableMap(hashMap);
    }

    public static <K, V> Map<K, V> of(K k4, V v3, K k5, V v4, K k6, V v5, K k7, V v6, K k8, V v7) {
        HashMap hashMap = new HashMap(5);
        hashMap.put(k4, v3);
        hashMap.put(k5, v4);
        hashMap.put(k6, v5);
        hashMap.put(k7, v6);
        hashMap.put(k8, v7);
        return Collections.unmodifiableMap(hashMap);
    }

    public static <K, V> Map<K, V> of(K k4, V v3, K k5, V v4, K k6, V v5, K k7, V v6, K k8, V v7, K k9, V v8) {
        HashMap hashMap = new HashMap(6);
        hashMap.put(k4, v3);
        hashMap.put(k5, v4);
        hashMap.put(k6, v5);
        hashMap.put(k7, v6);
        hashMap.put(k8, v7);
        hashMap.put(k9, v8);
        return Collections.unmodifiableMap(hashMap);
    }
}
