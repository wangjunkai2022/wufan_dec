package com.facebook.imagepipeline.request;

import android.net.Uri;
import com.facebook.common.internal.g;
import com.facebook.imagepipeline.common.Priority;
import com.facebook.imagepipeline.common.RotationOptions;
import java.io.File;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;
@Immutable
/* loaded from: classes.dex */
public class ImageRequest {

    /* renamed from: a  reason: collision with root package name */
    private final CacheChoice f13302a;

    /* renamed from: b  reason: collision with root package name */
    private final Uri f13303b;

    /* renamed from: c  reason: collision with root package name */
    private final int f13304c;

    /* renamed from: d  reason: collision with root package name */
    private File f13305d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f13306e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f13307f;

    /* renamed from: g  reason: collision with root package name */
    private final com.facebook.imagepipeline.common.b f13308g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final com.facebook.imagepipeline.common.d f13309h;

    /* renamed from: i  reason: collision with root package name */
    private final RotationOptions f13310i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private final com.facebook.imagepipeline.common.a f13311j;

    /* renamed from: k  reason: collision with root package name */
    private final Priority f13312k;

    /* renamed from: l  reason: collision with root package name */
    private final RequestLevel f13313l;

    /* renamed from: m  reason: collision with root package name */
    private final boolean f13314m;

    /* renamed from: n  reason: collision with root package name */
    private final boolean f13315n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private final Boolean f13316o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private final d f13317p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private final r0.c f13318q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private final Boolean f13319r;

    /* loaded from: classes2.dex */
    public enum CacheChoice {
        SMALL,
        DEFAULT
    }

    /* loaded from: classes2.dex */
    public enum RequestLevel {
        FULL_FETCH(1),
        DISK_CACHE(2),
        ENCODED_MEMORY_CACHE(3),
        BITMAP_MEMORY_CACHE(4);
        
        private int mValue;

        RequestLevel(int i2) {
            this.mValue = i2;
        }

        public static RequestLevel getMax(RequestLevel requestLevel, RequestLevel requestLevel2) {
            return requestLevel.getValue() > requestLevel2.getValue() ? requestLevel : requestLevel2;
        }

