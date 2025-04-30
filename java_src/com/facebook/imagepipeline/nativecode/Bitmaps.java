package com.facebook.imagepipeline.nativecode;

import android.graphics.Bitmap;
import com.facebook.common.internal.DoNotStrip;
import com.facebook.common.internal.h;
@DoNotStrip
/* loaded from: classes2.dex */
public class Bitmaps {
    static {
        a.a();
    }

    public static void a(Bitmap bitmap, Bitmap bitmap2) {
        h.d(bitmap2.getConfig() == bitmap.getConfig());
        h.d(bitmap.isMutable());
        h.d(bitmap.getWidth() == bitmap2.getWidth());
        h.d(bitmap.getHeight() == bitmap2.getHeight());
        nativeCopyBitmap(bitmap, bitmap.getRowBytes(), bitmap2, bitmap2.getRowBytes(), bitmap.getHeight());
    }

    @DoNotStrip
    private static native void nativeCopyBitmap(Bitmap bitmap, int i2, Bitmap bitmap2, int i4, int i5);
}
