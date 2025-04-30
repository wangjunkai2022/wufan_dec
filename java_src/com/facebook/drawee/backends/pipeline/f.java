package com.facebook.drawee.backends.pipeline;

import android.content.Context;
import com.facebook.common.internal.k;
import com.facebook.imagepipeline.core.i;
import java.util.Set;
import javax.annotation.Nullable;
/* compiled from: PipelineDraweeControllerBuilderSupplier.java */
/* loaded from: classes.dex */
public class f implements k<e> {

    /* renamed from: a  reason: collision with root package name */
    private final Context f11848a;

    /* renamed from: b  reason: collision with root package name */
    private final com.facebook.imagepipeline.core.g f11849b;

    /* renamed from: c  reason: collision with root package name */
    private final g f11850c;

    /* renamed from: d  reason: collision with root package name */
    private final Set<com.facebook.drawee.controller.c> f11851d;

    public f(Context context) {
        this(context, null);
    }

    @Override // com.facebook.common.internal.k
    /* renamed from: a */
    public e get() {
        return new e(this.f11848a, this.f11850c, this.f11849b, this.f11851d);
    }

    public f(Context context, @Nullable c cVar) {
        this(context, i.j(), cVar);
    }

    public f(Context context, i iVar, @Nullable c cVar) {
        this(context, iVar, null, cVar);
    }

    public f(Context context, i iVar, Set<com.facebook.drawee.controller.c> set, @Nullable c cVar) {
        this.f11848a = context;
        com.facebook.imagepipeline.core.g h4 = iVar.h();
        this.f11849b = h4;
        if (cVar != null && cVar.c() != null) {
            this.f11850c = cVar.c();
        } else {
            this.f11850c = new g();
        }
        this.f11850c.a(context.getResources(), com.facebook.drawee.components.a.e(), iVar.a(context), com.facebook.common.executors.i.f(), h4.q(), cVar != null ? cVar.a() : null, cVar != null ? cVar.b() : null);
        this.f11851d = set;
    }
}
