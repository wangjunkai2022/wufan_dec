package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.SparseArray;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.HelperWidget;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
/* loaded from: classes.dex */
public class Barrier extends ConstraintHelper {
    public static final int BOTTOM = 3;
    public static final int END = 6;
    public static final int LEFT = 0;
    public static final int RIGHT = 1;
    public static final int START = 5;
    public static final int TOP = 2;

    /* renamed from: j  reason: collision with root package name */
    private int f3351j;

    /* renamed from: k  reason: collision with root package name */
    private int f3352k;

    /* renamed from: l  reason: collision with root package name */
    private androidx.constraintlayout.core.widgets.Barrier f3353l;

    public Barrier(Context context) {
        super(context);
        super.setVisibility(8);
    }

    private void l(ConstraintWidget widget, int type, boolean isRtl) {
        this.f3352k = type;
        if (Build.VERSION.SDK_INT < 17) {
            int i2 = this.f3351j;
            if (i2 == 5) {
                this.f3352k = 0;
            } else if (i2 == 6) {
                this.f3352k = 1;
            }
        } else if (isRtl) {
            int i4 = this.f3351j;
            if (i4 == 5) {
                this.f3352k = 1;
            } else if (i4 == 6) {
                this.f3352k = 0;
            }
        } else {
            int i5 = this.f3351j;
            if (i5 == 5) {
                this.f3352k = 0;
            } else if (i5 == 6) {
                this.f3352k = 1;
            }
        }
        if (widget instanceof androidx.constraintlayout.core.widgets.Barrier) {
            ((androidx.constraintlayout.core.widgets.Barrier) widget).setBarrierType(this.f3352k);
        }
    }

    @Deprecated
    public boolean allowsGoneWidget() {
        return this.f3353l.getAllowsGoneWidget();
    }

    public boolean getAllowsGoneWidget() {
        return this.f3353l.getAllowsGoneWidget();
    }

    public int getMargin() {
        return this.f3353l.getMargin();
    }

    public int getType() {
        return this.f3351j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void k(AttributeSet attrs) {
        super.k(attrs);
        this.f3353l = new androidx.constraintlayout.core.widgets.Barrier();
        if (attrs != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, R.styleable.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == R.styleable.ConstraintLayout_Layout_barrierDirection) {
                    setType(obtainStyledAttributes.getInt(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_barrierAllowsGoneWidgets) {
                    this.f3353l.setAllowsGoneWidget(obtainStyledAttributes.getBoolean(index, true));
                } else if (index == R.styleable.ConstraintLayout_Layout_barrierMargin) {
                    this.f3353l.setMargin(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.f3367d = this.f3353l;
        validateParams();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void loadParameters(ConstraintSet.Constraint constraint, HelperWidget child, ConstraintLayout.LayoutParams layoutParams, SparseArray<ConstraintWidget> mapIdToWidget) {
        super.loadParameters(constraint, child, layoutParams, mapIdToWidget);
        if (child instanceof androidx.constraintlayout.core.widgets.Barrier) {
            androidx.constraintlayout.core.widgets.Barrier barrier = (androidx.constraintlayout.core.widgets.Barrier) child;
            l(barrier, constraint.layout.mBarrierDirection, ((ConstraintWidgetContainer) child.getParent()).isRtl());
            barrier.setAllowsGoneWidget(constraint.layout.mBarrierAllowsGoneWidgets);
            barrier.setMargin(constraint.layout.mBarrierMargin);
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void resolveRtl(ConstraintWidget widget, boolean isRtl) {
        l(widget, this.f3351j, isRtl);
    }

    public void setAllowsGoneWidget(boolean supportGone) {
        this.f3353l.setAllowsGoneWidget(supportGone);
    }

    public void setDpMargin(int margin) {
        androidx.constraintlayout.core.widgets.Barrier barrier = this.f3353l;
        barrier.setMargin((int) ((margin * getResources().getDisplayMetrics().density) + 0.5f));
    }

    public void setMargin(int margin) {
        this.f3353l.setMargin(margin);
    }

    public void setType(int type) {
        this.f3351j = type;
    }

    public Barrier(Context context, AttributeSet attrs) {
        super(context, attrs);
        super.setVisibility(8);
    }

    public Barrier(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        super.setVisibility(8);
    }
}
