package org.cocos2dx.lib;

import android.opengl.GLSurfaceView;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
/* loaded from: classes5.dex */
public class Cocos2dxRenderer implements GLSurfaceView.Renderer {
    private static final long NANOSECONDSPERMICROSECOND = 1000000;
    private static final long NANOSECONDSPERSECOND = 1000000000;
    private static long sAnimationInterval = 16666666;
    private long mLastTickInNanoSeconds;
    private boolean mNativeInitCompleted = false;
    private int mScreenHeight;
    private int mScreenWidth;

    private static native void nativeDeleteBackward();

    private static native String nativeGetContentText();

    private static native void nativeInit(int i2, int i4);

    private static native void nativeInsertText(String str);

    private static native boolean nativeKeyDown(int i2);

    private static native void nativeOnPause();

    private static native void nativeOnResume();

    private static native void nativeOnSurfaceChanged(int i2, int i4);

    private static native void nativeRender();

    private static native void nativeTouchesBegin(int i2, float f4, float f5);

    private static native void nativeTouchesCancel(int[] iArr, float[] fArr, float[] fArr2);

    private static native void nativeTouchesEnd(int i2, float f4, float f5);

    private static native void nativeTouchesMove(int[] iArr, float[] fArr, float[] fArr2);

    public static void setAnimationInterval(double d4) {
        sAnimationInterval = (long) (d4 * 1.0E9d);
    }

    public String getContentText() {
        return nativeGetContentText();
    }

    public void handleActionCancel(int[] iArr, float[] fArr, float[] fArr2) {
        nativeTouchesCancel(iArr, fArr, fArr2);
    }

    public void handleActionDown(int i2, float f4, float f5) {
        nativeTouchesBegin(i2, f4, f5);
    }

    public void handleActionMove(int[] iArr, float[] fArr, float[] fArr2) {
        nativeTouchesMove(iArr, fArr, fArr2);
    }

    public void handleActionUp(int i2, float f4, float f5) {
        nativeTouchesEnd(i2, f4, f5);
    }

    public void handleDeleteBackward() {
        nativeDeleteBackward();
    }

    public void handleInsertText(String str) {
        nativeInsertText(str);
    }

    public void handleKeyDown(int i2) {
        nativeKeyDown(i2);
    }

    public void handleOnPause() {
        if (this.mNativeInitCompleted) {
            Cocos2dxHelper.onEnterBackground();
            nativeOnPause();
        }
    }

    public void handleOnResume() {
        Cocos2dxHelper.onEnterForeground();
        nativeOnResume();
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onDrawFrame(GL10 gl10) {
        gl10.glClear(16384);
        gl10.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
        if (sAnimationInterval <= 1.6666666666666666E7d) {
            nativeRender();
            return;
        }
        long nanoTime = System.nanoTime() - this.mLastTickInNanoSeconds;
        long j4 = sAnimationInterval;
        if (nanoTime < j4) {
            try {
                Thread.sleep((j4 - nanoTime) / NANOSECONDSPERMICROSECOND);
            } catch (Exception unused) {
            }
        }
        this.mLastTickInNanoSeconds = System.nanoTime();
        nativeRender();
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceChanged(GL10 gl10, int i2, int i4) {
        nativeOnSurfaceChanged(i2, i4);
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        nativeInit(this.mScreenWidth, this.mScreenHeight);
        this.mLastTickInNanoSeconds = System.nanoTime();
        this.mNativeInitCompleted = true;
    }

    public void setScreenWidthAndHeight(int i2, int i4) {
        if (i2 > i4) {
            this.mScreenWidth = i2;
            this.mScreenHeight = i4;
            return;
        }
        this.mScreenWidth = i4;
        this.mScreenHeight = i2;
    }
}
