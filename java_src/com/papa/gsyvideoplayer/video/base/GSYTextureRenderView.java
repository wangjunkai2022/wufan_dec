package com.papa.gsyvideoplayer.video.base;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.papa.gsyvideoplayer.render.effect.q;
import com.papa.gsyvideoplayer.render.view.GSYVideoGLView;
import com.papa.gsyvideoplayer.utils.f;
import com.papa.gsyvideoplayer.utils.j;
import d2.c;
/* loaded from: classes4.dex */
public abstract class GSYTextureRenderView extends FrameLayout implements c, j.a {
    protected GSYVideoGLView.c mEffectFilter;
    protected Bitmap mFullPauseBitmap;
    protected float[] mMatrixGL;
    protected int mMode;
    protected com.papa.gsyvideoplayer.render.glrender.a mRenderer;
    protected int mRotate;
    protected Surface mSurface;
    protected com.papa.gsyvideoplayer.render.a mTextureView;
    protected ViewGroup mTextureViewContainer;

    public GSYTextureRenderView(@NonNull Context context) {
        super(context);
        this.mEffectFilter = new q();
        this.mMatrixGL = null;
        this.mMode = 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void addTextureView() {
        com.papa.gsyvideoplayer.render.a aVar = new com.papa.gsyvideoplayer.render.a();
        this.mTextureView = aVar;
        aVar.b(getContext(), this.mTextureViewContainer, this.mRotate, this, this, this.mEffectFilter, this.mMatrixGL, this.mRenderer, this.mMode);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void changeTextureViewShowType() {
        if (this.mTextureView != null) {
            int textureParams = getTextureParams();
            ViewGroup.LayoutParams d4 = this.mTextureView.d();
            d4.width = textureParams;
            d4.height = textureParams;
            this.mTextureView.u(d4);
        }
    }

    public GSYVideoGLView.c getEffectFilter() {
        return this.mEffectFilter;
    }

    public com.papa.gsyvideoplayer.render.a getRenderProxy() {
        return this.mTextureView;
    }

    protected int getTextureParams() {
        return f.g() != 0 ? -2 : -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void initCover() {
        com.papa.gsyvideoplayer.render.a aVar = this.mTextureView;
        if (aVar != null) {
            this.mFullPauseBitmap = aVar.i();
        }
    }

    public void onSurfaceAvailable(Surface surface) {
        com.papa.gsyvideoplayer.render.a aVar = this.mTextureView;
        pauseLogic(surface, aVar != null && (aVar.f() instanceof TextureView));
    }

    @Override // d2.c
    public boolean onSurfaceDestroyed(Surface surface) {
        setDisplay(null);
        releaseSurface(surface);
        return true;
    }

    @Override // d2.c
    public void onSurfaceSizeChanged(Surface surface, int i2, int i4) {
    }

    public void onSurfaceUpdated(Surface surface) {
        releasePauseCover();
    }

    protected void pauseLogic(Surface surface, boolean z3) {
        this.mSurface = surface;
        if (z3) {
            showPauseCover();
        }
        setDisplay(this.mSurface);
    }

    protected abstract void releasePauseCover();

    protected abstract void releaseSurface(Surface surface);

    public void setCustomGLRenderer(com.papa.gsyvideoplayer.render.glrender.a aVar) {
        this.mRenderer = aVar;
        com.papa.gsyvideoplayer.render.a aVar2 = this.mTextureView;
        if (aVar2 != null) {
            aVar2.t(aVar);
        }
    }

    protected abstract void setDisplay(Surface surface);

    public void setEffectFilter(GSYVideoGLView.c cVar) {
        this.mEffectFilter = cVar;
        com.papa.gsyvideoplayer.render.a aVar = this.mTextureView;
        if (aVar != null) {
            aVar.r(cVar);
        }
    }

    public void setGLRenderMode(int i2) {
        this.mMode = i2;
        com.papa.gsyvideoplayer.render.a aVar = this.mTextureView;
        if (aVar != null) {
            aVar.s(i2);
        }
    }

    public void setMatrixGL(float[] fArr) {
        this.mMatrixGL = fArr;
        com.papa.gsyvideoplayer.render.a aVar = this.mTextureView;
        if (aVar != null) {
            aVar.v(fArr);
        }
    }

    protected abstract void setSmallVideoTextureView();

    /* JADX INFO: Access modifiers changed from: protected */
    public void setSmallVideoTextureView(View.OnTouchListener onTouchListener) {
        this.mTextureViewContainer.setOnTouchListener(onTouchListener);
        this.mTextureViewContainer.setOnClickListener(null);
        setSmallVideoTextureView();
    }

    protected abstract void showPauseCover();

    public GSYTextureRenderView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mEffectFilter = new q();
        this.mMatrixGL = null;
        this.mMode = 0;
    }

    public GSYTextureRenderView(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i2) {
        super(context, attributeSet, i2);
        this.mEffectFilter = new q();
        this.mMatrixGL = null;
        this.mMode = 0;
    }
}
