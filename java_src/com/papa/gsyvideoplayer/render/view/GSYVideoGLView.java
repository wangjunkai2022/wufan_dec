package com.papa.gsyvideoplayer.render.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.opengl.GLSurfaceView;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.View;
import android.view.ViewGroup;
import c2.e;
import c2.f;
import com.papa.gsyvideoplayer.render.effect.q;
import com.papa.gsyvideoplayer.utils.d;
import com.papa.gsyvideoplayer.utils.j;
import java.io.File;
@SuppressLint({"ViewConstructor"})
/* loaded from: classes4.dex */
public class GSYVideoGLView extends GLSurfaceView implements d2.a, com.papa.gsyvideoplayer.render.view.a, j.a {

    /* renamed from: j  reason: collision with root package name */
    private static final String f55071j = GSYVideoGLView.class.getName();

    /* renamed from: k  reason: collision with root package name */
    public static final int f55072k = 0;

    /* renamed from: l  reason: collision with root package name */
    public static final int f55073l = 1;

    /* renamed from: a  reason: collision with root package name */
    private com.papa.gsyvideoplayer.render.glrender.a f55074a;

    /* renamed from: b  reason: collision with root package name */
    private Context f55075b;

    /* renamed from: c  reason: collision with root package name */
    private c f55076c;

    /* renamed from: d  reason: collision with root package name */
    private j.a f55077d;

    /* renamed from: e  reason: collision with root package name */
    private j f55078e;

    /* renamed from: f  reason: collision with root package name */
    private d2.a f55079f;

    /* renamed from: g  reason: collision with root package name */
    private d2.c f55080g;

    /* renamed from: h  reason: collision with root package name */
    private float[] f55081h;

    /* renamed from: i  reason: collision with root package name */
    private int f55082i;

    /* loaded from: classes4.dex */
    class a implements e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ f f55083a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ File f55084b;

        a(f fVar, File file) {
            this.f55083a = fVar;
            this.f55084b = file;
        }

