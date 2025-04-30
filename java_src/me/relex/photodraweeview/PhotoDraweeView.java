package me.relex.photodraweeview;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.NonNull;
import com.facebook.drawee.view.SimpleDraweeView;
/* loaded from: classes5.dex */
public class PhotoDraweeView extends SimpleDraweeView implements d {

    /* renamed from: a  reason: collision with root package name */
    private a f72631a;

    public PhotoDraweeView(Context context, com.facebook.drawee.generic.a aVar) {
        super(context, aVar);
        a();
    }

    protected void a() {
        a aVar = this.f72631a;
        if (aVar == null || aVar.r() == null) {
            this.f72631a = new a(this);
        }
    }

    @Override // me.relex.photodraweeview.d
    public float getMaximumScale() {
        return this.f72631a.getMaximumScale();
    }

    @Override // me.relex.photodraweeview.d
    public float getMediumScale() {
        return this.f72631a.getMediumScale();
    }

    @Override // me.relex.photodraweeview.d
    public float getMinimumScale() {
        return this.f72631a.getMinimumScale();
    }

    @Override // me.relex.photodraweeview.d
    public e getOnPhotoTapListener() {
        return this.f72631a.getOnPhotoTapListener();
    }

    @Override // me.relex.photodraweeview.d
    public h getOnViewTapListener() {
        return this.f72631a.getOnViewTapListener();
    }

    @Override // me.relex.photodraweeview.d
    public float getScale() {
        return this.f72631a.getScale();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.view.DraweeView, android.widget.ImageView, android.view.View
    public void onAttachedToWindow() {
        a();
        super.onAttachedToWindow();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.view.DraweeView, android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        this.f72631a.v();
        super.onDetachedFromWindow();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(@NonNull Canvas canvas) {
        int save = canvas.save();
        canvas.concat(this.f72631a.q());
        super.onDraw(canvas);
        canvas.restoreToCount(save);
    }

    @Override // com.facebook.drawee.view.DraweeView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    @Override // me.relex.photodraweeview.d
    public void setAllowParentInterceptOnEdge(boolean z3) {
        this.f72631a.setAllowParentInterceptOnEdge(z3);
    }

    @Override // me.relex.photodraweeview.d
    public void setMaximumScale(float f4) {
        this.f72631a.setMaximumScale(f4);
    }

    @Override // me.relex.photodraweeview.d
    public void setMediumScale(float f4) {
        this.f72631a.setMediumScale(f4);
    }

    @Override // me.relex.photodraweeview.d
    public void setMinimumScale(float f4) {
        this.f72631a.setMinimumScale(f4);
    }

    @Override // me.relex.photodraweeview.d
    public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        this.f72631a.setOnDoubleTapListener(onDoubleTapListener);
    }

    @Override // android.view.View, me.relex.photodraweeview.d
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f72631a.setOnLongClickListener(onLongClickListener);
    }

    @Override // me.relex.photodraweeview.d
    public void setOnPhotoTapListener(e eVar) {
        this.f72631a.setOnPhotoTapListener(eVar);
    }

    @Override // me.relex.photodraweeview.d
    public void setOnScaleChangeListener(f fVar) {
        this.f72631a.setOnScaleChangeListener(fVar);
    }

    @Override // me.relex.photodraweeview.d
    public void setOnViewTapListener(h hVar) {
        this.f72631a.setOnViewTapListener(hVar);
    }

    @Override // me.relex.photodraweeview.d
    public void setScale(float f4) {
        this.f72631a.setScale(f4);
    }

    @Override // me.relex.photodraweeview.d
    public void setZoomTransitionDuration(long j4) {
        this.f72631a.setZoomTransitionDuration(j4);
    }

    @Override // me.relex.photodraweeview.d
    public void update(int i2, int i4) {
        this.f72631a.update(i2, i4);
    }

    @Override // me.relex.photodraweeview.d
    public void setScale(float f4, boolean z3) {
        this.f72631a.setScale(f4, z3);
    }

    public PhotoDraweeView(Context context) {
        super(context);
        a();
    }

    @Override // me.relex.photodraweeview.d
    public void setScale(float f4, float f5, float f6, boolean z3) {
        this.f72631a.setScale(f4, f5, f6, z3);
    }

    public PhotoDraweeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public PhotoDraweeView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a();
    }
}
