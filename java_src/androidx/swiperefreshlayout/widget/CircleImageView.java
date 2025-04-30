package androidx.swiperefreshlayout.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build;
import android.view.animation.Animation;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class CircleImageView extends ImageView {

    /* renamed from: c  reason: collision with root package name */
    private static final int f7420c = 503316480;

    /* renamed from: d  reason: collision with root package name */
    private static final int f7421d = 1023410176;

    /* renamed from: e  reason: collision with root package name */
    private static final float f7422e = 0.0f;

    /* renamed from: f  reason: collision with root package name */
    private static final float f7423f = 1.75f;

    /* renamed from: g  reason: collision with root package name */
    private static final float f7424g = 3.5f;

    /* renamed from: h  reason: collision with root package name */
    private static final int f7425h = 4;

    /* renamed from: a  reason: collision with root package name */
    private Animation.AnimationListener f7426a;

    /* renamed from: b  reason: collision with root package name */
    int f7427b;

    /* loaded from: classes2.dex */
    private class OvalShadow extends OvalShape {

        /* renamed from: a  reason: collision with root package name */
        private RadialGradient f7428a;

        /* renamed from: b  reason: collision with root package name */
        private Paint f7429b = new Paint();

        OvalShadow(int i2) {
            CircleImageView.this.f7427b = i2;
            a((int) rect().width());
        }

        private void a(int i2) {
            float f4 = i2 / 2;
            RadialGradient radialGradient = new RadialGradient(f4, f4, CircleImageView.this.f7427b, new int[]{CircleImageView.f7421d, 0}, (float[]) null, Shader.TileMode.CLAMP);
            this.f7428a = radialGradient;
            this.f7429b.setShader(radialGradient);
        }

        @Override // android.graphics.drawable.shapes.OvalShape, android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        public void draw(Canvas canvas, Paint paint) {
            int width;
            float width2 = CircleImageView.this.getWidth() / 2;
            float height = CircleImageView.this.getHeight() / 2;
            canvas.drawCircle(width2, height, width2, this.f7429b);
            canvas.drawCircle(width2, height, width - CircleImageView.this.f7427b, paint);
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
        this.f7427b = (int) (f7424g * f4);
        if (a()) {
            shapeDrawable = new ShapeDrawable(new OvalShape());
            ViewCompat.setElevation(this, f4 * 4.0f);
        } else {
            ShapeDrawable shapeDrawable2 = new ShapeDrawable(new OvalShadow(this.f7427b));
            setLayerType(1, shapeDrawable2.getPaint());
            shapeDrawable2.getPaint().setShadowLayer(this.f7427b, i5, i4, f7420c);
            int i6 = this.f7427b;
            setPadding(i6, i6, i6, i6);
            shapeDrawable = shapeDrawable2;
        }
        shapeDrawable.getPaint().setColor(i2);
        ViewCompat.setBackground(this, shapeDrawable);
    }

    private boolean a() {
        return Build.VERSION.SDK_INT >= 21;
    }

    @Override // android.view.View
    public void onAnimationEnd() {
        super.onAnimationEnd();
        Animation.AnimationListener animationListener = this.f7426a;
        if (animationListener != null) {
            animationListener.onAnimationEnd(getAnimation());
        }
    }

    @Override // android.view.View
    public void onAnimationStart() {
        super.onAnimationStart();
        Animation.AnimationListener animationListener = this.f7426a;
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
        setMeasuredDimension(getMeasuredWidth() + (this.f7427b * 2), getMeasuredHeight() + (this.f7427b * 2));
    }

    public void setAnimationListener(Animation.AnimationListener animationListener) {
        this.f7426a = animationListener;
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
