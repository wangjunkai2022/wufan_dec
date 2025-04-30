package com.papa.gsyvideoplayer.render.view;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.view.View;
import c2.e;
import c2.f;
import com.papa.gsyvideoplayer.render.view.GSYVideoGLView;
import com.papa.gsyvideoplayer.utils.j;
import d2.c;
import java.io.File;
/* compiled from: IGSYRenderView.java */
/* loaded from: classes4.dex */
public interface a {
    void a(File file, boolean z3, f fVar);

    Bitmap b();

    void c();

    Bitmap d();

    void e();

    void f(e eVar, boolean z3);

    void g();

    c getIGSYSurfaceListener();

    View getRenderView();

    int getSizeH();

    int getSizeW();

    void setGLEffectFilter(GSYVideoGLView.c cVar);

    void setGLMVPMatrix(float[] fArr);

    void setGLRenderer(com.papa.gsyvideoplayer.render.glrender.a aVar);

    void setIGSYSurfaceListener(c cVar);

    void setRenderMode(int i2);

    void setRenderTransform(Matrix matrix);

    void setVideoParamsListener(j.a aVar);
}
