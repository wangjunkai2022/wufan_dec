package com.facebook.imagepipeline.cache;

import com.facebook.imagepipeline.cache.h;
/* compiled from: BitmapCountingMemoryCacheFactory.java */
/* loaded from: classes2.dex */
public class a {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BitmapCountingMemoryCacheFactory.java */
    /* renamed from: com.facebook.imagepipeline.cache.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0075a implements v<com.facebook.imagepipeline.image.c> {
        C0075a() {
        }

        @Override // com.facebook.imagepipeline.cache.v
        /* renamed from: b */
        public int a(com.facebook.imagepipeline.image.c cVar) {
            return cVar.d();
        }
    }

    public static h<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> a(com.facebook.common.internal.k<q> kVar, com.facebook.common.memory.c cVar) {
        return b(kVar, cVar, new d());
    }

    public static h<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> b(com.facebook.common.internal.k<q> kVar, com.facebook.common.memory.c cVar, h.c cVar2) {
        h<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> hVar = new h<>(new C0075a(), cVar2, kVar);
        cVar.a(hVar);
        return hVar;
    }
}
