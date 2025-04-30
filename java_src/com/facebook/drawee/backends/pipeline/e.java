package com.facebook.drawee.backends.pipeline;

import android.content.Context;
import android.net.Uri;
import com.facebook.common.internal.ImmutableList;
import com.facebook.common.internal.h;
import com.facebook.drawee.controller.AbstractDraweeControllerBuilder;
import com.facebook.imagepipeline.common.RotationOptions;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.imagepipeline.request.ImageRequestBuilder;
import java.util.Set;
import javax.annotation.Nullable;
/* compiled from: PipelineDraweeControllerBuilder.java */
/* loaded from: classes.dex */
public class e extends AbstractDraweeControllerBuilder<e, ImageRequest, com.facebook.common.references.a<com.facebook.imagepipeline.image.c>, com.facebook.imagepipeline.image.f> {

    /* renamed from: s  reason: collision with root package name */
    private final com.facebook.imagepipeline.core.g f11842s;

    /* renamed from: t  reason: collision with root package name */
    private final g f11843t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private ImmutableList<p0.a> f11844u;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private h0.b f11845v;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private h0.d f11846w;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PipelineDraweeControllerBuilder.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f11847a;

        static {
            int[] iArr = new int[AbstractDraweeControllerBuilder.CacheLevel.values().length];
            f11847a = iArr;
            try {
                iArr[AbstractDraweeControllerBuilder.CacheLevel.FULL_FETCH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f11847a[AbstractDraweeControllerBuilder.CacheLevel.DISK_CACHE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f11847a[AbstractDraweeControllerBuilder.CacheLevel.BITMAP_MEMORY_CACHE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public e(Context context, g gVar, com.facebook.imagepipeline.core.g gVar2, Set<com.facebook.drawee.controller.c> set) {
        super(context, set);
        this.f11842s = gVar2;
        this.f11843t = gVar;
    }

    public static ImageRequest.RequestLevel S(AbstractDraweeControllerBuilder.CacheLevel cacheLevel) {
        int i2 = a.f11847a[cacheLevel.ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 == 3) {
                    return ImageRequest.RequestLevel.BITMAP_MEMORY_CACHE;
                }
                throw new RuntimeException("Cache level" + cacheLevel + "is not supported. ");
            }
            return ImageRequest.RequestLevel.DISK_CACHE;
        }
        return ImageRequest.RequestLevel.FULL_FETCH;
    }

    @Nullable
    private com.facebook.cache.common.c T() {
        ImageRequest r3 = r();
        com.facebook.imagepipeline.cache.f s3 = this.f11842s.s();
        if (s3 == null || r3 == null) {
            return null;
        }
        if (r3.j() != null) {
            return s3.c(r3, h());
        }
        return s3.a(r3, h());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.controller.AbstractDraweeControllerBuilder
    /* renamed from: U */
    public com.facebook.datasource.c<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> l(k0.a aVar, String str, ImageRequest imageRequest, Object obj, AbstractDraweeControllerBuilder.CacheLevel cacheLevel) {
        return this.f11842s.k(imageRequest, obj, S(cacheLevel), V(aVar));
    }

    @Nullable
    protected r0.c V(k0.a aVar) {
        if (aVar instanceof d) {
            return ((d) aVar).b0();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.controller.AbstractDraweeControllerBuilder
    /* renamed from: W */
    public d B() {
        d c4;
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("PipelineDraweeControllerBuilder#obtainController");
        }
        try {
            k0.a t3 = t();
            String f4 = AbstractDraweeControllerBuilder.f();
            if (t3 instanceof d) {
                c4 = (d) t3;
            } else {
                c4 = this.f11843t.c();
            }
            c4.d0(C(c4, f4), f4, T(), h(), this.f11844u, this.f11845v);
            c4.e0(this.f11846w);
            return c4;
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }

    public e X(@Nullable ImmutableList<p0.a> immutableList) {
        this.f11844u = immutableList;
        return w();
    }

    public e Y(p0.a... aVarArr) {
        h.i(aVarArr);
        return X(ImmutableList.b(aVarArr));
    }

    public e Z(p0.a aVar) {
        h.i(aVar);
        return X(ImmutableList.b(aVar));
    }

    public e a0(@Nullable h0.b bVar) {
        this.f11845v = bVar;
        return w();
    }

    public e b0(@Nullable h0.d dVar) {
        this.f11846w = dVar;
        return w();
    }

    @Override // k0.d
    /* renamed from: c0 */
    public e a(@Nullable Uri uri) {
        if (uri == null) {
            return (e) super.M(null);
        }
        return (e) super.M(ImageRequestBuilder.u(uri).H(RotationOptions.b()).a());
    }

    @Override // k0.d
    /* renamed from: d0 */
    public e setUri(@Nullable String str) {
        if (str != null && !str.isEmpty()) {
            return a(Uri.parse(str));
        }
        return (e) super.M(ImageRequest.c(str));
    }
}
