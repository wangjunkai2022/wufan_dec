package com.papa.gsyvideoplayer.render.effect;

import android.opengl.GLSurfaceView;
import com.papa.gsyvideoplayer.render.view.GSYVideoGLView;
/* compiled from: SharpnessEffect.java */
/* loaded from: classes4.dex */
public class w implements GSYVideoGLView.c {

    /* renamed from: a  reason: collision with root package name */
    private int f55020a;

    /* renamed from: b  reason: collision with root package name */
    private int f55021b;

    /* renamed from: c  reason: collision with root package name */
    private float f55022c;

    public w(float f4) {
        this.f55022c = 0.0f;
        f4 = f4 < 0.0f ? 0.0f : f4;
        this.f55022c = f4 > 1.0f ? 1.0f : f4;
    }

    private void b(GLSurfaceView gLSurfaceView) {
        this.f55020a = gLSurfaceView.getWidth();
        this.f55021b = gLSurfaceView.getHeight();
    }

    @Override // com.papa.gsyvideoplayer.render.view.GSYVideoGLView.c
    public String a(GLSurfaceView gLSurfaceView) {
        b(gLSurfaceView);
        return "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\n float scale;\n float stepsizeX;\n float stepsizeY;\nvarying vec2 vTextureCoord;\nvoid main() {\n" + ("stepsizeX = " + (1.0f / this.f55020a) + ";\n") + ("stepsizeY = " + (1.0f / this.f55021b) + ";\n") + ("scale = " + this.f55022c + ";\n") + "  vec3 nbr_color = vec3(0.0, 0.0, 0.0);\n  vec2 coord;\n  vec4 color = texture2D(sTexture, vTextureCoord);\n  coord.x = vTextureCoord.x - 0.5 * stepsizeX;\n  coord.y = vTextureCoord.y - stepsizeY;\n  nbr_color += texture2D(sTexture, coord).rgb - color.rgb;\n  coord.x = vTextureCoord.x - stepsizeX;\n  coord.y = vTextureCoord.y + 0.5 * stepsizeY;\n  nbr_color += texture2D(sTexture, coord).rgb - color.rgb;\n  coord.x = vTextureCoord.x + stepsizeX;\n  coord.y = vTextureCoord.y - 0.5 * stepsizeY;\n  nbr_color += texture2D(sTexture, coord).rgb - color.rgb;\n  coord.x = vTextureCoord.x + stepsizeX;\n  coord.y = vTextureCoord.y + 0.5 * stepsizeY;\n  nbr_color += texture2D(sTexture, coord).rgb - color.rgb;\n  gl_FragColor = vec4(color.rgb - 2.0 * scale * nbr_color, color.a);\n}\n";
    }
}
