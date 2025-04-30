package com.facebook.imagepipeline.platform;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.ColorSpace;
import androidx.core.util.Pools;
import javax.annotation.concurrent.ThreadSafe;
/* compiled from: OreoDecoder.java */
@ThreadSafe
@TargetApi(26)
/* loaded from: classes2.dex */
public class e extends b {
    public e(com.facebook.imagepipeline.memory.d dVar, int i2, Pools.SynchronizedPool synchronizedPool) {
        super(dVar, i2, synchronizedPool);
    }

    private static boolean i(BitmapFactory.Options options) {
        ColorSpace colorSpace = options.outColorSpace;
        return (colorSpace == null || !colorSpace.isWideGamut() || options.inPreferredConfig == Bitmap.Config.RGBA_F16) ? false : true;
    }

    @Override // com.facebook.imagepipeline.platform.b
    public int g(int i2, int i4, BitmapFactory.Options options) {
        return i(options) ? i2 * i4 * 8 : com.facebook.imageutils.a.f(i2, i4, options.inPreferredConfig);
    }
}
