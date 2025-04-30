package com.facebook.imagepipeline.datasource;

import com.facebook.imagepipeline.producers.i0;
import com.facebook.imagepipeline.producers.q0;
import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;
/* compiled from: CloseableProducerToDataSourceAdapter.java */
@ThreadSafe
/* loaded from: classes.dex */
public class e<T> extends a<com.facebook.common.references.a<T>> {
    private e(i0<com.facebook.common.references.a<T>> i0Var, q0 q0Var, r0.c cVar) {
        super(i0Var, q0Var, cVar);
    }

    public static <T> com.facebook.datasource.c<com.facebook.common.references.a<T>> A(i0<com.facebook.common.references.a<T>> i0Var, q0 q0Var, r0.c cVar) {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("CloseableProducerToDataSourceAdapter#create");
        }
        e eVar = new e(i0Var, q0Var, cVar);
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        return eVar;
    }

    @Override // com.facebook.datasource.AbstractDataSource, com.facebook.datasource.c
    @Nullable
    /* renamed from: B */
    public com.facebook.common.references.a<T> g() {
        return com.facebook.common.references.a.d((com.facebook.common.references.a) super.g());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.datasource.a
    /* renamed from: C */
    public void y(com.facebook.common.references.a<T> aVar, int i2) {
        super.y(com.facebook.common.references.a.d(aVar), i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.datasource.AbstractDataSource
    /* renamed from: z */
    public void i(com.facebook.common.references.a<T> aVar) {
        com.facebook.common.references.a.g(aVar);
    }
}