        public int getValue() {
            return this.mValue;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ImageRequest(ImageRequestBuilder imageRequestBuilder) {
        this.f13302a = imageRequestBuilder.f();
        Uri o3 = imageRequestBuilder.o();
        this.f13303b = o3;
        this.f13304c = v(o3);
        this.f13306e = imageRequestBuilder.s();
        this.f13307f = imageRequestBuilder.q();
        this.f13308g = imageRequestBuilder.g();
        this.f13309h = imageRequestBuilder.l();
        this.f13310i = imageRequestBuilder.n() == null ? RotationOptions.a() : imageRequestBuilder.n();
        this.f13311j = imageRequestBuilder.e();
        this.f13312k = imageRequestBuilder.k();
        this.f13313l = imageRequestBuilder.h();
        this.f13314m = imageRequestBuilder.p();
        this.f13315n = imageRequestBuilder.r();
        this.f13316o = imageRequestBuilder.K();
        this.f13317p = imageRequestBuilder.i();
        this.f13318q = imageRequestBuilder.j();
        this.f13319r = imageRequestBuilder.m();
    }

    @Nullable
    public static ImageRequest a(@Nullable File file) {
        if (file == null) {
            return null;
        }
        return b(com.facebook.common.util.f.c(file));
    }

    @Nullable
    public static ImageRequest b(@Nullable Uri uri) {
        if (uri == null) {
            return null;
        }
        return ImageRequestBuilder.u(uri).a();
    }

    @Nullable
    public static ImageRequest c(@Nullable String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        return b(Uri.parse(str));
    }

    private static int v(Uri uri) {
        if (uri == null) {
            return -1;
        }
        if (com.facebook.common.util.f.m(uri)) {
            return 0;
        }
        if (com.facebook.common.util.f.k(uri)) {
            return com.facebook.common.media.a.f(com.facebook.common.media.a.b(uri.getPath())) ? 2 : 3;
        } else if (com.facebook.common.util.f.j(uri)) {
            return 4;
        } else {
            if (com.facebook.common.util.f.g(uri)) {
                return 5;
            }
            if (com.facebook.common.util.f.l(uri)) {
                return 6;
            }
            if (com.facebook.common.util.f.f(uri)) {
                return 7;
            }
            return com.facebook.common.util.f.n(uri) ? 8 : -1;
        }
    }

    @Deprecated
    public boolean d() {
        return this.f13310i.h();
    }

    @Nullable
    public com.facebook.imagepipeline.common.a e() {
        return this.f13311j;
    }

    public boolean equals(Object obj) {
        if (obj instanceof ImageRequest) {
            ImageRequest imageRequest = (ImageRequest) obj;
            if (g.a(this.f13303b, imageRequest.f13303b) && g.a(this.f13302a, imageRequest.f13302a) && g.a(this.f13305d, imageRequest.f13305d) && g.a(this.f13311j, imageRequest.f13311j) && g.a(this.f13308g, imageRequest.f13308g) && g.a(this.f13309h, imageRequest.f13309h) && g.a(this.f13310i, imageRequest.f13310i)) {
                d dVar = this.f13317p;
                com.facebook.cache.common.c a4 = dVar != null ? dVar.a() : null;
                d dVar2 = imageRequest.f13317p;
                return g.a(a4, dVar2 != null ? dVar2.a() : null);
            }
            return false;
        }
        return false;
    }

    public CacheChoice f() {
        return this.f13302a;
    }

    public com.facebook.imagepipeline.common.b g() {
        return this.f13308g;
    }

    public boolean h() {
        return this.f13307f;
    }

    public int hashCode() {
        d dVar = this.f13317p;
        return g.c(this.f13302a, this.f13303b, this.f13305d, this.f13311j, this.f13308g, this.f13309h, this.f13310i, dVar != null ? dVar.a() : null, this.f13319r);
    }

    public RequestLevel i() {
        return this.f13313l;
    }

    @Nullable
    public d j() {
        return this.f13317p;
    }

    public int k() {
        com.facebook.imagepipeline.common.d dVar = this.f13309h;
        if (dVar != null) {
            return dVar.f12571b;
        }
        return 2048;
    }

    public int l() {
        com.facebook.imagepipeline.common.d dVar = this.f13309h;
        if (dVar != null) {
            return dVar.f12570a;
        }
        return 2048;
    }

    public Priority m() {
        return this.f13312k;
    }

    public boolean n() {
        return this.f13306e;
    }

    @Nullable
    public r0.c o() {
        return this.f13318q;
    }

    @Nullable
    public com.facebook.imagepipeline.common.d p() {
        return this.f13309h;
    }

    @Nullable
    public Boolean q() {
        return this.f13319r;
    }

    public RotationOptions r() {
        return this.f13310i;
    }

    public synchronized File s() {
        if (this.f13305d == null) {
            this.f13305d = new File(this.f13303b.getPath());
        }
        return this.f13305d;
    }

    public Uri t() {
        return this.f13303b;
    }

    public String toString() {
        return g.f(this).f("uri", this.f13303b).f("cacheChoice", this.f13302a).f("decodeOptions", this.f13308g).f("postprocessor", this.f13317p).f("priority", this.f13312k).f("resizeOptions", this.f13309h).f("rotationOptions", this.f13310i).f("bytesRange", this.f13311j).f("resizingAllowedOverride", this.f13319r).toString();
    }

    public int u() {
        return this.f13304c;
    }

    public boolean w() {
        return this.f13314m;
    }

    public boolean x() {
        return this.f13315n;
    }

    @Nullable
    public Boolean y() {
        return this.f13316o;
    }
}
