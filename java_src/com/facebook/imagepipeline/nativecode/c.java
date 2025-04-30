package com.facebook.imagepipeline.nativecode;

import java.lang.reflect.InvocationTargetException;
/* compiled from: NativeImageTranscoderFactory.java */
/* loaded from: classes2.dex */
public final class c {
    private c() {
    }

    public static com.facebook.imagepipeline.transcoder.d a(int i2, boolean z3) {
        try {
            return (com.facebook.imagepipeline.transcoder.d) NativeJpegTranscoderFactory.class.getConstructor(Integer.TYPE, Boolean.TYPE).newInstance(Integer.valueOf(i2), Boolean.valueOf(z3));
        } catch (ClassNotFoundException | IllegalAccessException | IllegalArgumentException | InstantiationException | NoSuchMethodException | SecurityException | InvocationTargetException e4) {
            throw new RuntimeException("Dependency ':native-imagetranscoder' is needed to use the default native image transcoder.", e4);
        }
    }
}
