package com.google.android.material.navigation;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.widget.TooltipCompat;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.PointerIconCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import com.google.android.material.R;
import com.google.android.material.badge.BadgeDrawable;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public abstract class NavigationBarItemView extends FrameLayout implements MenuView.ItemView {
    private static final int C = -1;
    private static final int[] D = {16842912};
    private static final d E = new d(null);
    private static final d F = new e(null);
    private int A;
    @Nullable
    private BadgeDrawable B;

    /* renamed from: a  reason: collision with root package name */
    private boolean f15233a;

    /* renamed from: b  reason: collision with root package name */
    private int f15234b;

    /* renamed from: c  reason: collision with root package name */
    private int f15235c;

    /* renamed from: d  reason: collision with root package name */
    private float f15236d;

    /* renamed from: e  reason: collision with root package name */
    private float f15237e;

    /* renamed from: f  reason: collision with root package name */
    private float f15238f;

    /* renamed from: g  reason: collision with root package name */
    private int f15239g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f15240h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final FrameLayout f15241i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private final View f15242j;

    /* renamed from: k  reason: collision with root package name */
    private final ImageView f15243k;

    /* renamed from: l  reason: collision with root package name */
    private final ViewGroup f15244l;

    /* renamed from: m  reason: collision with root package name */
    private final TextView f15245m;

    /* renamed from: n  reason: collision with root package name */
    private final TextView f15246n;

    /* renamed from: o  reason: collision with root package name */
    private int f15247o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private MenuItemImpl f15248p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private ColorStateList f15249q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private Drawable f15250r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private Drawable f15251s;

    /* renamed from: t  reason: collision with root package name */
    private ValueAnimator f15252t;

    /* renamed from: u  reason: collision with root package name */
    private d f15253u;

    /* renamed from: v  reason: collision with root package name */
    private float f15254v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f15255w;

    /* renamed from: x  reason: collision with root package name */
    private int f15256x;

    /* renamed from: y  reason: collision with root package name */
    private int f15257y;

    /* renamed from: z  reason: collision with root package name */
    private boolean f15258z;

    /* loaded from: classes2.dex */
    class a implements View.OnLayoutChangeListener {
        a() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i2, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
            if (NavigationBarItemView.this.f15243k.getVisibility() == 0) {
                NavigationBarItemView navigationBarItemView = NavigationBarItemView.this;
                navigationBarItemView.s(navigationBarItemView.f15243k);
            }
        }
    }

    /* loaded from: classes2.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f15260a;

        b(int i2) {
            this.f15260a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            NavigationBarItemView.this.t(this.f15260a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ float f15262a;

        c(float f4) {
            this.f15262a = f4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            NavigationBarItemView.this.m(((Float) valueAnimator.getAnimatedValue()).floatValue(), this.f15262a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        private static final float f15264a = 0.4f;

        /* renamed from: b  reason: collision with root package name */
        private static final float f15265b = 1.0f;

        /* renamed from: c  reason: collision with root package name */
        private static final float f15266c = 0.2f;

        private d() {
        }

        protected float a(@FloatRange(from = 0.0d, to = 1.0d) float f4, @FloatRange(from = 0.0d, to = 1.0d) float f5) {
            return com.google.android.material.animation.a.b(0.0f, 1.0f, f5 == 0.0f ? 0.8f : 0.0f, f5 == 0.0f ? 1.0f : 0.2f, f4);
        }

        protected float b(@FloatRange(from = 0.0d, to = 1.0d) float f4, @FloatRange(from = 0.0d, to = 1.0d) float f5) {
            return com.google.android.material.animation.a.a(f15264a, 1.0f, f4);
        }

        protected float c(@FloatRange(from = 0.0d, to = 1.0d) float f4, @FloatRange(from = 0.0d, to = 1.0d) float f5) {
            return 1.0f;
        }

        public void d(@FloatRange(from = 0.0d, to = 1.0d) float f4, @FloatRange(from = 0.0d, to = 1.0d) float f5, @NonNull View view) {
            view.setScaleX(b(f4, f5));
            view.setScaleY(c(f4, f5));
            view.setAlpha(a(f4, f5));
        }

        /* synthetic */ d(a aVar) {
            this();
        }
    }

    /* loaded from: classes2.dex */
    private static class e extends d {
        private e() {
            super(null);
        }

        @Override // com.google.android.material.navigation.NavigationBarItemView.d
        protected float c(float f4, float f5) {
            return b(f4, f5);
        }

        /* synthetic */ e(a aVar) {
            this();
        }
    }

    public NavigationBarItemView(@NonNull Context context) {
        super(context);
        this.f15233a = false;
        this.f15247o = -1;
        this.f15253u = E;
        this.f15254v = 0.0f;
        this.f15255w = false;
        this.f15256x = 0;
        this.f15257y = 0;
        this.f15258z = false;
        this.A = 0;
        LayoutInflater.from(context).inflate(getItemLayoutResId(), (ViewGroup) this, true);
        this.f15241i = (FrameLayout) findViewById(R.id.navigation_bar_item_icon_container);
        this.f15242j = findViewById(R.id.navigation_bar_item_active_indicator_view);
        ImageView imageView = (ImageView) findViewById(R.id.navigation_bar_item_icon_view);
        this.f15243k = imageView;
        ViewGroup viewGroup = (ViewGroup) findViewById(R.id.navigation_bar_item_labels_group);
        this.f15244l = viewGroup;
        TextView textView = (TextView) findViewById(R.id.navigation_bar_item_small_label_view);
        this.f15245m = textView;
        TextView textView2 = (TextView) findViewById(R.id.navigation_bar_item_large_label_view);
        this.f15246n = textView2;
        setBackgroundResource(getItemBackgroundResId());
        this.f15234b = getResources().getDimensionPixelSize(getItemDefaultMarginResId());
        this.f15235c = viewGroup.getPaddingBottom();
        ViewCompat.setImportantForAccessibility(textView, 2);
        ViewCompat.setImportantForAccessibility(textView2, 2);
        setFocusable(true);
        e(textView.getTextSize(), textView2.getTextSize());
        if (imageView != null) {
            imageView.addOnLayoutChangeListener(new a());
        }
    }

    private void e(float f4, float f5) {
        this.f15236d = f4 - f5;
        this.f15237e = (f5 * 1.0f) / f4;
        this.f15238f = (f4 * 1.0f) / f5;
    }

    @Nullable
    private FrameLayout g(View view) {
        ImageView imageView = this.f15243k;
        if (view == imageView && com.google.android.material.badge.a.f14079a) {
            return (FrameLayout) imageView.getParent();
        }
        return null;
    }

    private View getIconOrContainer() {
        FrameLayout frameLayout = this.f15241i;
        return frameLayout != null ? frameLayout : this.f15243k;
    }

    private int getItemVisiblePosition() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        int indexOfChild = viewGroup.indexOfChild(this);
        int i2 = 0;
        for (int i4 = 0; i4 < indexOfChild; i4++) {
            View childAt = viewGroup.getChildAt(i4);
            if ((childAt instanceof NavigationBarItemView) && childAt.getVisibility() == 0) {
                i2++;
            }
        }
        return i2;
    }

    private int getSuggestedIconHeight() {
        BadgeDrawable badgeDrawable = this.B;
        int minimumHeight = badgeDrawable != null ? badgeDrawable.getMinimumHeight() / 2 : 0;
        return Math.max(minimumHeight, ((FrameLayout.LayoutParams) getIconOrContainer().getLayoutParams()).topMargin) + this.f15243k.getMeasuredWidth() + minimumHeight;
    }

    private int getSuggestedIconWidth() {
        BadgeDrawable badgeDrawable = this.B;
        int minimumWidth = badgeDrawable == null ? 0 : badgeDrawable.getMinimumWidth() - this.B.q();
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getIconOrContainer().getLayoutParams();
        return Math.max(minimumWidth, layoutParams.leftMargin) + this.f15243k.getMeasuredWidth() + Math.max(minimumWidth, layoutParams.rightMargin);
    }

    private boolean h() {
        return this.B != null;
    }

    private boolean i() {
        return this.f15258z && this.f15239g == 2;
    }

    private void j(@FloatRange(from = 0.0d, to = 1.0d) float f4) {
        if (this.f15255w && this.f15233a && ViewCompat.isAttachedToWindow(this)) {
            ValueAnimator valueAnimator = this.f15252t;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.f15252t = null;
            }
            ValueAnimator ofFloat = ValueAnimator.ofFloat(this.f15254v, f4);
            this.f15252t = ofFloat;
            ofFloat.addUpdateListener(new c(f4));
            this.f15252t.setInterpolator(d1.a.e(getContext(), R.attr.motionEasingStandard, com.google.android.material.animation.a.f14005b));
            this.f15252t.setDuration(d1.a.d(getContext(), R.attr.motionDurationLong1, getResources().getInteger(R.integer.material_motion_duration_long_1)));
            this.f15252t.start();
            return;
        }
        m(f4, f4);
    }

    private void k() {
        MenuItemImpl menuItemImpl = this.f15248p;
        if (menuItemImpl != null) {
            setChecked(menuItemImpl.isChecked());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m(@FloatRange(from = 0.0d, to = 1.0d) float f4, float f5) {
        View view = this.f15242j;
        if (view != null) {
            this.f15253u.d(f4, f5, view);
        }
        this.f15254v = f4;
    }

    private static void n(TextView textView, @StyleRes int i2) {
        TextViewCompat.setTextAppearance(textView, i2);
        int h4 = com.google.android.material.resources.c.h(textView.getContext(), i2, 0);
        if (h4 != 0) {
            textView.setTextSize(0, h4);
        }
    }

    private static void o(@NonNull View view, float f4, float f5, int i2) {
        view.setScaleX(f4);
        view.setScaleY(f5);
        view.setVisibility(i2);
    }

    private static void p(@NonNull View view, int i2, int i4) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.topMargin = i2;
        layoutParams.bottomMargin = i2;
        layoutParams.gravity = i4;
        view.setLayoutParams(layoutParams);
    }

    private void q(@Nullable View view) {
        if (h() && view != null) {
            setClipChildren(false);
            setClipToPadding(false);
            com.google.android.material.badge.a.d(this.B, view, g(view));
        }
    }

    private void r(@Nullable View view) {
        if (h()) {
            if (view != null) {
                setClipChildren(true);
                setClipToPadding(true);
                com.google.android.material.badge.a.j(this.B, view);
            }
            this.B = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s(View view) {
        if (h()) {
            com.google.android.material.badge.a.m(this.B, view, g(view));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t(int i2) {
        if (this.f15242j == null) {
            return;
        }
        int min = Math.min(this.f15256x, i2 - (this.A * 2));
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f15242j.getLayoutParams();
        layoutParams.height = i() ? min : this.f15257y;
        layoutParams.width = min;
        this.f15242j.setLayoutParams(layoutParams);
    }

    private void u() {
        if (i()) {
            this.f15253u = F;
        } else {
            this.f15253u = E;
        }
    }

    private static void v(@NonNull View view, int i2) {
        view.setPadding(view.getPaddingLeft(), view.getPaddingTop(), view.getPaddingRight(), i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f() {
        l();
        this.f15248p = null;
        this.f15254v = 0.0f;
        this.f15233a = false;
    }

    @Nullable
    public Drawable getActiveIndicatorDrawable() {
        View view = this.f15242j;
        if (view == null) {
            return null;
        }
        return view.getBackground();
    }

    @Nullable
    public BadgeDrawable getBadge() {
        return this.B;
    }

    @DrawableRes
    protected int getItemBackgroundResId() {
        return R.drawable.mtrl_navigation_bar_item_background;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    @Nullable
    public MenuItemImpl getItemData() {
        return this.f15248p;
    }

    @DimenRes
    protected int getItemDefaultMarginResId() {
        return R.dimen.mtrl_navigation_bar_item_default_margin;
    }

    @LayoutRes
    protected abstract int getItemLayoutResId();

    public int getItemPosition() {
        return this.f15247o;
    }

    @Override // android.view.View
    protected int getSuggestedMinimumHeight() {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f15244l.getLayoutParams();
        return getSuggestedIconHeight() + layoutParams.topMargin + this.f15244l.getMeasuredHeight() + layoutParams.bottomMargin;
    }

    @Override // android.view.View
    protected int getSuggestedMinimumWidth() {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f15244l.getLayoutParams();
        return Math.max(getSuggestedIconWidth(), layoutParams.leftMargin + this.f15244l.getMeasuredWidth() + layoutParams.rightMargin);
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void initialize(@NonNull MenuItemImpl menuItemImpl, int i2) {
        CharSequence title;
        this.f15248p = menuItemImpl;
        setCheckable(menuItemImpl.isCheckable());
        setChecked(menuItemImpl.isChecked());
        setEnabled(menuItemImpl.isEnabled());
        setIcon(menuItemImpl.getIcon());
        setTitle(menuItemImpl.getTitle());
        setId(menuItemImpl.getItemId());
        if (!TextUtils.isEmpty(menuItemImpl.getContentDescription())) {
            setContentDescription(menuItemImpl.getContentDescription());
        }
        if (!TextUtils.isEmpty(menuItemImpl.getTooltipText())) {
            title = menuItemImpl.getTooltipText();
        } else {
            title = menuItemImpl.getTitle();
        }
        int i4 = Build.VERSION.SDK_INT;
        if (i4 < 21 || i4 > 23) {
            TooltipCompat.setTooltipText(this, title);
        }
        setVisibility(menuItemImpl.isVisible() ? 0 : 8);
        this.f15233a = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l() {
        r(this.f15243k);
    }

    @Override // android.view.ViewGroup, android.view.View
    @NonNull
    public int[] onCreateDrawableState(int i2) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i2 + 1);
        MenuItemImpl menuItemImpl = this.f15248p;
        if (menuItemImpl != null && menuItemImpl.isCheckable() && this.f15248p.isChecked()) {
            FrameLayout.mergeDrawableStates(onCreateDrawableState, D);
        }
        return onCreateDrawableState;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        BadgeDrawable badgeDrawable = this.B;
        if (badgeDrawable != null && badgeDrawable.isVisible()) {
            CharSequence title = this.f15248p.getTitle();
            if (!TextUtils.isEmpty(this.f15248p.getContentDescription())) {
                title = this.f15248p.getContentDescription();
            }
            accessibilityNodeInfo.setContentDescription(((Object) title) + ", " + ((Object) this.B.o()));
        }
        AccessibilityNodeInfoCompat wrap = AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo);
        wrap.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(0, 1, getItemVisiblePosition(), 1, false, isSelected()));
        if (isSelected()) {
            wrap.setClickable(false);
            wrap.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
        }
        wrap.setRoleDescription(getResources().getString(R.string.item_view_role_description));
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i4, int i5, int i6) {
        super.onSizeChanged(i2, i4, i5, i6);
        post(new b(i2));
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public boolean prefersCondensedTitle() {
        return false;
    }

    public void setActiveIndicatorDrawable(@Nullable Drawable drawable) {
        View view = this.f15242j;
        if (view == null) {
            return;
        }
        view.setBackgroundDrawable(drawable);
    }

    public void setActiveIndicatorEnabled(boolean z3) {
        this.f15255w = z3;
        View view = this.f15242j;
        if (view != null) {
            view.setVisibility(z3 ? 0 : 8);
            requestLayout();
        }
    }

    public void setActiveIndicatorHeight(int i2) {
        this.f15257y = i2;
        t(getWidth());
    }

    public void setActiveIndicatorMarginHorizontal(@Px int i2) {
        this.A = i2;
        t(getWidth());
    }

    public void setActiveIndicatorResizeable(boolean z3) {
        this.f15258z = z3;
    }

    public void setActiveIndicatorWidth(int i2) {
        this.f15256x = i2;
        t(getWidth());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBadge(@NonNull BadgeDrawable badgeDrawable) {
        if (this.B == badgeDrawable) {
            return;
        }
        if (h() && this.f15243k != null) {
            r(this.f15243k);
        }
        this.B = badgeDrawable;
        ImageView imageView = this.f15243k;
        if (imageView != null) {
            q(imageView);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setCheckable(boolean z3) {
        refreshDrawableState();
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setChecked(boolean z3) {
        TextView textView = this.f15246n;
        textView.setPivotX(textView.getWidth() / 2);
        TextView textView2 = this.f15246n;
        textView2.setPivotY(textView2.getBaseline());
        TextView textView3 = this.f15245m;
        textView3.setPivotX(textView3.getWidth() / 2);
        TextView textView4 = this.f15245m;
        textView4.setPivotY(textView4.getBaseline());
        j(z3 ? 1.0f : 0.0f);
        int i2 = this.f15239g;
        if (i2 != -1) {
            if (i2 == 0) {
                if (z3) {
                    p(getIconOrContainer(), this.f15234b, 49);
                    v(this.f15244l, this.f15235c);
                    this.f15246n.setVisibility(0);
                } else {
                    p(getIconOrContainer(), this.f15234b, 17);
                    v(this.f15244l, 0);
                    this.f15246n.setVisibility(4);
                }
                this.f15245m.setVisibility(4);
            } else if (i2 == 1) {
                v(this.f15244l, this.f15235c);
                if (z3) {
                    p(getIconOrContainer(), (int) (this.f15234b + this.f15236d), 49);
                    o(this.f15246n, 1.0f, 1.0f, 0);
                    TextView textView5 = this.f15245m;
                    float f4 = this.f15237e;
                    o(textView5, f4, f4, 4);
                } else {
                    p(getIconOrContainer(), this.f15234b, 49);
                    TextView textView6 = this.f15246n;
                    float f5 = this.f15238f;
                    o(textView6, f5, f5, 4);
                    o(this.f15245m, 1.0f, 1.0f, 0);
                }
            } else if (i2 == 2) {
                p(getIconOrContainer(), this.f15234b, 17);
                this.f15246n.setVisibility(8);
                this.f15245m.setVisibility(8);
            }
        } else if (this.f15240h) {
            if (z3) {
                p(getIconOrContainer(), this.f15234b, 49);
                v(this.f15244l, this.f15235c);
                this.f15246n.setVisibility(0);
            } else {
                p(getIconOrContainer(), this.f15234b, 17);
                v(this.f15244l, 0);
                this.f15246n.setVisibility(4);
            }
            this.f15245m.setVisibility(4);
        } else {
            v(this.f15244l, this.f15235c);
            if (z3) {
                p(getIconOrContainer(), (int) (this.f15234b + this.f15236d), 49);
                o(this.f15246n, 1.0f, 1.0f, 0);
                TextView textView7 = this.f15245m;
                float f6 = this.f15237e;
                o(textView7, f6, f6, 4);
            } else {
                p(getIconOrContainer(), this.f15234b, 49);
                TextView textView8 = this.f15246n;
                float f7 = this.f15238f;
                o(textView8, f7, f7, 4);
                o(this.f15245m, 1.0f, 1.0f, 0);
            }
        }
        refreshDrawableState();
        setSelected(z3);
    }

    @Override // android.view.View, androidx.appcompat.view.menu.MenuView.ItemView
    public void setEnabled(boolean z3) {
        super.setEnabled(z3);
        this.f15245m.setEnabled(z3);
        this.f15246n.setEnabled(z3);
        this.f15243k.setEnabled(z3);
        if (z3) {
            ViewCompat.setPointerIcon(this, PointerIconCompat.getSystemIcon(getContext(), 1002));
        } else {
            ViewCompat.setPointerIcon(this, null);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setIcon(@Nullable Drawable drawable) {
        if (drawable == this.f15250r) {
            return;
        }
        this.f15250r = drawable;
        if (drawable != null) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                drawable = constantState.newDrawable();
            }
            drawable = DrawableCompat.wrap(drawable).mutate();
            this.f15251s = drawable;
            ColorStateList colorStateList = this.f15249q;
            if (colorStateList != null) {
                DrawableCompat.setTintList(drawable, colorStateList);
            }
        }
        this.f15243k.setImageDrawable(drawable);
    }

    public void setIconSize(int i2) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f15243k.getLayoutParams();
        layoutParams.width = i2;
        layoutParams.height = i2;
        this.f15243k.setLayoutParams(layoutParams);
    }

    public void setIconTintList(@Nullable ColorStateList colorStateList) {
        Drawable drawable;
        this.f15249q = colorStateList;
        if (this.f15248p == null || (drawable = this.f15251s) == null) {
            return;
        }
        DrawableCompat.setTintList(drawable, colorStateList);
        this.f15251s.invalidateSelf();
    }

    public void setItemBackground(int i2) {
        setItemBackground(i2 == 0 ? null : ContextCompat.getDrawable(getContext(), i2));
    }

    public void setItemPaddingBottom(int i2) {
        if (this.f15235c != i2) {
            this.f15235c = i2;
            k();
        }
    }

    public void setItemPaddingTop(int i2) {
        if (this.f15234b != i2) {
            this.f15234b = i2;
            k();
        }
    }

    public void setItemPosition(int i2) {
        this.f15247o = i2;
    }

    public void setLabelVisibilityMode(int i2) {
        if (this.f15239g != i2) {
            this.f15239g = i2;
            u();
            t(getWidth());
            k();
        }
    }

    public void setShifting(boolean z3) {
        if (this.f15240h != z3) {
            this.f15240h = z3;
            k();
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setShortcut(boolean z3, char c4) {
    }

    public void setTextAppearanceActive(@StyleRes int i2) {
        n(this.f15246n, i2);
        e(this.f15245m.getTextSize(), this.f15246n.getTextSize());
    }

    public void setTextAppearanceInactive(@StyleRes int i2) {
        n(this.f15245m, i2);
        e(this.f15245m.getTextSize(), this.f15246n.getTextSize());
    }

    public void setTextColor(@Nullable ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.f15245m.setTextColor(colorStateList);
            this.f15246n.setTextColor(colorStateList);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setTitle(@Nullable CharSequence charSequence) {
        this.f15245m.setText(charSequence);
        this.f15246n.setText(charSequence);
        MenuItemImpl menuItemImpl = this.f15248p;
        if (menuItemImpl == null || TextUtils.isEmpty(menuItemImpl.getContentDescription())) {
            setContentDescription(charSequence);
        }
        MenuItemImpl menuItemImpl2 = this.f15248p;
        if (menuItemImpl2 != null && !TextUtils.isEmpty(menuItemImpl2.getTooltipText())) {
            charSequence = this.f15248p.getTooltipText();
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 21 || i2 > 23) {
            TooltipCompat.setTooltipText(this, charSequence);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public boolean showsIcon() {
        return true;
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        if (drawable != null && drawable.getConstantState() != null) {
            drawable = drawable.getConstantState().newDrawable().mutate();
        }
        ViewCompat.setBackground(this, drawable);
    }
}
