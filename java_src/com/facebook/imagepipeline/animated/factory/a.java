package com.facebook.imagepipeline.animated.factory;

import android.content.Context;
import android.graphics.Bitmap;
import javax.annotation.Nullable;
import javax.annotation.concurrent.NotThreadSafe;
/* compiled from: AnimatedFactory.java */
@NotThreadSafe
/* loaded from: classes.dex */
public interface a {
    @Nullable
    p0.a a(Context context);

    @Nullable
    com.facebook.imagepipeline.decoder.b b(Bitmap.Config config);

    @Nullable
    com.facebook.imagepipeline.decoder.b c(Bitmap.Config config);
}
