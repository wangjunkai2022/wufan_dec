package com.facebook.animated.gif;

import com.facebook.common.internal.DoNotStrip;
import com.facebook.common.internal.h;
import com.facebook.imagepipeline.animated.base.AnimatedDrawableFrameInfo;
import com.facebook.imagepipeline.animated.base.d;
import com.facebook.imagepipeline.animated.factory.c;
import com.facebook.soloader.SoLoader;
import java.nio.ByteBuffer;
import javax.annotation.concurrent.ThreadSafe;
@DoNotStrip
@ThreadSafe
/* loaded from: classes2.dex */
public class GifImage implements d, c {

    /* renamed from: b  reason: collision with root package name */
    private static final int f11535b = 0;

    /* renamed from: c  reason: collision with root package name */
    private static final int f11536c = -1;

    /* renamed from: d  reason: collision with root package name */
    private static volatile boolean f11537d;
    @DoNotStrip
    private long mNativeContext;

    @DoNotStrip
    public GifImage() {
    }

    public static GifImage k(long j4, int i2) {
        n();
        h.d(j4 != 0);
        return nativeCreateFromNativeMemory(j4, i2);
    }

    public static GifImage l(ByteBuffer byteBuffer) {
        n();
        byteBuffer.rewind();
        return nativeCreateFromDirectByteBuffer(byteBuffer);
    }

    public static GifImage m(byte[] bArr) {
        n();
        h.i(bArr);
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(bArr.length);
        allocateDirect.put(bArr);
        allocateDirect.rewind();
        return nativeCreateFromDirectByteBuffer(allocateDirect);
    }

    private static synchronized void n() {
        synchronized (GifImage.class) {
            if (!f11537d) {
                f11537d = true;
                SoLoader.k("gifimage");
            }
        }
    }

    @DoNotStrip
    private static native GifImage nativeCreateFromDirectByteBuffer(ByteBuffer byteBuffer);

    @DoNotStrip
    private static native GifImage nativeCreateFromNativeMemory(long j4, int i2);

    @DoNotStrip
    private native void nativeDispose();

    @DoNotStrip
    private native void nativeFinalize();

    @DoNotStrip
    private native int nativeGetDuration();

    @DoNotStrip
    private native GifFrame nativeGetFrame(int i2);

    @DoNotStrip
    private native int nativeGetFrameCount();

    @DoNotStrip
    private native int[] nativeGetFrameDurations();

    @DoNotStrip
    private native int nativeGetHeight();

    @DoNotStrip
    private native int nativeGetLoopCount();

    @DoNotStrip
    private native int nativeGetSizeInBytes();

    @DoNotStrip
    private native int nativeGetWidth();

    private static AnimatedDrawableFrameInfo.DisposalMethod o(int i2) {
        if (i2 == 0) {
            return AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_DO_NOT;
        }
        if (i2 == 1) {
            return AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_DO_NOT;
        }
        if (i2 == 2) {
            return AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_TO_BACKGROUND;
        }
        if (i2 == 3) {
            return AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_TO_PREVIOUS;
        }
        return AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_DO_NOT;
    }

    @Override // com.facebook.imagepipeline.animated.base.d
    public int a() {
        return nativeGetWidth();
    }

    @Override // com.facebook.imagepipeline.animated.base.d
    public int b() {
        return nativeGetFrameCount();
    }

    @Override // com.facebook.imagepipeline.animated.base.d
    public int c() {
        return nativeGetSizeInBytes();
    }

    @Override // com.facebook.imagepipeline.animated.base.d
    public int d() {
        int nativeGetLoopCount = nativeGetLoopCount();
        if (nativeGetLoopCount != -1) {
            if (nativeGetLoopCount != 0) {
                return nativeGetLoopCount + 1;
            }
            return 0;
        }
        return 1;
    }

    @Override // com.facebook.imagepipeline.animated.base.d
    public void dispose() {
        nativeDispose();
    }

    @Override // com.facebook.imagepipeline.animated.base.d
    public boolean e() {
        return false;
    }

    @Override // com.facebook.imagepipeline.animated.base.d
    public AnimatedDrawableFrameInfo f(int i2) {
        GifFrame g4 = g(i2);
        try {
            return new AnimatedDrawableFrameInfo(i2, g4.d(), g4.e(), g4.a(), g4.getHeight(), AnimatedDrawableFrameInfo.BlendOperation.BLEND_WITH_PREVIOUS, o(g4.f()));
        } finally {
            g4.dispose();
        }
    }

    protected void finalize() {
        nativeFinalize();
    }

    @Override // com.facebook.imagepipeline.animated.base.d
    public int getDuration() {
        return nativeGetDuration();
    }

    @Override // com.facebook.imagepipeline.animated.base.d
    public int getHeight() {
        return nativeGetHeight();
    }

    @Override // com.facebook.imagepipeline.animated.factory.c
    public d h(long j4, int i2) {
        return k(j4, i2);
    }

    @Override // com.facebook.imagepipeline.animated.factory.c
    public d i(ByteBuffer byteBuffer) {
        return l(byteBuffer);
    }

    @Override // com.facebook.imagepipeline.animated.base.d
    public int[] j() {
        return nativeGetFrameDurations();
    }

    @Override // com.facebook.imagepipeline.animated.base.d
    /* renamed from: p */
    public GifFrame g(int i2) {
        return nativeGetFrame(i2);
    }

    @DoNotStrip
    GifImage(long j4) {
        this.mNativeContext = j4;
    }
}
