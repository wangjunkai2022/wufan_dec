package com.papa.gsyvideoplayer.render.effect;

import android.graphics.Color;
import android.opengl.GLSurfaceView;
import androidx.core.view.InputDeviceCompat;
import com.papa.gsyvideoplayer.render.view.GSYVideoGLView;
/* compiled from: DuotoneEffect.java */
/* loaded from: classes4.dex */
public class h implements GSYVideoGLView.c {

    /* renamed from: a  reason: collision with root package name */
    private int f55000a;

    /* renamed from: b  reason: collision with root package name */
    private int f55001b;

    public h(int i2, int i4) {
        this.f55000a = -65281;
        this.f55001b = InputDeviceCompat.SOURCE_ANY;
        this.f55000a = i2;
        this.f55001b = i4;
    }

    @Override // com.papa.gsyvideoplayer.render.view.GSYVideoGLView.c
    public String a(GLSurfaceView gLSurfaceView) {
        float[] fArr = {Color.red(this.f55000a) / 255.0f, Color.green(this.f55000a) / 255.0f, Color.blue(this.f55000a) / 255.0f};
        float[] fArr2 = {Color.red(this.f55001b) / 255.0f, Color.green(this.f55001b) / 255.0f, Color.blue(this.f55001b) / 255.0f};
        String[] strArr = {"first[0] = " + fArr[0] + ";\n", "first[1] = " + fArr[1] + ";\n", "first[2] = " + fArr[2] + ";\n"};
        String[] strArr2 = {"second[0] = " + fArr2[0] + ";\n", "second[1] = " + fArr2[1] + ";\n", "second[2] = " + fArr2[2] + ";\n"};
        return "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\n vec3 first;\n vec3 second;\nvarying vec2 vTextureCoord;\nvoid main() {\n" + strArr[0] + strArr[1] + strArr[2] + strArr2[0] + strArr2[1] + strArr2[2] + "  vec4 color = texture2D(sTexture, vTextureCoord);\n  float energy = (color.r + color.g + color.b) * 0.3333;\n  vec3 new_color = (1.0 - energy) * first + energy * second;\n  gl_FragColor = vec4(new_color.rgb, color.a);\n}\n";
    }
}
