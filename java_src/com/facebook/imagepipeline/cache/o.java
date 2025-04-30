package com.facebook.imagepipeline.cache;
/* compiled from: InstrumentedMemoryCache.java */
/* loaded from: classes2.dex */
public class o<K, V> implements p<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private final p<K, V> f12523a;

    /* renamed from: b  reason: collision with root package name */
    private final r f12524b;

    public o(p<K, V> pVar, r rVar) {
        this.f12523a = pVar;
        this.f12524b = rVar;
    }

    @Override // com.facebook.imagepipeline.cache.p
    public com.facebook.common.references.a<V> a(K k4, com.facebook.common.references.a<V> aVar) {
        this.f12524b.b();
        return this.f12523a.a(k4, aVar);
    }

    @Override // com.facebook.imagepipeline.cache.p
    public int b(com.facebook.common.internal.i<K> iVar) {
        return this.f12523a.b(iVar);
    }

    @Override // com.facebook.imagepipeline.cache.p
    public boolean c(com.facebook.common.internal.i<K> iVar) {
        return this.f12523a.c(iVar);
    }

    @Override // com.facebook.imagepipeline.cache.p
    public com.facebook.common.references.a<V> get(K k4) {
        com.facebook.common.references.a<V> aVar = this.f12523a.get(k4);
        if (aVar == null) {
            this.f12524b.c();
        } else {
            this.f12524b.a(k4);
        }
        return aVar;
    }
}
