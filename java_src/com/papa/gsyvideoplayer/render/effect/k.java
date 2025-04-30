package com.papa.gsyvideoplayer.render.effect;

import android.opengl.GLSurfaceView;
import com.papa.gsyvideoplayer.render.view.GSYVideoGLView;
/* compiled from: GaussianBlurEffect.java */
/* loaded from: classes4.dex */
public class k implements GSYVideoGLView.c {

    /* renamed from: c  reason: collision with root package name */
    public static final int f55004c = 1;

    /* renamed from: d  reason: collision with root package name */
    public static final int f55005d = 2;

    /* renamed from: e  reason: collision with root package name */
    public static final int f55006e = 3;

    /* renamed from: a  reason: collision with root package name */
    private float f55007a;

    /* renamed from: b  reason: collision with root package name */
    private String f55008b;

    public k(float f4) {
        this.f55007a = 1.0f;
        this.f55008b = "vec2(1.0,0.0)";
        this.f55007a = f4;
    }

    @Override // com.papa.gsyvideoplayer.render.view.GSYVideoGLView.c
    public String a(GLSurfaceView gLSurfaceView) {
        return "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nconst float resolution=1024.0;\nconst float radius = " + this.f55007a + ";\nvec2 dir =" + this.f55008b + "; //若为x模糊，可传入（1.0,0.0）  y模糊  （0.0,1.0）\n\nvoid main() {\n    //this will be our RGBA sum\n    vec4 sum = vec4(0.0);\n    \n    //our original texcoord for this fragment\n    vec2 tc = vTextureCoord;\n    \n    //the amount to blur, i.e. how far off center to sample from \n    //1.0 -> blur by one pixel\n    //2.0 -> blur by two pixels, etc.\n    float blur = radius/resolution; \n    \n    //the direction of our blur\n    //(1.0, 0.0) -> x-axis blur\n    //(0.0, 1.0) -> y-axis blur\n    float hstep = dir.x;\n    float vstep = dir.y;\n    \n    \n    //apply blurring, using a 9-tap filter with predefined gaussian weights\n    \n    sum += texture2D(sTexture, vec2(tc.x - 4.0*blur*hstep, tc.y - 4.0*blur*vstep)) * 0.0162162162;\n    sum += texture2D(sTexture, vec2(tc.x - 3.0*blur*hstep, tc.y - 3.0*blur*vstep)) * 0.0540540541;\n    sum += texture2D(sTexture, vec2(tc.x - 2.0*blur*hstep, tc.y - 2.0*blur*vstep)) * 0.1216216216;\n    sum += texture2D(sTexture, vec2(tc.x - 1.0*blur*hstep, tc.y - 1.0*blur*vstep)) * 0.1945945946;\n    \n    sum += texture2D(sTexture, vec2(tc.x, tc.y)) * 0.2270270270;\n    \n    sum += texture2D(sTexture, vec2(tc.x + 1.0*blur*hstep, tc.y + 1.0*blur*vstep)) * 0.1945945946;\n    sum += texture2D(sTexture, vec2(tc.x + 2.0*blur*hstep, tc.y + 2.0*blur*vstep)) * 0.1216216216;\n    sum += texture2D(sTexture, vec2(tc.x + 3.0*blur*hstep, tc.y + 3.0*blur*vstep)) * 0.0540540541;\n    sum += texture2D(sTexture, vec2(tc.x + 4.0*blur*hstep, tc.y + 4.0*blur*vstep)) * 0.0162162162;\n\n    vec4 cc= texture2D(sTexture,vTextureCoord );\n\n    //discard alpha for our simple demo, multiply by vertex color and return\n    gl_FragColor =vec4(sum.rgb, cc.a);\n}";
    }

    public k(float f4, int i2) {
        this.f55007a = 1.0f;
        this.f55008b = "vec2(1.0,0.0)";
        this.f55007a = f4;
        if (i2 == 1) {
            this.f55008b = "vec2(1.0,0.0)";
        } else if (i2 == 2) {
            this.f55008b = "vec2(0.0,1.0)";
        } else if (i2 != 3) {
        } else {
            this.f55008b = "vec2(1.0,1.0)";
        }
    }
}
