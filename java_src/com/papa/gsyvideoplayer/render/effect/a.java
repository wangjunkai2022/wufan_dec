package com.papa.gsyvideoplayer.render.effect;

import android.opengl.GLSurfaceView;
import com.papa.gsyvideoplayer.render.view.GSYVideoGLView;
/* compiled from: AutoFixEffect.java */
/* loaded from: classes4.dex */
public class a implements GSYVideoGLView.c {

    /* renamed from: a  reason: collision with root package name */
    private float f54993a;

    public a(float f4) {
        f4 = f4 < 0.0f ? 0.0f : f4;
        this.f54993a = f4 > 1.0f ? 1.0f : f4;
    }

    @Override // com.papa.gsyvideoplayer.render.view.GSYVideoGLView.c
    public String a(GLSurfaceView gLSurfaceView) {
        return "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES tex_sampler_0;\nuniform samplerExternalOES tex_sampler_1;\nuniform samplerExternalOES tex_sampler_2;\n float scale;\n float shift_scale;\n float hist_offset;\n float hist_scale;\n float density_offset;\n float density_scale;\nvarying vec2 vTextureCoord;\nvoid main() {\n  shift_scale = 0.00390625;\n  hist_offset = 6.527415E-4;\n  hist_scale = 0.99869454;\n  density_offset = 4.8828125E-4;\n  density_scale = 0.99902344;\n  scale = " + this.f54993a + ";\n  const vec3 weights = vec3(0.33333, 0.33333, 0.33333);\n  vec4 color = texture2D(tex_sampler_0, vTextureCoord);\n  float energy = dot(color.rgb, weights);\n  float mask_value = energy - 0.5;\n  float alpha;\n  if (mask_value > 0.0) {\n    alpha = (pow(2.0 * mask_value, 1.5) - 1.0) * scale + 1.0;\n  } else { \n    alpha = (pow(2.0 * mask_value, 2.0) - 1.0) * scale + 1.0;\n  }\n  float index = energy * hist_scale + hist_offset;\n  vec4 temp = texture2D(tex_sampler_1, vec2(index, 0.5));\n  float value = temp.g + temp.r * shift_scale;\n  index = value * density_scale + density_offset;\n  temp = texture2D(tex_sampler_2, vec2(index, 0.5));\n  value = temp.g + temp.r * shift_scale;\n  float dst_energy = energy * alpha + value * (1.0 - alpha);\n  float max_energy = energy / max(color.r, max(color.g, color.b));\n  if (dst_energy > max_energy) {\n    dst_energy = max_energy;\n  }\n  if (energy == 0.0) {\n    gl_FragColor = color;\n  } else {\n    gl_FragColor = vec4(color.rgb * dst_energy / energy, color.a);\n  }\n}\n";
    }
}
