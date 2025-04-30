package com.facebook.imagepipeline.platform;

import android.annotation.TargetApi;
import android.graphics.BitmapFactory;
import androidx.core.util.Pools;
import javax.annotation.concurrent.ThreadSafe;
/* compiled from: ArtDecoder.java */
@ThreadSafe
@TargetApi(21)
/* loaded from: classes2.dex */
public class a extends b {
    public a(com.facebook.imagepipeline.memory.d dVar, int i2, Pools.SynchronizedPool synchronizedPool) {
        super(dVar, i2, synchronizedPool);
    }

    @Override // com.facebook.imagepipeline.platform.b
    public int g(int i2, int i4, BitmapFactory.Options options) {
        return com.facebook.imageutils.a.f(i2, i4, options.inPreferredConfig);
    }
}
