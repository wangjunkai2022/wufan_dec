package com.papa.gsyvideoplayer.render.effect;

import android.opengl.GLSurfaceView;
import com.papa.gsyvideoplayer.render.view.GSYVideoGLView;
/* compiled from: SaturationEffect.java */
/* loaded from: classes4.dex */
public class u implements GSYVideoGLView.c {

    /* renamed from: a  reason: collision with root package name */
    private float f55019a;

    public u(float f4) {
        this.f55019a = 0.0f;
        this.f55019a = f4;
    }

    @Override // com.papa.gsyvideoplayer.render.view.GSYVideoGLView.c
    public String a(GLSurfaceView gLSurfaceView) {
        float[] fArr = {0.25f, 0.625f, 0.125f};
        float[] fArr2 = new float[3];
        String[] strArr = new String[3];
        String str = "";
        String[] strArr2 = {"", "", ""};
        float f4 = this.f55019a;
        if (f4 > 0.0f) {
            fArr2[0] = (0.9f * f4) + 1.0f;
            fArr2[1] = (2.1f * f4) + 1.0f;
            fArr2[2] = (f4 * 2.7f) + 1.0f;
            strArr2[0] = "exponents[0] = " + fArr2[0] + ";\n";
            strArr2[1] = "exponents[1] = " + fArr2[1] + ";\n";
            strArr2[2] = "exponents[2] = " + fArr2[2] + ";\n";
        } else {
            str = "scale = " + (this.f55019a + 1.0f) + ";\n";
        }
        strArr[0] = "weights[0] = " + fArr[0] + ";\n";
        strArr[1] = "weights[1] = " + fArr[1] + ";\n";
        strArr[2] = "weights[2] = " + fArr[2] + ";\n";
        return "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\n float scale;\n float shift;\n vec3 weights;\n vec3 exponents;\nvarying vec2 vTextureCoord;\nvoid main() {\n" + strArr[0] + strArr[1] + strArr[2] + ("shift = 0.003921569;\n") + str + "  vec4 oldcolor = texture2D(sTexture, vTextureCoord);\n  float kv = dot(oldcolor.rgb, weights) + shift;\n  vec3 new_color = scale * oldcolor.rgb + (1.0 - scale) * kv;\n  gl_FragColor= vec4(new_color, oldcolor.a);\n" + strArr[0] + strArr[1] + strArr[2] + strArr2[0] + strArr2[1] + strArr2[2] + "  vec4 color = texture2D(sTexture, vTextureCoord);\n  float de = dot(color.rgb, weights);\n  float inv_de = 1.0 / de;\n  vec3 verynew_color = de * pow(color.rgb * inv_de, exponents);\n  float max_color = max(max(max(verynew_color.r, verynew_color.g), verynew_color.b), 1.0);\n  gl_FragColor = gl_FragColor+vec4(verynew_color / max_color, color.a);\n}\n";
    }
}
