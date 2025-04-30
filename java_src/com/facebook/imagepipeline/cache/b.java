package com.facebook.imagepipeline.cache;
/* compiled from: BitmapMemoryCacheFactory.java */
/* loaded from: classes2.dex */
public class b {

    /* compiled from: BitmapMemoryCacheFactory.java */
    /* loaded from: classes2.dex */
    static class a implements r<com.facebook.cache.common.c> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ n f12460a;

        a(n nVar) {
            this.f12460a = nVar;
        }

        @Override // com.facebook.imagepipeline.cache.r
        public void b() {
            this.f12460a.d();
        }

        @Override // com.facebook.imagepipeline.cache.r
        public void c() {
            this.f12460a.e();
        }

        @Override // com.facebook.imagepipeline.cache.r
        /* renamed from: d */
        public void a(com.facebook.cache.common.c cVar) {
            this.f12460a.g(cVar);
        }
    }

    public static o<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> a(h<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> hVar, n nVar) {
        nVar.a(hVar);
        return new o<>(hVar, new a(nVar));
    }
}
