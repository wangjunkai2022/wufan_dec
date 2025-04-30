package com.facebook.imagepipeline.datasource;

import android.graphics.Bitmap;
import java.util.ArrayList;
import java.util.List;
/* compiled from: BaseListBitmapDataSubscriber.java */
/* loaded from: classes2.dex */
public abstract class d extends com.facebook.datasource.b<List<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>>> {
    @Override // com.facebook.datasource.b
    public void f(com.facebook.datasource.c<List<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>>> cVar) {
        if (cVar.c()) {
            List<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> g4 = cVar.g();
            if (g4 == null) {
                g(null);
                return;
            }
            try {
                ArrayList arrayList = new ArrayList(g4.size());
                for (com.facebook.common.references.a<com.facebook.imagepipeline.image.c> aVar : g4) {
                    if (aVar != null && (aVar.i() instanceof com.facebook.imagepipeline.image.b)) {
                        arrayList.add(((com.facebook.imagepipeline.image.b) aVar.i()).g());
                    } else {
                        arrayList.add(null);
                    }
                }
                g(arrayList);
            } finally {
                for (com.facebook.common.references.a<com.facebook.imagepipeline.image.c> next : g4) {
                    com.facebook.common.references.a.g(next);
                }
            }
        }
    }

    protected abstract void g(List<Bitmap> list);
}
