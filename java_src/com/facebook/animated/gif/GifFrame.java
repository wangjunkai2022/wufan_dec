package com.facebook.animated.gif;

import android.graphics.Bitmap;
import com.facebook.common.internal.DoNotStrip;
import com.facebook.imagepipeline.animated.base.e;
import javax.annotation.concurrent.ThreadSafe;
@ThreadSafe
/* loaded from: classes2.dex */
public class GifFrame implements e {
    @DoNotStrip
    private long mNativeContext;

    @DoNotStrip
    GifFrame(long j4) {
        this.mNativeContext = j4;
    }

    @DoNotStrip
    private native void nativeDispose();

    @DoNotStrip
    private native void nativeFinalize();

    @DoNotStrip
    private native int nativeGetDisposalMode();

    @DoNotStrip
    private native int nativeGetDurationMs();

    @DoNotStrip
    private native int nativeGetHeight();

    @DoNotStrip
    private native int nativeGetTransparentPixelColor();

    @DoNotStrip
    private native int nativeGetWidth();

    @DoNotStrip
    private native int nativeGetXOffset();

    @DoNotStrip
    private native int nativeGetYOffset();

    @DoNotStrip
    private native boolean nativeHasTransparency();

    @DoNotStrip
    private native void nativeRenderFrame(int i2, int i4, Bitmap bitmap);

    @Override // com.facebook.imagepipeline.animated.base.e
    public int a() {
        return nativeGetWidth();
    }

    @Override // com.facebook.imagepipeline.animated.base.e
    public void b(int i2, int i4, Bitmap bitmap) {
        nativeRenderFrame(i2, i4, bitmap);
    }

    @Override // com.facebook.imagepipeline.animated.base.e
    public int c() {
        return nativeGetDurationMs();
    }

    @Override // com.facebook.imagepipeline.animated.base.e
    public int d() {
        return nativeGetXOffset();
    }

    @Override // com.facebook.imagepipeline.animated.base.e
    public void dispose() {
        nativeDispose();
    }

    @Override // com.facebook.imagepipeline.animated.base.e
    public int e() {
        return nativeGetYOffset();
    }

    public int f() {
        return nativeGetDisposalMode();
    }

    protected void finalize() {
        nativeFinalize();
    }

    public int g() {
        return nativeGetTransparentPixelColor();
    }

    @Override // com.facebook.imagepipeline.animated.base.e
    public int getHeight() {
        return nativeGetHeight();
    }

    public boolean h() {
        return nativeHasTransparency();
    }
}
