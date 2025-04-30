package androidx.constraintlayout.helper.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.HelperWidget;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.R;
import androidx.constraintlayout.widget.VirtualLayout;
/* loaded from: classes.dex */
public class Flow extends VirtualLayout {
    public static final int CHAIN_PACKED = 2;
    public static final int CHAIN_SPREAD = 0;
    public static final int CHAIN_SPREAD_INSIDE = 1;
    public static final int HORIZONTAL = 0;
    public static final int HORIZONTAL_ALIGN_CENTER = 2;
    public static final int HORIZONTAL_ALIGN_END = 1;
    public static final int HORIZONTAL_ALIGN_START = 0;
    public static final int VERTICAL = 1;
    public static final int VERTICAL_ALIGN_BASELINE = 3;
    public static final int VERTICAL_ALIGN_BOTTOM = 1;
    public static final int VERTICAL_ALIGN_CENTER = 2;
    public static final int VERTICAL_ALIGN_TOP = 0;
    public static final int WRAP_ALIGNED = 2;
    public static final int WRAP_CHAIN = 1;
    public static final int WRAP_NONE = 0;

    /* renamed from: m  reason: collision with root package name */
    private static final String f2657m = "Flow";

    /* renamed from: l  reason: collision with root package name */
    private androidx.constraintlayout.core.widgets.Flow f2658l;

