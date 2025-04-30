package com.facebook.imagepipeline.core;

import com.facebook.cache.disk.d;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* compiled from: DiskStorageCacheFactory.java */
/* loaded from: classes2.dex */
public class b implements f {

    /* renamed from: a  reason: collision with root package name */
    private c f12580a;

    public b(c cVar) {
        this.f12580a = cVar;
    }

    public static com.facebook.cache.disk.d b(com.facebook.cache.disk.b bVar, com.facebook.cache.disk.c cVar) {
        return c(bVar, cVar, Executors.newSingleThreadExecutor());
    }

    public static com.facebook.cache.disk.d c(com.facebook.cache.disk.b bVar, com.facebook.cache.disk.c cVar, Executor executor) {
        return new com.facebook.cache.disk.d(cVar, bVar.g(), new d.c(bVar.j(), bVar.i(), bVar.e()), bVar.d(), bVar.c(), bVar.f(), bVar.getContext(), executor, bVar.h());
    }

    @Override // com.facebook.imagepipeline.core.f
    public com.facebook.cache.disk.h a(com.facebook.cache.disk.b bVar) {
        return b(bVar, this.f12580a.a(bVar));
    }
}
