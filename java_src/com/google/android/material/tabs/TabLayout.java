package com.google.android.material.tabs;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.text.Layout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.BoolRes;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.TooltipCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.util.Pools;
import androidx.core.view.GravityCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.PointerIconCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.R;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.internal.w;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
@ViewPager.DecorView
/* loaded from: classes2.dex */
public class TabLayout extends HorizontalScrollView {
    private static final int A0 = 300;
    private static final String C0 = "TabLayout";
    public static final int D0 = 0;
    public static final int E0 = 1;
    public static final int F0 = 2;
    public static final int G0 = 0;
    public static final int H0 = 1;
    public static final int I0 = 0;
    public static final int J0 = 1;
    public static final int K0 = 2;
    public static final int L0 = 0;
    public static final int M0 = 1;
    public static final int N0 = 2;
    public static final int O0 = 3;
    public static final int P0 = 0;
    public static final int Q0 = 1;
    public static final int R0 = 2;
    @Dimension(unit = 0)

    /* renamed from: u0  reason: collision with root package name */
    private static final int f15873u0 = 72;
    @Dimension(unit = 0)

    /* renamed from: v0  reason: collision with root package name */
    static final int f15874v0 = 8;
    @Dimension(unit = 0)

    /* renamed from: w0  reason: collision with root package name */
    private static final int f15875w0 = 48;
    @Dimension(unit = 0)

    /* renamed from: x0  reason: collision with root package name */
    private static final int f15876x0 = 56;
    @Dimension(unit = 0)

    /* renamed from: y0  reason: collision with root package name */
    static final int f15877y0 = 16;

    /* renamed from: z0  reason: collision with root package name */
    private static final int f15878z0 = -1;
    boolean A;
    boolean B;
    int C;
    int D;
    boolean E;
    private com.google.android.material.tabs.c F;
    @Nullable
    private c G;
    private final ArrayList<c> H;
    @Nullable
    private c I;
    private ValueAnimator J;
    @Nullable
    ViewPager K;

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<g> f15879a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private g f15880b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    final f f15881c;

    /* renamed from: d  reason: collision with root package name */
    int f15882d;

    /* renamed from: e  reason: collision with root package name */
    int f15883e;

    /* renamed from: f  reason: collision with root package name */
    int f15884f;

    /* renamed from: g  reason: collision with root package name */
    int f15885g;

    /* renamed from: h  reason: collision with root package name */
    int f15886h;

    /* renamed from: i  reason: collision with root package name */
    ColorStateList f15887i;

    /* renamed from: j  reason: collision with root package name */
    ColorStateList f15888j;

    /* renamed from: k  reason: collision with root package name */
    ColorStateList f15889k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    Drawable f15890l;

    /* renamed from: m  reason: collision with root package name */
    private int f15891m;

    /* renamed from: n  reason: collision with root package name */
    PorterDuff.Mode f15892n;
    @Nullable

    /* renamed from: n0  reason: collision with root package name */
    private PagerAdapter f15893n0;

    /* renamed from: o  reason: collision with root package name */
    float f15894o;

    /* renamed from: o0  reason: collision with root package name */
    private DataSetObserver f15895o0;

    /* renamed from: p  reason: collision with root package name */
    float f15896p;

    /* renamed from: p0  reason: collision with root package name */
    private h f15897p0;

    /* renamed from: q  reason: collision with root package name */
    final int f15898q;

    /* renamed from: q0  reason: collision with root package name */
    private b f15899q0;

    /* renamed from: r  reason: collision with root package name */
    int f15900r;

    /* renamed from: r0  reason: collision with root package name */
    private boolean f15901r0;

    /* renamed from: s  reason: collision with root package name */
    private final int f15902s;

    /* renamed from: s0  reason: collision with root package name */
    private final Pools.Pool<TabView> f15903s0;

    /* renamed from: t  reason: collision with root package name */
    private final int f15904t;

    /* renamed from: u  reason: collision with root package name */
    private final int f15905u;

    /* renamed from: v  reason: collision with root package name */
    private int f15906v;

    /* renamed from: w  reason: collision with root package name */
    int f15907w;

    /* renamed from: x  reason: collision with root package name */
    int f15908x;

    /* renamed from: y  reason: collision with root package name */
    int f15909y;

    /* renamed from: z  reason: collision with root package name */
    int f15910z;

    /* renamed from: t0  reason: collision with root package name */
    private static final int f15872t0 = R.style.Widget_Design_TabLayout;
    private static final Pools.Pool<g> B0 = new Pools.SynchronizedPool(16);

    /* loaded from: classes2.dex */
    public @interface LabelVisibility {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface Mode {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface TabGravity {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface TabIndicatorAnimationMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface TabIndicatorGravity {
    }

    /* loaded from: classes2.dex */
    public final class TabView extends LinearLayout {

        /* renamed from: a  reason: collision with root package name */
        private g f15911a;

        /* renamed from: b  reason: collision with root package name */
        private TextView f15912b;

        /* renamed from: c  reason: collision with root package name */
        private ImageView f15913c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private View f15914d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private BadgeDrawable f15915e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        private View f15916f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private TextView f15917g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        private ImageView f15918h;
        @Nullable

        /* renamed from: i  reason: collision with root package name */
        private Drawable f15919i;

        /* renamed from: j  reason: collision with root package name */
        private int f15920j;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class a implements View.OnLayoutChangeListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ View f15922a;

            a(View view) {
                this.f15922a = view;
            }

            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i2, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
                if (this.f15922a.getVisibility() == 0) {
                    TabView.this.w(this.f15922a);
                }
            }
        }

