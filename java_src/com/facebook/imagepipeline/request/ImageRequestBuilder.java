package com.facebook.imagepipeline.request;

import android.net.Uri;
import com.facebook.common.internal.h;
import com.facebook.imagepipeline.common.Priority;
import com.facebook.imagepipeline.common.RotationOptions;
import com.facebook.imagepipeline.core.ImagePipelineConfig;
import com.facebook.imagepipeline.request.ImageRequest;
import javax.annotation.Nullable;
/* loaded from: classes.dex */
public class ImageRequestBuilder {
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private r0.c f13333n;

    /* renamed from: a  reason: collision with root package name */
    private Uri f13320a = null;

    /* renamed from: b  reason: collision with root package name */
    private ImageRequest.RequestLevel f13321b = ImageRequest.RequestLevel.FULL_FETCH;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private com.facebook.imagepipeline.common.d f13322c = null;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private RotationOptions f13323d = null;

    /* renamed from: e  reason: collision with root package name */
    private com.facebook.imagepipeline.common.b f13324e = com.facebook.imagepipeline.common.b.a();

    /* renamed from: f  reason: collision with root package name */
    private ImageRequest.CacheChoice f13325f = ImageRequest.CacheChoice.DEFAULT;

    /* renamed from: g  reason: collision with root package name */
    private boolean f13326g = ImagePipelineConfig.getDefaultImageRequestConfig().isProgressiveRenderingEnabled();

    /* renamed from: h  reason: collision with root package name */
    private boolean f13327h = false;

    /* renamed from: i  reason: collision with root package name */
    private Priority f13328i = Priority.HIGH;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private d f13329j = null;

    /* renamed from: k  reason: collision with root package name */
    private boolean f13330k = true;

    /* renamed from: l  reason: collision with root package name */
    private boolean f13331l = true;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private Boolean f13332m = null;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private com.facebook.imagepipeline.common.a f13334o = null;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private Boolean f13335p = null;

    /* loaded from: classes2.dex */
    public static class BuilderException extends RuntimeException {
        public BuilderException(String str) {
            super("Invalid request builder: " + str);
        }
    }

    private ImageRequestBuilder() {
    }

    public static ImageRequestBuilder d(ImageRequest imageRequest) {
        return u(imageRequest.t()).y(imageRequest.g()).w(imageRequest.e()).x(imageRequest.f()).z(imageRequest.h()).A(imageRequest.i()).B(imageRequest.j()).C(imageRequest.n()).E(imageRequest.m()).F(imageRequest.p()).D(imageRequest.o()).H(imageRequest.r()).I(imageRequest.y());
    }

    public static ImageRequestBuilder t(int i2) {
        return u(com.facebook.common.util.f.e(i2));
    }

    public static ImageRequestBuilder u(Uri uri) {
        return new ImageRequestBuilder().J(uri);
    }

    public ImageRequestBuilder A(ImageRequest.RequestLevel requestLevel) {
        this.f13321b = requestLevel;
        return this;
    }

    public ImageRequestBuilder B(d dVar) {
        this.f13329j = dVar;
        return this;
    }

    public ImageRequestBuilder C(boolean z3) {
        this.f13326g = z3;
        return this;
    }

    public ImageRequestBuilder D(r0.c cVar) {
        this.f13333n = cVar;
        return this;
    }

    public ImageRequestBuilder E(Priority priority) {
        this.f13328i = priority;
        return this;
    }

    public ImageRequestBuilder F(@Nullable com.facebook.imagepipeline.common.d dVar) {
        this.f13322c = dVar;
        return this;
    }

    public ImageRequestBuilder G(@Nullable Boolean bool) {
        this.f13335p = bool;
        return this;
    }

    public ImageRequestBuilder H(@Nullable RotationOptions rotationOptions) {
        this.f13323d = rotationOptions;
        return this;
    }

    public ImageRequestBuilder I(@Nullable Boolean bool) {
        this.f13332m = bool;
        return this;
    }

    public ImageRequestBuilder J(Uri uri) {
        h.i(uri);
        this.f13320a = uri;
        return this;
    }

    @Nullable
    public Boolean K() {
        return this.f13332m;
    }

    protected void L() {
        Uri uri = this.f13320a;
        if (uri != null) {
            if (com.facebook.common.util.f.l(uri)) {
                if (this.f13320a.isAbsolute()) {
                    if (!this.f13320a.getPath().isEmpty()) {
                        try {
                            Integer.parseInt(this.f13320a.getPath().substring(1));
                        } catch (NumberFormatException unused) {
                            throw new BuilderException("Resource URI path must be a resource id.");
                        }
                    } else {
                        throw new BuilderException("Resource URI must not be empty");
                    }
                } else {
                    throw new BuilderException("Resource URI path must be absolute.");
                }
            }
            if (com.facebook.common.util.f.g(this.f13320a) && !this.f13320a.isAbsolute()) {
                throw new BuilderException("Asset URI path must be absolute.");
            }
            return;
        }
        throw new BuilderException("Source must be set!");
    }

    public ImageRequest a() {
        L();
        return new ImageRequest(this);
    }

    public ImageRequestBuilder b() {
        this.f13330k = false;
        return this;
    }

    public ImageRequestBuilder c() {
        this.f13331l = false;
        return this;
    }

    @Nullable
    public com.facebook.imagepipeline.common.a e() {
        return this.f13334o;
    }

    public ImageRequest.CacheChoice f() {
        return this.f13325f;
    }

    public com.facebook.imagepipeline.common.b g() {
        return this.f13324e;
    }

    public ImageRequest.RequestLevel h() {
        return this.f13321b;
    }

    @Nullable
    public d i() {
        return this.f13329j;
    }

    @Nullable
    public r0.c j() {
        return this.f13333n;
    }

    public Priority k() {
        return this.f13328i;
    }

    @Nullable
    public com.facebook.imagepipeline.common.d l() {
        return this.f13322c;
    }

    @Nullable
    public Boolean m() {
        return this.f13335p;
    }

    @Nullable
    public RotationOptions n() {
        return this.f13323d;
    }

    public Uri o() {
        return this.f13320a;
    }

    public boolean p() {
        return this.f13330k && com.facebook.common.util.f.m(this.f13320a);
    }

    public boolean q() {
        return this.f13327h;
    }

    public boolean r() {
        return this.f13331l;
    }

    public boolean s() {
        return this.f13326g;
    }

    @Deprecated
    public ImageRequestBuilder v(boolean z3) {
        if (z3) {
            return H(RotationOptions.a());
        }
        return H(RotationOptions.d());
    }

    public ImageRequestBuilder w(@Nullable com.facebook.imagepipeline.common.a aVar) {
        this.f13334o = aVar;
        return this;
    }

    public ImageRequestBuilder x(ImageRequest.CacheChoice cacheChoice) {
        this.f13325f = cacheChoice;
        return this;
    }

    public ImageRequestBuilder y(com.facebook.imagepipeline.common.b bVar) {
        this.f13324e = bVar;
        return this;
    }

    public ImageRequestBuilder z(boolean z3) {
        this.f13327h = z3;
        return this;
    }
}
