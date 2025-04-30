package com.papa.gsyvideoplayer.render.effect;

import android.opengl.GLSurfaceView;
import com.papa.gsyvideoplayer.render.view.GSYVideoGLView;
/* compiled from: GammaEffect.java */
/* loaded from: classes4.dex */
public class j implements GSYVideoGLView.c {

    /* renamed from: a  reason: collision with root package name */
    private float f55003a;

    public j(float f4) {
        f4 = f4 < 0.0f ? 0.0f : f4;
        this.f55003a = f4 > 2.0f ? 2.0f : f4;
    }

    @Override // com.papa.gsyvideoplayer.render.view.GSYVideoGLView.c
    public String a(GLSurfaceView gLSurfaceView) {
        return "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nfloat gamma=" + this.f55003a + ";\nvoid main() {\nvec4 textureColor = texture2D(sTexture, vTextureCoord);\ngl_FragColor = vec4(pow(textureColor.rgb, vec3(gamma)), textureColor.w);\n}\n";
    }
}
