package com.join.mgps.customview.swiperefresh;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build;
import android.view.animation.Animation;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
/* loaded from: classes3.dex */
public class CircleImageView extends AppCompatImageView {

    /* renamed from: f  reason: collision with root package name */
    private static final int f47133f = 503316480;

    /* renamed from: g  reason: collision with root package name */
    private static final int f47134g = 1023410176;

    /* renamed from: h  reason: collision with root package name */
    private static final float f47135h = 0.0f;

    /* renamed from: i  reason: collision with root package name */
    private static final float f47136i = 1.75f;

    /* renamed from: j  reason: collision with root package name */
    private static final float f47137j = 3.5f;

    /* renamed from: k  reason: collision with root package name */
    private static final int f47138k = 4;

    /* renamed from: d  reason: collision with root package name */
    private Animation.AnimationListener f47139d;

    /* renamed from: e  reason: collision with root package name */
    int f47140e;

    /* loaded from: classes3.dex */
    private class a extends OvalShape {

        /* renamed from: a  reason: collision with root package name */
        private RadialGradient f47141a;

        /* renamed from: b  reason: collision with root package name */
        private Paint f47142b = new Paint();

        a(int i2) {
            CircleImageView.this.f47140e = i2;
            a((int) rect().width());
        }

        private void a(int i2) {
            float f4 = i2 / 2;
            RadialGradient radialGradient = new RadialGradient(f4, f4, CircleImageView.this.f47140e, new int[]{CircleImageView.f47134g, 0}, (float[]) null, Shader.TileMode.CLAMP);
            this.f47141a = radialGradient;
            this.f47142b.setShader(radialGradient);
        }

        @Override // android.graphics.drawable.shapes.OvalShape, android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        public void draw(Canvas canvas, Paint paint) {
            CircleImageView.this.getWidth();
            CircleImageView.this.getHeight();
        }

        @Override // android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        protected void onResize(float f4, float f5) {
            super.onResize(f4, f5);
            a((int) f4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CircleImageView(Context context, int i2) {
        super(context);
        ShapeDrawable shapeDrawable;
        float f4 = getContext().getResources().getDisplayMetrics().density;
        int i4 = (int) (1.75f * f4);
        int i5 = (int) (0.0f * f4);
        this.f47140e = (int) (f47137j * f4);
        if (a()) {
            shapeDrawable = new ShapeDrawable(new OvalShape());
            ViewCompat.setElevation(this, f4 * 4.0f);
        } else {
            ShapeDrawable shapeDrawable2 = new ShapeDrawable(new a(this.f47140e));
            ViewCompat.setLayerType(this, 1, shapeDrawable2.getPaint());
            shapeDrawable2.getPaint().setShadowLayer(this.f47140e, i5, i4, f47133f);
            int i6 = this.f47140e;
            setPadding(i6, i6, i6, i6);
            shapeDrawable = shapeDrawable2;
        }
        shapeDrawable.getPaint().setColor(-11621911);
        ViewCompat.setBackground(this, shapeDrawable);
    }

    private boolean a() {
        return Build.VERSION.SDK_INT >= 21;
    }

    @Override // android.view.View
    public void onAnimationEnd() {
        super.onAnimationEnd();
        Animation.AnimationListener animationListener = this.f47139d;
        if (animationListener != null) {
            animationListener.onAnimationEnd(getAnimation());
        }
    }

    @Override // android.view.View
    public void onAnimationStart() {
        super.onAnimationStart();
        Animation.AnimationListener animationListener = this.f47139d;
        if (animationListener != null) {
            animationListener.onAnimationStart(getAnimation());
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i2, int i4) {
        super.onMeasure(i2, i4);
        if (a()) {
            return;
        }
        setMeasuredDimension(getMeasuredWidth() + (this.f47140e * 2), getMeasuredHeight() + (this.f47140e * 2));
    }

    public void setAnimationListener(Animation.AnimationListener animationListener) {
        this.f47139d = animationListener;
    }

    @Override // android.view.View
    public void setBackgroundColor(int i2) {
        if (getBackground() instanceof ShapeDrawable) {
            ((ShapeDrawable) getBackground()).getPaint().setColor(i2);
        }
    }

    public void setBackgroundColorRes(int i2) {
        setBackgroundColor(ContextCompat.getColor(getContext(), i2));
    }
}
