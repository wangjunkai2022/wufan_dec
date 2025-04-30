package com.papa.gsyvideoplayer.render.effect;

import android.opengl.GLSurfaceView;
import com.papa.gsyvideoplayer.render.view.GSYVideoGLView;
/* compiled from: BarrelBlurEffect.java */
/* loaded from: classes4.dex */
public class b implements GSYVideoGLView.c {

    /* renamed from: a  reason: collision with root package name */
    private int f54994a;

    public b() {
        this.f54994a = 5;
    }

    @Override // com.papa.gsyvideoplayer.render.view.GSYVideoGLView.c
    public String a(GLSurfaceView gLSurfaceView) {
        return "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;  \n  \nvarying vec2 vTextureCoord;\nconst float barrelPower = 0.5;   \nconst int num_iter = " + this.f54994a + ";  \nconst float reci_num_iter_f = 1.0 / float(num_iter); \n  \nvec2 barrelDistortion(vec2 coord, float amt) \n{  \n    vec2 cc = coord - 0.5;  \n    float dist = dot(cc, cc);  \n    return coord + cc * dist * amt;   \n}  \n  \nfloat sat( float t )  \n{  \n    return clamp( t, 0.0, 1.0 );  \n}  \n  \nfloat linterp( float t ) {  \n    return sat( 1.0 - abs( 2.0*t - 1.0 ) );  \n}  \n  \nfloat remap( float t, float a, float b )   \n{  \n    return sat( (t - a) / (b - a) );  \n}  \n  \nvec3 spectrum_offset( float t )   \n{  \n    vec3 ret;  \n    float lo = step(t,0.5);  \n    float hi = 1.0-lo;  \n    float w = linterp( remap( t, 1.0/6.0, 5.0/6.0 ) );  \n    ret = vec3(lo,1.0,hi) * vec3(1.0-w, w, 1.0-w);  \n  \n    return pow( ret, vec3(1.0/2.2) );  \n}  \n  \nvoid main()  \n{     \n    vec2 uv=(gl_FragCoord.xy/vTextureCoord.xy);  \n  \n    vec3 sumcol = vec3(0.0);  \n    vec3 sumw = vec3(0.0);    \n    for ( int i=0; i<num_iter;++i )  \n    {  \n        float t = float(i) * reci_num_iter_f;  \n        vec3 w = spectrum_offset( t );\n        sumw += w;\n        sumcol += w * texture2D( sTexture, barrelDistortion(vTextureCoord, barrelPower*t ) ).rgb;   \n    }\n    gl_FragColor = vec4(sumcol.rgb / sumw, 1.0);  \n}  ";
    }

    public void b(int i2) {
        this.f54994a = i2;
    }

    public b(int i2) {
        this.f54994a = 5;
        this.f54994a = i2;
    }
}
