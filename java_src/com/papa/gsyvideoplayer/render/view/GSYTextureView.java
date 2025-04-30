package com.papa.gsyvideoplayer.render.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import c2.e;
import c2.f;
import com.papa.gsyvideoplayer.render.view.GSYVideoGLView;
import com.papa.gsyvideoplayer.utils.d;
import com.papa.gsyvideoplayer.utils.j;
import d2.c;
import java.io.File;
/* loaded from: classes4.dex */
public class GSYTextureView extends TextureView implements TextureView.SurfaceTextureListener, com.papa.gsyvideoplayer.render.view.a, j.a {

    /* renamed from: a  reason: collision with root package name */
    private c f55063a;

    /* renamed from: b  reason: collision with root package name */
    private j.a f55064b;

    /* renamed from: c  reason: collision with root package name */
    private j f55065c;

    /* renamed from: d  reason: collision with root package name */
    private SurfaceTexture f55066d;

    /* renamed from: e  reason: collision with root package name */
    private Surface f55067e;

    /* loaded from: classes4.dex */
    class a implements e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ f f55068a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ File f55069b;

        a(f fVar, File file) {
            this.f55068a = fVar;
            this.f55069b = file;
        }

        @Override // c2.e
        public void a(Bitmap bitmap) {
            if (bitmap == null) {
                this.f55068a.a(false, this.f55069b);
                return;
            }
            d.e(bitmap, this.f55069b);
            this.f55068a.a(true, this.f55069b);
        }
    }

    public GSYTextureView(Context context) {
        super(context);
        i();
    }

    public static GSYTextureView h(Context context, ViewGroup viewGroup, int i2, c cVar, j.a aVar) {
        if (viewGroup.getChildCount() > 0) {
            viewGroup.removeAllViews();
        }
        GSYTextureView gSYTextureView = new GSYTextureView(context);
        gSYTextureView.setIGSYSurfaceListener(cVar);
        gSYTextureView.setVideoParamsListener(aVar);
        gSYTextureView.setRotation(i2);
        com.papa.gsyvideoplayer.render.a.a(viewGroup, gSYTextureView);
        return gSYTextureView;
    }

    private void i() {
        this.f55065c = new j(this, this);
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public void a(File file, boolean z3, f fVar) {
        a aVar = new a(fVar, file);
        if (z3) {
            aVar.a(d());
        } else {
            aVar.a(b());
        }
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public Bitmap b() {
        Bitmap createBitmap;
        try {
            createBitmap = Bitmap.createBitmap(getSizeW(), getSizeH(), Bitmap.Config.RGB_565);
        } catch (Exception unused) {
            createBitmap = Bitmap.createBitmap(100, 100, Bitmap.Config.RGB_565);
        }
        return getBitmap(createBitmap);
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public void c() {
        com.papa.gsyvideoplayer.utils.c.h(getClass().getSimpleName() + " not support onRenderResume now");
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public Bitmap d() {
        return getBitmap(Bitmap.createBitmap(getSizeW(), getSizeH(), Bitmap.Config.ARGB_8888));
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public void e() {
        com.papa.gsyvideoplayer.utils.c.h(getClass().getSimpleName() + " not support releaseRenderAll now");
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public void f(e eVar, boolean z3) {
        if (z3) {
            eVar.a(d());
        } else {
            eVar.a(b());
        }
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public void g() {
        com.papa.gsyvideoplayer.utils.c.h(getClass().getSimpleName() + " not support onRenderPause now");
    }

    @Override // com.papa.gsyvideoplayer.utils.j.a
    public int getCurrentVideoHeight() {
        j.a aVar = this.f55064b;
        if (aVar != null) {
            return aVar.getCurrentVideoHeight();
        }
        return 0;
    }

    @Override // com.papa.gsyvideoplayer.utils.j.a
    public int getCurrentVideoWidth() {
        j.a aVar = this.f55064b;
        if (aVar != null) {
            return aVar.getCurrentVideoWidth();
        }
        return 0;
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public c getIGSYSurfaceListener() {
        return this.f55063a;
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public View getRenderView() {
        return this;
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public int getSizeH() {
        return getHeight();
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public int getSizeW() {
        return getWidth();
    }

    @Override // com.papa.gsyvideoplayer.utils.j.a
    public int getVideoSarDen() {
        j.a aVar = this.f55064b;
        if (aVar != null) {
            return aVar.getVideoSarDen();
        }
        return 0;
    }

    @Override // com.papa.gsyvideoplayer.utils.j.a
    public int getVideoSarNum() {
        j.a aVar = this.f55064b;
        if (aVar != null) {
            return aVar.getVideoSarNum();
        }
        return 0;
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i4) {
        this.f55065c.e(i2, i4, (int) getRotation());
        setMeasuredDimension(this.f55065c.c(), this.f55065c.b());
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i2, int i4) {
        if (com.papa.gsyvideoplayer.utils.f.i()) {
            SurfaceTexture surfaceTexture2 = this.f55066d;
            if (surfaceTexture2 == null) {
                this.f55066d = surfaceTexture;
                this.f55067e = new Surface(surfaceTexture);
            } else {
                setSurfaceTexture(surfaceTexture2);
            }
            c cVar = this.f55063a;
            if (cVar != null) {
                cVar.onSurfaceAvailable(this.f55067e);
                return;
            }
            return;
        }
        Surface surface = new Surface(surfaceTexture);
        this.f55067e = surface;
        c cVar2 = this.f55063a;
        if (cVar2 != null) {
            cVar2.onSurfaceAvailable(surface);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        c cVar = this.f55063a;
        if (cVar != null) {
            cVar.onSurfaceDestroyed(this.f55067e);
        }
        return !com.papa.gsyvideoplayer.utils.f.i() || this.f55066d == null;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i2, int i4) {
        c cVar = this.f55063a;
        if (cVar != null) {
            cVar.onSurfaceSizeChanged(this.f55067e, i2, i4);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        c cVar = this.f55063a;
        if (cVar != null) {
            cVar.onSurfaceUpdated(this.f55067e);
        }
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public void setGLEffectFilter(GSYVideoGLView.c cVar) {
        com.papa.gsyvideoplayer.utils.c.h(getClass().getSimpleName() + " not support setGLEffectFilter now");
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public void setGLMVPMatrix(float[] fArr) {
        com.papa.gsyvideoplayer.utils.c.h(getClass().getSimpleName() + " not support setGLMVPMatrix now");
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public void setGLRenderer(com.papa.gsyvideoplayer.render.glrender.a aVar) {
        com.papa.gsyvideoplayer.utils.c.h(getClass().getSimpleName() + " not support setGLRenderer now");
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public void setIGSYSurfaceListener(c cVar) {
        setSurfaceTextureListener(this);
        this.f55063a = cVar;
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public void setRenderMode(int i2) {
        com.papa.gsyvideoplayer.utils.c.h(getClass().getSimpleName() + " not support setRenderMode now");
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public void setRenderTransform(Matrix matrix) {
        setTransform(matrix);
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public void setVideoParamsListener(j.a aVar) {
        this.f55064b = aVar;
    }

    public GSYTextureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        i();
    }
}
