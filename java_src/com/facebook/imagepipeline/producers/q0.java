package com.facebook.imagepipeline.producers;

import com.facebook.imagepipeline.common.Priority;
import com.facebook.imagepipeline.request.ImageRequest;
import javax.annotation.concurrent.ThreadSafe;
/* compiled from: SettableProducerContext.java */
@ThreadSafe
/* loaded from: classes2.dex */
public class q0 extends d {
    public q0(k0 k0Var) {
        this(k0Var.b(), k0Var.getId(), k0Var.getListener(), k0Var.c(), k0Var.g(), k0Var.f(), k0Var.e(), k0Var.a());
    }

    public void r(boolean z3) {
        d.i(o(z3));
    }

    public void s(boolean z3) {
        d.j(p(z3));
    }

    public void t(Priority priority) {
        d.k(q(priority));
    }

    public q0(ImageRequest imageRequest, k0 k0Var) {
        this(imageRequest, k0Var.getId(), k0Var.getListener(), k0Var.c(), k0Var.g(), k0Var.f(), k0Var.e(), k0Var.a());
    }

    public q0(ImageRequest imageRequest, String str, m0 m0Var, Object obj, ImageRequest.RequestLevel requestLevel, boolean z3, boolean z4, Priority priority) {
        super(imageRequest, str, m0Var, obj, requestLevel, z3, z4, priority);
    }
}
