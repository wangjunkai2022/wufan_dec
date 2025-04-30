package com.facebook.imagepipeline.cache;

import android.net.Uri;
import com.facebook.imagepipeline.request.ImageRequest;
import javax.annotation.Nullable;
/* compiled from: DefaultCacheKeyFactory.java */
/* loaded from: classes.dex */
public class j implements f {

    /* renamed from: a  reason: collision with root package name */
    private static j f12519a;

    protected j() {
    }

    public static synchronized j f() {
        j jVar;
        synchronized (j.class) {
            if (f12519a == null) {
                f12519a = new j();
            }
            jVar = f12519a;
        }
        return jVar;
    }

    @Override // com.facebook.imagepipeline.cache.f
    public com.facebook.cache.common.c a(ImageRequest imageRequest, Object obj) {
        return new c(e(imageRequest.t()).toString(), imageRequest.p(), imageRequest.r(), imageRequest.g(), null, null, obj);
    }

    @Override // com.facebook.imagepipeline.cache.f
    public com.facebook.cache.common.c b(ImageRequest imageRequest, Uri uri, @Nullable Object obj) {
        return new com.facebook.cache.common.i(e(uri).toString());
    }

    @Override // com.facebook.imagepipeline.cache.f
    public com.facebook.cache.common.c c(ImageRequest imageRequest, Object obj) {
        com.facebook.cache.common.c cVar;
        String str;
        com.facebook.imagepipeline.request.d j4 = imageRequest.j();
        if (j4 != null) {
            com.facebook.cache.common.c a4 = j4.a();
            str = j4.getClass().getName();
            cVar = a4;
        } else {
            cVar = null;
            str = null;
        }
        return new c(e(imageRequest.t()).toString(), imageRequest.p(), imageRequest.r(), imageRequest.g(), cVar, str, obj);
    }

    @Override // com.facebook.imagepipeline.cache.f
    public com.facebook.cache.common.c d(ImageRequest imageRequest, @Nullable Object obj) {
        return b(imageRequest, imageRequest.t(), obj);
    }

    protected Uri e(Uri uri) {
        return uri;
    }
}