    public Flow(Context context) {
        super(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.widget.VirtualLayout, androidx.constraintlayout.widget.ConstraintHelper
    public void k(AttributeSet attrs) {
        super.k(attrs);
        this.f2658l = new androidx.constraintlayout.core.widgets.Flow();
        if (attrs != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, R.styleable.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == R.styleable.ConstraintLayout_Layout_android_orientation) {
                    this.f2658l.setOrientation(obtainStyledAttributes.getInt(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_android_padding) {
                    this.f2658l.setPadding(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_android_paddingStart) {
                    if (Build.VERSION.SDK_INT >= 17) {
                        this.f2658l.setPaddingStart(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                    }
                } else if (index == R.styleable.ConstraintLayout_Layout_android_paddingEnd) {
                    if (Build.VERSION.SDK_INT >= 17) {
                        this.f2658l.setPaddingEnd(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                    }
                } else if (index == R.styleable.ConstraintLayout_Layout_android_paddingLeft) {
                    this.f2658l.setPaddingLeft(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_android_paddingTop) {
                    this.f2658l.setPaddingTop(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_android_paddingRight) {
                    this.f2658l.setPaddingRight(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_android_paddingBottom) {
                    this.f2658l.setPaddingBottom(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_wrapMode) {
                    this.f2658l.setWrapMode(obtainStyledAttributes.getInt(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_horizontalStyle) {
                    this.f2658l.setHorizontalStyle(obtainStyledAttributes.getInt(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_verticalStyle) {
                    this.f2658l.setVerticalStyle(obtainStyledAttributes.getInt(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_firstHorizontalStyle) {
                    this.f2658l.setFirstHorizontalStyle(obtainStyledAttributes.getInt(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_lastHorizontalStyle) {
                    this.f2658l.setLastHorizontalStyle(obtainStyledAttributes.getInt(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_firstVerticalStyle) {
                    this.f2658l.setFirstVerticalStyle(obtainStyledAttributes.getInt(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_lastVerticalStyle) {
                    this.f2658l.setLastVerticalStyle(obtainStyledAttributes.getInt(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_horizontalBias) {
                    this.f2658l.setHorizontalBias(obtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_firstHorizontalBias) {
                    this.f2658l.setFirstHorizontalBias(obtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_lastHorizontalBias) {
                    this.f2658l.setLastHorizontalBias(obtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_firstVerticalBias) {
                    this.f2658l.setFirstVerticalBias(obtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_lastVerticalBias) {
                    this.f2658l.setLastVerticalBias(obtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_verticalBias) {
                    this.f2658l.setVerticalBias(obtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_horizontalAlign) {
                    this.f2658l.setHorizontalAlign(obtainStyledAttributes.getInt(index, 2));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_verticalAlign) {
                    this.f2658l.setVerticalAlign(obtainStyledAttributes.getInt(index, 2));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_horizontalGap) {
                    this.f2658l.setHorizontalGap(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_verticalGap) {
                    this.f2658l.setVerticalGap(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_maxElementsWrap) {
                    this.f2658l.setMaxElementsWrap(obtainStyledAttributes.getInt(index, -1));
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.f3367d = this.f2658l;
        validateParams();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void loadParameters(ConstraintSet.Constraint constraint, HelperWidget child, ConstraintLayout.LayoutParams layoutParams, SparseArray<ConstraintWidget> mapIdToWidget) {
        super.loadParameters(constraint, child, layoutParams, mapIdToWidget);
        if (child instanceof androidx.constraintlayout.core.widgets.Flow) {
            androidx.constraintlayout.core.widgets.Flow flow = (androidx.constraintlayout.core.widgets.Flow) child;
            int i2 = layoutParams.orientation;
            if (i2 != -1) {
                flow.setOrientation(i2);
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    @SuppressLint({"WrongCall"})
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        onMeasure(this.f2658l, widthMeasureSpec, heightMeasureSpec);
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void resolveRtl(ConstraintWidget widget, boolean isRtl) {
        this.f2658l.applyRtl(isRtl);
    }

    public void setFirstHorizontalBias(float bias) {
        this.f2658l.setFirstHorizontalBias(bias);
        requestLayout();
    }

    public void setFirstHorizontalStyle(int style) {
        this.f2658l.setFirstHorizontalStyle(style);
        requestLayout();
    }

    public void setFirstVerticalBias(float bias) {
        this.f2658l.setFirstVerticalBias(bias);
        requestLayout();
    }

    public void setFirstVerticalStyle(int style) {
        this.f2658l.setFirstVerticalStyle(style);
        requestLayout();
    }

    public void setHorizontalAlign(int align) {
        this.f2658l.setHorizontalAlign(align);
        requestLayout();
    }

    public void setHorizontalBias(float bias) {
        this.f2658l.setHorizontalBias(bias);
        requestLayout();
    }

    public void setHorizontalGap(int gap) {
        this.f2658l.setHorizontalGap(gap);
        requestLayout();
    }

    public void setHorizontalStyle(int style) {
        this.f2658l.setHorizontalStyle(style);
        requestLayout();
    }

    public void setLastHorizontalBias(float bias) {
        this.f2658l.setLastHorizontalBias(bias);
        requestLayout();
    }

    public void setLastHorizontalStyle(int style) {
        this.f2658l.setLastHorizontalStyle(style);
        requestLayout();
    }

    public void setLastVerticalBias(float bias) {
        this.f2658l.setLastVerticalBias(bias);
        requestLayout();
    }

    public void setLastVerticalStyle(int style) {
        this.f2658l.setLastVerticalStyle(style);
        requestLayout();
    }

    public void setMaxElementsWrap(int max) {
        this.f2658l.setMaxElementsWrap(max);
        requestLayout();
    }

    public void setOrientation(int orientation) {
        this.f2658l.setOrientation(orientation);
        requestLayout();
    }

    public void setPadding(int padding) {
        this.f2658l.setPadding(padding);
        requestLayout();
    }

    public void setPaddingBottom(int paddingBottom) {
        this.f2658l.setPaddingBottom(paddingBottom);
        requestLayout();
    }

    public void setPaddingLeft(int paddingLeft) {
        this.f2658l.setPaddingLeft(paddingLeft);
        requestLayout();
    }

    public void setPaddingRight(int paddingRight) {
        this.f2658l.setPaddingRight(paddingRight);
        requestLayout();
    }

    public void setPaddingTop(int paddingTop) {
        this.f2658l.setPaddingTop(paddingTop);
        requestLayout();
    }

    public void setVerticalAlign(int align) {
        this.f2658l.setVerticalAlign(align);
        requestLayout();
    }

    public void setVerticalBias(float bias) {
        this.f2658l.setVerticalBias(bias);
        requestLayout();
    }

    public void setVerticalGap(int gap) {
        this.f2658l.setVerticalGap(gap);
        requestLayout();
    }

    public void setVerticalStyle(int style) {
        this.f2658l.setVerticalStyle(style);
        requestLayout();
    }

    public void setWrapMode(int mode) {
        this.f2658l.setWrapMode(mode);
        requestLayout();
    }

    public Flow(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    @Override // androidx.constraintlayout.widget.VirtualLayout
    public void onMeasure(androidx.constraintlayout.core.widgets.VirtualLayout layout, int widthMeasureSpec, int heightMeasureSpec) {
        int mode = View.MeasureSpec.getMode(widthMeasureSpec);
        int size = View.MeasureSpec.getSize(widthMeasureSpec);
        int mode2 = View.MeasureSpec.getMode(heightMeasureSpec);
        int size2 = View.MeasureSpec.getSize(heightMeasureSpec);
        if (layout != null) {
            layout.measure(mode, size, mode2, size2);
            setMeasuredDimension(layout.getMeasuredWidth(), layout.getMeasuredHeight());
            return;
        }
        setMeasuredDimension(0, 0);
    }

    public Flow(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }
}
