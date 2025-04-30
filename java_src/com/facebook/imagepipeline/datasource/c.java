package com.facebook.imagepipeline.datasource;

import android.graphics.Bitmap;
import javax.annotation.Nullable;
/* compiled from: BaseBitmapReferenceDataSubscriber.java */
/* loaded from: classes.dex */
public abstract class c extends com.facebook.datasource.b<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> {
    @Override // com.facebook.datasource.b
    public void f(com.facebook.datasource.c<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> cVar) {
        if (cVar.c()) {
            com.facebook.common.references.a<com.facebook.imagepipeline.image.c> g4 = cVar.g();
            com.facebook.common.references.a<Bitmap> aVar = null;
            if (g4 != null && (g4.i() instanceof com.facebook.imagepipeline.image.d)) {
                aVar = ((com.facebook.imagepipeline.image.d) g4.i()).h();
            }
            try {
                g(aVar);
            } finally {
                com.facebook.common.references.a.g(aVar);
                com.facebook.common.references.a.g(g4);
            }
        }
    }

    protected abstract void g(@Nullable com.facebook.common.references.a<Bitmap> aVar);
}
