package com.facebook.imagepipeline.datasource;

import com.facebook.imagepipeline.producers.i0;
import com.facebook.imagepipeline.producers.q0;
import javax.annotation.concurrent.ThreadSafe;
/* compiled from: ProducerToDataSourceAdapter.java */
@ThreadSafe
/* loaded from: classes2.dex */
public class g<T> extends a<T> {
    private g(i0<T> i0Var, q0 q0Var, r0.c cVar) {
        super(i0Var, q0Var, cVar);
    }

    public static <T> com.facebook.datasource.c<T> z(i0<T> i0Var, q0 q0Var, r0.c cVar) {
        return new g(i0Var, q0Var, cVar);
    }
}
