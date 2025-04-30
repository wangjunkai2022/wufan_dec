package org.ppsspp.ppsspp;

import android.opengl.GLSurfaceView;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
/* loaded from: classes5.dex */
public class NativeRenderer implements GLSurfaceView.Renderer {

    /* renamed from: c  reason: collision with root package name */
    private static String f73797c = "NativeRenderer";

    /* renamed from: a  reason: collision with root package name */
    private NativeActivity f73798a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f73799b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public NativeRenderer(NativeActivity nativeActivity) {
        this.f73798a = nativeActivity;
    }

    public boolean a() {
        return this.f73799b;
    }

    public native void displayInit();

    public native void displayRender();

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onDrawFrame(GL10 gl10) {
        this.f73799b = true;
        displayRender();
        this.f73799b = false;
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceChanged(GL10 gl10, int i2, int i4) {
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        displayInit();
    }
}