        @Override // c2.e
        public void a(Bitmap bitmap) {
            if (bitmap == null) {
                this.f55083a.a(false, this.f55084b);
                return;
            }
            d.e(bitmap, this.f55084b);
            this.f55083a.a(true, this.f55084b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class b implements d2.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f55086a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ViewGroup f55087b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f55088c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ d2.c f55089d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ j.a f55090e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ int f55091f;

        b(Context context, ViewGroup viewGroup, int i2, d2.c cVar, j.a aVar, int i4) {
            this.f55086a = context;
            this.f55087b = viewGroup;
            this.f55088c = i2;
            this.f55089d = cVar;
            this.f55090e = aVar;
            this.f55091f = i4;
        }

        @Override // d2.b
        public void a(com.papa.gsyvideoplayer.render.glrender.a aVar, String str, int i2, boolean z3) {
            if (z3) {
                GSYVideoGLView.h(this.f55086a, this.f55087b, this.f55088c, this.f55089d, this.f55090e, aVar.h(), aVar.i(), aVar, this.f55091f);
            }
        }
    }

    /* loaded from: classes4.dex */
    public interface c {
        String a(GLSurfaceView gLSurfaceView);
    }

    public GSYVideoGLView(Context context) {
        super(context);
        this.f55076c = new q();
        this.f55082i = 0;
        i(context);
    }

    public static GSYVideoGLView h(Context context, ViewGroup viewGroup, int i2, d2.c cVar, j.a aVar, c cVar2, float[] fArr, com.papa.gsyvideoplayer.render.glrender.a aVar2, int i4) {
        if (viewGroup.getChildCount() > 0) {
            viewGroup.removeAllViews();
        }
        GSYVideoGLView gSYVideoGLView = new GSYVideoGLView(context);
        if (aVar2 != null) {
            gSYVideoGLView.setCustomRenderer(aVar2);
        }
        gSYVideoGLView.setEffect(cVar2);
        gSYVideoGLView.setVideoParamsListener(aVar);
        gSYVideoGLView.setRenderMode(i4);
        gSYVideoGLView.setIGSYSurfaceListener(cVar);
        gSYVideoGLView.setRotation(i2);
        gSYVideoGLView.j();
        gSYVideoGLView.setGSYVideoGLRenderErrorListener(new b(context, viewGroup, i2, cVar, aVar, i4));
        if (fArr != null && fArr.length == 16) {
            gSYVideoGLView.setMVPMatrix(fArr);
        }
        com.papa.gsyvideoplayer.render.a.a(viewGroup, gSYVideoGLView);
        return gSYVideoGLView;
    }

    private void i(Context context) {
        this.f55075b = context;
        setEGLContextClientVersion(2);
        this.f55074a = new com.papa.gsyvideoplayer.render.glrender.b();
        this.f55078e = new j(this, this);
        this.f55074a.w(this);
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public void a(File file, boolean z3, f fVar) {
        setGSYVideoShotListener(new a(fVar, file), z3);
        m();
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public Bitmap b() {
        com.papa.gsyvideoplayer.utils.c.h(getClass().getSimpleName() + " not support initCover now");
        return null;
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public void c() {
        requestLayout();
        onResume();
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public Bitmap d() {
        com.papa.gsyvideoplayer.utils.c.h(getClass().getSimpleName() + " not support initCoverHigh now");
        return null;
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public void e() {
        requestLayout();
        l();
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public void f(e eVar, boolean z3) {
        if (eVar != null) {
            setGSYVideoShotListener(eVar, z3);
            m();
        }
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public void g() {
        requestLayout();
        onPause();
    }

    @Override // com.papa.gsyvideoplayer.utils.j.a
    public int getCurrentVideoHeight() {
        j.a aVar = this.f55077d;
        if (aVar != null) {
            return aVar.getCurrentVideoHeight();
        }
        return 0;
    }

    @Override // com.papa.gsyvideoplayer.utils.j.a
    public int getCurrentVideoWidth() {
        j.a aVar = this.f55077d;
        if (aVar != null) {
            return aVar.getCurrentVideoWidth();
        }
        return 0;
    }

    public c getEffect() {
        return this.f55076c;
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public d2.c getIGSYSurfaceListener() {
        return this.f55080g;
    }

    public float[] getMVPMatrix() {
        return this.f55081h;
    }

    public int getMode() {
        return this.f55082i;
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public View getRenderView() {
        return this;
    }

    public com.papa.gsyvideoplayer.render.glrender.a getRenderer() {
        return this.f55074a;
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
        j.a aVar = this.f55077d;
        if (aVar != null) {
            return aVar.getVideoSarDen();
        }
        return 0;
    }

    @Override // com.papa.gsyvideoplayer.utils.j.a
    public int getVideoSarNum() {
        j.a aVar = this.f55077d;
        if (aVar != null) {
            return aVar.getVideoSarNum();
        }
        return 0;
    }

    public void j() {
        setRenderer(this.f55074a);
    }

    protected void k() {
        j.a aVar = this.f55077d;
        if (aVar == null || this.f55082i != 1) {
            return;
        }
        try {
            int currentVideoWidth = aVar.getCurrentVideoWidth();
            int currentVideoHeight = this.f55077d.getCurrentVideoHeight();
            com.papa.gsyvideoplayer.render.glrender.a aVar2 = this.f55074a;
            if (aVar2 != null) {
                aVar2.q(this.f55078e.c());
                this.f55074a.p(this.f55078e.b());
                this.f55074a.o(currentVideoWidth);
                this.f55074a.n(currentVideoHeight);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void l() {
        com.papa.gsyvideoplayer.render.glrender.a aVar = this.f55074a;
        if (aVar != null) {
            aVar.l();
        }
    }

    public void m() {
        this.f55074a.x();
    }

    @Override // android.view.SurfaceView, android.view.View
    protected void onMeasure(int i2, int i4) {
        if (this.f55082i == 1) {
            super.onMeasure(i2, i4);
            this.f55078e.e(i2, i4, (int) getRotation());
            k();
            return;
        }
        this.f55078e.e(i2, i4, (int) getRotation());
        setMeasuredDimension(this.f55078e.c(), this.f55078e.b());
    }

    @Override // android.opengl.GLSurfaceView
    public void onResume() {
        super.onResume();
        com.papa.gsyvideoplayer.render.glrender.a aVar = this.f55074a;
        if (aVar != null) {
            aVar.j();
        }
    }

    @Override // d2.a
    public void onSurfaceAvailable(Surface surface) {
        d2.c cVar = this.f55080g;
        if (cVar != null) {
            cVar.onSurfaceAvailable(surface);
        }
    }

    public void setCustomRenderer(com.papa.gsyvideoplayer.render.glrender.a aVar) {
        this.f55074a = aVar;
        aVar.w(this);
        k();
    }

    public void setEffect(c cVar) {
        if (cVar != null) {
            this.f55076c = cVar;
            this.f55074a.r(cVar);
        }
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public void setGLEffectFilter(c cVar) {
        setEffect(cVar);
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public void setGLMVPMatrix(float[] fArr) {
        setMVPMatrix(fArr);
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public void setGLRenderer(com.papa.gsyvideoplayer.render.glrender.a aVar) {
        setCustomRenderer(aVar);
    }

    public void setGSYVideoGLRenderErrorListener(d2.b bVar) {
        this.f55074a.t(bVar);
    }

    public void setGSYVideoShotListener(e eVar, boolean z3) {
        this.f55074a.u(eVar, z3);
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public void setIGSYSurfaceListener(d2.c cVar) {
        setOnGSYSurfaceListener(this);
        this.f55080g = cVar;
    }

    public void setMVPMatrix(float[] fArr) {
        if (fArr != null) {
            this.f55081h = fArr;
            this.f55074a.v(fArr);
        }
    }

    public void setMode(int i2) {
        this.f55082i = i2;
    }

    public void setOnGSYSurfaceListener(d2.a aVar) {
        this.f55079f = aVar;
        this.f55074a.s(aVar);
    }

    @Override // android.opengl.GLSurfaceView, com.papa.gsyvideoplayer.render.view.a
    public void setRenderMode(int i2) {
        setMode(i2);
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public void setRenderTransform(Matrix matrix) {
        com.papa.gsyvideoplayer.utils.c.h(getClass().getSimpleName() + " not support setRenderTransform now");
    }

    @Override // com.papa.gsyvideoplayer.render.view.a
    public void setVideoParamsListener(j.a aVar) {
        this.f55077d = aVar;
    }

    public GSYVideoGLView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f55076c = new q();
        this.f55082i = 0;
        i(context);
    }
}
