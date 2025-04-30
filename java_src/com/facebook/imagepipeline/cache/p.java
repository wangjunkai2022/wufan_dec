package com.facebook.imagepipeline.cache;

import javax.annotation.Nullable;
/* compiled from: MemoryCache.java */
/* loaded from: classes.dex */
public interface p<K, V> {
    @Nullable
    com.facebook.common.references.a<V> a(K k4, com.facebook.common.references.a<V> aVar);

    int b(com.facebook.common.internal.i<K> iVar);

    boolean c(com.facebook.common.internal.i<K> iVar);

    @Nullable
    com.facebook.common.references.a<V> get(K k4);
}
