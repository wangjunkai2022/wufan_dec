package com.facebook.imagepipeline.nativecode;

import android.graphics.Bitmap;
import com.facebook.common.internal.DoNotStrip;
import com.facebook.common.internal.h;
@DoNotStrip
/* loaded from: classes2.dex */
public class NativeBlurFilter {
    static {
        b.a();
    }

    public static void a(Bitmap bitmap, int i2, int i4) {
        h.i(bitmap);
        h.d(i2 > 0);
        h.d(i4 > 0);
        nativeIterativeBoxBlur(bitmap, i2, i4);
    }

    @DoNotStrip
    private static native void nativeIterativeBoxBlur(Bitmap bitmap, int i2, int i4);
}
