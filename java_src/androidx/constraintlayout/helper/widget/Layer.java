package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.R;
/* loaded from: classes.dex */
public class Layer extends ConstraintHelper {
    private static final String B = "Layer";
    private boolean A;

    /* renamed from: j  reason: collision with root package name */
    private float f2659j;

    /* renamed from: k  reason: collision with root package name */
    private float f2660k;

    /* renamed from: l  reason: collision with root package name */
    private float f2661l;

    /* renamed from: m  reason: collision with root package name */
    ConstraintLayout f2662m;

    /* renamed from: n  reason: collision with root package name */
    private float f2663n;

    /* renamed from: o  reason: collision with root package name */
    private float f2664o;

    /* renamed from: p  reason: collision with root package name */
    protected float f2665p;

    /* renamed from: q  reason: collision with root package name */
    protected float f2666q;

    /* renamed from: r  reason: collision with root package name */
    protected float f2667r;

    /* renamed from: s  reason: collision with root package name */
    protected float f2668s;

    /* renamed from: t  reason: collision with root package name */
    protected float f2669t;

    /* renamed from: u  reason: collision with root package name */
    protected float f2670u;

    /* renamed from: v  reason: collision with root package name */
    boolean f2671v;

    /* renamed from: w  reason: collision with root package name */
    View[] f2672w;

    /* renamed from: x  reason: collision with root package name */
    private float f2673x;

    /* renamed from: y  reason: collision with root package name */
    private float f2674y;

    /* renamed from: z  reason: collision with root package name */
    private boolean f2675z;

    public Layer(Context context) {
        super(context);
        this.f2659j = Float.NaN;
        this.f2660k = Float.NaN;
        this.f2661l = Float.NaN;
        this.f2663n = 1.0f;
        this.f2664o = 1.0f;
        this.f2665p = Float.NaN;
        this.f2666q = Float.NaN;
        this.f2667r = Float.NaN;
        this.f2668s = Float.NaN;
        this.f2669t = Float.NaN;
        this.f2670u = Float.NaN;
        this.f2671v = true;
        this.f2672w = null;
        this.f2673x = 0.0f;
        this.f2674y = 0.0f;
    }

    private void m() {
        int i2;
        if (this.f2662m == null || (i2 = this.f3365b) == 0) {
            return;
        }
        View[] viewArr = this.f2672w;
        if (viewArr == null || viewArr.length != i2) {
            this.f2672w = new View[i2];
        }
        for (int i4 = 0; i4 < this.f3365b; i4++) {
            this.f2672w[i4] = this.f2662m.getViewById(this.f3364a[i4]);
        }
    }

