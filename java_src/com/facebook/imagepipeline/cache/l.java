package com.facebook.imagepipeline.cache;

import com.facebook.common.memory.PooledByteBuffer;
/* compiled from: EncodedCountingMemoryCacheFactory.java */
/* loaded from: classes2.dex */
public class l {

    /* compiled from: EncodedCountingMemoryCacheFactory.java */
    /* loaded from: classes2.dex */
    static class a implements v<PooledByteBuffer> {
        a() {
        }

        @Override // com.facebook.imagepipeline.cache.v
        /* renamed from: b */
        public int a(PooledByteBuffer pooledByteBuffer) {
            return pooledByteBuffer.size();
        }
    }

    public static h<com.facebook.cache.common.c, PooledByteBuffer> a(com.facebook.common.internal.k<q> kVar, com.facebook.common.memory.c cVar) {
        h<com.facebook.cache.common.c, PooledByteBuffer> hVar = new h<>(new a(), new s(), kVar);
        cVar.a(hVar);
        return hVar;
    }
}
