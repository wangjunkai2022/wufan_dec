package com.facebook.imagepipeline.cache;

import android.net.Uri;
import com.facebook.imagepipeline.request.ImageRequest;
import javax.annotation.Nullable;
/* compiled from: CacheKeyFactory.java */
/* loaded from: classes.dex */
public interface f {
    com.facebook.cache.common.c a(ImageRequest imageRequest, Object obj);

    com.facebook.cache.common.c b(ImageRequest imageRequest, Uri uri, @Nullable Object obj);

    com.facebook.cache.common.c c(ImageRequest imageRequest, Object obj);

    com.facebook.cache.common.c d(ImageRequest imageRequest, @Nullable Object obj);
}
