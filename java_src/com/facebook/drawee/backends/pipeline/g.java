package com.facebook.drawee.backends.pipeline;

import android.content.res.Resources;
import com.facebook.common.internal.ImmutableList;
import com.facebook.common.internal.k;
import com.facebook.imagepipeline.cache.p;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
/* compiled from: PipelineDraweeControllerFactory.java */
/* loaded from: classes.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private Resources f11852a;

    /* renamed from: b  reason: collision with root package name */
    private com.facebook.drawee.components.a f11853b;

    /* renamed from: c  reason: collision with root package name */
    private p0.a f11854c;

    /* renamed from: d  reason: collision with root package name */
    private Executor f11855d;

    /* renamed from: e  reason: collision with root package name */
    private p<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> f11856e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private ImmutableList<p0.a> f11857f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private k<Boolean> f11858g;

    public void a(Resources resources, com.facebook.drawee.components.a aVar, p0.a aVar2, Executor executor, p<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> pVar, @Nullable ImmutableList<p0.a> immutableList, @Nullable k<Boolean> kVar) {
        this.f11852a = resources;
        this.f11853b = aVar;
        this.f11854c = aVar2;
        this.f11855d = executor;
        this.f11856e = pVar;
        this.f11857f = immutableList;
        this.f11858g = kVar;
    }

    protected d b(Resources resources, com.facebook.drawee.components.a aVar, p0.a aVar2, Executor executor, p<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> pVar, @Nullable ImmutableList<p0.a> immutableList) {
        return new d(resources, aVar, aVar2, executor, pVar, immutableList);
    }

    public d c() {
        d b4 = b(this.f11852a, this.f11853b, this.f11854c, this.f11855d, this.f11856e, this.f11857f);
        k<Boolean> kVar = this.f11858g;
        if (kVar != null) {
            b4.m0(kVar.get().booleanValue());
        }
        return b4;
    }
}
