package com.papa.gsyvideoplayer.render.effect;

import android.opengl.GLSurfaceView;
import com.papa.gsyvideoplayer.render.view.GSYVideoGLView;
import java.util.Date;
import java.util.Random;
/* compiled from: DocumentaryEffect.java */
/* loaded from: classes4.dex */
public class g implements GSYVideoGLView.c {

    /* renamed from: a  reason: collision with root package name */
    private int f54997a;

    /* renamed from: b  reason: collision with root package name */
    private int f54998b;

    /* renamed from: c  reason: collision with root package name */
    private Random f54999c;

    private void b(GLSurfaceView gLSurfaceView) {
        this.f54997a = gLSurfaceView.getWidth();
        this.f54998b = gLSurfaceView.getHeight();
        this.f54999c = new Random(new Date().getTime());
    }

    @Override // com.papa.gsyvideoplayer.render.view.GSYVideoGLView.c
    public String a(GLSurfaceView gLSurfaceView) {
        b(gLSurfaceView);
        float[] fArr = new float[2];
        int i2 = this.f54997a;
        int i4 = this.f54998b;
        if (i2 > i4) {
            fArr[0] = 1.0f;
            fArr[1] = i4 / i2;
        } else {
            fArr[0] = i2 / i4;
            fArr[1] = 1.0f;
        }
        float[] fArr2 = {this.f54999c.nextFloat(), this.f54999c.nextFloat()};
        String[] strArr = {"scale[0] = " + fArr[0] + ";\n", "scale[1] = " + fArr[1] + ";\n"};
        String[] strArr2 = {"seed[0] = " + fArr2[0] + ";\n", "seed[1] = " + fArr2[1] + ";\n"};
        StringBuilder sb = new StringBuilder();
        sb.append("inv_max_dist = ");
        sb.append(1.0f / (((float) Math.sqrt((double) ((fArr[0] * fArr[0]) + (fArr[1] * fArr[1])))) * 0.5f));
        sb.append(";\n");
        String sb2 = sb.toString();
        return "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\n vec2 seed;\n float stepsize;\n float inv_max_dist;\n vec2 scale;\nvarying vec2 vTextureCoord;\nfloat rand(vec2 loc) {\n  float theta1 = dot(loc, vec2(0.9898, 0.233));\n  float theta2 = dot(loc, vec2(12.0, 78.0));\n  float value = cos(theta1) * sin(theta2) + sin(theta1) * cos(theta2);\n  float temp = mod(197.0 * value, 1.0) + value;\n  float part1 = mod(220.0 * temp, 1.0) + temp;\n  float part2 = value * 0.5453;\n  float part3 = cos(theta1 + theta2) * 0.43758;\n  return fract(part1 + part2 + part3);\n}\nvoid main() {\n" + strArr[0] + strArr[1] + strArr2[0] + strArr2[1] + sb2 + "stepsize = 0.003921569;\n  vec4 color = texture2D(sTexture, vTextureCoord);\n  float dither = rand(vTextureCoord + seed);\n  vec3 xform = clamp(2.0 * color.rgb, 0.0, 1.0);\n  vec3 temp = clamp(2.0 * (color.rgb + stepsize), 0.0, 1.0);\n  vec3 new_color = clamp(xform + (temp - xform) * (dither - 0.5), 0.0, 1.0);\n  float gray = dot(new_color, vec3(0.299, 0.587, 0.114));\n  new_color = vec3(gray, gray, gray);\n  vec2 coord = vTextureCoord - vec2(0.5, 0.5);\n  float dist = length(coord * scale);\n  float lumen = 0.85 / (1.0 + exp((dist * inv_max_dist - 0.83) * 20.0)) + 0.15;\n  gl_FragColor = vec4(new_color * lumen, color.a);\n}\n";
    }
}
