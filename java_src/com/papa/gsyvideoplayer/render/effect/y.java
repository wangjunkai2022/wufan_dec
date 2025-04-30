package com.papa.gsyvideoplayer.render.effect;

import android.graphics.Color;
import android.opengl.GLSurfaceView;
import com.papa.gsyvideoplayer.render.view.GSYVideoGLView;
/* compiled from: TintEffect.java */
/* loaded from: classes4.dex */
public class y implements GSYVideoGLView.c {

    /* renamed from: a  reason: collision with root package name */
    private int f55024a;

    public y(int i2) {
        this.f55024a = -16776961;
        this.f55024a = i2;
    }

    @Override // com.papa.gsyvideoplayer.render.view.GSYVideoGLView.c
    public String a(GLSurfaceView gLSurfaceView) {
        float[] fArr = {0.21f, 0.71f, 0.07f};
        String[] strArr = {"color_ratio[0] = " + fArr[0] + ";\n", "color_ratio[1] = " + fArr[1] + ";\n", "color_ratio[2] = " + fArr[2] + ";\n"};
        float[] fArr2 = {((float) Color.red(this.f55024a)) / 255.0f, ((float) Color.green(this.f55024a)) / 255.0f, ((float) Color.blue(this.f55024a)) / 255.0f};
        String[] strArr2 = {"tint[0] = " + fArr2[0] + ";\n", "tint[1] = " + fArr2[1] + ";\n", "tint[2] = " + fArr2[2] + ";\n"};
        return "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\n vec3 tint;\n vec3 color_ratio;\nvarying vec2 vTextureCoord;\nvoid main() {\n" + strArr[0] + strArr[1] + strArr[2] + strArr2[0] + strArr2[1] + strArr2[2] + "  vec4 color = texture2D(sTexture, vTextureCoord);\n  float avg_color = dot(color_ratio, color.rgb);\n  vec3 new_color = min(0.8 * avg_color + 0.2 * tint, 1.0);\n  gl_FragColor = vec4(new_color.rgb, color.a);\n}\n";
    }
}
