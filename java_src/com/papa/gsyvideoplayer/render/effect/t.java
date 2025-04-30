package com.papa.gsyvideoplayer.render.effect;

import android.opengl.GLSurfaceView;
import com.papa.gsyvideoplayer.render.view.GSYVideoGLView;
/* compiled from: SampleBlurEffect.java */
/* loaded from: classes4.dex */
public class t implements GSYVideoGLView.c {

    /* renamed from: a  reason: collision with root package name */
    float f55018a;

    public t() {
        this.f55018a = 1.0f;
    }

    @Override // com.papa.gsyvideoplayer.render.view.GSYVideoGLView.c
    public String a(GLSurfaceView gLSurfaceView) {
        return "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\nvarying vec2 vTextureCoord;\nconst float blurSize = " + this.f55018a + "/800.0;\nconst float weightSum = 70.0 + 2.0 * (1.0 + 8.0 + 28.0 + 56.0);\n\nvoid main(void)\n{\n   vec4 sum = vec4(0.0);\n\n   sum += texture2D(sTexture, vec2(vTextureCoord.x - 4.0*blurSize, vTextureCoord.y)) * 1.0 / weightSum;\n   sum += texture2D(sTexture, vec2(vTextureCoord.x - 3.0*blurSize, vTextureCoord.y)) * 8.0 / weightSum;\n   sum += texture2D(sTexture, vec2(vTextureCoord.x - 2.0*blurSize, vTextureCoord.y)) * 28.0 / weightSum;\n   sum += texture2D(sTexture, vec2(vTextureCoord.x - blurSize, vTextureCoord.y)) * 56.0 / weightSum;\n   sum += texture2D(sTexture, vec2(vTextureCoord.x, vTextureCoord.y)) * 70.0 / weightSum;\n   sum += texture2D(sTexture, vec2(vTextureCoord.x + blurSize, vTextureCoord.y)) * 56.0 / weightSum;\n   sum += texture2D(sTexture, vec2(vTextureCoord.x + 2.0*blurSize, vTextureCoord.y)) * 28.0 / weightSum;\n   sum += texture2D(sTexture, vec2(vTextureCoord.x + 3.0*blurSize, vTextureCoord.y)) * 8.0 / weightSum;\n   sum += texture2D(sTexture, vec2(vTextureCoord.x + 4.0*blurSize, vTextureCoord.y)) * 1.0 / weightSum;\n\n   gl_FragColor = sum;\n}";
    }

    public t(float f4) {
        this.f55018a = 1.0f;
        this.f55018a = f4;
    }
}