        public TabView(@NonNull Context context) {
            super(context);
            this.f15920j = 2;
            x(context);
            ViewCompat.setPaddingRelative(this, TabLayout.this.f15882d, TabLayout.this.f15883e, TabLayout.this.f15884f, TabLayout.this.f15885g);
            setGravity(17);
            setOrientation(!TabLayout.this.A ? 1 : 0);
            setClickable(true);
            ViewCompat.setPointerIcon(this, PointerIconCompat.getSystemIcon(getContext(), 1002));
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Nullable
        public BadgeDrawable getBadge() {
            return this.f15915e;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @NonNull
        public BadgeDrawable getOrCreateBadge() {
            if (this.f15915e == null) {
                this.f15915e = BadgeDrawable.d(getContext());
            }
            v();
            BadgeDrawable badgeDrawable = this.f15915e;
            if (badgeDrawable != null) {
                return badgeDrawable;
            }
            throw new IllegalStateException("Unable to create badge");
        }

        private void i(@Nullable View view) {
            if (view == null) {
                return;
            }
            view.addOnLayoutChangeListener(new a(view));
        }

        private float j(@NonNull Layout layout, int i2, float f4) {
            return layout.getLineWidth(i2) * (f4 / layout.getPaint().getTextSize());
        }

        private void k(boolean z3) {
            setClipChildren(z3);
            setClipToPadding(z3);
            ViewGroup viewGroup = (ViewGroup) getParent();
            if (viewGroup != null) {
                viewGroup.setClipChildren(z3);
                viewGroup.setClipToPadding(z3);
            }
        }

        @NonNull
        private FrameLayout l() {
            FrameLayout frameLayout = new FrameLayout(getContext());
            frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
            return frameLayout;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void m(@NonNull Canvas canvas) {
            Drawable drawable = this.f15919i;
            if (drawable != null) {
                drawable.setBounds(getLeft(), getTop(), getRight(), getBottom());
                this.f15919i.draw(canvas);
            }
        }

        @Nullable
        private FrameLayout n(@NonNull View view) {
            if ((view == this.f15913c || view == this.f15912b) && com.google.android.material.badge.a.f14079a) {
                return (FrameLayout) view.getParent();
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean o() {
            return this.f15915e != null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        private void p() {
            FrameLayout frameLayout;
            if (com.google.android.material.badge.a.f14079a) {
                frameLayout = l();
                addView(frameLayout, 0);
            } else {
                frameLayout = this;
            }
            ImageView imageView = (ImageView) LayoutInflater.from(getContext()).inflate(R.layout.design_layout_tab_icon, (ViewGroup) frameLayout, false);
            this.f15913c = imageView;
            frameLayout.addView(imageView, 0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private void q() {
            FrameLayout frameLayout;
            if (com.google.android.material.badge.a.f14079a) {
                frameLayout = l();
                addView(frameLayout);
            } else {
                frameLayout = this;
            }
            TextView textView = (TextView) LayoutInflater.from(getContext()).inflate(R.layout.design_layout_tab_text, (ViewGroup) frameLayout, false);
            this.f15912b = textView;
            frameLayout.addView(textView);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void r() {
            if (this.f15914d != null) {
                u();
            }
            this.f15915e = null;
        }

        private void t(@Nullable View view) {
            if (o() && view != null) {
                k(false);
                com.google.android.material.badge.a.d(this.f15915e, view, n(view));
                this.f15914d = view;
            }
        }

        private void u() {
            if (o()) {
                k(true);
                View view = this.f15914d;
                if (view != null) {
                    com.google.android.material.badge.a.j(this.f15915e, view);
                    this.f15914d = null;
                }
            }
        }

        private void v() {
            g gVar;
            g gVar2;
            if (o()) {
                if (this.f15916f != null) {
                    u();
                } else if (this.f15913c != null && (gVar2 = this.f15911a) != null && gVar2.h() != null) {
                    View view = this.f15914d;
                    ImageView imageView = this.f15913c;
                    if (view != imageView) {
                        u();
                        t(this.f15913c);
                        return;
                    }
                    w(imageView);
                } else if (this.f15912b != null && (gVar = this.f15911a) != null && gVar.l() == 1) {
                    View view2 = this.f15914d;
                    TextView textView = this.f15912b;
                    if (view2 != textView) {
                        u();
                        t(this.f15912b);
                        return;
                    }
                    w(textView);
                } else {
                    u();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void w(@NonNull View view) {
            if (o() && view == this.f15914d) {
                com.google.android.material.badge.a.m(this.f15915e, view, n(view));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v3, types: [android.graphics.drawable.RippleDrawable] */
        /* JADX WARN: Type inference failed for: r2v3, types: [android.graphics.drawable.LayerDrawable] */
        public void x(Context context) {
            int i2 = TabLayout.this.f15898q;
            if (i2 != 0) {
                Drawable drawable = AppCompatResources.getDrawable(context, i2);
                this.f15919i = drawable;
                if (drawable != null && drawable.isStateful()) {
                    this.f15919i.setState(getDrawableState());
                }
            } else {
                this.f15919i = null;
            }
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(0);
            if (TabLayout.this.f15889k != null) {
                GradientDrawable gradientDrawable2 = new GradientDrawable();
                gradientDrawable2.setCornerRadius(1.0E-5f);
                gradientDrawable2.setColor(-1);
                ColorStateList a4 = com.google.android.material.ripple.b.a(TabLayout.this.f15889k);
                if (Build.VERSION.SDK_INT >= 21) {
                    boolean z3 = TabLayout.this.E;
                    if (z3) {
                        gradientDrawable = null;
                    }
                    gradientDrawable = new RippleDrawable(a4, gradientDrawable, z3 ? null : gradientDrawable2);
                } else {
                    Drawable wrap = DrawableCompat.wrap(gradientDrawable2);
                    DrawableCompat.setTintList(wrap, a4);
                    gradientDrawable = new LayerDrawable(new Drawable[]{gradientDrawable, wrap});
                }
            }
            ViewCompat.setBackground(this, gradientDrawable);
            TabLayout.this.invalidate();
        }

        private void z(@Nullable TextView textView, @Nullable ImageView imageView) {
            g gVar = this.f15911a;
            Drawable mutate = (gVar == null || gVar.h() == null) ? null : DrawableCompat.wrap(this.f15911a.h()).mutate();
            if (mutate != null) {
                DrawableCompat.setTintList(mutate, TabLayout.this.f15888j);
                PorterDuff.Mode mode = TabLayout.this.f15892n;
                if (mode != null) {
                    DrawableCompat.setTintMode(mutate, mode);
                }
            }
            g gVar2 = this.f15911a;
            CharSequence n4 = gVar2 != null ? gVar2.n() : null;
            if (imageView != null) {
                if (mutate != null) {
                    imageView.setImageDrawable(mutate);
                    imageView.setVisibility(0);
                    setVisibility(0);
                } else {
                    imageView.setVisibility(8);
                    imageView.setImageDrawable(null);
                }
            }
            boolean z3 = !TextUtils.isEmpty(n4);
            if (textView != null) {
                if (z3) {
                    textView.setText(n4);
                    if (this.f15911a.f15945g == 1) {
                        textView.setVisibility(0);
                    } else {
                        textView.setVisibility(8);
                    }
                    setVisibility(0);
                } else {
                    textView.setVisibility(8);
                    textView.setText((CharSequence) null);
                }
            }
            if (imageView != null) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
                int e4 = (z3 && imageView.getVisibility() == 0) ? (int) w.e(getContext(), 8) : 0;
                if (TabLayout.this.A) {
                    if (e4 != MarginLayoutParamsCompat.getMarginEnd(marginLayoutParams)) {
                        MarginLayoutParamsCompat.setMarginEnd(marginLayoutParams, e4);
                        marginLayoutParams.bottomMargin = 0;
                        imageView.setLayoutParams(marginLayoutParams);
                        imageView.requestLayout();
                    }
                } else if (e4 != marginLayoutParams.bottomMargin) {
                    marginLayoutParams.bottomMargin = e4;
                    MarginLayoutParamsCompat.setMarginEnd(marginLayoutParams, 0);
                    imageView.setLayoutParams(marginLayoutParams);
                    imageView.requestLayout();
                }
            }
            g gVar3 = this.f15911a;
            CharSequence charSequence = gVar3 != null ? gVar3.f15942d : null;
            int i2 = Build.VERSION.SDK_INT;
            if (i2 < 21 || i2 > 23) {
                if (!z3) {
                    n4 = charSequence;
                }
                TooltipCompat.setTooltipText(this, n4);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void drawableStateChanged() {
            super.drawableStateChanged();
            int[] drawableState = getDrawableState();
            Drawable drawable = this.f15919i;
            boolean z3 = false;
            if (drawable != null && drawable.isStateful()) {
                z3 = false | this.f15919i.setState(drawableState);
            }
            if (z3) {
                invalidate();
                TabLayout.this.invalidate();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public int getContentHeight() {
            View[] viewArr = {this.f15912b, this.f15913c, this.f15916f};
            int i2 = 0;
            int i4 = 0;
            boolean z3 = false;
            for (int i5 = 0; i5 < 3; i5++) {
                View view = viewArr[i5];
                if (view != null && view.getVisibility() == 0) {
                    i4 = z3 ? Math.min(i4, view.getTop()) : view.getTop();
                    i2 = z3 ? Math.max(i2, view.getBottom()) : view.getBottom();
                    z3 = true;
                }
            }
            return i2 - i4;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public int getContentWidth() {
            View[] viewArr = {this.f15912b, this.f15913c, this.f15916f};
            int i2 = 0;
            int i4 = 0;
            boolean z3 = false;
            for (int i5 = 0; i5 < 3; i5++) {
                View view = viewArr[i5];
                if (view != null && view.getVisibility() == 0) {
                    i4 = z3 ? Math.min(i4, view.getLeft()) : view.getLeft();
                    i2 = z3 ? Math.max(i2, view.getRight()) : view.getRight();
                    z3 = true;
                }
            }
            return i2 - i4;
        }

        @Nullable
        public g getTab() {
            return this.f15911a;
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            BadgeDrawable badgeDrawable = this.f15915e;
            if (badgeDrawable != null && badgeDrawable.isVisible()) {
                CharSequence contentDescription = getContentDescription();
                accessibilityNodeInfo.setContentDescription(((Object) contentDescription) + ", " + ((Object) this.f15915e.o()));
            }
            AccessibilityNodeInfoCompat wrap = AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo);
            wrap.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(0, 1, this.f15911a.k(), 1, false, isSelected()));
            if (isSelected()) {
                wrap.setClickable(false);
                wrap.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
            }
            wrap.setRoleDescription(getResources().getString(R.string.item_view_role_description));
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i2, int i4) {
            Layout layout;
            int size = View.MeasureSpec.getSize(i2);
            int mode = View.MeasureSpec.getMode(i2);
            int tabMaxWidth = TabLayout.this.getTabMaxWidth();
            if (tabMaxWidth > 0 && (mode == 0 || size > tabMaxWidth)) {
                i2 = View.MeasureSpec.makeMeasureSpec(TabLayout.this.f15900r, Integer.MIN_VALUE);
            }
            super.onMeasure(i2, i4);
            if (this.f15912b != null) {
                float f4 = TabLayout.this.f15894o;
                int i5 = this.f15920j;
                ImageView imageView = this.f15913c;
                boolean z3 = true;
                if (imageView == null || imageView.getVisibility() != 0) {
                    TextView textView = this.f15912b;
                    if (textView != null && textView.getLineCount() > 1) {
                        f4 = TabLayout.this.f15896p;
                    }
                } else {
                    i5 = 1;
                }
                float textSize = this.f15912b.getTextSize();
                int lineCount = this.f15912b.getLineCount();
                int maxLines = TextViewCompat.getMaxLines(this.f15912b);
                if (f4 != textSize || (maxLines >= 0 && i5 != maxLines)) {
                    if (TabLayout.this.f15910z == 1 && f4 > textSize && lineCount == 1 && ((layout = this.f15912b.getLayout()) == null || j(layout, 0, f4) > (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight())) {
                        z3 = false;
                    }
                    if (z3) {
                        this.f15912b.setTextSize(0, f4);
                        this.f15912b.setMaxLines(i5);
                        super.onMeasure(i2, i4);
                    }
                }
            }
        }

        @Override // android.view.View
        public boolean performClick() {
            boolean performClick = super.performClick();
            if (this.f15911a != null) {
                if (!performClick) {
                    playSoundEffect(0);
                }
                this.f15911a.r();
                return true;
            }
            return performClick;
        }

        void s() {
            setTab(null);
            setSelected(false);
        }

        @Override // android.view.View
        public void setSelected(boolean z3) {
            boolean z4 = isSelected() != z3;
            super.setSelected(z3);
            if (z4 && z3 && Build.VERSION.SDK_INT < 16) {
                sendAccessibilityEvent(4);
            }
            TextView textView = this.f15912b;
            if (textView != null) {
                textView.setSelected(z3);
            }
            ImageView imageView = this.f15913c;
            if (imageView != null) {
                imageView.setSelected(z3);
            }
            View view = this.f15916f;
            if (view != null) {
                view.setSelected(z3);
            }
        }

        void setTab(@Nullable g gVar) {
            if (gVar != this.f15911a) {
                this.f15911a = gVar;
                update();
            }
        }

        final void update() {
            g gVar = this.f15911a;
            View g4 = gVar != null ? gVar.g() : null;
            if (g4 != null) {
                ViewParent parent = g4.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(g4);
                    }
                    addView(g4);
                }
                this.f15916f = g4;
                TextView textView = this.f15912b;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.f15913c;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.f15913c.setImageDrawable(null);
                }
                TextView textView2 = (TextView) g4.findViewById(16908308);
                this.f15917g = textView2;
                if (textView2 != null) {
                    this.f15920j = TextViewCompat.getMaxLines(textView2);
                }
                this.f15918h = (ImageView) g4.findViewById(16908294);
            } else {
                View view = this.f15916f;
                if (view != null) {
                    removeView(view);
                    this.f15916f = null;
                }
                this.f15917g = null;
                this.f15918h = null;
            }
            if (this.f15916f == null) {
                if (this.f15913c == null) {
                    p();
                }
                if (this.f15912b == null) {
                    q();
                    this.f15920j = TextViewCompat.getMaxLines(this.f15912b);
                }
                TextViewCompat.setTextAppearance(this.f15912b, TabLayout.this.f15886h);
                ColorStateList colorStateList = TabLayout.this.f15887i;
                if (colorStateList != null) {
                    this.f15912b.setTextColor(colorStateList);
                }
                z(this.f15912b, this.f15913c);
                v();
                i(this.f15913c);
                i(this.f15912b);
            } else {
                TextView textView3 = this.f15917g;
                if (textView3 != null || this.f15918h != null) {
                    z(textView3, this.f15918h);
                }
            }
            if (gVar != null && !TextUtils.isEmpty(gVar.f15942d)) {
                setContentDescription(gVar.f15942d);
            }
            setSelected(gVar != null && gVar.o());
        }

        final void y() {
            setOrientation(!TabLayout.this.A ? 1 : 0);
            TextView textView = this.f15917g;
            if (textView == null && this.f15918h == null) {
                z(this.f15912b, this.f15913c);
            } else {
                z(textView, this.f15918h);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            TabLayout.this.scrollTo(((Integer) valueAnimator.getAnimatedValue()).intValue(), 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class b implements ViewPager.OnAdapterChangeListener {

        /* renamed from: a  reason: collision with root package name */
        private boolean f15925a;

        b() {
        }

        void a(boolean z3) {
            this.f15925a = z3;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnAdapterChangeListener
        public void onAdapterChanged(@NonNull ViewPager viewPager, @Nullable PagerAdapter pagerAdapter, @Nullable PagerAdapter pagerAdapter2) {
            TabLayout tabLayout = TabLayout.this;
            if (tabLayout.K == viewPager) {
                tabLayout.P(pagerAdapter2, this.f15925a);
            }
        }
    }

    @Deprecated
    /* loaded from: classes2.dex */
    public interface c<T extends g> {
        void a(T t3);

        void onTabReselected(T t3);

        void onTabUnselected(T t3);
    }

    /* loaded from: classes2.dex */
    public interface d extends c<g> {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class e extends DataSetObserver {
        e() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            TabLayout.this.F();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            TabLayout.this.F();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class f extends LinearLayout {

        /* renamed from: a  reason: collision with root package name */
        ValueAnimator f15928a;

        /* renamed from: b  reason: collision with root package name */
        int f15929b;

        /* renamed from: c  reason: collision with root package name */
        float f15930c;

        /* renamed from: d  reason: collision with root package name */
        private int f15931d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class a implements ValueAnimator.AnimatorUpdateListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ View f15933a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ View f15934b;

            a(View view, View view2) {
                this.f15933a = view;
                this.f15934b = view2;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
                f.this.i(this.f15933a, this.f15934b, valueAnimator.getAnimatedFraction());
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class b extends AnimatorListenerAdapter {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f15936a;

            b(int i2) {
                this.f15936a = i2;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                f.this.f15929b = this.f15936a;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                f.this.f15929b = this.f15936a;
            }
        }

        f(Context context) {
            super(context);
            this.f15929b = -1;
            this.f15931d = -1;
            setWillNotDraw(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void f() {
            View childAt = getChildAt(this.f15929b);
            com.google.android.material.tabs.c cVar = TabLayout.this.F;
            TabLayout tabLayout = TabLayout.this;
            cVar.c(tabLayout, childAt, tabLayout.f15890l);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void i(View view, View view2, float f4) {
            if (view != null && view.getWidth() > 0) {
                com.google.android.material.tabs.c cVar = TabLayout.this.F;
                TabLayout tabLayout = TabLayout.this;
                cVar.d(tabLayout, view, view2, f4, tabLayout.f15890l);
            } else {
                Drawable drawable = TabLayout.this.f15890l;
                drawable.setBounds(-1, drawable.getBounds().top, -1, TabLayout.this.f15890l.getBounds().bottom);
            }
            ViewCompat.postInvalidateOnAnimation(this);
        }

        private void j(boolean z3, int i2, int i4) {
            View childAt = getChildAt(this.f15929b);
            View childAt2 = getChildAt(i2);
            if (childAt2 == null) {
                f();
                return;
            }
            a aVar = new a(childAt, childAt2);
            if (z3) {
                ValueAnimator valueAnimator = new ValueAnimator();
                this.f15928a = valueAnimator;
                valueAnimator.setInterpolator(com.google.android.material.animation.a.f14005b);
                valueAnimator.setDuration(i4);
                valueAnimator.setFloatValues(0.0f, 1.0f);
                valueAnimator.addUpdateListener(aVar);
                valueAnimator.addListener(new b(i2));
                valueAnimator.start();
                return;
            }
            this.f15928a.removeAllUpdateListeners();
            this.f15928a.addUpdateListener(aVar);
        }

        void c(int i2, int i4) {
            ValueAnimator valueAnimator = this.f15928a;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.f15928a.cancel();
            }
            j(true, i2, i4);
        }

        boolean d() {
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                if (getChildAt(i2).getWidth() <= 0) {
                    return true;
                }
            }
            return false;
        }

        @Override // android.view.View
        public void draw(@NonNull Canvas canvas) {
            int height = TabLayout.this.f15890l.getBounds().height();
            if (height < 0) {
                height = TabLayout.this.f15890l.getIntrinsicHeight();
            }
            int i2 = TabLayout.this.f15909y;
            int i4 = 0;
            if (i2 == 0) {
                i4 = getHeight() - height;
                height = getHeight();
            } else if (i2 == 1) {
                i4 = (getHeight() - height) / 2;
                height = (getHeight() + height) / 2;
            } else if (i2 != 2) {
                height = i2 != 3 ? 0 : getHeight();
            }
            if (TabLayout.this.f15890l.getBounds().width() > 0) {
                Rect bounds = TabLayout.this.f15890l.getBounds();
                TabLayout.this.f15890l.setBounds(bounds.left, i4, bounds.right, height);
                TabLayout tabLayout = TabLayout.this;
                Drawable drawable = tabLayout.f15890l;
                if (tabLayout.f15891m != 0) {
                    drawable = DrawableCompat.wrap(drawable);
                    if (Build.VERSION.SDK_INT == 21) {
                        drawable.setColorFilter(TabLayout.this.f15891m, PorterDuff.Mode.SRC_IN);
                    } else {
                        DrawableCompat.setTint(drawable, TabLayout.this.f15891m);
                    }
                } else if (Build.VERSION.SDK_INT == 21) {
                    drawable.setColorFilter(null);
                } else {
                    DrawableCompat.setTintList(drawable, null);
                }
                drawable.draw(canvas);
            }
            super.draw(canvas);
        }

        float e() {
            return this.f15929b + this.f15930c;
        }

        void g(int i2, float f4) {
            ValueAnimator valueAnimator = this.f15928a;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.f15928a.cancel();
            }
            this.f15929b = i2;
            this.f15930c = f4;
            i(getChildAt(i2), getChildAt(this.f15929b + 1), this.f15930c);
        }

        void h(int i2) {
            Rect bounds = TabLayout.this.f15890l.getBounds();
            TabLayout.this.f15890l.setBounds(bounds.left, 0, bounds.right, i2);
            requestLayout();
        }

        @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
            super.onLayout(z3, i2, i4, i5, i6);
            ValueAnimator valueAnimator = this.f15928a;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                j(false, this.f15929b, -1);
            } else {
                f();
            }
        }

        @Override // android.widget.LinearLayout, android.view.View
        protected void onMeasure(int i2, int i4) {
            super.onMeasure(i2, i4);
            if (View.MeasureSpec.getMode(i2) != 1073741824) {
                return;
            }
            TabLayout tabLayout = TabLayout.this;
            boolean z3 = true;
            if (tabLayout.f15907w == 1 || tabLayout.f15910z == 2) {
                int childCount = getChildCount();
                int i5 = 0;
                for (int i6 = 0; i6 < childCount; i6++) {
                    View childAt = getChildAt(i6);
                    if (childAt.getVisibility() == 0) {
                        i5 = Math.max(i5, childAt.getMeasuredWidth());
                    }
                }
                if (i5 <= 0) {
                    return;
                }
                if (i5 * childCount <= getMeasuredWidth() - (((int) w.e(getContext(), 16)) * 2)) {
                    boolean z4 = false;
                    for (int i7 = 0; i7 < childCount; i7++) {
                        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getChildAt(i7).getLayoutParams();
                        if (layoutParams.width != i5 || layoutParams.weight != 0.0f) {
                            layoutParams.width = i5;
                            layoutParams.weight = 0.0f;
                            z4 = true;
                        }
                    }
                    z3 = z4;
                } else {
                    TabLayout tabLayout2 = TabLayout.this;
                    tabLayout2.f15907w = 0;
                    tabLayout2.T(false);
                }
                if (z3) {
                    super.onMeasure(i2, i4);
                }
            }
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onRtlPropertiesChanged(int i2) {
            super.onRtlPropertiesChanged(i2);
            if (Build.VERSION.SDK_INT >= 23 || this.f15931d == i2) {
                return;
            }
            requestLayout();
            this.f15931d = i2;
        }
    }

    /* loaded from: classes2.dex */
    public static class g {

        /* renamed from: k  reason: collision with root package name */
        public static final int f15938k = -1;
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private Object f15939a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private Drawable f15940b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private CharSequence f15941c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private CharSequence f15942d;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        private View f15944f;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        public TabLayout f15946h;
        @NonNull

        /* renamed from: i  reason: collision with root package name */
        public TabView f15947i;

        /* renamed from: e  reason: collision with root package name */
        private int f15943e = -1;
        @LabelVisibility

        /* renamed from: g  reason: collision with root package name */
        private int f15945g = 1;

        /* renamed from: j  reason: collision with root package name */
        private int f15948j = -1;

        @NonNull
        public g A(@LabelVisibility int i2) {
            this.f15945g = i2;
            TabLayout tabLayout = this.f15946h;
            if (tabLayout.f15907w == 1 || tabLayout.f15910z == 2) {
                tabLayout.T(true);
            }
            E();
            if (com.google.android.material.badge.a.f14079a && this.f15947i.o() && this.f15947i.f15915e.isVisible()) {
                this.f15947i.invalidate();
            }
            return this;
        }

        @NonNull
        public g B(@Nullable Object obj) {
            this.f15939a = obj;
            return this;
        }

        @NonNull
        public g C(@StringRes int i2) {
            TabLayout tabLayout = this.f15946h;
            if (tabLayout != null) {
                return D(tabLayout.getResources().getText(i2));
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        @NonNull
        public g D(@Nullable CharSequence charSequence) {
            if (TextUtils.isEmpty(this.f15942d) && !TextUtils.isEmpty(charSequence)) {
                this.f15947i.setContentDescription(charSequence);
            }
            this.f15941c = charSequence;
            E();
            return this;
        }

        void E() {
            TabView tabView = this.f15947i;
            if (tabView != null) {
                tabView.update();
            }
        }

        @Nullable
        public BadgeDrawable e() {
            return this.f15947i.getBadge();
        }

        @Nullable
        public CharSequence f() {
            TabView tabView = this.f15947i;
            if (tabView == null) {
                return null;
            }
            return tabView.getContentDescription();
        }

        @Nullable
        public View g() {
            return this.f15944f;
        }

        @Nullable
        public Drawable h() {
            return this.f15940b;
        }

        public int i() {
            return this.f15948j;
        }

        @NonNull
        public BadgeDrawable j() {
            return this.f15947i.getOrCreateBadge();
        }

        public int k() {
            return this.f15943e;
        }

        @LabelVisibility
        public int l() {
            return this.f15945g;
        }

        @Nullable
        public Object m() {
            return this.f15939a;
        }

        @Nullable
        public CharSequence n() {
            return this.f15941c;
        }

        public boolean o() {
            TabLayout tabLayout = this.f15946h;
            if (tabLayout != null) {
                int selectedTabPosition = tabLayout.getSelectedTabPosition();
                return selectedTabPosition != -1 && selectedTabPosition == this.f15943e;
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        public void p() {
            this.f15947i.r();
        }

        void q() {
            this.f15946h = null;
            this.f15947i = null;
            this.f15939a = null;
            this.f15940b = null;
            this.f15948j = -1;
            this.f15941c = null;
            this.f15942d = null;
            this.f15943e = -1;
            this.f15944f = null;
        }

        public void r() {
            TabLayout tabLayout = this.f15946h;
            if (tabLayout != null) {
                tabLayout.N(this);
                return;
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        @NonNull
        public g s(@StringRes int i2) {
            TabLayout tabLayout = this.f15946h;
            if (tabLayout != null) {
                return t(tabLayout.getResources().getText(i2));
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        @NonNull
        public g t(@Nullable CharSequence charSequence) {
            this.f15942d = charSequence;
            E();
            return this;
        }

        @NonNull
        public g u(@LayoutRes int i2) {
            return v(LayoutInflater.from(this.f15947i.getContext()).inflate(i2, (ViewGroup) this.f15947i, false));
        }

        @NonNull
        public g v(@Nullable View view) {
            this.f15944f = view;
            E();
            return this;
        }

        @NonNull
        public g w(@DrawableRes int i2) {
            TabLayout tabLayout = this.f15946h;
            if (tabLayout != null) {
                return x(AppCompatResources.getDrawable(tabLayout.getContext(), i2));
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        @NonNull
        public g x(@Nullable Drawable drawable) {
            this.f15940b = drawable;
            TabLayout tabLayout = this.f15946h;
            if (tabLayout.f15907w == 1 || tabLayout.f15910z == 2) {
                tabLayout.T(true);
            }
            E();
            if (com.google.android.material.badge.a.f14079a && this.f15947i.o() && this.f15947i.f15915e.isVisible()) {
                this.f15947i.invalidate();
            }
            return this;
        }

        @NonNull
        public g y(int i2) {
            this.f15948j = i2;
            TabView tabView = this.f15947i;
            if (tabView != null) {
                tabView.setId(i2);
            }
            return this;
        }

        void z(int i2) {
            this.f15943e = i2;
        }
    }

    /* loaded from: classes2.dex */
    public static class h implements ViewPager.OnPageChangeListener {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<TabLayout> f15949a;

        /* renamed from: b  reason: collision with root package name */
        private int f15950b;

        /* renamed from: c  reason: collision with root package name */
        private int f15951c;

        public h(TabLayout tabLayout) {
            this.f15949a = new WeakReference<>(tabLayout);
        }

        void a() {
            this.f15951c = 0;
            this.f15950b = 0;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i2) {
            this.f15950b = this.f15951c;
            this.f15951c = i2;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i2, float f4, int i4) {
            TabLayout tabLayout = this.f15949a.get();
            if (tabLayout != null) {
                int i5 = this.f15951c;
                boolean z3 = false;
                tabLayout.setScrollPosition(i2, f4, i5 != 2 || this.f15950b == 1, (i5 == 2 && this.f15950b == 0) ? true : true);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i2) {
            TabLayout tabLayout = this.f15949a.get();
            if (tabLayout == null || tabLayout.getSelectedTabPosition() == i2 || i2 >= tabLayout.getTabCount()) {
                return;
            }
            int i4 = this.f15951c;
            tabLayout.O(tabLayout.z(i2), i4 == 0 || (i4 == 2 && this.f15950b == 0));
        }
    }

    /* loaded from: classes2.dex */
    public static class i implements d {

        /* renamed from: a  reason: collision with root package name */
        private final ViewPager f15952a;

        public i(ViewPager viewPager) {
            this.f15952a = viewPager;
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void a(@NonNull g gVar) {
            this.f15952a.setCurrentItem(gVar.k());
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void onTabReselected(g gVar) {
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void onTabUnselected(g gVar) {
        }
    }

    public TabLayout(@NonNull Context context) {
        this(context, null);
    }

    private boolean C() {
        return getTabMode() == 0 || getTabMode() == 2;
    }

    private void M(int i2) {
        TabView tabView = (TabView) this.f15881c.getChildAt(i2);
        this.f15881c.removeViewAt(i2);
        if (tabView != null) {
            tabView.s();
            this.f15903s0.release(tabView);
        }
        requestLayout();
    }

    private void Q(@Nullable ViewPager viewPager, boolean z3, boolean z4) {
        ViewPager viewPager2 = this.K;
        if (viewPager2 != null) {
            h hVar = this.f15897p0;
            if (hVar != null) {
                viewPager2.removeOnPageChangeListener(hVar);
            }
            b bVar = this.f15899q0;
            if (bVar != null) {
                this.K.removeOnAdapterChangeListener(bVar);
            }
        }
        c cVar = this.I;
        if (cVar != null) {
            I(cVar);
            this.I = null;
        }
        if (viewPager != null) {
            this.K = viewPager;
            if (this.f15897p0 == null) {
                this.f15897p0 = new h(this);
            }
            this.f15897p0.a();
            viewPager.addOnPageChangeListener(this.f15897p0);
            i iVar = new i(viewPager);
            this.I = iVar;
            c(iVar);
            PagerAdapter adapter = viewPager.getAdapter();
            if (adapter != null) {
                P(adapter, z3);
            }
            if (this.f15899q0 == null) {
                this.f15899q0 = new b();
            }
            this.f15899q0.a(z3);
            viewPager.addOnAdapterChangeListener(this.f15899q0);
            setScrollPosition(viewPager.getCurrentItem(), 0.0f, true);
        } else {
            this.K = null;
            P(null, false);
        }
        this.f15901r0 = z4;
    }

    private void R() {
        int size = this.f15879a.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f15879a.get(i2).E();
        }
    }

    private void S(@NonNull LinearLayout.LayoutParams layoutParams) {
        if (this.f15910z == 1 && this.f15907w == 0) {
            layoutParams.width = 0;
            layoutParams.weight = 1.0f;
            return;
        }
        layoutParams.width = -2;
        layoutParams.weight = 0.0f;
    }

    @Dimension(unit = 0)
    private int getDefaultHeight() {
        int size = this.f15879a.size();
        boolean z3 = false;
        int i2 = 0;
        while (true) {
            if (i2 < size) {
                g gVar = this.f15879a.get(i2);
                if (gVar != null && gVar.h() != null && !TextUtils.isEmpty(gVar.n())) {
                    z3 = true;
                    break;
                }
                i2++;
            } else {
                break;
            }
        }
        return (!z3 || this.A) ? 48 : 72;
    }

    private int getTabMinWidth() {
        int i2 = this.f15902s;
        if (i2 != -1) {
            return i2;
        }
        int i4 = this.f15910z;
        if (i4 == 0 || i4 == 2) {
            return this.f15905u;
        }
        return 0;
    }

    private int getTabScrollRange() {
        return Math.max(0, ((this.f15881c.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight());
    }

    private void i(@NonNull TabItem tabItem) {
        g E = E();
        CharSequence charSequence = tabItem.f15869a;
        if (charSequence != null) {
            E.D(charSequence);
        }
        Drawable drawable = tabItem.f15870b;
        if (drawable != null) {
            E.x(drawable);
        }
        int i2 = tabItem.f15871c;
        if (i2 != 0) {
            E.u(i2);
        }
        if (!TextUtils.isEmpty(tabItem.getContentDescription())) {
            E.t(tabItem.getContentDescription());
        }
        e(E);
    }

    private void j(@NonNull g gVar) {
        TabView tabView = gVar.f15947i;
        tabView.setSelected(false);
        tabView.setActivated(false);
        this.f15881c.addView(tabView, gVar.k(), s());
    }

    private void k(View view) {
        if (view instanceof TabItem) {
            i((TabItem) view);
            return;
        }
        throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
    }

    private void l(int i2) {
        if (i2 == -1) {
            return;
        }
        if (getWindowToken() != null && ViewCompat.isLaidOut(this) && !this.f15881c.d()) {
            int scrollX = getScrollX();
            int o3 = o(i2, 0.0f);
            if (scrollX != o3) {
                y();
                this.J.setIntValues(scrollX, o3);
                this.J.start();
            }
            this.f15881c.c(i2, this.f15908x);
            return;
        }
        setScrollPosition(i2, 0.0f, true);
    }

    private void m(int i2) {
        if (i2 != 0) {
            if (i2 == 1) {
                this.f15881c.setGravity(1);
                return;
            } else if (i2 != 2) {
                return;
            }
        }
        this.f15881c.setGravity(GravityCompat.START);
    }

    private void n() {
        int i2 = this.f15910z;
        ViewCompat.setPaddingRelative(this.f15881c, (i2 == 0 || i2 == 2) ? Math.max(0, this.f15906v - this.f15882d) : 0, 0, 0, 0);
        int i4 = this.f15910z;
        if (i4 == 0) {
            m(this.f15907w);
        } else if (i4 == 1 || i4 == 2) {
            this.f15881c.setGravity(1);
        }
        T(true);
    }

    private int o(int i2, float f4) {
        View childAt;
        int i4 = this.f15910z;
        if ((i4 == 0 || i4 == 2) && (childAt = this.f15881c.getChildAt(i2)) != null) {
            int i5 = i2 + 1;
            View childAt2 = i5 < this.f15881c.getChildCount() ? this.f15881c.getChildAt(i5) : null;
            int width = childAt.getWidth();
            int width2 = childAt2 != null ? childAt2.getWidth() : 0;
            int left = (childAt.getLeft() + (width / 2)) - (getWidth() / 2);
            int i6 = (int) ((width + width2) * 0.5f * f4);
            return ViewCompat.getLayoutDirection(this) == 0 ? left + i6 : left - i6;
        }
        return 0;
    }

    private void q(@NonNull g gVar, int i2) {
        gVar.z(i2);
        this.f15879a.add(i2, gVar);
        int size = this.f15879a.size();
        while (true) {
            i2++;
            if (i2 >= size) {
                return;
            }
            this.f15879a.get(i2).z(i2);
        }
    }

    @NonNull
    private static ColorStateList r(int i2, int i4) {
        return new ColorStateList(new int[][]{HorizontalScrollView.SELECTED_STATE_SET, HorizontalScrollView.EMPTY_STATE_SET}, new int[]{i4, i2});
    }

    @NonNull
    private LinearLayout.LayoutParams s() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
        S(layoutParams);
        return layoutParams;
    }

    private void setSelectedTabView(int i2) {
        int childCount = this.f15881c.getChildCount();
        if (i2 < childCount) {
            int i4 = 0;
            while (i4 < childCount) {
                View childAt = this.f15881c.getChildAt(i4);
                boolean z3 = true;
                childAt.setSelected(i4 == i2);
                if (i4 != i2) {
                    z3 = false;
                }
                childAt.setActivated(z3);
                i4++;
            }
        }
    }

    @NonNull
    private TabView u(@NonNull g gVar) {
        Pools.Pool<TabView> pool = this.f15903s0;
        TabView acquire = pool != null ? pool.acquire() : null;
        if (acquire == null) {
            acquire = new TabView(getContext());
        }
        acquire.setTab(gVar);
        acquire.setFocusable(true);
        acquire.setMinimumWidth(getTabMinWidth());
        if (TextUtils.isEmpty(gVar.f15942d)) {
            acquire.setContentDescription(gVar.f15941c);
        } else {
            acquire.setContentDescription(gVar.f15942d);
        }
        return acquire;
    }

    private void v(@NonNull g gVar) {
        for (int size = this.H.size() - 1; size >= 0; size--) {
            this.H.get(size).onTabReselected(gVar);
        }
    }

    private void w(@NonNull g gVar) {
        for (int size = this.H.size() - 1; size >= 0; size--) {
            this.H.get(size).a(gVar);
        }
    }

    private void x(@NonNull g gVar) {
        for (int size = this.H.size() - 1; size >= 0; size--) {
            this.H.get(size).onTabUnselected(gVar);
        }
    }

    private void y() {
        if (this.J == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.J = valueAnimator;
            valueAnimator.setInterpolator(com.google.android.material.animation.a.f14005b);
            this.J.setDuration(this.f15908x);
            this.J.addUpdateListener(new a());
        }
    }

    public boolean A() {
        return this.E;
    }

    public boolean B() {
        return this.A;
    }

    public boolean D() {
        return this.B;
    }

    @NonNull
    public g E() {
        g t3 = t();
        t3.f15946h = this;
        t3.f15947i = u(t3);
        if (t3.f15948j != -1) {
            t3.f15947i.setId(t3.f15948j);
        }
        return t3;
    }

    void F() {
        int currentItem;
        H();
        PagerAdapter pagerAdapter = this.f15893n0;
        if (pagerAdapter != null) {
            int count = pagerAdapter.getCount();
            for (int i2 = 0; i2 < count; i2++) {
                h(E().D(this.f15893n0.getPageTitle(i2)), false);
            }
            ViewPager viewPager = this.K;
            if (viewPager == null || count <= 0 || (currentItem = viewPager.getCurrentItem()) == getSelectedTabPosition() || currentItem >= getTabCount()) {
                return;
            }
            N(z(currentItem));
        }
    }

    protected boolean G(g gVar) {
        return B0.release(gVar);
    }

    public void H() {
        for (int childCount = this.f15881c.getChildCount() - 1; childCount >= 0; childCount--) {
            M(childCount);
        }
        Iterator<g> it2 = this.f15879a.iterator();
        while (it2.hasNext()) {
            g next = it2.next();
            it2.remove();
            next.q();
            G(next);
        }
        this.f15880b = null;
    }

    @Deprecated
    public void I(@Nullable c cVar) {
        this.H.remove(cVar);
    }

    public void J(@NonNull d dVar) {
        I(dVar);
    }

    public void K(@NonNull g gVar) {
        if (gVar.f15946h == this) {
            L(gVar.k());
            return;
        }
        throw new IllegalArgumentException("Tab does not belong to this TabLayout.");
    }

    public void L(int i2) {
        g gVar = this.f15880b;
        int k4 = gVar != null ? gVar.k() : 0;
        M(i2);
        g remove = this.f15879a.remove(i2);
        if (remove != null) {
            remove.q();
            G(remove);
        }
        int size = this.f15879a.size();
        for (int i4 = i2; i4 < size; i4++) {
            this.f15879a.get(i4).z(i4);
        }
        if (k4 == i2) {
            N(this.f15879a.isEmpty() ? null : this.f15879a.get(Math.max(0, i2 - 1)));
        }
    }

    public void N(@Nullable g gVar) {
        O(gVar, true);
    }

    public void O(@Nullable g gVar, boolean z3) {
        g gVar2 = this.f15880b;
        if (gVar2 == gVar) {
            if (gVar2 != null) {
                v(gVar);
                l(gVar.k());
                return;
            }
            return;
        }
        int k4 = gVar != null ? gVar.k() : -1;
        if (z3) {
            if ((gVar2 == null || gVar2.k() == -1) && k4 != -1) {
                setScrollPosition(k4, 0.0f, true);
            } else {
                l(k4);
            }
            if (k4 != -1) {
                setSelectedTabView(k4);
            }
        }
        this.f15880b = gVar;
        if (gVar2 != null) {
            x(gVar2);
        }
        if (gVar != null) {
            w(gVar);
        }
    }

    void P(@Nullable PagerAdapter pagerAdapter, boolean z3) {
        DataSetObserver dataSetObserver;
        PagerAdapter pagerAdapter2 = this.f15893n0;
        if (pagerAdapter2 != null && (dataSetObserver = this.f15895o0) != null) {
            pagerAdapter2.unregisterDataSetObserver(dataSetObserver);
        }
        this.f15893n0 = pagerAdapter;
        if (z3 && pagerAdapter != null) {
            if (this.f15895o0 == null) {
                this.f15895o0 = new e();
            }
            pagerAdapter.registerDataSetObserver(this.f15895o0);
        }
        F();
    }

    void T(boolean z3) {
        for (int i2 = 0; i2 < this.f15881c.getChildCount(); i2++) {
            View childAt = this.f15881c.getChildAt(i2);
            childAt.setMinimumWidth(getTabMinWidth());
            S((LinearLayout.LayoutParams) childAt.getLayoutParams());
            if (z3) {
                childAt.requestLayout();
            }
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view) {
        k(view);
    }

    @Deprecated
    public void c(@Nullable c cVar) {
        if (this.H.contains(cVar)) {
            return;
        }
        this.H.add(cVar);
    }

    public void d(@NonNull d dVar) {
        c(dVar);
    }

    public void e(@NonNull g gVar) {
        h(gVar, this.f15879a.isEmpty());
    }

    public void f(@NonNull g gVar, int i2) {
        g(gVar, i2, this.f15879a.isEmpty());
    }

    public void g(@NonNull g gVar, int i2, boolean z3) {
        if (gVar.f15946h == this) {
            q(gVar, i2);
            j(gVar);
            if (z3) {
                gVar.r();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
    }

    public int getSelectedTabPosition() {
        g gVar = this.f15880b;
        if (gVar != null) {
            return gVar.k();
        }
        return -1;
    }

    public int getTabCount() {
        return this.f15879a.size();
    }

    public int getTabGravity() {
        return this.f15907w;
    }

    @Nullable
    public ColorStateList getTabIconTint() {
        return this.f15888j;
    }

    public int getTabIndicatorAnimationMode() {
        return this.D;
    }

    public int getTabIndicatorGravity() {
        return this.f15909y;
    }

    int getTabMaxWidth() {
        return this.f15900r;
    }

    public int getTabMode() {
        return this.f15910z;
    }

    @Nullable
    public ColorStateList getTabRippleColor() {
        return this.f15889k;
    }

    @NonNull
    public Drawable getTabSelectedIndicator() {
        return this.f15890l;
    }

    @Nullable
    public ColorStateList getTabTextColors() {
        return this.f15887i;
    }

    public void h(@NonNull g gVar, boolean z3) {
        g(gVar, this.f15879a.size(), z3);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.google.android.material.shape.i.e(this);
        if (this.K == null) {
            ViewParent parent = getParent();
            if (parent instanceof ViewPager) {
                Q((ViewPager) parent, true, true);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f15901r0) {
            setupWithViewPager(null);
            this.f15901r0 = false;
        }
    }

    @Override // android.view.View
    protected void onDraw(@NonNull Canvas canvas) {
        for (int i2 = 0; i2 < this.f15881c.getChildCount(); i2++) {
            View childAt = this.f15881c.getChildAt(i2);
            if (childAt instanceof TabView) {
                ((TabView) childAt).m(canvas);
            }
        }
        super.onDraw(canvas);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(1, getTabCount(), false, 1));
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return C() && super.onInterceptTouchEvent(motionEvent);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0073, code lost:
        if (r0 != 2) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x007e, code lost:
        if (r7.getMeasuredWidth() != getMeasuredWidth()) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0080, code lost:
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x008a, code lost:
        if (r7.getMeasuredWidth() < getMeasuredWidth()) goto L25;
     */
    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r7, int r8) {
        /*
            r6 = this;
            android.content.Context r0 = r6.getContext()
            int r1 = r6.getDefaultHeight()
            float r0 = com.google.android.material.internal.w.e(r0, r1)
            int r0 = java.lang.Math.round(r0)
            int r1 = android.view.View.MeasureSpec.getMode(r8)
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = 1073741824(0x40000000, float:2.0)
            r4 = 0
            r5 = 1
            if (r1 == r2) goto L2e
            if (r1 == 0) goto L1f
            goto L41
        L1f:
            int r8 = r6.getPaddingTop()
            int r0 = r0 + r8
            int r8 = r6.getPaddingBottom()
            int r0 = r0 + r8
            int r8 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r3)
            goto L41
        L2e:
            int r1 = r6.getChildCount()
            if (r1 != r5) goto L41
            int r1 = android.view.View.MeasureSpec.getSize(r8)
            if (r1 < r0) goto L41
            android.view.View r1 = r6.getChildAt(r4)
            r1.setMinimumHeight(r0)
        L41:
            int r0 = android.view.View.MeasureSpec.getSize(r7)
            int r1 = android.view.View.MeasureSpec.getMode(r7)
            if (r1 == 0) goto L5f
            int r1 = r6.f15904t
            if (r1 <= 0) goto L50
            goto L5d
        L50:
            float r0 = (float) r0
            android.content.Context r1 = r6.getContext()
            r2 = 56
            float r1 = com.google.android.material.internal.w.e(r1, r2)
            float r0 = r0 - r1
            int r1 = (int) r0
        L5d:
            r6.f15900r = r1
        L5f:
            super.onMeasure(r7, r8)
            int r7 = r6.getChildCount()
            if (r7 != r5) goto Lad
            android.view.View r7 = r6.getChildAt(r4)
            int r0 = r6.f15910z
            if (r0 == 0) goto L82
            if (r0 == r5) goto L76
            r1 = 2
            if (r0 == r1) goto L82
            goto L8d
        L76:
            int r0 = r7.getMeasuredWidth()
            int r1 = r6.getMeasuredWidth()
            if (r0 == r1) goto L8d
        L80:
            r4 = 1
            goto L8d
        L82:
            int r0 = r7.getMeasuredWidth()
            int r1 = r6.getMeasuredWidth()
            if (r0 >= r1) goto L8d
            goto L80
        L8d:
            if (r4 == 0) goto Lad
            int r0 = r6.getPaddingTop()
            int r1 = r6.getPaddingBottom()
            int r0 = r0 + r1
            android.view.ViewGroup$LayoutParams r1 = r7.getLayoutParams()
            int r1 = r1.height
            int r8 = android.widget.HorizontalScrollView.getChildMeasureSpec(r8, r0, r1)
            int r0 = r6.getMeasuredWidth()
            int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r3)
            r7.measure(r0, r8)
        Lad:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.tabs.TabLayout.onMeasure(int, int):void");
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() != 8 || C()) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }

    public void p() {
        this.H.clear();
    }

    @Override // android.view.View
    @RequiresApi(21)
    public void setElevation(float f4) {
        super.setElevation(f4);
        com.google.android.material.shape.i.d(this, f4);
    }

    public void setInlineLabel(boolean z3) {
        if (this.A != z3) {
            this.A = z3;
            for (int i2 = 0; i2 < this.f15881c.getChildCount(); i2++) {
                View childAt = this.f15881c.getChildAt(i2);
                if (childAt instanceof TabView) {
                    ((TabView) childAt).y();
                }
            }
            n();
        }
    }

    public void setInlineLabelResource(@BoolRes int i2) {
        setInlineLabel(getResources().getBoolean(i2));
    }

    @Deprecated
    public void setOnTabSelectedListener(@Nullable d dVar) {
        setOnTabSelectedListener((c) dVar);
    }

    void setScrollAnimatorListener(Animator.AnimatorListener animatorListener) {
        y();
        this.J.addListener(animatorListener);
    }

    public void setScrollPosition(int i2, float f4, boolean z3) {
        setScrollPosition(i2, f4, z3, true);
    }

    public void setSelectedTabIndicator(@Nullable Drawable drawable) {
        if (this.f15890l != drawable) {
            if (drawable == null) {
                drawable = new GradientDrawable();
            }
            this.f15890l = drawable;
            int i2 = this.C;
            if (i2 == -1) {
                i2 = drawable.getIntrinsicHeight();
            }
            this.f15881c.h(i2);
        }
    }

    public void setSelectedTabIndicatorColor(@ColorInt int i2) {
        this.f15891m = i2;
        T(false);
    }

    public void setSelectedTabIndicatorGravity(int i2) {
        if (this.f15909y != i2) {
            this.f15909y = i2;
            ViewCompat.postInvalidateOnAnimation(this.f15881c);
        }
    }

    @Deprecated
    public void setSelectedTabIndicatorHeight(int i2) {
        this.C = i2;
        this.f15881c.h(i2);
    }

    public void setTabGravity(int i2) {
        if (this.f15907w != i2) {
            this.f15907w = i2;
            n();
        }
    }

    public void setTabIconTint(@Nullable ColorStateList colorStateList) {
        if (this.f15888j != colorStateList) {
            this.f15888j = colorStateList;
            R();
        }
    }

    public void setTabIconTintResource(@ColorRes int i2) {
        setTabIconTint(AppCompatResources.getColorStateList(getContext(), i2));
    }

    public void setTabIndicatorAnimationMode(int i2) {
        this.D = i2;
        if (i2 == 0) {
            this.F = new com.google.android.material.tabs.c();
        } else if (i2 == 1) {
            this.F = new com.google.android.material.tabs.a();
        } else if (i2 == 2) {
            this.F = new com.google.android.material.tabs.b();
        } else {
            throw new IllegalArgumentException(i2 + " is not a valid TabIndicatorAnimationMode");
        }
    }

    public void setTabIndicatorFullWidth(boolean z3) {
        this.B = z3;
        this.f15881c.f();
        ViewCompat.postInvalidateOnAnimation(this.f15881c);
    }

    public void setTabMode(int i2) {
        if (i2 != this.f15910z) {
            this.f15910z = i2;
            n();
        }
    }

    public void setTabRippleColor(@Nullable ColorStateList colorStateList) {
        if (this.f15889k != colorStateList) {
            this.f15889k = colorStateList;
            for (int i2 = 0; i2 < this.f15881c.getChildCount(); i2++) {
                View childAt = this.f15881c.getChildAt(i2);
                if (childAt instanceof TabView) {
                    ((TabView) childAt).x(getContext());
                }
            }
        }
    }

    public void setTabRippleColorResource(@ColorRes int i2) {
        setTabRippleColor(AppCompatResources.getColorStateList(getContext(), i2));
    }

    public void setTabTextColors(@Nullable ColorStateList colorStateList) {
        if (this.f15887i != colorStateList) {
            this.f15887i = colorStateList;
            R();
        }
    }

    @Deprecated
    public void setTabsFromPagerAdapter(@Nullable PagerAdapter pagerAdapter) {
        P(pagerAdapter, false);
    }

    public void setUnboundedRipple(boolean z3) {
        if (this.E != z3) {
            this.E = z3;
            for (int i2 = 0; i2 < this.f15881c.getChildCount(); i2++) {
                View childAt = this.f15881c.getChildAt(i2);
                if (childAt instanceof TabView) {
                    ((TabView) childAt).x(getContext());
                }
            }
        }
    }

    public void setUnboundedRippleResource(@BoolRes int i2) {
        setUnboundedRipple(getResources().getBoolean(i2));
    }

    public void setupWithViewPager(@Nullable ViewPager viewPager) {
        setupWithViewPager(viewPager, true);
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return getTabScrollRange() > 0;
    }

    protected g t() {
        g acquire = B0.acquire();
        return acquire == null ? new g() : acquire;
    }

    @Nullable
    public g z(int i2) {
        if (i2 < 0 || i2 >= getTabCount()) {
            return null;
        }
        return this.f15879a.get(i2);
    }

    public TabLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.tabStyle);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i2) {
        k(view);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    @Deprecated
    public void setOnTabSelectedListener(@Nullable c cVar) {
        c cVar2 = this.G;
        if (cVar2 != null) {
            I(cVar2);
        }
        this.G = cVar;
        if (cVar != null) {
            c(cVar);
        }
    }

    public void setScrollPosition(int i2, float f4, boolean z3, boolean z4) {
        int round = Math.round(i2 + f4);
        if (round < 0 || round >= this.f15881c.getChildCount()) {
            return;
        }
        if (z4) {
            this.f15881c.g(i2, f4);
        }
        ValueAnimator valueAnimator = this.J;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.J.cancel();
        }
        scrollTo(i2 < 0 ? 0 : o(i2, f4), 0);
        if (z3) {
            setSelectedTabView(round);
        }
    }

    public void setupWithViewPager(@Nullable ViewPager viewPager, boolean z3) {
        Q(viewPager, z3, false);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TabLayout(@androidx.annotation.NonNull android.content.Context r12, @androidx.annotation.Nullable android.util.AttributeSet r13, int r14) {
        /*
            Method dump skipped, instructions count: 446
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.tabs.TabLayout.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        k(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        k(view);
    }

    public void setTabTextColors(int i2, int i4) {
        setTabTextColors(r(i2, i4));
    }

    public void setSelectedTabIndicator(@DrawableRes int i2) {
        if (i2 != 0) {
            setSelectedTabIndicator(AppCompatResources.getDrawable(getContext(), i2));
        } else {
            setSelectedTabIndicator((Drawable) null);
        }
    }
}
