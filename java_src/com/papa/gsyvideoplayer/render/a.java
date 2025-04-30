package com.papa.gsyvideoplayer.render;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import c2.e;
import com.papa.gsyvideoplayer.render.view.GSYSurfaceView;
import com.papa.gsyvideoplayer.render.view.GSYTextureView;
import com.papa.gsyvideoplayer.render.view.GSYVideoGLView;
import com.papa.gsyvideoplayer.utils.f;
import com.papa.gsyvideoplayer.utils.j;
import d2.c;
import java.io.File;
/* compiled from: GSYRenderView.java */
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    protected com.papa.gsyvideoplayer.render.view.a f54992a;

    public static void a(ViewGroup viewGroup, View view) {
        int g4 = g();
        if (viewGroup instanceof RelativeLayout) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(g4, g4);
            layoutParams.addRule(13);
            viewGroup.addView(view, layoutParams);
        } else if (viewGroup instanceof FrameLayout) {
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(g4, g4);
            layoutParams2.gravity = 17;
            viewGroup.addView(view, layoutParams2);
        }
    }

    public static int g() {
        return f.g() != 0 ? -2 : -1;
    }

    public void b(Context context, ViewGroup viewGroup, int i2, c cVar, j.a aVar, GSYVideoGLView.c cVar2, float[] fArr, com.papa.gsyvideoplayer.render.glrender.a aVar2, int i4) {
        if (f.e() == 1) {
            this.f54992a = GSYSurfaceView.h(context, viewGroup, i2, cVar, aVar);
        } else if (f.e() == 2) {
            this.f54992a = GSYVideoGLView.h(context, viewGroup, i2, cVar, aVar, cVar2, fArr, aVar2, i4);
        } else {
            this.f54992a = GSYTextureView.h(context, viewGroup, i2, cVar, aVar);
        }
    }

    public int c() {
        com.papa.gsyvideoplayer.render.view.a aVar = this.f54992a;
        if (aVar != null) {
            return aVar.getRenderView().getHeight();
        }
        return 0;
    }

    public ViewGroup.LayoutParams d() {
        return this.f54992a.getRenderView().getLayoutParams();
    }

    public float e() {
        return this.f54992a.getRenderView().getRotation();
    }

    public View f() {
        com.papa.gsyvideoplayer.render.view.a aVar = this.f54992a;
        if (aVar != null) {
            return aVar.getRenderView();
        }
        return null;
    }

    public int h() {
        com.papa.gsyvideoplayer.render.view.a aVar = this.f54992a;
        if (aVar != null) {
            return aVar.getRenderView().getWidth();
        }
        return 0;
    }

    public Bitmap i() {
        com.papa.gsyvideoplayer.render.view.a aVar = this.f54992a;
        if (aVar != null) {
            return aVar.b();
        }
        return null;
    }

    public Bitmap j() {
        com.papa.gsyvideoplayer.render.view.a aVar = this.f54992a;
        if (aVar != null) {
            return aVar.d();
        }
        return null;
    }

    public void k() {
        com.papa.gsyvideoplayer.render.view.a aVar = this.f54992a;
        if (aVar != null) {
            aVar.getRenderView().invalidate();
        }
    }

    public void l() {
        com.papa.gsyvideoplayer.render.view.a aVar = this.f54992a;
        if (aVar != null) {
            aVar.g();
        }
    }

    public void m() {
        com.papa.gsyvideoplayer.render.view.a aVar = this.f54992a;
        if (aVar != null) {
            aVar.c();
        }
    }

    public void n() {
        com.papa.gsyvideoplayer.render.view.a aVar = this.f54992a;
        if (aVar != null) {
            aVar.e();
        }
    }

    public void o() {
        com.papa.gsyvideoplayer.render.view.a aVar = this.f54992a;
        if (aVar != null) {
            aVar.getRenderView().requestLayout();
        }
    }

    public void p(File file, c2.f fVar) {
        q(file, false, fVar);
    }

    public void q(File file, boolean z3, c2.f fVar) {
        com.papa.gsyvideoplayer.render.view.a aVar = this.f54992a;
        if (aVar != null) {
            aVar.a(file, z3, fVar);
        }
    }

    public void r(GSYVideoGLView.c cVar) {
        com.papa.gsyvideoplayer.render.view.a aVar = this.f54992a;
        if (aVar != null) {
            aVar.setGLEffectFilter(cVar);
        }
    }

    public void s(int i2) {
        com.papa.gsyvideoplayer.render.view.a aVar = this.f54992a;
        if (aVar != null) {
            aVar.setRenderMode(i2);
        }
    }

    public void t(com.papa.gsyvideoplayer.render.glrender.a aVar) {
        com.papa.gsyvideoplayer.render.view.a aVar2 = this.f54992a;
        if (aVar2 != null) {
            aVar2.setGLRenderer(aVar);
        }
    }

    public void u(ViewGroup.LayoutParams layoutParams) {
        com.papa.gsyvideoplayer.render.view.a aVar = this.f54992a;
        if (aVar != null) {
            aVar.getRenderView().setLayoutParams(layoutParams);
        }
    }

    public void v(float[] fArr) {
        com.papa.gsyvideoplayer.render.view.a aVar = this.f54992a;
        if (aVar != null) {
            aVar.setGLMVPMatrix(fArr);
        }
    }

    public void w(float f4) {
        com.papa.gsyvideoplayer.render.view.a aVar = this.f54992a;
        if (aVar != null) {
            aVar.getRenderView().setRotation(f4);
        }
    }

    public void x(Matrix matrix) {
        com.papa.gsyvideoplayer.render.view.a aVar = this.f54992a;
        if (aVar != null) {
            aVar.setRenderTransform(matrix);
        }
    }

    public void y(e eVar) {
        z(eVar, false);
    }

    public void z(e eVar, boolean z3) {
        com.papa.gsyvideoplayer.render.view.a aVar = this.f54992a;
        if (aVar != null) {
            aVar.f(eVar, z3);
        }
    }
}
