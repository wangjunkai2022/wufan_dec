package com.facebook.imagepipeline.transcoder;

import com.facebook.imagepipeline.common.RotationOptions;
import java.io.IOException;
import java.io.OutputStream;
import javax.annotation.Nullable;
/* compiled from: ImageTranscoder.java */
/* loaded from: classes.dex */
public interface c {
    boolean a(com.facebook.imagepipeline.image.e eVar, @Nullable RotationOptions rotationOptions, @Nullable com.facebook.imagepipeline.common.d dVar);

    b b(com.facebook.imagepipeline.image.e eVar, OutputStream outputStream, @Nullable RotationOptions rotationOptions, @Nullable com.facebook.imagepipeline.common.d dVar, @Nullable com.facebook.imageformat.c cVar, @Nullable Integer num) throws IOException;

    boolean c(com.facebook.imageformat.c cVar);

    String getIdentifier();
}
