package androidx.slidingpanelayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.core.content.ContextCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.view.AbsSavedState;
import androidx.customview.widget.ViewDragHelper;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class SlidingPaneLayout extends ViewGroup {
    private static final int A = 400;

    /* renamed from: x  reason: collision with root package name */
    private static final String f7376x = "SlidingPaneLayout";

    /* renamed from: y  reason: collision with root package name */
    private static final int f7377y = 32;

    /* renamed from: z  reason: collision with root package name */
    private static final int f7378z = -858993460;

    /* renamed from: a  reason: collision with root package name */
    private int f7379a;

    /* renamed from: b  reason: collision with root package name */
    private int f7380b;

    /* renamed from: c  reason: collision with root package name */
    private Drawable f7381c;

    /* renamed from: d  reason: collision with root package name */
    private Drawable f7382d;

    /* renamed from: e  reason: collision with root package name */
    private final int f7383e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f7384f;

    /* renamed from: g  reason: collision with root package name */
    View f7385g;

    /* renamed from: h  reason: collision with root package name */
    float f7386h;

    /* renamed from: i  reason: collision with root package name */
    private float f7387i;

    /* renamed from: j  reason: collision with root package name */
    int f7388j;

    /* renamed from: k  reason: collision with root package name */
    boolean f7389k;

    /* renamed from: l  reason: collision with root package name */
    private int f7390l;

    /* renamed from: m  reason: collision with root package name */
    private float f7391m;

    /* renamed from: n  reason: collision with root package name */
    private float f7392n;

    /* renamed from: o  reason: collision with root package name */
    private PanelSlideListener f7393o;

    /* renamed from: p  reason: collision with root package name */
    final ViewDragHelper f7394p;

    /* renamed from: q  reason: collision with root package name */
    boolean f7395q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f7396r;

    /* renamed from: s  reason: collision with root package name */
    private final Rect f7397s;

    /* renamed from: t  reason: collision with root package name */
    final ArrayList<DisableLayerRunnable> f7398t;

    /* renamed from: u  reason: collision with root package name */
    private Method f7399u;

    /* renamed from: v  reason: collision with root package name */
    private Field f7400v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f7401w;

    /* loaded from: classes2.dex */
    class AccessibilityDelegate extends AccessibilityDelegateCompat {

        /* renamed from: a  reason: collision with root package name */
        private final Rect f7402a = new Rect();

        AccessibilityDelegate() {
        }

        private void a(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat2) {
            Rect rect = this.f7402a;
            accessibilityNodeInfoCompat2.getBoundsInParent(rect);
            accessibilityNodeInfoCompat.setBoundsInParent(rect);
            accessibilityNodeInfoCompat2.getBoundsInScreen(rect);
            accessibilityNodeInfoCompat.setBoundsInScreen(rect);
            accessibilityNodeInfoCompat.setVisibleToUser(accessibilityNodeInfoCompat2.isVisibleToUser());
            accessibilityNodeInfoCompat.setPackageName(accessibilityNodeInfoCompat2.getPackageName());
            accessibilityNodeInfoCompat.setClassName(accessibilityNodeInfoCompat2.getClassName());
            accessibilityNodeInfoCompat.setContentDescription(accessibilityNodeInfoCompat2.getContentDescription());
            accessibilityNodeInfoCompat.setEnabled(accessibilityNodeInfoCompat2.isEnabled());
            accessibilityNodeInfoCompat.setClickable(accessibilityNodeInfoCompat2.isClickable());
            accessibilityNodeInfoCompat.setFocusable(accessibilityNodeInfoCompat2.isFocusable());
            accessibilityNodeInfoCompat.setFocused(accessibilityNodeInfoCompat2.isFocused());
            accessibilityNodeInfoCompat.setAccessibilityFocused(accessibilityNodeInfoCompat2.isAccessibilityFocused());
            accessibilityNodeInfoCompat.setSelected(accessibilityNodeInfoCompat2.isSelected());
            accessibilityNodeInfoCompat.setLongClickable(accessibilityNodeInfoCompat2.isLongClickable());
            accessibilityNodeInfoCompat.addAction(accessibilityNodeInfoCompat2.getActions());
            accessibilityNodeInfoCompat.setMovementGranularities(accessibilityNodeInfoCompat2.getMovementGranularities());
        }

        public boolean filter(View view) {
            return SlidingPaneLayout.this.h(view);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName(SlidingPaneLayout.class.getName());
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            AccessibilityNodeInfoCompat obtain = AccessibilityNodeInfoCompat.obtain(accessibilityNodeInfoCompat);
            super.onInitializeAccessibilityNodeInfo(view, obtain);
            a(accessibilityNodeInfoCompat, obtain);
            obtain.recycle();
            accessibilityNodeInfoCompat.setClassName(SlidingPaneLayout.class.getName());
            accessibilityNodeInfoCompat.setSource(view);
            ViewParent parentForAccessibility = ViewCompat.getParentForAccessibility(view);
            if (parentForAccessibility instanceof View) {
                accessibilityNodeInfoCompat.setParent((View) parentForAccessibility);
            }
            int childCount = SlidingPaneLayout.this.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = SlidingPaneLayout.this.getChildAt(i2);
                if (!filter(childAt) && childAt.getVisibility() == 0) {
                    ViewCompat.setImportantForAccessibility(childAt, 1);
                    accessibilityNodeInfoCompat.addChild(childAt);
                }
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            if (filter(view)) {
                return false;
            }
            return super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class DisableLayerRunnable implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final View f7404a;

        DisableLayerRunnable(View view) {
            this.f7404a = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f7404a.getParent() == SlidingPaneLayout.this) {
                this.f7404a.setLayerType(0, null);
                SlidingPaneLayout.this.g(this.f7404a);
            }
            SlidingPaneLayout.this.f7398t.remove(this);
        }
    }

    /* loaded from: classes2.dex */
    private class DragHelperCallback extends ViewDragHelper.Callback {
        DragHelperCallback() {
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionHorizontal(View view, int i2, int i4) {
            LayoutParams layoutParams = (LayoutParams) SlidingPaneLayout.this.f7385g.getLayoutParams();
            if (SlidingPaneLayout.this.i()) {
                int width = SlidingPaneLayout.this.getWidth() - ((SlidingPaneLayout.this.getPaddingRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin) + SlidingPaneLayout.this.f7385g.getWidth());
                return Math.max(Math.min(i2, width), width - SlidingPaneLayout.this.f7388j);
            }
            int paddingLeft = SlidingPaneLayout.this.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
            return Math.min(Math.max(i2, paddingLeft), SlidingPaneLayout.this.f7388j + paddingLeft);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionVertical(View view, int i2, int i4) {
            return view.getTop();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int getViewHorizontalDragRange(View view) {
            return SlidingPaneLayout.this.f7388j;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onEdgeDragStarted(int i2, int i4) {
            SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
            slidingPaneLayout.f7394p.captureChildView(slidingPaneLayout.f7385g, i4);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewCaptured(View view, int i2) {
            SlidingPaneLayout.this.m();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewDragStateChanged(int i2) {
            if (SlidingPaneLayout.this.f7394p.getViewDragState() == 0) {
                SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
                if (slidingPaneLayout.f7386h == 0.0f) {
                    slidingPaneLayout.o(slidingPaneLayout.f7385g);
                    SlidingPaneLayout slidingPaneLayout2 = SlidingPaneLayout.this;
                    slidingPaneLayout2.d(slidingPaneLayout2.f7385g);
                    SlidingPaneLayout.this.f7395q = false;
                    return;
                }
                slidingPaneLayout.e(slidingPaneLayout.f7385g);
                SlidingPaneLayout.this.f7395q = true;
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewPositionChanged(View view, int i2, int i4, int i5, int i6) {
            SlidingPaneLayout.this.j(i2);
            SlidingPaneLayout.this.invalidate();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewReleased(View view, float f4, float f5) {
            int paddingLeft;
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (SlidingPaneLayout.this.i()) {
                int paddingRight = SlidingPaneLayout.this.getPaddingRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                if (f4 < 0.0f || (f4 == 0.0f && SlidingPaneLayout.this.f7386h > 0.5f)) {
                    paddingRight += SlidingPaneLayout.this.f7388j;
                }
                paddingLeft = (SlidingPaneLayout.this.getWidth() - paddingRight) - SlidingPaneLayout.this.f7385g.getWidth();
            } else {
                paddingLeft = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + SlidingPaneLayout.this.getPaddingLeft();
                if (f4 > 0.0f || (f4 == 0.0f && SlidingPaneLayout.this.f7386h > 0.5f)) {
                    paddingLeft += SlidingPaneLayout.this.f7388j;
                }
            }
            SlidingPaneLayout.this.f7394p.settleCapturedViewAt(paddingLeft, view.getTop());
            SlidingPaneLayout.this.invalidate();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public boolean tryCaptureView(View view, int i2) {
            if (SlidingPaneLayout.this.f7389k) {
                return false;
            }
            return ((LayoutParams) view.getLayoutParams()).f7408a;
        }
    }

    /* loaded from: classes2.dex */
    public interface PanelSlideListener {
        void onPanelClosed(@NonNull View view);

        void onPanelOpened(@NonNull View view);

        void onPanelSlide(@NonNull View view, float f4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: androidx.slidingpanelayout.widget.SlidingPaneLayout.SavedState.1
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }
        };

        /* renamed from: a  reason: collision with root package name */
        boolean f7411a;

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.f7411a ? 1 : 0);
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f7411a = parcel.readInt() != 0;
        }
    }

    /* loaded from: classes2.dex */
    public static class SimplePanelSlideListener implements PanelSlideListener {
        @Override // androidx.slidingpanelayout.widget.SlidingPaneLayout.PanelSlideListener
        public void onPanelClosed(View view) {
        }

        @Override // androidx.slidingpanelayout.widget.SlidingPaneLayout.PanelSlideListener
        public void onPanelOpened(View view) {
        }

        @Override // androidx.slidingpanelayout.widget.SlidingPaneLayout.PanelSlideListener
        public void onPanelSlide(View view, float f4) {
        }
    }

    public SlidingPaneLayout(@NonNull Context context) {
        this(context, null);
    }

    private boolean b(View view, int i2) {
        if (this.f7396r || n(0.0f, i2)) {
            this.f7395q = false;
            return true;
        }
        return false;
    }

    private void c(View view, float f4, int i2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (f4 > 0.0f && i2 != 0) {
            int i4 = (((int) ((((-16777216) & i2) >>> 24) * f4)) << 24) | (i2 & 16777215);
            if (layoutParams.f7410c == null) {
                layoutParams.f7410c = new Paint();
            }
            layoutParams.f7410c.setColorFilter(new PorterDuffColorFilter(i4, PorterDuff.Mode.SRC_OVER));
            if (view.getLayerType() != 2) {
                view.setLayerType(2, layoutParams.f7410c);
            }
            g(view);
        } else if (view.getLayerType() != 0) {
            Paint paint = layoutParams.f7410c;
            if (paint != null) {
                paint.setColorFilter(null);
            }
            DisableLayerRunnable disableLayerRunnable = new DisableLayerRunnable(view);
            this.f7398t.add(disableLayerRunnable);
            ViewCompat.postOnAnimation(this, disableLayerRunnable);
        }
    }

    private boolean k(View view, int i2) {
        if (this.f7396r || n(1.0f, i2)) {
            this.f7395q = true;
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void l(float r10) {
        /*
            r9 = this;
            boolean r0 = r9.i()
            android.view.View r1 = r9.f7385g
            android.view.ViewGroup$LayoutParams r1 = r1.getLayoutParams()
            androidx.slidingpanelayout.widget.SlidingPaneLayout$LayoutParams r1 = (androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams) r1
            boolean r2 = r1.f7409b
            r3 = 0
            if (r2 == 0) goto L1c
            if (r0 == 0) goto L16
            int r1 = r1.rightMargin
            goto L18
        L16:
            int r1 = r1.leftMargin
        L18:
            if (r1 > 0) goto L1c
            r1 = 1
            goto L1d
        L1c:
            r1 = 0
        L1d:
            int r2 = r9.getChildCount()
        L21:
            if (r3 >= r2) goto L59
            android.view.View r4 = r9.getChildAt(r3)
            android.view.View r5 = r9.f7385g
            if (r4 != r5) goto L2c
            goto L56
        L2c:
            float r5 = r9.f7387i
            r6 = 1065353216(0x3f800000, float:1.0)
            float r5 = r6 - r5
            int r7 = r9.f7390l
            float r8 = (float) r7
            float r5 = r5 * r8
            int r5 = (int) r5
            r9.f7387i = r10
            float r8 = r6 - r10
            float r7 = (float) r7
            float r8 = r8 * r7
            int r7 = (int) r8
            int r5 = r5 - r7
            if (r0 == 0) goto L44
            int r5 = -r5
        L44:
            r4.offsetLeftAndRight(r5)
            if (r1 == 0) goto L56
            float r5 = r9.f7387i
            if (r0 == 0) goto L4f
            float r5 = r5 - r6
            goto L51
        L4f:
            float r5 = r6 - r5
        L51:
            int r6 = r9.f7380b
            r9.c(r4, r5, r6)
        L56:
            int r3 = r3 + 1
            goto L21
        L59:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.slidingpanelayout.widget.SlidingPaneLayout.l(float):void");
    }

    private static boolean p(View view) {
        Drawable background;
        if (view.isOpaque()) {
            return true;
        }
        return Build.VERSION.SDK_INT < 18 && (background = view.getBackground()) != null && background.getOpacity() == -1;
    }

    protected boolean a(View view, boolean z3, int i2, int i4, int i5) {
        int i6;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i7 = i4 + scrollX;
                if (i7 >= childAt.getLeft() && i7 < childAt.getRight() && (i6 = i5 + scrollY) >= childAt.getTop() && i6 < childAt.getBottom() && a(childAt, true, i2, i7 - childAt.getLeft(), i6 - childAt.getTop())) {
                    return true;
                }
            }
        }
        if (z3) {
            if (view.canScrollHorizontally(i() ? i2 : -i2)) {
                return true;
            }
        }
        return false;
    }

    @Deprecated
    public boolean canSlide() {
        return this.f7384f;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    public boolean closePane() {
        return b(this.f7385g, 0);
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.f7394p.continueSettling(true)) {
            if (!this.f7384f) {
                this.f7394p.abort();
            } else {
                ViewCompat.postInvalidateOnAnimation(this);
            }
        }
    }

    void d(View view) {
        PanelSlideListener panelSlideListener = this.f7393o;
        if (panelSlideListener != null) {
            panelSlideListener.onPanelClosed(view);
        }
        sendAccessibilityEvent(32);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        Drawable drawable;
        int i2;
        int i4;
        super.draw(canvas);
        if (i()) {
            drawable = this.f7382d;
        } else {
            drawable = this.f7381c;
        }
        View childAt = getChildCount() > 1 ? getChildAt(1) : null;
        if (childAt == null || drawable == null) {
            return;
        }
        int top = childAt.getTop();
        int bottom = childAt.getBottom();
        int intrinsicWidth = drawable.getIntrinsicWidth();
        if (i()) {
            i4 = childAt.getRight();
            i2 = intrinsicWidth + i4;
        } else {
            int left = childAt.getLeft();
            int i5 = left - intrinsicWidth;
            i2 = left;
            i4 = i5;
        }
        drawable.setBounds(i4, top, i2, bottom);
        drawable.draw(canvas);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j4) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int save = canvas.save();
        if (this.f7384f && !layoutParams.f7408a && this.f7385g != null) {
            canvas.getClipBounds(this.f7397s);
            if (i()) {
                Rect rect = this.f7397s;
                rect.left = Math.max(rect.left, this.f7385g.getRight());
            } else {
                Rect rect2 = this.f7397s;
                rect2.right = Math.min(rect2.right, this.f7385g.getLeft());
            }
            canvas.clipRect(this.f7397s);
        }
        boolean drawChild = super.drawChild(canvas, view, j4);
        canvas.restoreToCount(save);
        return drawChild;
    }

    void e(View view) {
        PanelSlideListener panelSlideListener = this.f7393o;
        if (panelSlideListener != null) {
            panelSlideListener.onPanelOpened(view);
        }
        sendAccessibilityEvent(32);
    }

    void f(View view) {
        PanelSlideListener panelSlideListener = this.f7393o;
        if (panelSlideListener != null) {
            panelSlideListener.onPanelSlide(view, this.f7386h);
        }
    }

    void g(View view) {
        Field field;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 17) {
            ViewCompat.setLayerPaint(view, ((LayoutParams) view.getLayoutParams()).f7410c);
            return;
        }
        if (i2 >= 16) {
            if (!this.f7401w) {
                try {
                    this.f7399u = View.class.getDeclaredMethod("getDisplayList", null);
                } catch (NoSuchMethodException unused) {
                }
                try {
                    Field declaredField = View.class.getDeclaredField("mRecreateDisplayList");
                    this.f7400v = declaredField;
                    declaredField.setAccessible(true);
                } catch (NoSuchFieldException unused2) {
                }
                this.f7401w = true;
            }
            if (this.f7399u != null && (field = this.f7400v) != null) {
                try {
                    field.setBoolean(view, true);
                    this.f7399u.invoke(view, null);
                } catch (Exception unused3) {
                }
            } else {
                view.invalidate();
                return;
            }
        }
        ViewCompat.postInvalidateOnAnimation(this, view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    @ColorInt
    public int getCoveredFadeColor() {
        return this.f7380b;
    }

    @Px
    public int getParallaxDistance() {
        return this.f7390l;
    }

    @ColorInt
    public int getSliderFadeColor() {
        return this.f7379a;
    }

    boolean h(View view) {
        if (view == null) {
            return false;
        }
        return this.f7384f && ((LayoutParams) view.getLayoutParams()).f7409b && this.f7386h > 0.0f;
    }

    boolean i() {
        return ViewCompat.getLayoutDirection(this) == 1;
    }

    public boolean isOpen() {
        return !this.f7384f || this.f7386h == 1.0f;
    }

    public boolean isSlideable() {
        return this.f7384f;
    }

    void j(int i2) {
        if (this.f7385g == null) {
            this.f7386h = 0.0f;
            return;
        }
        boolean i4 = i();
        LayoutParams layoutParams = (LayoutParams) this.f7385g.getLayoutParams();
        int width = this.f7385g.getWidth();
        if (i4) {
            i2 = (getWidth() - i2) - width;
        }
        float paddingRight = (i2 - ((i4 ? getPaddingRight() : getPaddingLeft()) + (i4 ? ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin : ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin))) / this.f7388j;
        this.f7386h = paddingRight;
        if (this.f7390l != 0) {
            l(paddingRight);
        }
        if (layoutParams.f7409b) {
            c(this.f7385g, this.f7386h, this.f7379a);
        }
        f(this.f7385g);
    }

    void m() {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 4) {
                childAt.setVisibility(0);
            }
        }
    }

    boolean n(float f4, int i2) {
        int paddingLeft;
        if (this.f7384f) {
            boolean i4 = i();
            LayoutParams layoutParams = (LayoutParams) this.f7385g.getLayoutParams();
            if (i4) {
                paddingLeft = (int) (getWidth() - (((getPaddingRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin) + (f4 * this.f7388j)) + this.f7385g.getWidth()));
            } else {
                paddingLeft = (int) (getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + (f4 * this.f7388j));
            }
            ViewDragHelper viewDragHelper = this.f7394p;
            View view = this.f7385g;
            if (viewDragHelper.smoothSlideViewTo(view, paddingLeft, view.getTop())) {
                m();
                ViewCompat.postInvalidateOnAnimation(this);
                return true;
            }
            return false;
        }
        return false;
    }

    void o(View view) {
        int i2;
        int i4;
        int i5;
        int i6;
        View childAt;
        boolean z3;
        View view2 = view;
        boolean i7 = i();
        int width = i7 ? getWidth() - getPaddingRight() : getPaddingLeft();
        int paddingLeft = i7 ? getPaddingLeft() : getWidth() - getPaddingRight();
        int paddingTop = getPaddingTop();
        int height = getHeight() - getPaddingBottom();
        if (view2 == null || !p(view)) {
            i2 = 0;
            i4 = 0;
            i5 = 0;
            i6 = 0;
        } else {
            i2 = view.getLeft();
            i4 = view.getRight();
            i5 = view.getTop();
            i6 = view.getBottom();
        }
        int childCount = getChildCount();
        int i8 = 0;
        while (i8 < childCount && (childAt = getChildAt(i8)) != view2) {
            if (childAt.getVisibility() == 8) {
                z3 = i7;
            } else {
                z3 = i7;
                childAt.setVisibility((Math.max(i7 ? paddingLeft : width, childAt.getLeft()) < i2 || Math.max(paddingTop, childAt.getTop()) < i5 || Math.min(i7 ? width : paddingLeft, childAt.getRight()) > i4 || Math.min(height, childAt.getBottom()) > i6) ? 0 : 4);
            }
            i8++;
            view2 = view;
            i7 = z3;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f7396r = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f7396r = true;
        int size = this.f7398t.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f7398t.get(i2).run();
        }
        this.f7398t.clear();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z3;
        View childAt;
        int actionMasked = motionEvent.getActionMasked();
        if (!this.f7384f && actionMasked == 0 && getChildCount() > 1 && (childAt = getChildAt(1)) != null) {
            this.f7395q = !this.f7394p.isViewUnder(childAt, (int) motionEvent.getX(), (int) motionEvent.getY());
        }
        if (!this.f7384f || (this.f7389k && actionMasked != 0)) {
            this.f7394p.cancel();
            return super.onInterceptTouchEvent(motionEvent);
        } else if (actionMasked == 3 || actionMasked == 1) {
            this.f7394p.cancel();
            return false;
        } else {
            if (actionMasked == 0) {
                this.f7389k = false;
                float x3 = motionEvent.getX();
                float y3 = motionEvent.getY();
                this.f7391m = x3;
                this.f7392n = y3;
                if (this.f7394p.isViewUnder(this.f7385g, (int) x3, (int) y3) && h(this.f7385g)) {
                    z3 = true;
                    return this.f7394p.shouldInterceptTouchEvent(motionEvent) || z3;
                }
            } else if (actionMasked == 2) {
                float x4 = motionEvent.getX();
                float y4 = motionEvent.getY();
                float abs = Math.abs(x4 - this.f7391m);
                float abs2 = Math.abs(y4 - this.f7392n);
                if (abs > this.f7394p.getTouchSlop() && abs2 > abs) {
                    this.f7394p.cancel();
                    this.f7389k = true;
                    return false;
                }
            }
            z3 = false;
            if (this.f7394p.shouldInterceptTouchEvent(motionEvent)) {
                return true;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        int i7;
        int i8;
        int i9;
        int i10;
        boolean i11 = i();
        if (i11) {
            this.f7394p.setEdgeTrackingEnabled(2);
        } else {
            this.f7394p.setEdgeTrackingEnabled(1);
        }
        int i12 = i5 - i2;
        int paddingRight = i11 ? getPaddingRight() : getPaddingLeft();
        int paddingLeft = i11 ? getPaddingLeft() : getPaddingRight();
        int paddingTop = getPaddingTop();
        int childCount = getChildCount();
        if (this.f7396r) {
            this.f7386h = (this.f7384f && this.f7395q) ? 1.0f : 0.0f;
        }
        int i13 = paddingRight;
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt = getChildAt(i14);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                if (layoutParams.f7408a) {
                    int i15 = i12 - paddingLeft;
                    int min = (Math.min(paddingRight, i15 - this.f7383e) - i13) - (((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin);
                    this.f7388j = min;
                    int i16 = i11 ? ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin : ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    layoutParams.f7409b = ((i13 + i16) + min) + (measuredWidth / 2) > i15;
                    int i17 = (int) (min * this.f7386h);
                    i13 += i16 + i17;
                    this.f7386h = i17 / min;
                    i7 = 0;
                } else if (!this.f7384f || (i8 = this.f7390l) == 0) {
                    i13 = paddingRight;
                    i7 = 0;
                } else {
                    i7 = (int) ((1.0f - this.f7386h) * i8);
                    i13 = paddingRight;
                }
                if (i11) {
                    i10 = (i12 - i13) + i7;
                    i9 = i10 - measuredWidth;
                } else {
                    i9 = i13 - i7;
                    i10 = i9 + measuredWidth;
                }
                childAt.layout(i9, paddingTop, i10, childAt.getMeasuredHeight() + paddingTop);
                paddingRight += childAt.getWidth();
            }
        }
        if (this.f7396r) {
            if (this.f7384f) {
                if (this.f7390l != 0) {
                    l(this.f7386h);
                }
                if (((LayoutParams) this.f7385g.getLayoutParams()).f7409b) {
                    c(this.f7385g, this.f7386h, this.f7379a);
                }
            } else {
                for (int i18 = 0; i18 < childCount; i18++) {
                    c(getChildAt(i18), 0.0f, this.f7379a);
                }
            }
            o(this.f7385g);
        }
        this.f7396r = false;
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i4) {
        int paddingTop;
        int i5;
        int i6;
        int makeMeasureSpec;
        int i7;
        int i8;
        int makeMeasureSpec2;
        float f4;
        int i9;
        int makeMeasureSpec3;
        int makeMeasureSpec4;
        int i10;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i4);
        int size2 = View.MeasureSpec.getSize(i4);
        if (mode != 1073741824) {
            if (!isInEditMode()) {
                throw new IllegalStateException("Width must have an exact value or MATCH_PARENT");
            }
            if (mode != Integer.MIN_VALUE && mode == 0) {
                size = 300;
            }
        } else if (mode2 == 0) {
            if (!isInEditMode()) {
                throw new IllegalStateException("Height must not be UNSPECIFIED");
            }
            if (mode2 == 0) {
                mode2 = Integer.MIN_VALUE;
                size2 = 300;
            }
        }
        boolean z3 = false;
        if (mode2 == Integer.MIN_VALUE) {
            paddingTop = (size2 - getPaddingTop()) - getPaddingBottom();
            i5 = 0;
        } else if (mode2 != 1073741824) {
            i5 = 0;
            paddingTop = 0;
        } else {
            i5 = (size2 - getPaddingTop()) - getPaddingBottom();
            paddingTop = i5;
        }
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int childCount = getChildCount();
        this.f7385g = null;
        int i11 = paddingLeft;
        int i12 = 0;
        boolean z4 = false;
        float f5 = 0.0f;
        while (true) {
            i6 = 8;
            if (i12 >= childCount) {
                break;
            }
            View childAt = getChildAt(i12);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (childAt.getVisibility() == 8) {
                layoutParams.f7409b = z3;
            } else {
                float f6 = layoutParams.weight;
                if (f6 > 0.0f) {
                    f5 += f6;
                    if (((ViewGroup.MarginLayoutParams) layoutParams).width == 0) {
                    }
                }
                int i13 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                int i14 = ((ViewGroup.MarginLayoutParams) layoutParams).width;
                if (i14 == -2) {
                    makeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(paddingLeft - i13, Integer.MIN_VALUE);
                    f4 = f5;
                    i9 = Integer.MIN_VALUE;
                } else {
                    f4 = f5;
                    i9 = Integer.MIN_VALUE;
                    if (i14 == -1) {
                        makeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(paddingLeft - i13, 1073741824);
                    } else {
                        makeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(i14, 1073741824);
                    }
                }
                int i15 = ((ViewGroup.MarginLayoutParams) layoutParams).height;
                if (i15 == -2) {
                    i10 = View.MeasureSpec.makeMeasureSpec(paddingTop, i9);
                } else {
                    if (i15 == -1) {
                        makeMeasureSpec4 = View.MeasureSpec.makeMeasureSpec(paddingTop, 1073741824);
                    } else {
                        makeMeasureSpec4 = View.MeasureSpec.makeMeasureSpec(i15, 1073741824);
                    }
                    i10 = makeMeasureSpec4;
                }
                childAt.measure(makeMeasureSpec3, i10);
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                if (mode2 == i9 && measuredHeight > i5) {
                    i5 = Math.min(measuredHeight, paddingTop);
                }
                i11 -= measuredWidth;
                boolean z5 = i11 < 0;
                layoutParams.f7408a = z5;
                z4 |= z5;
                if (z5) {
                    this.f7385g = childAt;
                }
                f5 = f4;
            }
            i12++;
            z3 = false;
        }
        if (z4 || f5 > 0.0f) {
            int i16 = paddingLeft - this.f7383e;
            int i17 = 0;
            while (i17 < childCount) {
                View childAt2 = getChildAt(i17);
                if (childAt2.getVisibility() != i6) {
                    LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
                    if (childAt2.getVisibility() != i6) {
                        boolean z6 = ((ViewGroup.MarginLayoutParams) layoutParams2).width == 0 && layoutParams2.weight > 0.0f;
                        int measuredWidth2 = z6 ? 0 : childAt2.getMeasuredWidth();
                        if (z4 && childAt2 != this.f7385g) {
                            if (((ViewGroup.MarginLayoutParams) layoutParams2).width < 0 && (measuredWidth2 > i16 || layoutParams2.weight > 0.0f)) {
                                if (z6) {
                                    int i18 = ((ViewGroup.MarginLayoutParams) layoutParams2).height;
                                    if (i18 == -2) {
                                        makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(paddingTop, Integer.MIN_VALUE);
                                        i8 = 1073741824;
                                    } else if (i18 == -1) {
                                        i8 = 1073741824;
                                        makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(paddingTop, 1073741824);
                                    } else {
                                        i8 = 1073741824;
                                        makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i18, 1073741824);
                                    }
                                } else {
                                    i8 = 1073741824;
                                    makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(childAt2.getMeasuredHeight(), 1073741824);
                                }
                                childAt2.measure(View.MeasureSpec.makeMeasureSpec(i16, i8), makeMeasureSpec2);
                            }
                        } else if (layoutParams2.weight > 0.0f) {
                            if (((ViewGroup.MarginLayoutParams) layoutParams2).width == 0) {
                                int i19 = ((ViewGroup.MarginLayoutParams) layoutParams2).height;
                                if (i19 == -2) {
                                    makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(paddingTop, Integer.MIN_VALUE);
                                } else if (i19 == -1) {
                                    makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(paddingTop, 1073741824);
                                } else {
                                    makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i19, 1073741824);
                                }
                            } else {
                                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(childAt2.getMeasuredHeight(), 1073741824);
                            }
                            if (z4) {
                                int i20 = paddingLeft - (((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin);
                                i7 = i16;
                                int makeMeasureSpec5 = View.MeasureSpec.makeMeasureSpec(i20, 1073741824);
                                if (measuredWidth2 != i20) {
                                    childAt2.measure(makeMeasureSpec5, makeMeasureSpec);
                                }
                                i17++;
                                i16 = i7;
                                i6 = 8;
                            } else {
                                i7 = i16;
                                childAt2.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth2 + ((int) ((layoutParams2.weight * Math.max(0, i11)) / f5)), 1073741824), makeMeasureSpec);
                                i17++;
                                i16 = i7;
                                i6 = 8;
                            }
                        }
                    }
                }
                i7 = i16;
                i17++;
                i16 = i7;
                i6 = 8;
            }
        }
        setMeasuredDimension(size, i5 + getPaddingTop() + getPaddingBottom());
        this.f7384f = z4;
        if (this.f7394p.getViewDragState() == 0 || z4) {
            return;
        }
        this.f7394p.abort();
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (savedState.f7411a) {
            openPane();
        } else {
            closePane();
        }
        this.f7395q = savedState.f7411a;
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f7411a = isSlideable() ? isOpen() : this.f7395q;
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i4, int i5, int i6) {
        super.onSizeChanged(i2, i4, i5, i6);
        if (i2 != i5) {
            this.f7396r = true;
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f7384f) {
            return super.onTouchEvent(motionEvent);
        }
        this.f7394p.processTouchEvent(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1 && h(this.f7385g)) {
                float x3 = motionEvent.getX();
                float y3 = motionEvent.getY();
                float f4 = x3 - this.f7391m;
                float f5 = y3 - this.f7392n;
                int touchSlop = this.f7394p.getTouchSlop();
                if ((f4 * f4) + (f5 * f5) < touchSlop * touchSlop && this.f7394p.isViewUnder(this.f7385g, (int) x3, (int) y3)) {
                    b(this.f7385g, 0);
                }
            }
        } else {
            float x4 = motionEvent.getX();
            float y4 = motionEvent.getY();
            this.f7391m = x4;
            this.f7392n = y4;
        }
        return true;
    }

    public boolean openPane() {
        return k(this.f7385g, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        if (isInTouchMode() || this.f7384f) {
            return;
        }
        this.f7395q = view == this.f7385g;
    }

    public void setCoveredFadeColor(@ColorInt int i2) {
        this.f7380b = i2;
    }

    public void setPanelSlideListener(@Nullable PanelSlideListener panelSlideListener) {
        this.f7393o = panelSlideListener;
    }

    public void setParallaxDistance(@Px int i2) {
        this.f7390l = i2;
        requestLayout();
    }

    @Deprecated
    public void setShadowDrawable(Drawable drawable) {
        setShadowDrawableLeft(drawable);
    }

    public void setShadowDrawableLeft(@Nullable Drawable drawable) {
        this.f7381c = drawable;
    }

    public void setShadowDrawableRight(@Nullable Drawable drawable) {
        this.f7382d = drawable;
    }

    @Deprecated
    public void setShadowResource(@DrawableRes int i2) {
        setShadowDrawable(getResources().getDrawable(i2));
    }

    public void setShadowResourceLeft(int i2) {
        setShadowDrawableLeft(ContextCompat.getDrawable(getContext(), i2));
    }

    public void setShadowResourceRight(int i2) {
        setShadowDrawableRight(ContextCompat.getDrawable(getContext(), i2));
    }

    public void setSliderFadeColor(@ColorInt int i2) {
        this.f7379a = i2;
    }

    @Deprecated
    public void smoothSlideClosed() {
        closePane();
    }

    @Deprecated
    public void smoothSlideOpen() {
        openPane();
    }

    /* loaded from: classes2.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: d  reason: collision with root package name */
        private static final int[] f7407d = {16843137};

        /* renamed from: a  reason: collision with root package name */
        boolean f7408a;

        /* renamed from: b  reason: collision with root package name */
        boolean f7409b;

        /* renamed from: c  reason: collision with root package name */
        Paint f7410c;
        public float weight;

        public LayoutParams() {
            super(-1, -1);
            this.weight = 0.0f;
        }

        public LayoutParams(int i2, int i4) {
            super(i2, i4);
            this.weight = 0.0f;
        }

        public LayoutParams(@NonNull ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.weight = 0.0f;
        }

        public LayoutParams(@NonNull ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.weight = 0.0f;
        }

        public LayoutParams(@NonNull LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.weight = 0.0f;
            this.weight = layoutParams.weight;
        }

        public LayoutParams(@NonNull Context context, @Nullable AttributeSet attributeSet) {
            super(context, attributeSet);
            this.weight = 0.0f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f7407d);
            this.weight = obtainStyledAttributes.getFloat(0, 0.0f);
            obtainStyledAttributes.recycle();
        }
    }

    public SlidingPaneLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public SlidingPaneLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f7379a = f7378z;
        this.f7396r = true;
        this.f7397s = new Rect();
        this.f7398t = new ArrayList<>();
        float f4 = context.getResources().getDisplayMetrics().density;
        this.f7383e = (int) ((32.0f * f4) + 0.5f);
        setWillNotDraw(false);
        ViewCompat.setAccessibilityDelegate(this, new AccessibilityDelegate());
        ViewCompat.setImportantForAccessibility(this, 1);
        ViewDragHelper create = ViewDragHelper.create(this, 0.5f, new DragHelperCallback());
        this.f7394p = create;
        create.setMinVelocity(f4 * 400.0f);
    }
}
