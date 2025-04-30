package com.papa.gsyvideoplayer.render.effect;

import android.opengl.GLSurfaceView;
import com.papa.gsyvideoplayer.render.view.GSYVideoGLView;
/* compiled from: OverlayEffect.java */
/* loaded from: classes4.dex */
public class r implements GSYVideoGLView.c {

    /* renamed from: a  reason: collision with root package name */
    float f55017a;

    public r() {
        this.f55017a = 0.0015f;
    }

    @Override // com.papa.gsyvideoplayer.render.view.GSYVideoGLView.c
    public String a(GLSurfaceView gLSurfaceView) {
        return "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\n             uniform samplerExternalOES sTexture; \n             varying vec2 vTextureCoord; \n  \n             void main() \n             { \n              vec4 sample0,sample1,sample2,sample3; \n              float fstep=" + this.f55017a + "; \n              sample0=texture2D(sTexture,vec2(vTextureCoord.x-fstep,vTextureCoord.y-fstep)); \n              sample1=texture2D(sTexture,vec2(vTextureCoord.x+fstep,vTextureCoord.y-fstep)); \n              sample2=texture2D(sTexture,vec2(vTextureCoord.x+fstep,vTextureCoord.y+fstep)); \n              sample3=texture2D(sTexture,vec2(vTextureCoord.x-fstep,vTextureCoord.y+fstep)); \n              vec4 color=(sample0+sample1+sample2+sample3) / 4.0; \n              gl_FragColor=color; \n             } ";
    }

    public r(float f4) {
        this.f55017a = 0.0015f;
        this.f55017a = f4;
    }
}
