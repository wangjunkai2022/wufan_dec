package com.facebook.imagepipeline.request;

import android.graphics.Bitmap;
import javax.annotation.Nullable;
/* compiled from: Postprocessor.java */
/* loaded from: classes.dex */
public interface d {
    @Nullable
    com.facebook.cache.common.c a();

    com.facebook.common.references.a<Bitmap> c(Bitmap bitmap, com.facebook.imagepipeline.bitmaps.f fVar);

    String getName();
}
