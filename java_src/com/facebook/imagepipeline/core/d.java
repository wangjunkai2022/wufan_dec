package com.facebook.imagepipeline.core;
/* compiled from: DynamicDefaultDiskStorageFactory.java */
/* loaded from: classes2.dex */
public class d implements c {
    @Override // com.facebook.imagepipeline.core.c
    public com.facebook.cache.disk.c a(com.facebook.cache.disk.b bVar) {
        return new com.facebook.cache.disk.e(bVar.k(), bVar.b(), bVar.a(), bVar.c());
    }
}
