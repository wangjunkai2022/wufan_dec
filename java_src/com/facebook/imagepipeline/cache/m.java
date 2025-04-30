package com.facebook.imagepipeline.cache;

import com.facebook.common.memory.PooledByteBuffer;
/* compiled from: EncodedMemoryCacheFactory.java */
/* loaded from: classes2.dex */
public class m {

    /* compiled from: EncodedMemoryCacheFactory.java */
    /* loaded from: classes2.dex */
    static class a implements r<com.facebook.cache.common.c> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ n f12522a;

        a(n nVar) {
            this.f12522a = nVar;
        }

        @Override // com.facebook.imagepipeline.cache.r
        public void b() {
            this.f12522a.b();
        }

        @Override // com.facebook.imagepipeline.cache.r
        public void c() {
            this.f12522a.m();
        }

        @Override // com.facebook.imagepipeline.cache.r
        /* renamed from: d */
        public void a(com.facebook.cache.common.c cVar) {
            this.f12522a.i(cVar);
        }
    }

    public static o<com.facebook.cache.common.c, PooledByteBuffer> a(h<com.facebook.cache.common.c, PooledByteBuffer> hVar, n nVar) {
        nVar.j(hVar);
        return new o<>(hVar, new a(nVar));
    }
}
