package androidx.constraintlayout.widget;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Build;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.Metrics;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Optimizer;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.core.internal.view.SupportMenu;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import net.lingala.zip4j.util.e;
/* loaded from: classes.dex */
public class ConstraintLayout extends ViewGroup {
    private static final boolean A = true;
    private static final boolean B = false;
    private static final boolean C = false;
    private static final boolean D = false;
    public static final int DESIGN_INFO_ID = 0;
    private static final boolean E = false;
    private static SharedValues F = null;
    public static final String VERSION = "ConstraintLayout-2.1.4";

    /* renamed from: z  reason: collision with root package name */
    private static final String f3373z = "ConstraintLayout";

    /* renamed from: a  reason: collision with root package name */
    SparseArray<View> f3374a;

    /* renamed from: b  reason: collision with root package name */
    private ArrayList<ConstraintHelper> f3375b;

    /* renamed from: c  reason: collision with root package name */
    protected ConstraintWidgetContainer f3376c;

    /* renamed from: d  reason: collision with root package name */
    private int f3377d;

    /* renamed from: e  reason: collision with root package name */
    private int f3378e;

    /* renamed from: f  reason: collision with root package name */
    private int f3379f;

    /* renamed from: g  reason: collision with root package name */
    private int f3380g;

    /* renamed from: h  reason: collision with root package name */
    protected boolean f3381h;

    /* renamed from: i  reason: collision with root package name */
    private int f3382i;

    /* renamed from: j  reason: collision with root package name */
    private ConstraintSet f3383j;

    /* renamed from: k  reason: collision with root package name */
    protected ConstraintLayoutStates f3384k;

    /* renamed from: l  reason: collision with root package name */
    private int f3385l;

    /* renamed from: m  reason: collision with root package name */
    private HashMap<String, Integer> f3386m;

    /* renamed from: n  reason: collision with root package name */
    private int f3387n;

    /* renamed from: o  reason: collision with root package name */
    private int f3388o;

    /* renamed from: p  reason: collision with root package name */
    int f3389p;

    /* renamed from: q  reason: collision with root package name */
    int f3390q;

    /* renamed from: r  reason: collision with root package name */
    int f3391r;

    /* renamed from: s  reason: collision with root package name */
    int f3392s;

    /* renamed from: t  reason: collision with root package name */
    private SparseArray<ConstraintWidget> f3393t;

    /* renamed from: u  reason: collision with root package name */
    private ConstraintsChangedListener f3394u;

    /* renamed from: v  reason: collision with root package name */
    private Metrics f3395v;

    /* renamed from: w  reason: collision with root package name */
    Measurer f3396w;

    /* renamed from: x  reason: collision with root package name */
    private int f3397x;

    /* renamed from: y  reason: collision with root package name */
    private int f3398y;

    /* renamed from: androidx.constraintlayout.widget.ConstraintLayout$1  reason: invalid class name */
    /* loaded from: classes.dex */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f3399a;

