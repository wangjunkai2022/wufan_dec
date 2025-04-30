package com.papa.gsyvideoplayer.render.effect;

import android.opengl.GLSurfaceView;
import com.papa.gsyvideoplayer.render.view.GSYVideoGLView;
/* compiled from: ContrastEffect.java */
/* loaded from: classes4.dex */
public class e implements GSYVideoGLView.c {

    /* renamed from: a  reason: collision with root package name */
    private float f54996a;

    public e(float f4) {
        f4 = f4 < 0.1f ? 0.1f : f4;
        this.f54996a = f4 > 2.0f ? 2.0f : f4;
    }

    @Override // com.papa.gsyvideoplayer.render.view.GSYVideoGLView.c
    public String a(GLSurfaceView gLSurfaceView) {
        return "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\n float contrast;\nvarying vec2 vTextureCoord;\nvoid main() {\n  contrast =" + this.f54996a + ";\n  vec4 color = texture2D(sTexture, vTextureCoord);\n  color -= 0.5;\n  color *= contrast;\n  color += 0.5;\n  gl_FragColor = color;\n}\n";
    }
}
