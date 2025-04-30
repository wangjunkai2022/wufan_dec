package com.papa.gsyvideoplayer.render.effect;

import android.opengl.GLSurfaceView;
import com.papa.gsyvideoplayer.render.view.GSYVideoGLView;
import java.util.Date;
import java.util.Random;
/* compiled from: LamoishEffect.java */
/* loaded from: classes4.dex */
public class p implements GSYVideoGLView.c {

    /* renamed from: a  reason: collision with root package name */
    private int f55014a;

    /* renamed from: b  reason: collision with root package name */
    private int f55015b;

    /* renamed from: c  reason: collision with root package name */
    private Random f55016c;

    private void b(GLSurfaceView gLSurfaceView) {
        this.f55014a = gLSurfaceView.getWidth();
        this.f55015b = gLSurfaceView.getHeight();
        this.f55016c = new Random(new Date().getTime());
    }

    @Override // com.papa.gsyvideoplayer.render.view.GSYVideoGLView.c
    public String a(GLSurfaceView gLSurfaceView) {
        b(gLSurfaceView);
        float[] fArr = new float[2];
        int i2 = this.f55014a;
        int i4 = this.f55015b;
        if (i2 > i4) {
            fArr[0] = 1.0f;
            fArr[1] = i4 / i2;
        } else {
            fArr[0] = i2 / i4;
            fArr[1] = 1.0f;
        }
        float[] fArr2 = {this.f55016c.nextFloat(), this.f55016c.nextFloat()};
        String[] strArr = {"scale[0] = " + fArr[0] + ";\n", "scale[1] = " + fArr[1] + ";\n"};
        String[] strArr2 = {"seed[0] = " + fArr2[0] + ";\n", "seed[1] = " + fArr2[1] + ";\n"};
        return "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\n vec2 seed;\n float stepsizeX;\n float stepsizeY;\n float stepsize;\n vec2 scale;\n float inv_max_dist;\nvarying vec2 vTextureCoord;\nfloat rand(vec2 loc) {\n  float theta1 = dot(loc, vec2(0.9898, 0.233));\n  float theta2 = dot(loc, vec2(12.0, 78.0));\n  float value = cos(theta1) * sin(theta2) + sin(theta1) * cos(theta2);\n  float temp = mod(197.0 * value, 1.0) + value;\n  float part1 = mod(220.0 * temp, 1.0) + temp;\n  float part2 = value * 0.5453;\n  float part3 = cos(theta1 + theta2) * 0.43758;\n  return fract(part1 + part2 + part3);\n}\nvoid main() {\n" + strArr[0] + strArr[1] + strArr2[0] + strArr2[1] + ("inv_max_dist = " + (1.0f / (((float) Math.sqrt((fArr[0] * fArr[0]) + (fArr[1] * fArr[1]))) * 0.5f)) + ";\n") + "stepsize = 0.003921569;\n" + ("stepsizeX = " + (1.0f / ((float) this.f55014a)) + ";\n") + ("stepsizeY = " + (1.0f / this.f55015b) + ";\n") + "  vec3 nbr_color = vec3(0.0, 0.0, 0.0);\n  vec2 coord;\n  vec4 color = texture2D(sTexture, vTextureCoord);\n  coord.x = vTextureCoord.x - 0.5 * stepsizeX;\n  coord.y = vTextureCoord.y - stepsizeY;\n  nbr_color += texture2D(sTexture, coord).rgb - color.rgb;\n  coord.x = vTextureCoord.x - stepsizeX;\n  coord.y = vTextureCoord.y + 0.5 * stepsizeY;\n  nbr_color += texture2D(sTexture, coord).rgb - color.rgb;\n  coord.x = vTextureCoord.x + stepsizeX;\n  coord.y = vTextureCoord.y - 0.5 * stepsizeY;\n  nbr_color += texture2D(sTexture, coord).rgb - color.rgb;\n  coord.x = vTextureCoord.x + stepsizeX;\n  coord.y = vTextureCoord.y + 0.5 * stepsizeY;\n  nbr_color += texture2D(sTexture, coord).rgb - color.rgb;\n  vec3 s_color = vec3(color.rgb + 0.3 * nbr_color);\n  vec3 c_color = vec3(0.0, 0.0, 0.0);\n  float value;\n  if (s_color.r < 0.5) {\n    value = s_color.r;\n  } else {\n    value = 1.0 - s_color.r;\n  }\n  float red = 4.0 * value * value * value;\n  if (s_color.r < 0.5) {\n    c_color.r = red;\n  } else {\n    c_color.r = 1.0 - red;\n  }\n  if (s_color.g < 0.5) {\n    value = s_color.g;\n  } else {\n    value = 1.0 - s_color.g;\n  }\n  float green = 2.0 * value * value;\n  if (s_color.g < 0.5) {\n    c_color.g = green;\n  } else {\n    c_color.g = 1.0 - green;\n  }\n  c_color.b = s_color.b * 0.5 + 0.25;\n  float dither = rand(vTextureCoord + seed);\n  vec3 xform = clamp((c_color.rgb - 0.15) * 1.53846, 0.0, 1.0);\n  vec3 temp = clamp((color.rgb + stepsize - 0.15) * 1.53846, 0.0, 1.0);\n  vec3 bw_color = clamp(xform + (temp - xform) * (dither - 0.5), 0.0, 1.0);\n  coord = vTextureCoord - vec2(0.5, 0.5);\n  float dist = length(coord * scale);\n  float lumen = 0.85 / (1.0 + exp((dist * inv_max_dist - 0.73) * 20.0)) + 0.15;\n  gl_FragColor = vec4(bw_color * lumen, color.a);\n}\n";
    }
}
