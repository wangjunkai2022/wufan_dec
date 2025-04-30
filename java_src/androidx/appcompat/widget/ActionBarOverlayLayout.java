package androidx.appcompat.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.OverScroller;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.core.graphics.Insets;
import androidx.core.view.NestedScrollingParent;
import androidx.core.view.NestedScrollingParent2;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
@SuppressLint({"UnknownNullness"})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class ActionBarOverlayLayout extends ViewGroup implements DecorContentParent, NestedScrollingParent, NestedScrollingParent2, NestedScrollingParent3 {
    private static final String F = "ActionBarOverlayLayout";
    private static final int G = 600;
    static final int[] H = {R.attr.actionBarSize, 16842841};
    ViewPropertyAnimator A;
    final AnimatorListenerAdapter B;
    private final Runnable C;
    private final Runnable D;
    private final NestedScrollingParentHelper E;

    /* renamed from: a  reason: collision with root package name */
    private int f786a;

    /* renamed from: b  reason: collision with root package name */
    private int f787b;

    /* renamed from: c  reason: collision with root package name */
    private ContentFrameLayout f788c;

    /* renamed from: d  reason: collision with root package name */
    ActionBarContainer f789d;

    /* renamed from: e  reason: collision with root package name */
    private DecorToolbar f790e;

    /* renamed from: f  reason: collision with root package name */
    private Drawable f791f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f792g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f793h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f794i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f795j;

    /* renamed from: k  reason: collision with root package name */
    boolean f796k;

    /* renamed from: l  reason: collision with root package name */
    private int f797l;

    /* renamed from: m  reason: collision with root package name */
    private int f798m;

    /* renamed from: n  reason: collision with root package name */
    private final Rect f799n;

    /* renamed from: o  reason: collision with root package name */
    private final Rect f800o;

    /* renamed from: p  reason: collision with root package name */
    private final Rect f801p;

    /* renamed from: q  reason: collision with root package name */
    private final Rect f802q;

    /* renamed from: r  reason: collision with root package name */
    private final Rect f803r;

    /* renamed from: s  reason: collision with root package name */
    private final Rect f804s;

    /* renamed from: t  reason: collision with root package name */
    private final Rect f805t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    private WindowInsetsCompat f806u;
    @NonNull

    /* renamed from: v  reason: collision with root package name */
    private WindowInsetsCompat f807v;
    @NonNull

    /* renamed from: w  reason: collision with root package name */
    private WindowInsetsCompat f808w;
    @NonNull

    /* renamed from: x  reason: collision with root package name */
    private WindowInsetsCompat f809x;

    /* renamed from: y  reason: collision with root package name */
    private ActionBarVisibilityCallback f810y;

    /* renamed from: z  reason: collision with root package name */
    private OverScroller f811z;

    /* loaded from: classes.dex */
    public interface ActionBarVisibilityCallback {
        void enableContentAnimations(boolean z3);

        void hideForSystem();

        void onContentScrollStarted();

        void onContentScrollStopped();

        void onWindowVisibilityChanged(int i2);

        void showForSystem();
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(int i2, int i4) {
            super(i2, i4);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }

    public ActionBarOverlayLayout(@NonNull Context context) {
        this(context, null);
    }

    private void a() {
        e();
        this.D.run();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean b(@androidx.annotation.NonNull android.view.View r3, @androidx.annotation.NonNull android.graphics.Rect r4, boolean r5, boolean r6, boolean r7, boolean r8) {
        /*
            r2 = this;
            android.view.ViewGroup$LayoutParams r3 = r3.getLayoutParams()
            androidx.appcompat.widget.ActionBarOverlayLayout$LayoutParams r3 = (androidx.appcompat.widget.ActionBarOverlayLayout.LayoutParams) r3
            r0 = 1
            if (r5 == 0) goto L13
            int r5 = r3.leftMargin
            int r1 = r4.left
            if (r5 == r1) goto L13
            r3.leftMargin = r1
            r5 = 1
            goto L14
        L13:
            r5 = 0
        L14:
            if (r6 == 0) goto L1f
            int r6 = r3.topMargin
            int r1 = r4.top
            if (r6 == r1) goto L1f
            r3.topMargin = r1
            r5 = 1
        L1f:
            if (r8 == 0) goto L2a
            int r6 = r3.rightMargin
            int r8 = r4.right
            if (r6 == r8) goto L2a
            r3.rightMargin = r8
            r5 = 1
        L2a:
            if (r7 == 0) goto L35
            int r6 = r3.bottomMargin
            int r4 = r4.bottom
            if (r6 == r4) goto L35
            r3.bottomMargin = r4
            goto L36
        L35:
            r0 = r5
        L36:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionBarOverlayLayout.b(android.view.View, android.graphics.Rect, boolean, boolean, boolean, boolean):boolean");
    }

    private DecorToolbar d(View view) {
        if (view instanceof DecorToolbar) {
            return (DecorToolbar) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        throw new IllegalStateException("Can't make a decor toolbar out of " + view.getClass().getSimpleName());
    }

    private void f(Context context) {
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(H);
        this.f786a = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        Drawable drawable = obtainStyledAttributes.getDrawable(1);
        this.f791f = drawable;
        setWillNotDraw(drawable == null);
        obtainStyledAttributes.recycle();
        this.f792g = context.getApplicationInfo().targetSdkVersion < 19;
        this.f811z = new OverScroller(context);
    }

    private void g() {
        e();
        postDelayed(this.D, 600L);
    }

    private void h() {
        e();
        postDelayed(this.C, 600L);
    }

    private void j() {
        e();
        this.C.run();
    }

    private boolean k(float f4) {
        this.f811z.fling(0, 0, 0, (int) f4, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
        return this.f811z.getFinalY() > this.f789d.getHeight();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* renamed from: c */
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public boolean canShowOverflowMenu() {
        i();
        return this.f790e.canShowOverflowMenu();
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public void dismissPopups() {
        i();
        this.f790e.dismissPopupMenus();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f791f == null || this.f792g) {
            return;
        }
        int bottom = this.f789d.getVisibility() == 0 ? (int) (this.f789d.getBottom() + this.f789d.getTranslationY() + 0.5f) : 0;
        this.f791f.setBounds(0, bottom, getWidth(), this.f791f.getIntrinsicHeight() + bottom);
        this.f791f.draw(canvas);
    }

    void e() {
        removeCallbacks(this.C);
        removeCallbacks(this.D);
        ViewPropertyAnimator viewPropertyAnimator = this.A;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        if (Build.VERSION.SDK_INT >= 21) {
            return super.fitSystemWindows(rect);
        }
        i();
        boolean b4 = b(this.f789d, rect, true, true, false, true);
        this.f802q.set(rect);
        ViewUtils.computeFitSystemWindows(this, this.f802q, this.f799n);
        if (!this.f803r.equals(this.f802q)) {
            this.f803r.set(this.f802q);
            b4 = true;
        }
        if (!this.f800o.equals(this.f799n)) {
            this.f800o.set(this.f799n);
            b4 = true;
        }
        if (b4) {
            requestLayout();
        }
        return true;
    }

    public int getActionBarHideOffset() {
        ActionBarContainer actionBarContainer = this.f789d;
        if (actionBarContainer != null) {
            return -((int) actionBarContainer.getTranslationY());
        }
        return 0;
    }

    @Override // android.view.ViewGroup, androidx.core.view.NestedScrollingParent
    public int getNestedScrollAxes() {
        return this.E.getNestedScrollAxes();
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public CharSequence getTitle() {
        i();
        return this.f790e.getTitle();
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public boolean hasIcon() {
        i();
        return this.f790e.hasIcon();
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public boolean hasLogo() {
        i();
        return this.f790e.hasLogo();
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public boolean hideOverflowMenu() {
        i();
        return this.f790e.hideOverflowMenu();
    }

    void i() {
        if (this.f788c == null) {
            this.f788c = (ContentFrameLayout) findViewById(R.id.action_bar_activity_content);
            this.f789d = (ActionBarContainer) findViewById(R.id.action_bar_container);
            this.f790e = d(findViewById(R.id.action_bar));
        }
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public void initFeature(int i2) {
        i();
        if (i2 == 2) {
            this.f790e.initProgress();
        } else if (i2 == 5) {
            this.f790e.initIndeterminateProgress();
        } else if (i2 != 109) {
        } else {
            setOverlayMode(true);
        }
    }

    public boolean isHideOnContentScrollEnabled() {
        return this.f795j;
    }

    public boolean isInOverlayMode() {
        return this.f793h;
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public boolean isOverflowMenuShowPending() {
        i();
        return this.f790e.isOverflowMenuShowPending();
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public boolean isOverflowMenuShowing() {
        i();
        return this.f790e.isOverflowMenuShowing();
    }

    @Override // android.view.View
    @RequiresApi(21)
    public WindowInsets onApplyWindowInsets(@NonNull WindowInsets windowInsets) {
        i();
        WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(windowInsets, this);
        boolean b4 = b(this.f789d, new Rect(windowInsetsCompat.getSystemWindowInsetLeft(), windowInsetsCompat.getSystemWindowInsetTop(), windowInsetsCompat.getSystemWindowInsetRight(), windowInsetsCompat.getSystemWindowInsetBottom()), true, true, false, true);
        ViewCompat.computeSystemWindowInsets(this, windowInsetsCompat, this.f799n);
        Rect rect = this.f799n;
        WindowInsetsCompat inset = windowInsetsCompat.inset(rect.left, rect.top, rect.right, rect.bottom);
        this.f806u = inset;
        boolean z3 = true;
        if (!this.f807v.equals(inset)) {
            this.f807v = this.f806u;
            b4 = true;
        }
        if (this.f800o.equals(this.f799n)) {
            z3 = b4;
        } else {
            this.f800o.set(this.f799n);
        }
        if (z3) {
            requestLayout();
        }
        return windowInsetsCompat.consumeDisplayCutout().consumeSystemWindowInsets().consumeStableInsets().toWindowInsets();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        f(getContext());
        ViewCompat.requestApplyInsets(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        e();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i8 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + paddingLeft;
                int i9 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + paddingTop;
                childAt.layout(i8, i9, measuredWidth + i8, measuredHeight + i9);
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i4) {
        int measuredHeight;
        i();
        measureChildWithMargins(this.f789d, i2, 0, i4, 0);
        LayoutParams layoutParams = (LayoutParams) this.f789d.getLayoutParams();
        int max = Math.max(0, this.f789d.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin);
        int max2 = Math.max(0, this.f789d.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
        int combineMeasuredStates = View.combineMeasuredStates(0, this.f789d.getMeasuredState());
        boolean z3 = (ViewCompat.getWindowSystemUiVisibility(this) & 256) != 0;
        if (z3) {
            measuredHeight = this.f786a;
            if (this.f794i && this.f789d.getTabContainer() != null) {
                measuredHeight += this.f786a;
            }
        } else {
            measuredHeight = this.f789d.getVisibility() != 8 ? this.f789d.getMeasuredHeight() : 0;
        }
        this.f801p.set(this.f799n);
        int i5 = Build.VERSION.SDK_INT;
        if (i5 >= 21) {
            this.f808w = this.f806u;
        } else {
            this.f804s.set(this.f802q);
        }
        if (!this.f793h && !z3) {
            Rect rect = this.f801p;
            rect.top += measuredHeight;
            rect.bottom += 0;
            if (i5 >= 21) {
                this.f808w = this.f808w.inset(0, measuredHeight, 0, 0);
            }
        } else if (i5 >= 21) {
            this.f808w = new WindowInsetsCompat.Builder(this.f808w).setSystemWindowInsets(Insets.of(this.f808w.getSystemWindowInsetLeft(), this.f808w.getSystemWindowInsetTop() + measuredHeight, this.f808w.getSystemWindowInsetRight(), this.f808w.getSystemWindowInsetBottom() + 0)).build();
        } else {
            Rect rect2 = this.f804s;
            rect2.top += measuredHeight;
            rect2.bottom += 0;
        }
        b(this.f788c, this.f801p, true, true, true, true);
        if (i5 >= 21 && !this.f809x.equals(this.f808w)) {
            WindowInsetsCompat windowInsetsCompat = this.f808w;
            this.f809x = windowInsetsCompat;
            ViewCompat.dispatchApplyWindowInsets(this.f788c, windowInsetsCompat);
        } else if (i5 < 21 && !this.f805t.equals(this.f804s)) {
            this.f805t.set(this.f804s);
            this.f788c.dispatchFitSystemWindows(this.f804s);
        }
        measureChildWithMargins(this.f788c, i2, 0, i4, 0);
        LayoutParams layoutParams2 = (LayoutParams) this.f788c.getLayoutParams();
        int max3 = Math.max(max, this.f788c.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin);
        int max4 = Math.max(max2, this.f788c.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin);
        int combineMeasuredStates2 = View.combineMeasuredStates(combineMeasuredStates, this.f788c.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(max3 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i2, combineMeasuredStates2), View.resolveSizeAndState(Math.max(max4 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i4, combineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedFling(View view, float f4, float f5, boolean z3) {
        if (this.f795j && z3) {
            if (k(f5)) {
                a();
            } else {
                j();
            }
            this.f796k = true;
            return true;
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedPreFling(View view, float f4, float f5) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedPreScroll(View view, int i2, int i4, int[] iArr) {
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedPreScroll(View view, int i2, int i4, int[] iArr, int i5) {
        if (i5 == 0) {
            onNestedPreScroll(view, i2, i4, iArr);
        }
    }

    @Override // androidx.core.view.NestedScrollingParent3
    public void onNestedScroll(View view, int i2, int i4, int i5, int i6, int i7, int[] iArr) {
        onNestedScroll(view, i2, i4, i5, i6, i7);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScrollAccepted(View view, View view2, int i2, int i4) {
        if (i4 == 0) {
            onNestedScrollAccepted(view, view2, i2);
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public boolean onStartNestedScroll(View view, View view2, int i2, int i4) {
        return i4 == 0 && onStartNestedScroll(view, view2, i2);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onStopNestedScroll(View view, int i2) {
        if (i2 == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // android.view.View
    @Deprecated
    public void onWindowSystemUiVisibilityChanged(int i2) {
        if (Build.VERSION.SDK_INT >= 16) {
            super.onWindowSystemUiVisibilityChanged(i2);
        }
        i();
        int i4 = this.f798m ^ i2;
        this.f798m = i2;
        boolean z3 = (i2 & 4) == 0;
        boolean z4 = (i2 & 256) != 0;
        ActionBarVisibilityCallback actionBarVisibilityCallback = this.f810y;
        if (actionBarVisibilityCallback != null) {
            actionBarVisibilityCallback.enableContentAnimations(!z4);
            if (!z3 && z4) {
                this.f810y.hideForSystem();
            } else {
                this.f810y.showForSystem();
            }
        }
        if ((i4 & 256) == 0 || this.f810y == null) {
            return;
        }
        ViewCompat.requestApplyInsets(this);
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        this.f787b = i2;
        ActionBarVisibilityCallback actionBarVisibilityCallback = this.f810y;
        if (actionBarVisibilityCallback != null) {
            actionBarVisibilityCallback.onWindowVisibilityChanged(i2);
        }
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public void restoreToolbarHierarchyState(SparseArray<Parcelable> sparseArray) {
        i();
        this.f790e.restoreHierarchyState(sparseArray);
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public void saveToolbarHierarchyState(SparseArray<Parcelable> sparseArray) {
        i();
        this.f790e.saveHierarchyState(sparseArray);
    }

    public void setActionBarHideOffset(int i2) {
        e();
        this.f789d.setTranslationY(-Math.max(0, Math.min(i2, this.f789d.getHeight())));
    }

    public void setActionBarVisibilityCallback(ActionBarVisibilityCallback actionBarVisibilityCallback) {
        this.f810y = actionBarVisibilityCallback;
        if (getWindowToken() != null) {
            this.f810y.onWindowVisibilityChanged(this.f787b);
            int i2 = this.f798m;
            if (i2 != 0) {
                onWindowSystemUiVisibilityChanged(i2);
                ViewCompat.requestApplyInsets(this);
            }
        }
    }

    public void setHasNonEmbeddedTabs(boolean z3) {
        this.f794i = z3;
    }

    public void setHideOnContentScrollEnabled(boolean z3) {
        if (z3 != this.f795j) {
            this.f795j = z3;
            if (z3) {
                return;
            }
            e();
            setActionBarHideOffset(0);
        }
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public void setIcon(int i2) {
        i();
        this.f790e.setIcon(i2);
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public void setLogo(int i2) {
        i();
        this.f790e.setLogo(i2);
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public void setMenu(Menu menu, MenuPresenter.Callback callback) {
        i();
        this.f790e.setMenu(menu, callback);
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public void setMenuPrepared() {
        i();
        this.f790e.setMenuPrepared();
    }

    public void setOverlayMode(boolean z3) {
        this.f793h = z3;
        this.f792g = z3 && getContext().getApplicationInfo().targetSdkVersion < 19;
    }

    public void setShowingForActionMode(boolean z3) {
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public void setUiOptions(int i2) {
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public void setWindowCallback(Window.Callback callback) {
        i();
        this.f790e.setWindowCallback(callback);
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public void setWindowTitle(CharSequence charSequence) {
        i();
        this.f790e.setWindowTitle(charSequence);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public boolean showOverflowMenu() {
        i();
        return this.f790e.showOverflowMenu();
    }

    public ActionBarOverlayLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f787b = 0;
        this.f799n = new Rect();
        this.f800o = new Rect();
        this.f801p = new Rect();
        this.f802q = new Rect();
        this.f803r = new Rect();
        this.f804s = new Rect();
        this.f805t = new Rect();
        WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.CONSUMED;
        this.f806u = windowInsetsCompat;
        this.f807v = windowInsetsCompat;
        this.f808w = windowInsetsCompat;
        this.f809x = windowInsetsCompat;
        this.B = new AnimatorListenerAdapter() { // from class: androidx.appcompat.widget.ActionBarOverlayLayout.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
                actionBarOverlayLayout.A = null;
                actionBarOverlayLayout.f796k = false;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
                actionBarOverlayLayout.A = null;
                actionBarOverlayLayout.f796k = false;
            }
        };
        this.C = new Runnable() { // from class: androidx.appcompat.widget.ActionBarOverlayLayout.2
            @Override // java.lang.Runnable
            public void run() {
                ActionBarOverlayLayout.this.e();
                ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
                actionBarOverlayLayout.A = actionBarOverlayLayout.f789d.animate().translationY(0.0f).setListener(ActionBarOverlayLayout.this.B);
            }
        };
        this.D = new Runnable() { // from class: androidx.appcompat.widget.ActionBarOverlayLayout.3
            @Override // java.lang.Runnable
            public void run() {
                ActionBarOverlayLayout.this.e();
                ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
                actionBarOverlayLayout.A = actionBarOverlayLayout.f789d.animate().translationY(-ActionBarOverlayLayout.this.f789d.getHeight()).setListener(ActionBarOverlayLayout.this.B);
            }
        };
        f(context);
        this.E = new NestedScrollingParentHelper(this);
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScroll(View view, int i2, int i4, int i5, int i6, int i7) {
        if (i7 == 0) {
            onNestedScroll(view, i2, i4, i5, i6);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScrollAccepted(View view, View view2, int i2) {
        this.E.onNestedScrollAccepted(view, view2, i2);
        this.f797l = getActionBarHideOffset();
        e();
        ActionBarVisibilityCallback actionBarVisibilityCallback = this.f810y;
        if (actionBarVisibilityCallback != null) {
            actionBarVisibilityCallback.onContentScrollStarted();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onStartNestedScroll(View view, View view2, int i2) {
        if ((i2 & 2) == 0 || this.f789d.getVisibility() != 0) {
            return false;
        }
        return this.f795j;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onStopNestedScroll(View view) {
        if (this.f795j && !this.f796k) {
            if (this.f797l <= this.f789d.getHeight()) {
                h();
            } else {
                g();
            }
        }
        ActionBarVisibilityCallback actionBarVisibilityCallback = this.f810y;
        if (actionBarVisibilityCallback != null) {
            actionBarVisibilityCallback.onContentScrollStopped();
        }
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScroll(View view, int i2, int i4, int i5, int i6) {
        int i7 = this.f797l + i4;
        this.f797l = i7;
        setActionBarHideOffset(i7);
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public void setIcon(Drawable drawable) {
        i();
        this.f790e.setIcon(drawable);
    }
}