    private void n() {
        if (this.f2662m == null) {
            return;
        }
        if (this.f2672w == null) {
            m();
        }
        l();
        double radians = Float.isNaN(this.f2661l) ? 0.0d : Math.toRadians(this.f2661l);
        float sin = (float) Math.sin(radians);
        float cos = (float) Math.cos(radians);
        float f4 = this.f2663n;
        float f5 = f4 * cos;
        float f6 = this.f2664o;
        float f7 = (-f6) * sin;
        float f8 = f4 * sin;
        float f9 = f6 * cos;
        for (int i2 = 0; i2 < this.f3365b; i2++) {
            View view = this.f2672w[i2];
            float left = ((view.getLeft() + view.getRight()) / 2) - this.f2665p;
            float top = ((view.getTop() + view.getBottom()) / 2) - this.f2666q;
            view.setTranslationX((((f5 * left) + (f7 * top)) - left) + this.f2673x);
            view.setTranslationY((((left * f8) + (f9 * top)) - top) + this.f2674y);
            view.setScaleY(this.f2664o);
            view.setScaleX(this.f2663n);
            if (!Float.isNaN(this.f2661l)) {
                view.setRotation(this.f2661l);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void f(ConstraintLayout container) {
        e(container);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void k(AttributeSet attrs) {
        super.k(attrs);
        this.f3368e = false;
        if (attrs != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, R.styleable.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == R.styleable.ConstraintLayout_Layout_android_visibility) {
                    this.f2675z = true;
                } else if (index == R.styleable.ConstraintLayout_Layout_android_elevation) {
                    this.A = true;
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    protected void l() {
        if (this.f2662m == null) {
            return;
        }
        if (this.f2671v || Float.isNaN(this.f2665p) || Float.isNaN(this.f2666q)) {
            if (!Float.isNaN(this.f2659j) && !Float.isNaN(this.f2660k)) {
                this.f2666q = this.f2660k;
                this.f2665p = this.f2659j;
                return;
            }
            View[] j4 = j(this.f2662m);
            int left = j4[0].getLeft();
            int top = j4[0].getTop();
            int right = j4[0].getRight();
            int bottom = j4[0].getBottom();
            for (int i2 = 0; i2 < this.f3365b; i2++) {
                View view = j4[i2];
                left = Math.min(left, view.getLeft());
                top = Math.min(top, view.getTop());
                right = Math.max(right, view.getRight());
                bottom = Math.max(bottom, view.getBottom());
            }
            this.f2667r = right;
            this.f2668s = bottom;
            this.f2669t = left;
            this.f2670u = top;
            if (Float.isNaN(this.f2659j)) {
                this.f2665p = (left + right) / 2;
            } else {
                this.f2665p = this.f2659j;
            }
            if (Float.isNaN(this.f2660k)) {
                this.f2666q = (top + bottom) / 2;
            } else {
                this.f2666q = this.f2660k;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f2662m = (ConstraintLayout) getParent();
        if (this.f2675z || this.A) {
            int visibility = getVisibility();
            float elevation = Build.VERSION.SDK_INT >= 21 ? getElevation() : 0.0f;
            for (int i2 = 0; i2 < this.f3365b; i2++) {
                View viewById = this.f2662m.getViewById(this.f3364a[i2]);
                if (viewById != null) {
                    if (this.f2675z) {
                        viewById.setVisibility(visibility);
                    }
                    if (this.A && elevation > 0.0f && Build.VERSION.SDK_INT >= 21) {
                        viewById.setTranslationZ(viewById.getTranslationZ() + elevation);
                    }
                }
            }
        }
    }

    @Override // android.view.View
    public void setElevation(float elevation) {
        super.setElevation(elevation);
        d();
    }

    @Override // android.view.View
    public void setPivotX(float pivotX) {
        this.f2659j = pivotX;
        n();
    }

    @Override // android.view.View
    public void setPivotY(float pivotY) {
        this.f2660k = pivotY;
        n();
    }

    @Override // android.view.View
    public void setRotation(float angle) {
        this.f2661l = angle;
        n();
    }

    @Override // android.view.View
    public void setScaleX(float scaleX) {
        this.f2663n = scaleX;
        n();
    }

    @Override // android.view.View
    public void setScaleY(float scaleY) {
        this.f2664o = scaleY;
        n();
    }

    @Override // android.view.View
    public void setTranslationX(float dx) {
        this.f2673x = dx;
        n();
    }

    @Override // android.view.View
    public void setTranslationY(float dy) {
        this.f2674y = dy;
        n();
    }

    @Override // android.view.View
    public void setVisibility(int visibility) {
        super.setVisibility(visibility);
        d();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void updatePostLayout(ConstraintLayout container) {
        m();
        this.f2665p = Float.NaN;
        this.f2666q = Float.NaN;
        ConstraintWidget constraintWidget = ((ConstraintLayout.LayoutParams) getLayoutParams()).getConstraintWidget();
        constraintWidget.setWidth(0);
        constraintWidget.setHeight(0);
        l();
        layout(((int) this.f2669t) - getPaddingLeft(), ((int) this.f2670u) - getPaddingTop(), ((int) this.f2667r) + getPaddingRight(), ((int) this.f2668s) + getPaddingBottom());
        n();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void updatePreDraw(ConstraintLayout container) {
        this.f2662m = container;
        float rotation = getRotation();
        if (rotation == 0.0f) {
            if (Float.isNaN(this.f2661l)) {
                return;
            }
            this.f2661l = rotation;
            return;
        }
        this.f2661l = rotation;
    }

    public Layer(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f2659j = Float.NaN;
        this.f2660k = Float.NaN;
        this.f2661l = Float.NaN;
        this.f2663n = 1.0f;
        this.f2664o = 1.0f;
        this.f2665p = Float.NaN;
        this.f2666q = Float.NaN;
        this.f2667r = Float.NaN;
        this.f2668s = Float.NaN;
        this.f2669t = Float.NaN;
        this.f2670u = Float.NaN;
        this.f2671v = true;
        this.f2672w = null;
        this.f2673x = 0.0f;
        this.f2674y = 0.0f;
    }

    public Layer(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f2659j = Float.NaN;
        this.f2660k = Float.NaN;
        this.f2661l = Float.NaN;
        this.f2663n = 1.0f;
        this.f2664o = 1.0f;
        this.f2665p = Float.NaN;
        this.f2666q = Float.NaN;
        this.f2667r = Float.NaN;
        this.f2668s = Float.NaN;
        this.f2669t = Float.NaN;
        this.f2670u = Float.NaN;
        this.f2671v = true;
        this.f2672w = null;
        this.f2673x = 0.0f;
        this.f2674y = 0.0f;
    }
}
