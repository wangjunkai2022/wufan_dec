package io.netty.handler.codec.serialization;

import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.Map;
/* loaded from: classes5.dex */
final class WeakReferenceMap<K, V> extends ReferenceMap<K, V> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public WeakReferenceMap(Map<K, Reference<V>> map) {
        super(map);
    }

    @Override // io.netty.handler.codec.serialization.ReferenceMap
    Reference<V> fold(V v3) {
        return new WeakReference(v3);
    }
}
