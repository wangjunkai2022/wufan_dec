package org.springframework.util;

import java.io.Serializable;
import java.util.LinkedHashMap;
/* loaded from: classes5.dex */
public class LinkedMultiValueMap<K, V> extends LinkedHashMap<K, V> implements Serializable, Cloneable {
    public void add(K k4, V v3) {
        put(k4, v3);
    }
}