        static {
            int[] iArr = new int[ConstraintWidget.DimensionBehaviour.values().length];
            f3399a = iArr;
            try {
                iArr[ConstraintWidget.DimensionBehaviour.FIXED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3399a[ConstraintWidget.DimensionBehaviour.WRAP_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3399a[ConstraintWidget.DimensionBehaviour.MATCH_PARENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3399a[ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class Measurer implements BasicMeasure.Measurer {

        /* renamed from: a  reason: collision with root package name */
        ConstraintLayout f3422a;

        /* renamed from: b  reason: collision with root package name */
        int f3423b;

        /* renamed from: c  reason: collision with root package name */
        int f3424c;

        /* renamed from: d  reason: collision with root package name */
        int f3425d;

        /* renamed from: e  reason: collision with root package name */
        int f3426e;

        /* renamed from: f  reason: collision with root package name */
        int f3427f;

        /* renamed from: g  reason: collision with root package name */
        int f3428g;

        public Measurer(ConstraintLayout l4) {
            this.f3422a = l4;
        }

        private boolean a(int lastMeasureSpec, int spec, int widgetSize) {
            if (lastMeasureSpec == spec) {
                return true;
            }
            int mode = View.MeasureSpec.getMode(lastMeasureSpec);
            View.MeasureSpec.getSize(lastMeasureSpec);
            int mode2 = View.MeasureSpec.getMode(spec);
            int size = View.MeasureSpec.getSize(spec);
            if (mode2 == 1073741824) {
                return (mode == Integer.MIN_VALUE || mode == 0) && widgetSize == size;
            }
            return false;
        }

        public void captureLayoutInfo(int widthSpec, int heightSpec, int top, int bottom, int width, int height) {
            this.f3423b = top;
            this.f3424c = bottom;
            this.f3425d = width;
            this.f3426e = height;
            this.f3427f = widthSpec;
            this.f3428g = heightSpec;
        }

        @Override // androidx.constraintlayout.core.widgets.analyzer.BasicMeasure.Measurer
        public final void didMeasures() {
            int childCount = this.f3422a.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = this.f3422a.getChildAt(i2);
                if (childAt instanceof Placeholder) {
                    ((Placeholder) childAt).updatePostMeasure(this.f3422a);
                }
            }
            int size = this.f3422a.f3375b.size();
            if (size > 0) {
                for (int i4 = 0; i4 < size; i4++) {
                    ((ConstraintHelper) this.f3422a.f3375b.get(i4)).updatePostMeasure(this.f3422a);
                }
            }
        }

        @Override // androidx.constraintlayout.core.widgets.analyzer.BasicMeasure.Measurer
        @SuppressLint({"WrongCall"})
        public final void measure(ConstraintWidget widget, BasicMeasure.Measure measure) {
            int makeMeasureSpec;
            int makeMeasureSpec2;
            int baseline;
            int max;
            int i2;
            int i4;
            int i5;
            if (widget == null) {
                return;
            }
            if (widget.getVisibility() == 8 && !widget.isInPlaceholder()) {
                measure.measuredWidth = 0;
                measure.measuredHeight = 0;
                measure.measuredBaseline = 0;
            } else if (widget.getParent() == null) {
            } else {
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = measure.horizontalBehavior;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = measure.verticalBehavior;
                int i6 = measure.horizontalDimension;
                int i7 = measure.verticalDimension;
                int i8 = this.f3423b + this.f3424c;
                int i9 = this.f3425d;
                View view = (View) widget.getCompanionWidget();
                int[] iArr = AnonymousClass1.f3399a;
                int i10 = iArr[dimensionBehaviour.ordinal()];
                if (i10 == 1) {
                    makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i6, 1073741824);
                } else if (i10 == 2) {
                    makeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f3427f, i9, -2);
                } else if (i10 == 3) {
                    makeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f3427f, i9 + widget.getHorizontalMargin(), -1);
                } else if (i10 != 4) {
                    makeMeasureSpec = 0;
                } else {
                    makeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f3427f, i9, -2);
                    boolean z3 = widget.mMatchConstraintDefaultWidth == 1;
                    int i11 = measure.measureStrategy;
                    if (i11 == BasicMeasure.Measure.TRY_GIVEN_DIMENSIONS || i11 == BasicMeasure.Measure.USE_GIVEN_DIMENSIONS) {
                        if (measure.measureStrategy == BasicMeasure.Measure.USE_GIVEN_DIMENSIONS || !z3 || (z3 && (view.getMeasuredHeight() == widget.getHeight())) || (view instanceof Placeholder) || widget.isResolvedHorizontally()) {
                            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(widget.getWidth(), 1073741824);
                        }
                    }
                }
                int i12 = iArr[dimensionBehaviour2.ordinal()];
                if (i12 == 1) {
                    makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i7, 1073741824);
                } else if (i12 == 2) {
                    makeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.f3428g, i8, -2);
                } else if (i12 == 3) {
                    makeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.f3428g, i8 + widget.getVerticalMargin(), -1);
                } else if (i12 != 4) {
                    makeMeasureSpec2 = 0;
                } else {
                    makeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.f3428g, i8, -2);
                    boolean z4 = widget.mMatchConstraintDefaultHeight == 1;
                    int i13 = measure.measureStrategy;
                    if (i13 == BasicMeasure.Measure.TRY_GIVEN_DIMENSIONS || i13 == BasicMeasure.Measure.USE_GIVEN_DIMENSIONS) {
                        if (measure.measureStrategy == BasicMeasure.Measure.USE_GIVEN_DIMENSIONS || !z4 || (z4 && (view.getMeasuredWidth() == widget.getWidth())) || (view instanceof Placeholder) || widget.isResolvedVertically()) {
                            makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(widget.getHeight(), 1073741824);
                        }
                    }
                }
                ConstraintWidgetContainer constraintWidgetContainer = (ConstraintWidgetContainer) widget.getParent();
                if (constraintWidgetContainer != null && Optimizer.enabled(ConstraintLayout.this.f3382i, 256) && view.getMeasuredWidth() == widget.getWidth() && view.getMeasuredWidth() < constraintWidgetContainer.getWidth() && view.getMeasuredHeight() == widget.getHeight() && view.getMeasuredHeight() < constraintWidgetContainer.getHeight() && view.getBaseline() == widget.getBaselineDistance() && !widget.isMeasureRequested()) {
                    if (a(widget.getLastHorizontalMeasureSpec(), makeMeasureSpec, widget.getWidth()) && a(widget.getLastVerticalMeasureSpec(), makeMeasureSpec2, widget.getHeight())) {
                        measure.measuredWidth = widget.getWidth();
                        measure.measuredHeight = widget.getHeight();
                        measure.measuredBaseline = widget.getBaselineDistance();
                        return;
                    }
                }
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                boolean z5 = dimensionBehaviour == dimensionBehaviour3;
                boolean z6 = dimensionBehaviour2 == dimensionBehaviour3;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.MATCH_PARENT;
                boolean z7 = dimensionBehaviour2 == dimensionBehaviour4 || dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.FIXED;
                boolean z8 = dimensionBehaviour == dimensionBehaviour4 || dimensionBehaviour == ConstraintWidget.DimensionBehaviour.FIXED;
                boolean z9 = z5 && widget.mDimensionRatio > 0.0f;
                boolean z10 = z6 && widget.mDimensionRatio > 0.0f;
                if (view == null) {
                    return;
                }
                LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
                int i14 = measure.measureStrategy;
                if (i14 != BasicMeasure.Measure.TRY_GIVEN_DIMENSIONS && i14 != BasicMeasure.Measure.USE_GIVEN_DIMENSIONS && z5 && widget.mMatchConstraintDefaultWidth == 0 && z6 && widget.mMatchConstraintDefaultHeight == 0) {
                    i5 = -1;
                    i4 = 0;
                    baseline = 0;
                    max = 0;
                } else {
                    if ((view instanceof VirtualLayout) && (widget instanceof androidx.constraintlayout.core.widgets.VirtualLayout)) {
                        ((VirtualLayout) view).onMeasure((androidx.constraintlayout.core.widgets.VirtualLayout) widget, makeMeasureSpec, makeMeasureSpec2);
                    } else {
                        view.measure(makeMeasureSpec, makeMeasureSpec2);
                    }
                    widget.setLastMeasureSpec(makeMeasureSpec, makeMeasureSpec2);
                    int measuredWidth = view.getMeasuredWidth();
                    int measuredHeight = view.getMeasuredHeight();
                    baseline = view.getBaseline();
                    int i15 = widget.mMatchConstraintMinWidth;
                    max = i15 > 0 ? Math.max(i15, measuredWidth) : measuredWidth;
                    int i16 = widget.mMatchConstraintMaxWidth;
                    if (i16 > 0) {
                        max = Math.min(i16, max);
                    }
                    int i17 = widget.mMatchConstraintMinHeight;
                    if (i17 > 0) {
                        i4 = Math.max(i17, measuredHeight);
                        i2 = makeMeasureSpec;
                    } else {
                        i2 = makeMeasureSpec;
                        i4 = measuredHeight;
                    }
                    int i18 = widget.mMatchConstraintMaxHeight;
                    if (i18 > 0) {
                        i4 = Math.min(i18, i4);
                    }
                    if (!Optimizer.enabled(ConstraintLayout.this.f3382i, 1)) {
                        if (z9 && z7) {
                            max = (int) ((i4 * widget.mDimensionRatio) + 0.5f);
                        } else if (z10 && z8) {
                            i4 = (int) ((max / widget.mDimensionRatio) + 0.5f);
                        }
                    }
                    if (measuredWidth != max || measuredHeight != i4) {
                        int makeMeasureSpec3 = measuredWidth != max ? View.MeasureSpec.makeMeasureSpec(max, 1073741824) : i2;
                        if (measuredHeight != i4) {
                            makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
                        }
                        view.measure(makeMeasureSpec3, makeMeasureSpec2);
                        widget.setLastMeasureSpec(makeMeasureSpec3, makeMeasureSpec2);
                        max = view.getMeasuredWidth();
                        i4 = view.getMeasuredHeight();
                        baseline = view.getBaseline();
                    }
                    i5 = -1;
                }
                boolean z11 = baseline != i5;
                measure.measuredNeedsSolverPass = (max == measure.horizontalDimension && i4 == measure.verticalDimension) ? false : true;
                if (layoutParams.f3406g) {
                    z11 = true;
                }
                if (z11 && baseline != -1 && widget.getBaselineDistance() != baseline) {
                    measure.measuredNeedsSolverPass = true;
                }
                measure.measuredWidth = max;
                measure.measuredHeight = i4;
                measure.measuredHasBaseline = z11;
                measure.measuredBaseline = baseline;
            }
        }
    }

    public ConstraintLayout(@NonNull Context context) {
        super(context);
        this.f3374a = new SparseArray<>();
        this.f3375b = new ArrayList<>(4);
        this.f3376c = new ConstraintWidgetContainer();
        this.f3377d = 0;
        this.f3378e = 0;
        this.f3379f = Integer.MAX_VALUE;
        this.f3380g = Integer.MAX_VALUE;
        this.f3381h = true;
        this.f3382i = 257;
        this.f3383j = null;
        this.f3384k = null;
        this.f3385l = -1;
        this.f3386m = new HashMap<>();
        this.f3387n = -1;
        this.f3388o = -1;
        this.f3389p = -1;
        this.f3390q = -1;
        this.f3391r = 0;
        this.f3392s = 0;
        this.f3393t = new SparseArray<>();
        this.f3396w = new Measurer(this);
        this.f3397x = 0;
        this.f3398y = 0;
        k(null, 0, 0);
    }

    private int getPaddingWidth() {
        int max = Math.max(0, getPaddingLeft()) + Math.max(0, getPaddingRight());
        int max2 = Build.VERSION.SDK_INT >= 17 ? Math.max(0, getPaddingEnd()) + Math.max(0, getPaddingStart()) : 0;
        return max2 > 0 ? max2 : max;
    }

    public static SharedValues getSharedValues() {
        if (F == null) {
            F = new SharedValues();
        }
        return F;
    }

    private final ConstraintWidget j(int id) {
        if (id == 0) {
            return this.f3376c;
        }
        View view = this.f3374a.get(id);
        if (view == null && (view = findViewById(id)) != null && view != this && view.getParent() == this) {
            onViewAdded(view);
        }
        if (view == this) {
            return this.f3376c;
        }
        if (view == null) {
            return null;
        }
        return ((LayoutParams) view.getLayoutParams()).f3421v;
    }

    private void k(AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        this.f3376c.setCompanionWidget(this);
        this.f3376c.setMeasurer(this.f3396w);
        this.f3374a.put(getId(), this);
        this.f3383j = null;
        if (attrs != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, R.styleable.ConstraintLayout_Layout, defStyleAttr, defStyleRes);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == R.styleable.ConstraintLayout_Layout_android_minWidth) {
                    this.f3377d = obtainStyledAttributes.getDimensionPixelOffset(index, this.f3377d);
                } else if (index == R.styleable.ConstraintLayout_Layout_android_minHeight) {
                    this.f3378e = obtainStyledAttributes.getDimensionPixelOffset(index, this.f3378e);
                } else if (index == R.styleable.ConstraintLayout_Layout_android_maxWidth) {
                    this.f3379f = obtainStyledAttributes.getDimensionPixelOffset(index, this.f3379f);
                } else if (index == R.styleable.ConstraintLayout_Layout_android_maxHeight) {
                    this.f3380g = obtainStyledAttributes.getDimensionPixelOffset(index, this.f3380g);
                } else if (index == R.styleable.ConstraintLayout_Layout_layout_optimizationLevel) {
                    this.f3382i = obtainStyledAttributes.getInt(index, this.f3382i);
                } else if (index == R.styleable.ConstraintLayout_Layout_layoutDescription) {
                    int resourceId = obtainStyledAttributes.getResourceId(index, 0);
                    if (resourceId != 0) {
                        try {
                            n(resourceId);
                        } catch (Resources.NotFoundException unused) {
                            this.f3384k = null;
                        }
                    }
                } else if (index == R.styleable.ConstraintLayout_Layout_constraintSet) {
                    int resourceId2 = obtainStyledAttributes.getResourceId(index, 0);
                    try {
                        ConstraintSet constraintSet = new ConstraintSet();
                        this.f3383j = constraintSet;
                        constraintSet.load(getContext(), resourceId2);
                    } catch (Resources.NotFoundException unused2) {
                        this.f3383j = null;
                    }
                    this.f3385l = resourceId2;
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.f3376c.setOptimizationLevel(this.f3382i);
    }

    private void m() {
        this.f3381h = true;
        this.f3387n = -1;
        this.f3388o = -1;
        this.f3389p = -1;
        this.f3390q = -1;
        this.f3391r = 0;
        this.f3392s = 0;
    }

    private void q() {
        boolean isInEditMode = isInEditMode();
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            ConstraintWidget viewWidget = getViewWidget(getChildAt(i2));
            if (viewWidget != null) {
                viewWidget.reset();
            }
        }
        if (isInEditMode) {
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = getChildAt(i4);
                try {
                    String resourceName = getResources().getResourceName(childAt.getId());
                    setDesignInformation(0, resourceName, Integer.valueOf(childAt.getId()));
                    int indexOf = resourceName.indexOf(47);
                    if (indexOf != -1) {
                        resourceName = resourceName.substring(indexOf + 1);
                    }
                    j(childAt.getId()).setDebugName(resourceName);
                } catch (Resources.NotFoundException unused) {
                }
            }
        }
        if (this.f3385l != -1) {
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt2 = getChildAt(i5);
                if (childAt2.getId() == this.f3385l && (childAt2 instanceof Constraints)) {
                    this.f3383j = ((Constraints) childAt2).getConstraintSet();
                }
            }
        }
        ConstraintSet constraintSet = this.f3383j;
        if (constraintSet != null) {
            constraintSet.i(this, true);
        }
        this.f3376c.removeAllChildren();
        int size = this.f3375b.size();
        if (size > 0) {
            for (int i6 = 0; i6 < size; i6++) {
                this.f3375b.get(i6).updatePreLayout(this);
            }
        }
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt3 = getChildAt(i7);
            if (childAt3 instanceof Placeholder) {
                ((Placeholder) childAt3).updatePreLayout(this);
            }
        }
        this.f3393t.clear();
        this.f3393t.put(0, this.f3376c);
        this.f3393t.put(getId(), this.f3376c);
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt4 = getChildAt(i8);
            this.f3393t.put(childAt4.getId(), getViewWidget(childAt4));
        }
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt5 = getChildAt(i9);
            ConstraintWidget viewWidget2 = getViewWidget(childAt5);
            if (viewWidget2 != null) {
                LayoutParams layoutParams = (LayoutParams) childAt5.getLayoutParams();
                this.f3376c.add(viewWidget2);
                h(isInEditMode, childAt5, viewWidget2, layoutParams, this.f3393t);
            }
        }
    }

    private void s(ConstraintWidget widget, LayoutParams layoutParams, SparseArray<ConstraintWidget> idToWidget, int baselineTarget, ConstraintAnchor.Type type) {
        View view = this.f3374a.get(baselineTarget);
        ConstraintWidget constraintWidget = idToWidget.get(baselineTarget);
        if (constraintWidget == null || view == null || !(view.getLayoutParams() instanceof LayoutParams)) {
            return;
        }
        layoutParams.f3406g = true;
        ConstraintAnchor.Type type2 = ConstraintAnchor.Type.BASELINE;
        if (type == type2) {
            LayoutParams layoutParams2 = (LayoutParams) view.getLayoutParams();
            layoutParams2.f3406g = true;
            layoutParams2.f3421v.setHasBaseline(true);
        }
        widget.getAnchor(type2).connect(constraintWidget.getAnchor(type), layoutParams.baselineMargin, layoutParams.goneBaselineMargin, true);
        widget.setHasBaseline(true);
        widget.getAnchor(ConstraintAnchor.Type.TOP).reset();
        widget.getAnchor(ConstraintAnchor.Type.BOTTOM).reset();
    }

    private boolean t() {
        int childCount = getChildCount();
        boolean z3 = false;
        int i2 = 0;
        while (true) {
            if (i2 >= childCount) {
                break;
            } else if (getChildAt(i2).isLayoutRequested()) {
                z3 = true;
                break;
            } else {
                i2++;
            }
        }
        if (z3) {
            q();
        }
        return z3;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams p3) {
        return p3 instanceof LayoutParams;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        Object tag;
        int size;
        ArrayList<ConstraintHelper> arrayList = this.f3375b;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            for (int i2 = 0; i2 < size; i2++) {
                this.f3375b.get(i2).updatePreDraw(this);
            }
        }
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            float width = getWidth();
            float height = getHeight();
            int childCount = getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = getChildAt(i4);
                if (childAt.getVisibility() != 8 && (tag = childAt.getTag()) != null && (tag instanceof String)) {
                    String[] split = ((String) tag).split(",");
                    if (split.length == 4) {
                        int parseInt = Integer.parseInt(split[0]);
                        int parseInt2 = Integer.parseInt(split[1]);
                        int parseInt3 = Integer.parseInt(split[2]);
                        int i5 = (int) ((parseInt / 1080.0f) * width);
                        int i6 = (int) ((parseInt2 / 1920.0f) * height);
                        Paint paint = new Paint();
                        paint.setColor(SupportMenu.CATEGORY_MASK);
                        float f4 = i5;
                        float f5 = i6;
                        float f6 = i5 + ((int) ((parseInt3 / 1080.0f) * width));
                        canvas.drawLine(f4, f5, f6, f5, paint);
                        float parseInt4 = i6 + ((int) ((Integer.parseInt(split[3]) / 1920.0f) * height));
                        canvas.drawLine(f6, f5, f6, parseInt4, paint);
                        canvas.drawLine(f6, parseInt4, f4, parseInt4, paint);
                        canvas.drawLine(f4, parseInt4, f4, f5, paint);
                        paint.setColor(-16711936);
                        canvas.drawLine(f4, f5, f6, parseInt4, paint);
                        canvas.drawLine(f4, parseInt4, f6, f5, paint);
                    }
                }
            }
        }
    }

    public void fillMetrics(Metrics metrics) {
        this.f3395v = metrics;
        this.f3376c.fillMetrics(metrics);
    }

    @Override // android.view.View
    public void forceLayout() {
        m();
        super.forceLayout();
    }

    public Object getDesignInformation(int type, Object value) {
        if (type == 0 && (value instanceof String)) {
            String str = (String) value;
            HashMap<String, Integer> hashMap = this.f3386m;
            if (hashMap == null || !hashMap.containsKey(str)) {
                return null;
            }
            return this.f3386m.get(str);
        }
        return null;
    }

    public int getMaxHeight() {
        return this.f3380g;
    }

    public int getMaxWidth() {
        return this.f3379f;
    }

    public int getMinHeight() {
        return this.f3378e;
    }

    public int getMinWidth() {
        return this.f3377d;
    }

    public int getOptimizationLevel() {
        return this.f3376c.getOptimizationLevel();
    }

    public String getSceneString() {
        int id;
        StringBuilder sb = new StringBuilder();
        if (this.f3376c.stringId == null) {
            int id2 = getId();
            if (id2 != -1) {
                this.f3376c.stringId = getContext().getResources().getResourceEntryName(id2);
            } else {
                this.f3376c.stringId = "parent";
            }
        }
        if (this.f3376c.getDebugName() == null) {
            ConstraintWidgetContainer constraintWidgetContainer = this.f3376c;
            constraintWidgetContainer.setDebugName(constraintWidgetContainer.stringId);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(" setDebugName ");
            sb2.append(this.f3376c.getDebugName());
        }
        Iterator<ConstraintWidget> it2 = this.f3376c.getChildren().iterator();
        while (it2.hasNext()) {
            ConstraintWidget next = it2.next();
            View view = (View) next.getCompanionWidget();
            if (view != null) {
                if (next.stringId == null && (id = view.getId()) != -1) {
                    next.stringId = getContext().getResources().getResourceEntryName(id);
                }
                if (next.getDebugName() == null) {
                    next.setDebugName(next.stringId);
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(" setDebugName ");
                    sb3.append(next.getDebugName());
                }
            }
        }
        this.f3376c.getSceneString(sb);
        return sb.toString();
    }

    public View getViewById(int id) {
        return this.f3374a.get(id);
    }

    public final ConstraintWidget getViewWidget(View view) {
        if (view == this) {
            return this.f3376c;
        }
        if (view != null) {
            if (view.getLayoutParams() instanceof LayoutParams) {
                return ((LayoutParams) view.getLayoutParams()).f3421v;
            }
            view.setLayoutParams(generateLayoutParams(view.getLayoutParams()));
            if (view.getLayoutParams() instanceof LayoutParams) {
                return ((LayoutParams) view.getLayoutParams()).f3421v;
            }
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void h(boolean isInEditMode, View child, ConstraintWidget widget, LayoutParams layoutParams, SparseArray<ConstraintWidget> idToWidget) {
        int i2;
        float f4;
        int i4;
        int i5;
        ConstraintWidget constraintWidget;
        ConstraintWidget constraintWidget2;
        ConstraintWidget constraintWidget3;
        ConstraintWidget constraintWidget4;
        int i6;
        layoutParams.validate();
        layoutParams.helped = false;
        widget.setVisibility(child.getVisibility());
        if (layoutParams.f3409j) {
            widget.setInPlaceholder(true);
            widget.setVisibility(8);
        }
        widget.setCompanionWidget(child);
        if (child instanceof ConstraintHelper) {
            ((ConstraintHelper) child).resolveRtl(widget, this.f3376c.isRtl());
        }
        if (layoutParams.f3407h) {
            androidx.constraintlayout.core.widgets.Guideline guideline = (androidx.constraintlayout.core.widgets.Guideline) widget;
            int i7 = layoutParams.f3418s;
            int i8 = layoutParams.f3419t;
            float f5 = layoutParams.f3420u;
            if (Build.VERSION.SDK_INT < 17) {
                i7 = layoutParams.guideBegin;
                i8 = layoutParams.guideEnd;
                f5 = layoutParams.guidePercent;
            }
            if (f5 != -1.0f) {
                guideline.setGuidePercent(f5);
                return;
            } else if (i7 != -1) {
                guideline.setGuideBegin(i7);
                return;
            } else if (i8 != -1) {
                guideline.setGuideEnd(i8);
                return;
            } else {
                return;
            }
        }
        int i9 = layoutParams.f3411l;
        int i10 = layoutParams.f3412m;
        int i11 = layoutParams.f3413n;
        int i12 = layoutParams.f3414o;
        int i13 = layoutParams.f3415p;
        int i14 = layoutParams.f3416q;
        float f6 = layoutParams.f3417r;
        if (Build.VERSION.SDK_INT < 17) {
            i9 = layoutParams.leftToLeft;
            int i15 = layoutParams.leftToRight;
            int i16 = layoutParams.rightToLeft;
            int i17 = layoutParams.rightToRight;
            int i18 = layoutParams.goneLeftMargin;
            int i19 = layoutParams.goneRightMargin;
            float f7 = layoutParams.horizontalBias;
            if (i9 == -1 && i15 == -1) {
                int i20 = layoutParams.startToStart;
                if (i20 != -1) {
                    i9 = i20;
                } else {
                    int i21 = layoutParams.startToEnd;
                    if (i21 != -1) {
                        i15 = i21;
                    }
                }
            }
            if (i16 == -1 && i17 == -1) {
                i4 = layoutParams.endToStart;
                if (i4 == -1) {
                    int i22 = layoutParams.endToEnd;
                    if (i22 != -1) {
                        i2 = i19;
                        f4 = f7;
                        i13 = i18;
                        i5 = i22;
                        i10 = i15;
                        i4 = i16;
                    }
                }
                i2 = i19;
                f4 = f7;
                i13 = i18;
                i5 = i17;
                i10 = i15;
            }
            i4 = i16;
            i2 = i19;
            f4 = f7;
            i13 = i18;
            i5 = i17;
            i10 = i15;
        } else {
            i2 = i14;
            f4 = f6;
            i4 = i11;
            i5 = i12;
        }
        int i23 = layoutParams.circleConstraint;
        if (i23 != -1) {
            ConstraintWidget constraintWidget5 = idToWidget.get(i23);
            if (constraintWidget5 != null) {
                widget.connectCircularConstraint(constraintWidget5, layoutParams.circleAngle, layoutParams.circleRadius);
            }
        } else {
            if (i9 != -1) {
                ConstraintWidget constraintWidget6 = idToWidget.get(i9);
                if (constraintWidget6 != null) {
                    ConstraintAnchor.Type type = ConstraintAnchor.Type.LEFT;
                    widget.immediateConnect(type, constraintWidget6, type, ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, i13);
                }
            } else if (i10 != -1 && (constraintWidget = idToWidget.get(i10)) != null) {
                widget.immediateConnect(ConstraintAnchor.Type.LEFT, constraintWidget, ConstraintAnchor.Type.RIGHT, ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, i13);
            }
            if (i4 != -1) {
                ConstraintWidget constraintWidget7 = idToWidget.get(i4);
                if (constraintWidget7 != null) {
                    widget.immediateConnect(ConstraintAnchor.Type.RIGHT, constraintWidget7, ConstraintAnchor.Type.LEFT, ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, i2);
                }
            } else if (i5 != -1 && (constraintWidget2 = idToWidget.get(i5)) != null) {
                ConstraintAnchor.Type type2 = ConstraintAnchor.Type.RIGHT;
                widget.immediateConnect(type2, constraintWidget2, type2, ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, i2);
            }
            int i24 = layoutParams.topToTop;
            if (i24 != -1) {
                ConstraintWidget constraintWidget8 = idToWidget.get(i24);
                if (constraintWidget8 != null) {
                    ConstraintAnchor.Type type3 = ConstraintAnchor.Type.TOP;
                    widget.immediateConnect(type3, constraintWidget8, type3, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, layoutParams.goneTopMargin);
                }
            } else {
                int i25 = layoutParams.topToBottom;
                if (i25 != -1 && (constraintWidget3 = idToWidget.get(i25)) != null) {
                    widget.immediateConnect(ConstraintAnchor.Type.TOP, constraintWidget3, ConstraintAnchor.Type.BOTTOM, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, layoutParams.goneTopMargin);
                }
            }
            int i26 = layoutParams.bottomToTop;
            if (i26 != -1) {
                ConstraintWidget constraintWidget9 = idToWidget.get(i26);
                if (constraintWidget9 != null) {
                    widget.immediateConnect(ConstraintAnchor.Type.BOTTOM, constraintWidget9, ConstraintAnchor.Type.TOP, ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin, layoutParams.goneBottomMargin);
                }
            } else {
                int i27 = layoutParams.bottomToBottom;
                if (i27 != -1 && (constraintWidget4 = idToWidget.get(i27)) != null) {
                    ConstraintAnchor.Type type4 = ConstraintAnchor.Type.BOTTOM;
                    widget.immediateConnect(type4, constraintWidget4, type4, ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin, layoutParams.goneBottomMargin);
                }
            }
            int i28 = layoutParams.baselineToBaseline;
            if (i28 != -1) {
                s(widget, layoutParams, idToWidget, i28, ConstraintAnchor.Type.BASELINE);
            } else {
                int i29 = layoutParams.baselineToTop;
                if (i29 != -1) {
                    s(widget, layoutParams, idToWidget, i29, ConstraintAnchor.Type.TOP);
                } else {
                    int i30 = layoutParams.baselineToBottom;
                    if (i30 != -1) {
                        s(widget, layoutParams, idToWidget, i30, ConstraintAnchor.Type.BOTTOM);
                    }
                }
            }
            if (f4 >= 0.0f) {
                widget.setHorizontalBiasPercent(f4);
            }
            float f8 = layoutParams.verticalBias;
            if (f8 >= 0.0f) {
                widget.setVerticalBiasPercent(f8);
            }
        }
        if (isInEditMode && ((i6 = layoutParams.editorAbsoluteX) != -1 || layoutParams.editorAbsoluteY != -1)) {
            widget.setOrigin(i6, layoutParams.editorAbsoluteY);
        }
        if (!layoutParams.f3404e) {
            if (((ViewGroup.MarginLayoutParams) layoutParams).width == -1) {
                if (layoutParams.constrainedWidth) {
                    widget.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
                } else {
                    widget.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.MATCH_PARENT);
                }
                widget.getAnchor(ConstraintAnchor.Type.LEFT).mMargin = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                widget.getAnchor(ConstraintAnchor.Type.RIGHT).mMargin = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            } else {
                widget.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
                widget.setWidth(0);
            }
        } else {
            widget.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
            widget.setWidth(((ViewGroup.MarginLayoutParams) layoutParams).width);
            if (((ViewGroup.MarginLayoutParams) layoutParams).width == -2) {
                widget.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.WRAP_CONTENT);
            }
        }
        if (!layoutParams.f3405f) {
            if (((ViewGroup.MarginLayoutParams) layoutParams).height == -1) {
                if (layoutParams.constrainedHeight) {
                    widget.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
                } else {
                    widget.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.MATCH_PARENT);
                }
                widget.getAnchor(ConstraintAnchor.Type.TOP).mMargin = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                widget.getAnchor(ConstraintAnchor.Type.BOTTOM).mMargin = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            } else {
                widget.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
                widget.setHeight(0);
            }
        } else {
            widget.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
            widget.setHeight(((ViewGroup.MarginLayoutParams) layoutParams).height);
            if (((ViewGroup.MarginLayoutParams) layoutParams).height == -2) {
                widget.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.WRAP_CONTENT);
            }
        }
        widget.setDimensionRatio(layoutParams.dimensionRatio);
        widget.setHorizontalWeight(layoutParams.horizontalWeight);
        widget.setVerticalWeight(layoutParams.verticalWeight);
        widget.setHorizontalChainStyle(layoutParams.horizontalChainStyle);
        widget.setVerticalChainStyle(layoutParams.verticalChainStyle);
        widget.setWrapBehaviorInParent(layoutParams.wrapBehaviorInParent);
        widget.setHorizontalMatchStyle(layoutParams.matchConstraintDefaultWidth, layoutParams.matchConstraintMinWidth, layoutParams.matchConstraintMaxWidth, layoutParams.matchConstraintPercentWidth);
        widget.setVerticalMatchStyle(layoutParams.matchConstraintDefaultHeight, layoutParams.matchConstraintMinHeight, layoutParams.matchConstraintMaxHeight, layoutParams.matchConstraintPercentHeight);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* renamed from: i */
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean l() {
        if (Build.VERSION.SDK_INT >= 17) {
            return ((getContext().getApplicationInfo().flags & 4194304) != 0) && 1 == getLayoutDirection();
        }
        return false;
    }

    public void loadLayoutDescription(int layoutDescription) {
        if (layoutDescription != 0) {
            try {
                this.f3384k = new ConstraintLayoutStates(getContext(), this, layoutDescription);
                return;
            } catch (Resources.NotFoundException unused) {
                this.f3384k = null;
                return;
            }
        }
        this.f3384k = null;
    }

    protected void n(int id) {
        this.f3384k = new ConstraintLayoutStates(getContext(), this, id);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void o(int widthMeasureSpec, int heightMeasureSpec, int measuredWidth, int measuredHeight, boolean isWidthMeasuredTooSmall, boolean isHeightMeasuredTooSmall) {
        Measurer measurer = this.f3396w;
        int i2 = measurer.f3426e;
        int resolveSizeAndState = ViewGroup.resolveSizeAndState(measuredWidth + measurer.f3425d, widthMeasureSpec, 0);
        int min = Math.min(this.f3379f, resolveSizeAndState & 16777215);
        int min2 = Math.min(this.f3380g, ViewGroup.resolveSizeAndState(measuredHeight + i2, heightMeasureSpec, 0) & 16777215);
        if (isWidthMeasuredTooSmall) {
            min |= 16777216;
        }
        if (isHeightMeasuredTooSmall) {
            min2 |= 16777216;
        }
        setMeasuredDimension(min, min2);
        this.f3387n = min;
        this.f3388o = min2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        View content;
        int childCount = getChildCount();
        boolean isInEditMode = isInEditMode();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            ConstraintWidget constraintWidget = layoutParams.f3421v;
            if ((childAt.getVisibility() != 8 || layoutParams.f3407h || layoutParams.f3408i || layoutParams.f3410k || isInEditMode) && !layoutParams.f3409j) {
                int x3 = constraintWidget.getX();
                int y3 = constraintWidget.getY();
                int width = constraintWidget.getWidth() + x3;
                int height = constraintWidget.getHeight() + y3;
                childAt.layout(x3, y3, width, height);
                if ((childAt instanceof Placeholder) && (content = ((Placeholder) childAt).getContent()) != null) {
                    content.setVisibility(0);
                    content.layout(x3, y3, width, height);
                }
            }
        }
        int size = this.f3375b.size();
        if (size > 0) {
            for (int i4 = 0; i4 < size; i4++) {
                this.f3375b.get(i4).updatePostLayout(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (this.f3397x == widthMeasureSpec) {
            int i2 = this.f3398y;
        }
        if (!this.f3381h) {
            int childCount = getChildCount();
            int i4 = 0;
            while (true) {
                if (i4 >= childCount) {
                    break;
                } else if (getChildAt(i4).isLayoutRequested()) {
                    this.f3381h = true;
                    break;
                } else {
                    i4++;
                }
            }
        }
        boolean z3 = this.f3381h;
        this.f3397x = widthMeasureSpec;
        this.f3398y = heightMeasureSpec;
        this.f3376c.setRtl(l());
        if (this.f3381h) {
            this.f3381h = false;
            if (t()) {
                this.f3376c.updateHierarchy();
            }
        }
        p(this.f3376c, this.f3382i, widthMeasureSpec, heightMeasureSpec);
        o(widthMeasureSpec, heightMeasureSpec, this.f3376c.getWidth(), this.f3376c.getHeight(), this.f3376c.isWidthMeasuredTooSmall(), this.f3376c.isHeightMeasuredTooSmall());
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        ConstraintWidget viewWidget = getViewWidget(view);
        if ((view instanceof Guideline) && !(viewWidget instanceof androidx.constraintlayout.core.widgets.Guideline)) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            androidx.constraintlayout.core.widgets.Guideline guideline = new androidx.constraintlayout.core.widgets.Guideline();
            layoutParams.f3421v = guideline;
            layoutParams.f3407h = true;
            guideline.setOrientation(layoutParams.orientation);
        }
        if (view instanceof ConstraintHelper) {
            ConstraintHelper constraintHelper = (ConstraintHelper) view;
            constraintHelper.validateParams();
            ((LayoutParams) view.getLayoutParams()).f3408i = true;
            if (!this.f3375b.contains(constraintHelper)) {
                this.f3375b.add(constraintHelper);
            }
        }
        this.f3374a.put(view.getId(), view);
        this.f3381h = true;
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        this.f3374a.remove(view.getId());
        this.f3376c.remove(getViewWidget(view));
        this.f3375b.remove(view);
        this.f3381h = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void p(ConstraintWidgetContainer layout, int optimizationLevel, int widthMeasureSpec, int heightMeasureSpec) {
        int max;
        int mode = View.MeasureSpec.getMode(widthMeasureSpec);
        int size = View.MeasureSpec.getSize(widthMeasureSpec);
        int mode2 = View.MeasureSpec.getMode(heightMeasureSpec);
        int size2 = View.MeasureSpec.getSize(heightMeasureSpec);
        int max2 = Math.max(0, getPaddingTop());
        int max3 = Math.max(0, getPaddingBottom());
        int i2 = max2 + max3;
        int paddingWidth = getPaddingWidth();
        this.f3396w.captureLayoutInfo(widthMeasureSpec, heightMeasureSpec, max2, max3, paddingWidth, i2);
        if (Build.VERSION.SDK_INT >= 17) {
            int max4 = Math.max(0, getPaddingStart());
            int max5 = Math.max(0, getPaddingEnd());
            if (max4 <= 0 && max5 <= 0) {
                max4 = Math.max(0, getPaddingLeft());
            } else if (l()) {
                max4 = max5;
            }
            max = max4;
        } else {
            max = Math.max(0, getPaddingLeft());
        }
        int i4 = size - paddingWidth;
        int i5 = size2 - i2;
        r(layout, mode, i4, mode2, i5);
        layout.measure(optimizationLevel, mode, i4, mode2, i5, this.f3387n, this.f3388o, max, max2);
    }

    protected void r(ConstraintWidgetContainer layout, int widthMode, int widthSize, int heightMode, int heightSize) {
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        Measurer measurer = this.f3396w;
        int i2 = measurer.f3426e;
        int i4 = measurer.f3425d;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.FIXED;
        int childCount = getChildCount();
        if (widthMode == Integer.MIN_VALUE) {
            dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            if (childCount == 0) {
                widthSize = Math.max(0, this.f3377d);
            }
        } else if (widthMode == 0) {
            dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            if (childCount == 0) {
                widthSize = Math.max(0, this.f3377d);
            }
            widthSize = 0;
        } else if (widthMode != 1073741824) {
            dimensionBehaviour = dimensionBehaviour2;
            widthSize = 0;
        } else {
            widthSize = Math.min(this.f3379f - i4, widthSize);
            dimensionBehaviour = dimensionBehaviour2;
        }
        if (heightMode == Integer.MIN_VALUE) {
            dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            if (childCount == 0) {
                heightSize = Math.max(0, this.f3378e);
            }
        } else if (heightMode != 0) {
            if (heightMode == 1073741824) {
                heightSize = Math.min(this.f3380g - i2, heightSize);
            }
            heightSize = 0;
        } else {
            dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            if (childCount == 0) {
                heightSize = Math.max(0, this.f3378e);
            }
            heightSize = 0;
        }
        if (widthSize != layout.getWidth() || heightSize != layout.getHeight()) {
            layout.invalidateMeasures();
        }
        layout.setX(0);
        layout.setY(0);
        layout.setMaxWidth(this.f3379f - i4);
        layout.setMaxHeight(this.f3380g - i2);
        layout.setMinWidth(0);
        layout.setMinHeight(0);
        layout.setHorizontalDimensionBehaviour(dimensionBehaviour);
        layout.setWidth(widthSize);
        layout.setVerticalDimensionBehaviour(dimensionBehaviour2);
        layout.setHeight(heightSize);
        layout.setMinWidth(this.f3377d - i4);
        layout.setMinHeight(this.f3378e - i2);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        m();
        super.requestLayout();
    }

    public void setConstraintSet(ConstraintSet set) {
        this.f3383j = set;
    }

    public void setDesignInformation(int type, Object value1, Object value2) {
        if (type == 0 && (value1 instanceof String) && (value2 instanceof Integer)) {
            if (this.f3386m == null) {
                this.f3386m = new HashMap<>();
            }
            String str = (String) value1;
            int indexOf = str.indexOf(e.F0);
            if (indexOf != -1) {
                str = str.substring(indexOf + 1);
            }
            this.f3386m.put(str, Integer.valueOf(((Integer) value2).intValue()));
        }
    }

    @Override // android.view.View
    public void setId(int id) {
        this.f3374a.remove(getId());
        super.setId(id);
        this.f3374a.put(getId(), this);
    }

    public void setMaxHeight(int value) {
        if (value == this.f3380g) {
            return;
        }
        this.f3380g = value;
        requestLayout();
    }

    public void setMaxWidth(int value) {
        if (value == this.f3379f) {
            return;
        }
        this.f3379f = value;
        requestLayout();
    }

    public void setMinHeight(int value) {
        if (value == this.f3378e) {
            return;
        }
        this.f3378e = value;
        requestLayout();
    }

    public void setMinWidth(int value) {
        if (value == this.f3377d) {
            return;
        }
        this.f3377d = value;
        requestLayout();
    }

    public void setOnConstraintsChanged(ConstraintsChangedListener constraintsChangedListener) {
        this.f3394u = constraintsChangedListener;
        ConstraintLayoutStates constraintLayoutStates = this.f3384k;
        if (constraintLayoutStates != null) {
            constraintLayoutStates.setOnConstraintsChanged(constraintsChangedListener);
        }
    }

    public void setOptimizationLevel(int level) {
        this.f3382i = level;
        this.f3376c.setOptimizationLevel(level);
    }

    public void setState(int id, int screenWidth, int screenHeight) {
        ConstraintLayoutStates constraintLayoutStates = this.f3384k;
        if (constraintLayoutStates != null) {
            constraintLayoutStates.updateConstraints(id, screenWidth, screenHeight);
        }
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attrs) {
        return new LayoutParams(getContext(), attrs);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams p3) {
        return new LayoutParams(p3);
    }

    public ConstraintLayout(@NonNull Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        this.f3374a = new SparseArray<>();
        this.f3375b = new ArrayList<>(4);
        this.f3376c = new ConstraintWidgetContainer();
        this.f3377d = 0;
        this.f3378e = 0;
        this.f3379f = Integer.MAX_VALUE;
        this.f3380g = Integer.MAX_VALUE;
        this.f3381h = true;
        this.f3382i = 257;
        this.f3383j = null;
        this.f3384k = null;
        this.f3385l = -1;
        this.f3386m = new HashMap<>();
        this.f3387n = -1;
        this.f3388o = -1;
        this.f3389p = -1;
        this.f3390q = -1;
        this.f3391r = 0;
        this.f3392s = 0;
        this.f3393t = new SparseArray<>();
        this.f3396w = new Measurer(this);
        this.f3397x = 0;
        this.f3398y = 0;
        k(attrs, 0, 0);
    }

    public ConstraintLayout(@NonNull Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f3374a = new SparseArray<>();
        this.f3375b = new ArrayList<>(4);
        this.f3376c = new ConstraintWidgetContainer();
        this.f3377d = 0;
        this.f3378e = 0;
        this.f3379f = Integer.MAX_VALUE;
        this.f3380g = Integer.MAX_VALUE;
        this.f3381h = true;
        this.f3382i = 257;
        this.f3383j = null;
        this.f3384k = null;
        this.f3385l = -1;
        this.f3386m = new HashMap<>();
        this.f3387n = -1;
        this.f3388o = -1;
        this.f3389p = -1;
        this.f3390q = -1;
        this.f3391r = 0;
        this.f3392s = 0;
        this.f3393t = new SparseArray<>();
        this.f3396w = new Measurer(this);
        this.f3397x = 0;
        this.f3398y = 0;
        k(attrs, defStyleAttr, 0);
    }

    @TargetApi(21)
    public ConstraintLayout(@NonNull Context context, @Nullable AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        this.f3374a = new SparseArray<>();
        this.f3375b = new ArrayList<>(4);
        this.f3376c = new ConstraintWidgetContainer();
        this.f3377d = 0;
        this.f3378e = 0;
        this.f3379f = Integer.MAX_VALUE;
        this.f3380g = Integer.MAX_VALUE;
        this.f3381h = true;
        this.f3382i = 257;
        this.f3383j = null;
        this.f3384k = null;
        this.f3385l = -1;
        this.f3386m = new HashMap<>();
        this.f3387n = -1;
        this.f3388o = -1;
        this.f3389p = -1;
        this.f3390q = -1;
        this.f3391r = 0;
        this.f3392s = 0;
        this.f3393t = new SparseArray<>();
        this.f3396w = new Measurer(this);
        this.f3397x = 0;
        this.f3398y = 0;
        k(attrs, defStyleAttr, defStyleRes);
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public static final int BASELINE = 5;
        public static final int BOTTOM = 4;
        public static final int CHAIN_PACKED = 2;
        public static final int CHAIN_SPREAD = 0;
        public static final int CHAIN_SPREAD_INSIDE = 1;
        public static final int CIRCLE = 8;
        public static final int END = 7;
        public static final int GONE_UNSET = Integer.MIN_VALUE;
        public static final int HORIZONTAL = 0;
        public static final int LEFT = 1;
        public static final int MATCH_CONSTRAINT = 0;
        public static final int MATCH_CONSTRAINT_PERCENT = 2;
        public static final int MATCH_CONSTRAINT_SPREAD = 0;
        public static final int MATCH_CONSTRAINT_WRAP = 1;
        public static final int PARENT_ID = 0;
        public static final int RIGHT = 2;
        public static final int START = 6;
        public static final int TOP = 3;
        public static final int UNSET = -1;
        public static final int VERTICAL = 1;
        public static final int WRAP_BEHAVIOR_HORIZONTAL_ONLY = 1;
        public static final int WRAP_BEHAVIOR_INCLUDED = 0;
        public static final int WRAP_BEHAVIOR_SKIPPED = 3;
        public static final int WRAP_BEHAVIOR_VERTICAL_ONLY = 2;

        /* renamed from: a  reason: collision with root package name */
        boolean f3400a;

        /* renamed from: b  reason: collision with root package name */
        boolean f3401b;
        public int baselineMargin;
        public int baselineToBaseline;
        public int baselineToBottom;
        public int baselineToTop;
        public int bottomToBottom;
        public int bottomToTop;

        /* renamed from: c  reason: collision with root package name */
        float f3402c;
        public float circleAngle;
        public int circleConstraint;
        public int circleRadius;
        public boolean constrainedHeight;
        public boolean constrainedWidth;
        public String constraintTag;

        /* renamed from: d  reason: collision with root package name */
        int f3403d;
        public String dimensionRatio;

        /* renamed from: e  reason: collision with root package name */
        boolean f3404e;
        public int editorAbsoluteX;
        public int editorAbsoluteY;
        public int endToEnd;
        public int endToStart;

        /* renamed from: f  reason: collision with root package name */
        boolean f3405f;

        /* renamed from: g  reason: collision with root package name */
        boolean f3406g;
        public int goneBaselineMargin;
        public int goneBottomMargin;
        public int goneEndMargin;
        public int goneLeftMargin;
        public int goneRightMargin;
        public int goneStartMargin;
        public int goneTopMargin;
        public int guideBegin;
        public int guideEnd;
        public float guidePercent;
        public boolean guidelineUseRtl;

        /* renamed from: h  reason: collision with root package name */
        boolean f3407h;
        public boolean helped;
        public float horizontalBias;
        public int horizontalChainStyle;
        public float horizontalWeight;

        /* renamed from: i  reason: collision with root package name */
        boolean f3408i;

        /* renamed from: j  reason: collision with root package name */
        boolean f3409j;

        /* renamed from: k  reason: collision with root package name */
        boolean f3410k;

        /* renamed from: l  reason: collision with root package name */
        int f3411l;
        public int leftToLeft;
        public int leftToRight;

        /* renamed from: m  reason: collision with root package name */
        int f3412m;
        public int matchConstraintDefaultHeight;
        public int matchConstraintDefaultWidth;
        public int matchConstraintMaxHeight;
        public int matchConstraintMaxWidth;
        public int matchConstraintMinHeight;
        public int matchConstraintMinWidth;
        public float matchConstraintPercentHeight;
        public float matchConstraintPercentWidth;

        /* renamed from: n  reason: collision with root package name */
        int f3413n;

        /* renamed from: o  reason: collision with root package name */
        int f3414o;
        public int orientation;

        /* renamed from: p  reason: collision with root package name */
        int f3415p;

        /* renamed from: q  reason: collision with root package name */
        int f3416q;

        /* renamed from: r  reason: collision with root package name */
        float f3417r;
        public int rightToLeft;
        public int rightToRight;

        /* renamed from: s  reason: collision with root package name */
        int f3418s;
        public int startToEnd;
        public int startToStart;

        /* renamed from: t  reason: collision with root package name */
        int f3419t;
        public int topToBottom;
        public int topToTop;

        /* renamed from: u  reason: collision with root package name */
        float f3420u;

        /* renamed from: v  reason: collision with root package name */
        ConstraintWidget f3421v;
        public float verticalBias;
        public int verticalChainStyle;
        public float verticalWeight;
        public int wrapBehaviorInParent;

        /* loaded from: classes.dex */
        private static class Table {
            public static final int ANDROID_ORIENTATION = 1;
            public static final int GUIDELINE_USE_RTL = 67;
            public static final int LAYOUT_CONSTRAINED_HEIGHT = 28;
            public static final int LAYOUT_CONSTRAINED_WIDTH = 27;
            public static final int LAYOUT_CONSTRAINT_BASELINE_CREATOR = 43;
            public static final int LAYOUT_CONSTRAINT_BASELINE_TO_BASELINE_OF = 16;
            public static final int LAYOUT_CONSTRAINT_BASELINE_TO_BOTTOM_OF = 53;
            public static final int LAYOUT_CONSTRAINT_BASELINE_TO_TOP_OF = 52;
            public static final int LAYOUT_CONSTRAINT_BOTTOM_CREATOR = 42;
            public static final int LAYOUT_CONSTRAINT_BOTTOM_TO_BOTTOM_OF = 15;
            public static final int LAYOUT_CONSTRAINT_BOTTOM_TO_TOP_OF = 14;
            public static final int LAYOUT_CONSTRAINT_CIRCLE = 2;
            public static final int LAYOUT_CONSTRAINT_CIRCLE_ANGLE = 4;
            public static final int LAYOUT_CONSTRAINT_CIRCLE_RADIUS = 3;
            public static final int LAYOUT_CONSTRAINT_DIMENSION_RATIO = 44;
            public static final int LAYOUT_CONSTRAINT_END_TO_END_OF = 20;
            public static final int LAYOUT_CONSTRAINT_END_TO_START_OF = 19;
            public static final int LAYOUT_CONSTRAINT_GUIDE_BEGIN = 5;
            public static final int LAYOUT_CONSTRAINT_GUIDE_END = 6;
            public static final int LAYOUT_CONSTRAINT_GUIDE_PERCENT = 7;
            public static final int LAYOUT_CONSTRAINT_HEIGHT = 65;
            public static final int LAYOUT_CONSTRAINT_HEIGHT_DEFAULT = 32;
            public static final int LAYOUT_CONSTRAINT_HEIGHT_MAX = 37;
            public static final int LAYOUT_CONSTRAINT_HEIGHT_MIN = 36;
            public static final int LAYOUT_CONSTRAINT_HEIGHT_PERCENT = 38;
            public static final int LAYOUT_CONSTRAINT_HORIZONTAL_BIAS = 29;
            public static final int LAYOUT_CONSTRAINT_HORIZONTAL_CHAINSTYLE = 47;
            public static final int LAYOUT_CONSTRAINT_HORIZONTAL_WEIGHT = 45;
            public static final int LAYOUT_CONSTRAINT_LEFT_CREATOR = 39;
            public static final int LAYOUT_CONSTRAINT_LEFT_TO_LEFT_OF = 8;
            public static final int LAYOUT_CONSTRAINT_LEFT_TO_RIGHT_OF = 9;
            public static final int LAYOUT_CONSTRAINT_RIGHT_CREATOR = 41;
            public static final int LAYOUT_CONSTRAINT_RIGHT_TO_LEFT_OF = 10;
            public static final int LAYOUT_CONSTRAINT_RIGHT_TO_RIGHT_OF = 11;
            public static final int LAYOUT_CONSTRAINT_START_TO_END_OF = 17;
            public static final int LAYOUT_CONSTRAINT_START_TO_START_OF = 18;
            public static final int LAYOUT_CONSTRAINT_TAG = 51;
            public static final int LAYOUT_CONSTRAINT_TOP_CREATOR = 40;
            public static final int LAYOUT_CONSTRAINT_TOP_TO_BOTTOM_OF = 13;
            public static final int LAYOUT_CONSTRAINT_TOP_TO_TOP_OF = 12;
            public static final int LAYOUT_CONSTRAINT_VERTICAL_BIAS = 30;
            public static final int LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE = 48;
            public static final int LAYOUT_CONSTRAINT_VERTICAL_WEIGHT = 46;
            public static final int LAYOUT_CONSTRAINT_WIDTH = 64;
            public static final int LAYOUT_CONSTRAINT_WIDTH_DEFAULT = 31;
            public static final int LAYOUT_CONSTRAINT_WIDTH_MAX = 34;
            public static final int LAYOUT_CONSTRAINT_WIDTH_MIN = 33;
            public static final int LAYOUT_CONSTRAINT_WIDTH_PERCENT = 35;
            public static final int LAYOUT_EDITOR_ABSOLUTEX = 49;
            public static final int LAYOUT_EDITOR_ABSOLUTEY = 50;
            public static final int LAYOUT_GONE_MARGIN_BASELINE = 55;
            public static final int LAYOUT_GONE_MARGIN_BOTTOM = 24;
            public static final int LAYOUT_GONE_MARGIN_END = 26;
            public static final int LAYOUT_GONE_MARGIN_LEFT = 21;
            public static final int LAYOUT_GONE_MARGIN_RIGHT = 23;
            public static final int LAYOUT_GONE_MARGIN_START = 25;
            public static final int LAYOUT_GONE_MARGIN_TOP = 22;
            public static final int LAYOUT_MARGIN_BASELINE = 54;
            public static final int LAYOUT_WRAP_BEHAVIOR_IN_PARENT = 66;
            public static final int UNUSED = 0;
            public static final SparseIntArray map;

            static {
                SparseIntArray sparseIntArray = new SparseIntArray();
                map = sparseIntArray;
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintWidth, 64);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintHeight, 65);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintLeft_toLeftOf, 8);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintLeft_toRightOf, 9);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintRight_toLeftOf, 10);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintRight_toRightOf, 11);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintTop_toTopOf, 12);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintTop_toBottomOf, 13);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintBottom_toTopOf, 14);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintBottom_toBottomOf, 15);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintBaseline_toBaselineOf, 16);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintBaseline_toTopOf, 52);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintBaseline_toBottomOf, 53);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintCircle, 2);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintCircleRadius, 3);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintCircleAngle, 4);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_editor_absoluteX, 49);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_editor_absoluteY, 50);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintGuide_begin, 5);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintGuide_end, 6);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintGuide_percent, 7);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_guidelineUseRtl, 67);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_android_orientation, 1);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintStart_toEndOf, 17);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintStart_toStartOf, 18);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintEnd_toStartOf, 19);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintEnd_toEndOf, 20);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginLeft, 21);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginTop, 22);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginRight, 23);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginBottom, 24);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginStart, 25);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginEnd, 26);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginBaseline, 55);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_marginBaseline, 54);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_bias, 29);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintVertical_bias, 30);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintDimensionRatio, 44);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_weight, 45);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintVertical_weight, 46);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_chainStyle, 47);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintVertical_chainStyle, 48);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constrainedWidth, 27);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constrainedHeight, 28);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintWidth_default, 31);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintHeight_default, 32);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintWidth_min, 33);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintWidth_max, 34);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintWidth_percent, 35);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintHeight_min, 36);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintHeight_max, 37);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintHeight_percent, 38);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintLeft_creator, 39);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintTop_creator, 40);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintRight_creator, 41);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintBottom_creator, 42);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintBaseline_creator, 43);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintTag, 51);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_wrapBehaviorInParent, 66);
            }

            private Table() {
            }
        }

        public LayoutParams(LayoutParams source) {
            super((ViewGroup.MarginLayoutParams) source);
            this.guideBegin = -1;
            this.guideEnd = -1;
            this.guidePercent = -1.0f;
            this.guidelineUseRtl = true;
            this.leftToLeft = -1;
            this.leftToRight = -1;
            this.rightToLeft = -1;
            this.rightToRight = -1;
            this.topToTop = -1;
            this.topToBottom = -1;
            this.bottomToTop = -1;
            this.bottomToBottom = -1;
            this.baselineToBaseline = -1;
            this.baselineToTop = -1;
            this.baselineToBottom = -1;
            this.circleConstraint = -1;
            this.circleRadius = 0;
            this.circleAngle = 0.0f;
            this.startToEnd = -1;
            this.startToStart = -1;
            this.endToStart = -1;
            this.endToEnd = -1;
            this.goneLeftMargin = Integer.MIN_VALUE;
            this.goneTopMargin = Integer.MIN_VALUE;
            this.goneRightMargin = Integer.MIN_VALUE;
            this.goneBottomMargin = Integer.MIN_VALUE;
            this.goneStartMargin = Integer.MIN_VALUE;
            this.goneEndMargin = Integer.MIN_VALUE;
            this.goneBaselineMargin = Integer.MIN_VALUE;
            this.baselineMargin = 0;
            this.f3400a = true;
            this.f3401b = true;
            this.horizontalBias = 0.5f;
            this.verticalBias = 0.5f;
            this.dimensionRatio = null;
            this.f3402c = 0.0f;
            this.f3403d = 1;
            this.horizontalWeight = -1.0f;
            this.verticalWeight = -1.0f;
            this.horizontalChainStyle = 0;
            this.verticalChainStyle = 0;
            this.matchConstraintDefaultWidth = 0;
            this.matchConstraintDefaultHeight = 0;
            this.matchConstraintMinWidth = 0;
            this.matchConstraintMinHeight = 0;
            this.matchConstraintMaxWidth = 0;
            this.matchConstraintMaxHeight = 0;
            this.matchConstraintPercentWidth = 1.0f;
            this.matchConstraintPercentHeight = 1.0f;
            this.editorAbsoluteX = -1;
            this.editorAbsoluteY = -1;
            this.orientation = -1;
            this.constrainedWidth = false;
            this.constrainedHeight = false;
            this.constraintTag = null;
            this.wrapBehaviorInParent = 0;
            this.f3404e = true;
            this.f3405f = true;
            this.f3406g = false;
            this.f3407h = false;
            this.f3408i = false;
            this.f3409j = false;
            this.f3410k = false;
            this.f3411l = -1;
            this.f3412m = -1;
            this.f3413n = -1;
            this.f3414o = -1;
            this.f3415p = Integer.MIN_VALUE;
            this.f3416q = Integer.MIN_VALUE;
            this.f3417r = 0.5f;
            this.f3421v = new ConstraintWidget();
            this.helped = false;
            this.guideBegin = source.guideBegin;
            this.guideEnd = source.guideEnd;
            this.guidePercent = source.guidePercent;
            this.guidelineUseRtl = source.guidelineUseRtl;
            this.leftToLeft = source.leftToLeft;
            this.leftToRight = source.leftToRight;
            this.rightToLeft = source.rightToLeft;
            this.rightToRight = source.rightToRight;
            this.topToTop = source.topToTop;
            this.topToBottom = source.topToBottom;
            this.bottomToTop = source.bottomToTop;
            this.bottomToBottom = source.bottomToBottom;
            this.baselineToBaseline = source.baselineToBaseline;
            this.baselineToTop = source.baselineToTop;
            this.baselineToBottom = source.baselineToBottom;
            this.circleConstraint = source.circleConstraint;
            this.circleRadius = source.circleRadius;
            this.circleAngle = source.circleAngle;
            this.startToEnd = source.startToEnd;
            this.startToStart = source.startToStart;
            this.endToStart = source.endToStart;
            this.endToEnd = source.endToEnd;
            this.goneLeftMargin = source.goneLeftMargin;
            this.goneTopMargin = source.goneTopMargin;
            this.goneRightMargin = source.goneRightMargin;
            this.goneBottomMargin = source.goneBottomMargin;
            this.goneStartMargin = source.goneStartMargin;
            this.goneEndMargin = source.goneEndMargin;
            this.goneBaselineMargin = source.goneBaselineMargin;
            this.baselineMargin = source.baselineMargin;
            this.horizontalBias = source.horizontalBias;
            this.verticalBias = source.verticalBias;
            this.dimensionRatio = source.dimensionRatio;
            this.f3402c = source.f3402c;
            this.f3403d = source.f3403d;
            this.horizontalWeight = source.horizontalWeight;
            this.verticalWeight = source.verticalWeight;
            this.horizontalChainStyle = source.horizontalChainStyle;
            this.verticalChainStyle = source.verticalChainStyle;
            this.constrainedWidth = source.constrainedWidth;
            this.constrainedHeight = source.constrainedHeight;
            this.matchConstraintDefaultWidth = source.matchConstraintDefaultWidth;
            this.matchConstraintDefaultHeight = source.matchConstraintDefaultHeight;
            this.matchConstraintMinWidth = source.matchConstraintMinWidth;
            this.matchConstraintMaxWidth = source.matchConstraintMaxWidth;
            this.matchConstraintMinHeight = source.matchConstraintMinHeight;
            this.matchConstraintMaxHeight = source.matchConstraintMaxHeight;
            this.matchConstraintPercentWidth = source.matchConstraintPercentWidth;
            this.matchConstraintPercentHeight = source.matchConstraintPercentHeight;
            this.editorAbsoluteX = source.editorAbsoluteX;
            this.editorAbsoluteY = source.editorAbsoluteY;
            this.orientation = source.orientation;
            this.f3404e = source.f3404e;
            this.f3405f = source.f3405f;
            this.f3406g = source.f3406g;
            this.f3407h = source.f3407h;
            this.f3411l = source.f3411l;
            this.f3412m = source.f3412m;
            this.f3413n = source.f3413n;
            this.f3414o = source.f3414o;
            this.f3415p = source.f3415p;
            this.f3416q = source.f3416q;
            this.f3417r = source.f3417r;
            this.constraintTag = source.constraintTag;
            this.wrapBehaviorInParent = source.wrapBehaviorInParent;
            this.f3421v = source.f3421v;
            this.f3400a = source.f3400a;
            this.f3401b = source.f3401b;
        }

        public String getConstraintTag() {
            return this.constraintTag;
        }

        public ConstraintWidget getConstraintWidget() {
            return this.f3421v;
        }

        public void reset() {
            ConstraintWidget constraintWidget = this.f3421v;
            if (constraintWidget != null) {
                constraintWidget.reset();
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0041  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0054  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x005b  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x0062  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0068  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x006e  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x0084  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x008c  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x009e  */
        @Override // android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
        @android.annotation.TargetApi(17)
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void resolveLayoutDirection(int r11) {
            /*
                Method dump skipped, instructions count: 269
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.resolveLayoutDirection(int):void");
        }

        public void setWidgetDebugName(String text) {
            this.f3421v.setDebugName(text);
        }

        public void validate() {
            this.f3407h = false;
            this.f3404e = true;
            this.f3405f = true;
            int i2 = ((ViewGroup.MarginLayoutParams) this).width;
            if (i2 == -2 && this.constrainedWidth) {
                this.f3404e = false;
                if (this.matchConstraintDefaultWidth == 0) {
                    this.matchConstraintDefaultWidth = 1;
                }
            }
            int i4 = ((ViewGroup.MarginLayoutParams) this).height;
            if (i4 == -2 && this.constrainedHeight) {
                this.f3405f = false;
                if (this.matchConstraintDefaultHeight == 0) {
                    this.matchConstraintDefaultHeight = 1;
                }
            }
            if (i2 == 0 || i2 == -1) {
                this.f3404e = false;
                if (i2 == 0 && this.matchConstraintDefaultWidth == 1) {
                    ((ViewGroup.MarginLayoutParams) this).width = -2;
                    this.constrainedWidth = true;
                }
            }
            if (i4 == 0 || i4 == -1) {
                this.f3405f = false;
                if (i4 == 0 && this.matchConstraintDefaultHeight == 1) {
                    ((ViewGroup.MarginLayoutParams) this).height = -2;
                    this.constrainedHeight = true;
                }
            }
            if (this.guidePercent == -1.0f && this.guideBegin == -1 && this.guideEnd == -1) {
                return;
            }
            this.f3407h = true;
            this.f3404e = true;
            this.f3405f = true;
            if (!(this.f3421v instanceof androidx.constraintlayout.core.widgets.Guideline)) {
                this.f3421v = new androidx.constraintlayout.core.widgets.Guideline();
            }
            ((androidx.constraintlayout.core.widgets.Guideline) this.f3421v).setOrientation(this.orientation);
        }

        public LayoutParams(Context c4, AttributeSet attrs) {
            super(c4, attrs);
            this.guideBegin = -1;
            this.guideEnd = -1;
            this.guidePercent = -1.0f;
            this.guidelineUseRtl = true;
            this.leftToLeft = -1;
            this.leftToRight = -1;
            this.rightToLeft = -1;
            this.rightToRight = -1;
            this.topToTop = -1;
            this.topToBottom = -1;
            this.bottomToTop = -1;
            this.bottomToBottom = -1;
            this.baselineToBaseline = -1;
            this.baselineToTop = -1;
            this.baselineToBottom = -1;
            this.circleConstraint = -1;
            this.circleRadius = 0;
            this.circleAngle = 0.0f;
            this.startToEnd = -1;
            this.startToStart = -1;
            this.endToStart = -1;
            this.endToEnd = -1;
            this.goneLeftMargin = Integer.MIN_VALUE;
            this.goneTopMargin = Integer.MIN_VALUE;
            this.goneRightMargin = Integer.MIN_VALUE;
            this.goneBottomMargin = Integer.MIN_VALUE;
            this.goneStartMargin = Integer.MIN_VALUE;
            this.goneEndMargin = Integer.MIN_VALUE;
            this.goneBaselineMargin = Integer.MIN_VALUE;
            this.baselineMargin = 0;
            this.f3400a = true;
            this.f3401b = true;
            this.horizontalBias = 0.5f;
            this.verticalBias = 0.5f;
            this.dimensionRatio = null;
            this.f3402c = 0.0f;
            this.f3403d = 1;
            this.horizontalWeight = -1.0f;
            this.verticalWeight = -1.0f;
            this.horizontalChainStyle = 0;
            this.verticalChainStyle = 0;
            this.matchConstraintDefaultWidth = 0;
            this.matchConstraintDefaultHeight = 0;
            this.matchConstraintMinWidth = 0;
            this.matchConstraintMinHeight = 0;
            this.matchConstraintMaxWidth = 0;
            this.matchConstraintMaxHeight = 0;
            this.matchConstraintPercentWidth = 1.0f;
            this.matchConstraintPercentHeight = 1.0f;
            this.editorAbsoluteX = -1;
            this.editorAbsoluteY = -1;
            this.orientation = -1;
            this.constrainedWidth = false;
            this.constrainedHeight = false;
            this.constraintTag = null;
            this.wrapBehaviorInParent = 0;
            this.f3404e = true;
            this.f3405f = true;
            this.f3406g = false;
            this.f3407h = false;
            this.f3408i = false;
            this.f3409j = false;
            this.f3410k = false;
            this.f3411l = -1;
            this.f3412m = -1;
            this.f3413n = -1;
            this.f3414o = -1;
            this.f3415p = Integer.MIN_VALUE;
            this.f3416q = Integer.MIN_VALUE;
            this.f3417r = 0.5f;
            this.f3421v = new ConstraintWidget();
            this.helped = false;
            TypedArray obtainStyledAttributes = c4.obtainStyledAttributes(attrs, R.styleable.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                int i4 = Table.map.get(index);
                switch (i4) {
                    case 1:
                        this.orientation = obtainStyledAttributes.getInt(index, this.orientation);
                        break;
                    case 2:
                        int resourceId = obtainStyledAttributes.getResourceId(index, this.circleConstraint);
                        this.circleConstraint = resourceId;
                        if (resourceId == -1) {
                            this.circleConstraint = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        this.circleRadius = obtainStyledAttributes.getDimensionPixelSize(index, this.circleRadius);
                        break;
                    case 4:
                        float f4 = obtainStyledAttributes.getFloat(index, this.circleAngle) % 360.0f;
                        this.circleAngle = f4;
                        if (f4 < 0.0f) {
                            this.circleAngle = (360.0f - f4) % 360.0f;
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        this.guideBegin = obtainStyledAttributes.getDimensionPixelOffset(index, this.guideBegin);
                        break;
                    case 6:
                        this.guideEnd = obtainStyledAttributes.getDimensionPixelOffset(index, this.guideEnd);
                        break;
                    case 7:
                        this.guidePercent = obtainStyledAttributes.getFloat(index, this.guidePercent);
                        break;
                    case 8:
                        int resourceId2 = obtainStyledAttributes.getResourceId(index, this.leftToLeft);
                        this.leftToLeft = resourceId2;
                        if (resourceId2 == -1) {
                            this.leftToLeft = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        int resourceId3 = obtainStyledAttributes.getResourceId(index, this.leftToRight);
                        this.leftToRight = resourceId3;
                        if (resourceId3 == -1) {
                            this.leftToRight = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        int resourceId4 = obtainStyledAttributes.getResourceId(index, this.rightToLeft);
                        this.rightToLeft = resourceId4;
                        if (resourceId4 == -1) {
                            this.rightToLeft = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        int resourceId5 = obtainStyledAttributes.getResourceId(index, this.rightToRight);
                        this.rightToRight = resourceId5;
                        if (resourceId5 == -1) {
                            this.rightToRight = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        int resourceId6 = obtainStyledAttributes.getResourceId(index, this.topToTop);
                        this.topToTop = resourceId6;
                        if (resourceId6 == -1) {
                            this.topToTop = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        int resourceId7 = obtainStyledAttributes.getResourceId(index, this.topToBottom);
                        this.topToBottom = resourceId7;
                        if (resourceId7 == -1) {
                            this.topToBottom = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        int resourceId8 = obtainStyledAttributes.getResourceId(index, this.bottomToTop);
                        this.bottomToTop = resourceId8;
                        if (resourceId8 == -1) {
                            this.bottomToTop = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        int resourceId9 = obtainStyledAttributes.getResourceId(index, this.bottomToBottom);
                        this.bottomToBottom = resourceId9;
                        if (resourceId9 == -1) {
                            this.bottomToBottom = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        int resourceId10 = obtainStyledAttributes.getResourceId(index, this.baselineToBaseline);
                        this.baselineToBaseline = resourceId10;
                        if (resourceId10 == -1) {
                            this.baselineToBaseline = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        int resourceId11 = obtainStyledAttributes.getResourceId(index, this.startToEnd);
                        this.startToEnd = resourceId11;
                        if (resourceId11 == -1) {
                            this.startToEnd = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        int resourceId12 = obtainStyledAttributes.getResourceId(index, this.startToStart);
                        this.startToStart = resourceId12;
                        if (resourceId12 == -1) {
                            this.startToStart = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 19:
                        int resourceId13 = obtainStyledAttributes.getResourceId(index, this.endToStart);
                        this.endToStart = resourceId13;
                        if (resourceId13 == -1) {
                            this.endToStart = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 20:
                        int resourceId14 = obtainStyledAttributes.getResourceId(index, this.endToEnd);
                        this.endToEnd = resourceId14;
                        if (resourceId14 == -1) {
                            this.endToEnd = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 21:
                        this.goneLeftMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.goneLeftMargin);
                        break;
                    case 22:
                        this.goneTopMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.goneTopMargin);
                        break;
                    case 23:
                        this.goneRightMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.goneRightMargin);
                        break;
                    case 24:
                        this.goneBottomMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.goneBottomMargin);
                        break;
                    case 25:
                        this.goneStartMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.goneStartMargin);
                        break;
                    case 26:
                        this.goneEndMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.goneEndMargin);
                        break;
                    case 27:
                        this.constrainedWidth = obtainStyledAttributes.getBoolean(index, this.constrainedWidth);
                        break;
                    case 28:
                        this.constrainedHeight = obtainStyledAttributes.getBoolean(index, this.constrainedHeight);
                        break;
                    case 29:
                        this.horizontalBias = obtainStyledAttributes.getFloat(index, this.horizontalBias);
                        break;
                    case 30:
                        this.verticalBias = obtainStyledAttributes.getFloat(index, this.verticalBias);
                        break;
                    case 31:
                        this.matchConstraintDefaultWidth = obtainStyledAttributes.getInt(index, 0);
                        break;
                    case 32:
                        this.matchConstraintDefaultHeight = obtainStyledAttributes.getInt(index, 0);
                        break;
                    case 33:
                        try {
                            this.matchConstraintMinWidth = obtainStyledAttributes.getDimensionPixelSize(index, this.matchConstraintMinWidth);
                            break;
                        } catch (Exception unused) {
                            if (obtainStyledAttributes.getInt(index, this.matchConstraintMinWidth) == -2) {
                                this.matchConstraintMinWidth = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 34:
                        try {
                            this.matchConstraintMaxWidth = obtainStyledAttributes.getDimensionPixelSize(index, this.matchConstraintMaxWidth);
                            break;
                        } catch (Exception unused2) {
                            if (obtainStyledAttributes.getInt(index, this.matchConstraintMaxWidth) == -2) {
                                this.matchConstraintMaxWidth = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 35:
                        this.matchConstraintPercentWidth = Math.max(0.0f, obtainStyledAttributes.getFloat(index, this.matchConstraintPercentWidth));
                        this.matchConstraintDefaultWidth = 2;
                        break;
                    case 36:
                        try {
                            this.matchConstraintMinHeight = obtainStyledAttributes.getDimensionPixelSize(index, this.matchConstraintMinHeight);
                            break;
                        } catch (Exception unused3) {
                            if (obtainStyledAttributes.getInt(index, this.matchConstraintMinHeight) == -2) {
                                this.matchConstraintMinHeight = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 37:
                        try {
                            this.matchConstraintMaxHeight = obtainStyledAttributes.getDimensionPixelSize(index, this.matchConstraintMaxHeight);
                            break;
                        } catch (Exception unused4) {
                            if (obtainStyledAttributes.getInt(index, this.matchConstraintMaxHeight) == -2) {
                                this.matchConstraintMaxHeight = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 38:
                        this.matchConstraintPercentHeight = Math.max(0.0f, obtainStyledAttributes.getFloat(index, this.matchConstraintPercentHeight));
                        this.matchConstraintDefaultHeight = 2;
                        break;
                    default:
                        switch (i4) {
                            case 44:
                                ConstraintSet.s(this, obtainStyledAttributes.getString(index));
                                continue;
                            case 45:
                                this.horizontalWeight = obtainStyledAttributes.getFloat(index, this.horizontalWeight);
                                continue;
                            case 46:
                                this.verticalWeight = obtainStyledAttributes.getFloat(index, this.verticalWeight);
                                continue;
                            case 47:
                                this.horizontalChainStyle = obtainStyledAttributes.getInt(index, 0);
                                continue;
                            case 48:
                                this.verticalChainStyle = obtainStyledAttributes.getInt(index, 0);
                                continue;
                            case 49:
                                this.editorAbsoluteX = obtainStyledAttributes.getDimensionPixelOffset(index, this.editorAbsoluteX);
                                continue;
                            case 50:
                                this.editorAbsoluteY = obtainStyledAttributes.getDimensionPixelOffset(index, this.editorAbsoluteY);
                                continue;
                            case 51:
                                this.constraintTag = obtainStyledAttributes.getString(index);
                                continue;
                            case 52:
                                int resourceId15 = obtainStyledAttributes.getResourceId(index, this.baselineToTop);
                                this.baselineToTop = resourceId15;
                                if (resourceId15 == -1) {
                                    this.baselineToTop = obtainStyledAttributes.getInt(index, -1);
                                    break;
                                } else {
                                    continue;
                                }
                            case 53:
                                int resourceId16 = obtainStyledAttributes.getResourceId(index, this.baselineToBottom);
                                this.baselineToBottom = resourceId16;
                                if (resourceId16 == -1) {
                                    this.baselineToBottom = obtainStyledAttributes.getInt(index, -1);
                                    break;
                                } else {
                                    continue;
                                }
                            case 54:
                                this.baselineMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.baselineMargin);
                                continue;
                            case 55:
                                this.goneBaselineMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.goneBaselineMargin);
                                continue;
                            default:
                                switch (i4) {
                                    case 64:
                                        ConstraintSet.q(this, obtainStyledAttributes, index, 0);
                                        this.f3400a = true;
                                        continue;
                                    case 65:
                                        ConstraintSet.q(this, obtainStyledAttributes, index, 1);
                                        this.f3401b = true;
                                        continue;
                                    case 66:
                                        this.wrapBehaviorInParent = obtainStyledAttributes.getInt(index, this.wrapBehaviorInParent);
                                        continue;
                                    case 67:
                                        this.guidelineUseRtl = obtainStyledAttributes.getBoolean(index, this.guidelineUseRtl);
                                        continue;
                                        continue;
                                }
                        }
                }
            }
            obtainStyledAttributes.recycle();
            validate();
        }

        public LayoutParams(int width, int height) {
            super(width, height);
            this.guideBegin = -1;
            this.guideEnd = -1;
            this.guidePercent = -1.0f;
            this.guidelineUseRtl = true;
            this.leftToLeft = -1;
            this.leftToRight = -1;
            this.rightToLeft = -1;
            this.rightToRight = -1;
            this.topToTop = -1;
            this.topToBottom = -1;
            this.bottomToTop = -1;
            this.bottomToBottom = -1;
            this.baselineToBaseline = -1;
            this.baselineToTop = -1;
            this.baselineToBottom = -1;
            this.circleConstraint = -1;
            this.circleRadius = 0;
            this.circleAngle = 0.0f;
            this.startToEnd = -1;
            this.startToStart = -1;
            this.endToStart = -1;
            this.endToEnd = -1;
            this.goneLeftMargin = Integer.MIN_VALUE;
            this.goneTopMargin = Integer.MIN_VALUE;
            this.goneRightMargin = Integer.MIN_VALUE;
            this.goneBottomMargin = Integer.MIN_VALUE;
            this.goneStartMargin = Integer.MIN_VALUE;
            this.goneEndMargin = Integer.MIN_VALUE;
            this.goneBaselineMargin = Integer.MIN_VALUE;
            this.baselineMargin = 0;
            this.f3400a = true;
            this.f3401b = true;
            this.horizontalBias = 0.5f;
            this.verticalBias = 0.5f;
            this.dimensionRatio = null;
            this.f3402c = 0.0f;
            this.f3403d = 1;
            this.horizontalWeight = -1.0f;
            this.verticalWeight = -1.0f;
            this.horizontalChainStyle = 0;
            this.verticalChainStyle = 0;
            this.matchConstraintDefaultWidth = 0;
            this.matchConstraintDefaultHeight = 0;
            this.matchConstraintMinWidth = 0;
            this.matchConstraintMinHeight = 0;
            this.matchConstraintMaxWidth = 0;
            this.matchConstraintMaxHeight = 0;
            this.matchConstraintPercentWidth = 1.0f;
            this.matchConstraintPercentHeight = 1.0f;
            this.editorAbsoluteX = -1;
            this.editorAbsoluteY = -1;
            this.orientation = -1;
            this.constrainedWidth = false;
            this.constrainedHeight = false;
            this.constraintTag = null;
            this.wrapBehaviorInParent = 0;
            this.f3404e = true;
            this.f3405f = true;
            this.f3406g = false;
            this.f3407h = false;
            this.f3408i = false;
            this.f3409j = false;
            this.f3410k = false;
            this.f3411l = -1;
            this.f3412m = -1;
            this.f3413n = -1;
            this.f3414o = -1;
            this.f3415p = Integer.MIN_VALUE;
            this.f3416q = Integer.MIN_VALUE;
            this.f3417r = 0.5f;
            this.f3421v = new ConstraintWidget();
            this.helped = false;
        }

        public LayoutParams(ViewGroup.LayoutParams source) {
            super(source);
            this.guideBegin = -1;
            this.guideEnd = -1;
            this.guidePercent = -1.0f;
            this.guidelineUseRtl = true;
            this.leftToLeft = -1;
            this.leftToRight = -1;
            this.rightToLeft = -1;
            this.rightToRight = -1;
            this.topToTop = -1;
            this.topToBottom = -1;
            this.bottomToTop = -1;
            this.bottomToBottom = -1;
            this.baselineToBaseline = -1;
            this.baselineToTop = -1;
            this.baselineToBottom = -1;
            this.circleConstraint = -1;
            this.circleRadius = 0;
            this.circleAngle = 0.0f;
            this.startToEnd = -1;
            this.startToStart = -1;
            this.endToStart = -1;
            this.endToEnd = -1;
            this.goneLeftMargin = Integer.MIN_VALUE;
            this.goneTopMargin = Integer.MIN_VALUE;
            this.goneRightMargin = Integer.MIN_VALUE;
            this.goneBottomMargin = Integer.MIN_VALUE;
            this.goneStartMargin = Integer.MIN_VALUE;
            this.goneEndMargin = Integer.MIN_VALUE;
            this.goneBaselineMargin = Integer.MIN_VALUE;
            this.baselineMargin = 0;
            this.f3400a = true;
            this.f3401b = true;
            this.horizontalBias = 0.5f;
            this.verticalBias = 0.5f;
            this.dimensionRatio = null;
            this.f3402c = 0.0f;
            this.f3403d = 1;
            this.horizontalWeight = -1.0f;
            this.verticalWeight = -1.0f;
            this.horizontalChainStyle = 0;
            this.verticalChainStyle = 0;
            this.matchConstraintDefaultWidth = 0;
            this.matchConstraintDefaultHeight = 0;
            this.matchConstraintMinWidth = 0;
            this.matchConstraintMinHeight = 0;
            this.matchConstraintMaxWidth = 0;
            this.matchConstraintMaxHeight = 0;
            this.matchConstraintPercentWidth = 1.0f;
            this.matchConstraintPercentHeight = 1.0f;
            this.editorAbsoluteX = -1;
            this.editorAbsoluteY = -1;
            this.orientation = -1;
            this.constrainedWidth = false;
            this.constrainedHeight = false;
            this.constraintTag = null;
            this.wrapBehaviorInParent = 0;
            this.f3404e = true;
            this.f3405f = true;
            this.f3406g = false;
            this.f3407h = false;
            this.f3408i = false;
            this.f3409j = false;
            this.f3410k = false;
            this.f3411l = -1;
            this.f3412m = -1;
            this.f3413n = -1;
            this.f3414o = -1;
            this.f3415p = Integer.MIN_VALUE;
            this.f3416q = Integer.MIN_VALUE;
            this.f3417r = 0.5f;
            this.f3421v = new ConstraintWidget();
            this.helped = false;
        }
    }
}
