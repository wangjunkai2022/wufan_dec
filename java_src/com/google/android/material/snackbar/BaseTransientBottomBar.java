package com.google.android.material.snackbar;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import androidx.annotation.IdRes;
import androidx.annotation.IntRange;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.internal.w;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.google.android.material.snackbar.b;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public abstract class BaseTransientBottomBar<B extends BaseTransientBottomBar<B>> {
    private static final int A = 150;
    private static final int B = 75;
    private static final float C = 0.8f;
    @NonNull
    static final Handler D;
    static final int E = 0;
    static final int F = 1;
    private static final boolean G;
    private static final int[] H;
    private static final String I;

    /* renamed from: t  reason: collision with root package name */
    public static final int f15780t = 0;

    /* renamed from: u  reason: collision with root package name */
    public static final int f15781u = 1;

    /* renamed from: v  reason: collision with root package name */
    public static final int f15782v = -2;

    /* renamed from: w  reason: collision with root package name */
    public static final int f15783w = -1;

    /* renamed from: x  reason: collision with root package name */
    public static final int f15784x = 0;

    /* renamed from: y  reason: collision with root package name */
    static final int f15785y = 250;

    /* renamed from: z  reason: collision with root package name */
    static final int f15786z = 180;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ViewGroup f15787a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f15788b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    protected final SnackbarBaseLayout f15789c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.material.snackbar.a f15790d;

    /* renamed from: e  reason: collision with root package name */
    private int f15791e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f15792f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private q f15793g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f15794h;
    @RequiresApi(29)

    /* renamed from: i  reason: collision with root package name */
    private final Runnable f15795i;

    /* renamed from: j  reason: collision with root package name */
    private int f15796j;

    /* renamed from: k  reason: collision with root package name */
    private int f15797k;

    /* renamed from: l  reason: collision with root package name */
    private int f15798l;

    /* renamed from: m  reason: collision with root package name */
    private int f15799m;

    /* renamed from: n  reason: collision with root package name */
    private int f15800n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f15801o;

    /* renamed from: p  reason: collision with root package name */
    private List<BaseCallback<B>> f15802p;

    /* renamed from: q  reason: collision with root package name */
    private Behavior f15803q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private final AccessibilityManager f15804r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    b.InterfaceC0114b f15805s;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface AnimationMode {
    }

    /* loaded from: classes2.dex */
    public static abstract class BaseCallback<B> {

        /* renamed from: a  reason: collision with root package name */
        public static final int f15806a = 0;

        /* renamed from: b  reason: collision with root package name */
        public static final int f15807b = 1;

        /* renamed from: c  reason: collision with root package name */
        public static final int f15808c = 2;

        /* renamed from: d  reason: collision with root package name */
        public static final int f15809d = 3;

        /* renamed from: e  reason: collision with root package name */
        public static final int f15810e = 4;

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        /* loaded from: classes.dex */
        public @interface DismissEvent {
        }

        public void a(B b4, int i2) {
        }

        public void b(B b4) {
        }
    }

    /* loaded from: classes2.dex */
    public static class Behavior extends SwipeDismissBehavior<View> {
        @NonNull

        /* renamed from: t  reason: collision with root package name */
        private final r f15811t = new r(this);

        /* JADX INFO: Access modifiers changed from: private */
        public void p(@NonNull BaseTransientBottomBar<?> baseTransientBottomBar) {
            this.f15811t.c(baseTransientBottomBar);
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior
        public boolean a(View view) {
            return this.f15811t.a(view);
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onInterceptTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull MotionEvent motionEvent) {
            this.f15811t.b(coordinatorLayout, view, motionEvent);
            return super.onInterceptTouchEvent(coordinatorLayout, view, motionEvent);
        }
    }

    @IntRange(from = kotlinx.coroutines.scheduling.n.f72400e)
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface Duration {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes2.dex */
    public static class SnackbarBaseLayout extends FrameLayout {

        /* renamed from: k  reason: collision with root package name */
        private static final View.OnTouchListener f15812k = new a();
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private BaseTransientBottomBar<?> f15813a;

        /* renamed from: b  reason: collision with root package name */
        private int f15814b;

        /* renamed from: c  reason: collision with root package name */
        private final float f15815c;

        /* renamed from: d  reason: collision with root package name */
        private final float f15816d;

        /* renamed from: e  reason: collision with root package name */
        private final int f15817e;

        /* renamed from: f  reason: collision with root package name */
        private final int f15818f;

        /* renamed from: g  reason: collision with root package name */
        private ColorStateList f15819g;

        /* renamed from: h  reason: collision with root package name */
        private PorterDuff.Mode f15820h;
        @Nullable

        /* renamed from: i  reason: collision with root package name */
        private Rect f15821i;

        /* renamed from: j  reason: collision with root package name */
        private boolean f15822j;

        /* loaded from: classes2.dex */
        class a implements View.OnTouchListener {
            a() {
            }

            @Override // android.view.View.OnTouchListener
            @SuppressLint({"ClickableViewAccessibility"})
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public SnackbarBaseLayout(@NonNull Context context) {
            this(context, null);
        }

        @NonNull
        private Drawable d() {
            float dimension = getResources().getDimension(R.dimen.mtrl_snackbar_background_corner_radius);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(0);
            gradientDrawable.setCornerRadius(dimension);
            gradientDrawable.setColor(com.google.android.material.color.m.o(this, R.attr.colorSurface, R.attr.colorOnSurface, getBackgroundOverlayColorAlpha()));
            if (this.f15819g != null) {
                Drawable wrap = DrawableCompat.wrap(gradientDrawable);
                DrawableCompat.setTintList(wrap, this.f15819g);
                return wrap;
            }
            return DrawableCompat.wrap(gradientDrawable);
        }

        private void e(ViewGroup.MarginLayoutParams marginLayoutParams) {
            this.f15821i = new Rect(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setBaseTransientBottomBar(BaseTransientBottomBar<?> baseTransientBottomBar) {
            this.f15813a = baseTransientBottomBar;
        }

        void c(ViewGroup viewGroup) {
            this.f15822j = true;
            viewGroup.addView(this);
            this.f15822j = false;
        }

        float getActionTextColorAlpha() {
            return this.f15816d;
        }

        int getAnimationMode() {
            return this.f15814b;
        }

        float getBackgroundOverlayColorAlpha() {
            return this.f15815c;
        }

        int getMaxInlineActionWidth() {
            return this.f15818f;
        }

        int getMaxWidth() {
            return this.f15817e;
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            BaseTransientBottomBar<?> baseTransientBottomBar = this.f15813a;
            if (baseTransientBottomBar != null) {
                baseTransientBottomBar.O();
            }
            ViewCompat.requestApplyInsets(this);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            BaseTransientBottomBar<?> baseTransientBottomBar = this.f15813a;
            if (baseTransientBottomBar != null) {
                baseTransientBottomBar.P();
            }
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
            super.onLayout(z3, i2, i4, i5, i6);
            BaseTransientBottomBar<?> baseTransientBottomBar = this.f15813a;
            if (baseTransientBottomBar != null) {
                baseTransientBottomBar.Q();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i2, int i4) {
            super.onMeasure(i2, i4);
            if (this.f15817e > 0) {
                int measuredWidth = getMeasuredWidth();
                int i5 = this.f15817e;
                if (measuredWidth > i5) {
                    super.onMeasure(View.MeasureSpec.makeMeasureSpec(i5, 1073741824), i4);
                }
            }
        }

        void setAnimationMode(int i2) {
            this.f15814b = i2;
        }

        @Override // android.view.View
        public void setBackground(@Nullable Drawable drawable) {
            setBackgroundDrawable(drawable);
        }

        @Override // android.view.View
        public void setBackgroundDrawable(@Nullable Drawable drawable) {
            if (drawable != null && this.f15819g != null) {
                drawable = DrawableCompat.wrap(drawable.mutate());
                DrawableCompat.setTintList(drawable, this.f15819g);
                DrawableCompat.setTintMode(drawable, this.f15820h);
            }
            super.setBackgroundDrawable(drawable);
        }

        @Override // android.view.View
        public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
            this.f15819g = colorStateList;
            if (getBackground() != null) {
                Drawable wrap = DrawableCompat.wrap(getBackground().mutate());
                DrawableCompat.setTintList(wrap, colorStateList);
                DrawableCompat.setTintMode(wrap, this.f15820h);
                if (wrap != getBackground()) {
                    super.setBackgroundDrawable(wrap);
                }
            }
        }

        @Override // android.view.View
        public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
            this.f15820h = mode;
            if (getBackground() != null) {
                Drawable wrap = DrawableCompat.wrap(getBackground().mutate());
                DrawableCompat.setTintMode(wrap, mode);
                if (wrap != getBackground()) {
                    super.setBackgroundDrawable(wrap);
                }
            }
        }

        @Override // android.view.View
        public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
            super.setLayoutParams(layoutParams);
            if (this.f15822j || !(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
                return;
            }
            e((ViewGroup.MarginLayoutParams) layoutParams);
            BaseTransientBottomBar<?> baseTransientBottomBar = this.f15813a;
            if (baseTransientBottomBar != null) {
                baseTransientBottomBar.m0();
            }
        }

        @Override // android.view.View
        public void setOnClickListener(@Nullable View.OnClickListener onClickListener) {
            setOnTouchListener(onClickListener != null ? null : f15812k);
            super.setOnClickListener(onClickListener);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public SnackbarBaseLayout(@NonNull Context context, AttributeSet attributeSet) {
            super(com.google.android.material.theme.overlay.a.c(context, attributeSet, 0, 0), attributeSet);
            Context context2 = getContext();
            TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, R.styleable.SnackbarLayout);
            int i2 = R.styleable.SnackbarLayout_elevation;
            if (obtainStyledAttributes.hasValue(i2)) {
                ViewCompat.setElevation(this, obtainStyledAttributes.getDimensionPixelSize(i2, 0));
            }
            this.f15814b = obtainStyledAttributes.getInt(R.styleable.SnackbarLayout_animationMode, 0);
            this.f15815c = obtainStyledAttributes.getFloat(R.styleable.SnackbarLayout_backgroundOverlayColorAlpha, 1.0f);
            setBackgroundTintList(com.google.android.material.resources.c.a(context2, obtainStyledAttributes, R.styleable.SnackbarLayout_backgroundTint));
            setBackgroundTintMode(w.l(obtainStyledAttributes.getInt(R.styleable.SnackbarLayout_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN));
            this.f15816d = obtainStyledAttributes.getFloat(R.styleable.SnackbarLayout_actionTextColorAlpha, 1.0f);
            this.f15817e = obtainStyledAttributes.getDimensionPixelSize(R.styleable.SnackbarLayout_android_maxWidth, -1);
            this.f15818f = obtainStyledAttributes.getDimensionPixelSize(R.styleable.SnackbarLayout_maxActionInlineWidth, -1);
            obtainStyledAttributes.recycle();
            setOnTouchListener(f15812k);
            setFocusable(true);
            if (getBackground() == null) {
                ViewCompat.setBackground(this, d());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f15823a;

        a(int i2) {
            this.f15823a = i2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BaseTransientBottomBar.this.R(this.f15823a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            BaseTransientBottomBar.this.f15789c.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c implements ValueAnimator.AnimatorUpdateListener {
        c() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            BaseTransientBottomBar.this.f15789c.setScaleX(floatValue);
            BaseTransientBottomBar.this.f15789c.setScaleY(floatValue);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d extends AnimatorListenerAdapter {
        d() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BaseTransientBottomBar.this.S();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BaseTransientBottomBar.this.f15790d.a(70, 180);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class e implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        private int f15828a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f15829b;

        e(int i2) {
            this.f15829b = i2;
            this.f15828a = i2;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            if (BaseTransientBottomBar.G) {
                ViewCompat.offsetTopAndBottom(BaseTransientBottomBar.this.f15789c, intValue - this.f15828a);
            } else {
                BaseTransientBottomBar.this.f15789c.setTranslationY(intValue);
            }
            this.f15828a = intValue;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class f extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f15831a;

        f(int i2) {
            this.f15831a = i2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BaseTransientBottomBar.this.R(this.f15831a);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BaseTransientBottomBar.this.f15790d.b(0, 180);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class g implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        private int f15833a = 0;

        g() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            if (BaseTransientBottomBar.G) {
                ViewCompat.offsetTopAndBottom(BaseTransientBottomBar.this.f15789c, intValue - this.f15833a);
            } else {
                BaseTransientBottomBar.this.f15789c.setTranslationY(intValue);
            }
            this.f15833a = intValue;
        }
    }

    /* loaded from: classes2.dex */
    class h implements Handler.Callback {
        h() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(@NonNull Message message) {
            int i2 = message.what;
            if (i2 == 0) {
                ((BaseTransientBottomBar) message.obj).g0();
                return true;
            } else if (i2 != 1) {
                return false;
            } else {
                ((BaseTransientBottomBar) message.obj).I(message.arg1);
                return true;
            }
        }
    }

    /* loaded from: classes2.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int C;
            BaseTransientBottomBar baseTransientBottomBar = BaseTransientBottomBar.this;
            if (baseTransientBottomBar.f15789c == null || baseTransientBottomBar.f15788b == null || (C = (BaseTransientBottomBar.this.C() - BaseTransientBottomBar.this.G()) + ((int) BaseTransientBottomBar.this.f15789c.getTranslationY())) >= BaseTransientBottomBar.this.f15799m) {
                return;
            }
            ViewGroup.LayoutParams layoutParams = BaseTransientBottomBar.this.f15789c.getLayoutParams();
            if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
                String unused = BaseTransientBottomBar.I;
                return;
            }
            ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin += BaseTransientBottomBar.this.f15799m - C;
            BaseTransientBottomBar.this.f15789c.requestLayout();
        }
    }

    /* loaded from: classes2.dex */
    class j implements OnApplyWindowInsetsListener {
        j() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        @NonNull
        public WindowInsetsCompat onApplyWindowInsets(View view, @NonNull WindowInsetsCompat windowInsetsCompat) {
            BaseTransientBottomBar.this.f15796j = windowInsetsCompat.getSystemWindowInsetBottom();
            BaseTransientBottomBar.this.f15797k = windowInsetsCompat.getSystemWindowInsetLeft();
            BaseTransientBottomBar.this.f15798l = windowInsetsCompat.getSystemWindowInsetRight();
            BaseTransientBottomBar.this.m0();
            return windowInsetsCompat;
        }
    }

    /* loaded from: classes2.dex */
    class k extends AccessibilityDelegateCompat {
        k() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.addAction(1048576);
            accessibilityNodeInfoCompat.setDismissable(true);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean performAccessibilityAction(View view, int i2, Bundle bundle) {
            if (i2 == 1048576) {
                BaseTransientBottomBar.this.t();
                return true;
            }
            return super.performAccessibilityAction(view, i2, bundle);
        }
    }

    /* loaded from: classes2.dex */
    class l implements b.InterfaceC0114b {
        l() {
        }

        @Override // com.google.android.material.snackbar.b.InterfaceC0114b
        public void a(int i2) {
            Handler handler = BaseTransientBottomBar.D;
            handler.sendMessage(handler.obtainMessage(1, i2, 0, BaseTransientBottomBar.this));
        }

        @Override // com.google.android.material.snackbar.b.InterfaceC0114b
        public void show() {
            Handler handler = BaseTransientBottomBar.D;
            handler.sendMessage(handler.obtainMessage(0, BaseTransientBottomBar.this));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseTransientBottomBar.this.R(3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class n implements SwipeDismissBehavior.c {
        n() {
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior.c
        public void a(@NonNull View view) {
            if (view.getParent() != null) {
                view.setVisibility(8);
            }
            BaseTransientBottomBar.this.u(0);
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior.c
        public void b(int i2) {
            if (i2 == 0) {
                com.google.android.material.snackbar.b.c().l(BaseTransientBottomBar.this.f15805s);
            } else if (i2 == 1 || i2 == 2) {
                com.google.android.material.snackbar.b.c().k(BaseTransientBottomBar.this.f15805s);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class o implements Runnable {
        o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SnackbarBaseLayout snackbarBaseLayout = BaseTransientBottomBar.this.f15789c;
            if (snackbarBaseLayout == null) {
                return;
            }
            if (snackbarBaseLayout.getParent() != null) {
                BaseTransientBottomBar.this.f15789c.setVisibility(0);
            }
            if (BaseTransientBottomBar.this.f15789c.getAnimationMode() == 1) {
                BaseTransientBottomBar.this.i0();
            } else {
                BaseTransientBottomBar.this.k0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class p extends AnimatorListenerAdapter {
        p() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BaseTransientBottomBar.this.S();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class q implements View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<BaseTransientBottomBar> f15843a;
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        private final WeakReference<View> f15844b;

        private q(@NonNull BaseTransientBottomBar baseTransientBottomBar, @NonNull View view) {
            this.f15843a = new WeakReference<>(baseTransientBottomBar);
            this.f15844b = new WeakReference<>(view);
        }

        static q a(@NonNull BaseTransientBottomBar baseTransientBottomBar, @NonNull View view) {
            q qVar = new q(baseTransientBottomBar, view);
            if (ViewCompat.isAttachedToWindow(view)) {
                w.a(view, qVar);
            }
            view.addOnAttachStateChangeListener(qVar);
            return qVar;
        }

        private boolean d() {
            if (this.f15843a.get() == null) {
                c();
                return true;
            }
            return false;
        }

        @Nullable
        View b() {
            return this.f15844b.get();
        }

        void c() {
            if (this.f15844b.get() != null) {
                this.f15844b.get().removeOnAttachStateChangeListener(this);
                w.m(this.f15844b.get(), this);
            }
            this.f15844b.clear();
            this.f15843a.clear();
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (d() || !this.f15843a.get().f15794h) {
                return;
            }
            this.f15843a.get().T();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            if (d()) {
                return;
            }
            w.a(view, this);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            if (d()) {
                return;
            }
            w.m(view, this);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes2.dex */
    public static class r {

        /* renamed from: a  reason: collision with root package name */
        private b.InterfaceC0114b f15845a;

        public r(@NonNull SwipeDismissBehavior<?> swipeDismissBehavior) {
            swipeDismissBehavior.l(0.1f);
            swipeDismissBehavior.i(0.6f);
            swipeDismissBehavior.m(0);
        }

        public boolean a(View view) {
            return view instanceof SnackbarBaseLayout;
        }

        public void b(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                if (coordinatorLayout.isPointInChildBounds(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                    com.google.android.material.snackbar.b.c().k(this.f15845a);
                }
            } else if (actionMasked == 1 || actionMasked == 3) {
                com.google.android.material.snackbar.b.c().l(this.f15845a);
            }
        }

        public void c(@NonNull BaseTransientBottomBar<?> baseTransientBottomBar) {
            this.f15845a = baseTransientBottomBar.f15805s;
        }
    }

    @Deprecated
    /* loaded from: classes2.dex */
    public interface s extends com.google.android.material.snackbar.a {
    }

    static {
        int i2 = Build.VERSION.SDK_INT;
        G = i2 >= 16 && i2 <= 19;
        H = new int[]{R.attr.snackbarStyle};
        I = BaseTransientBottomBar.class.getSimpleName();
        D = new Handler(Looper.getMainLooper(), new h());
    }

    protected BaseTransientBottomBar(@NonNull ViewGroup viewGroup, @NonNull View view, @NonNull com.google.android.material.snackbar.a aVar) {
        this(viewGroup.getContext(), viewGroup, view, aVar);
    }

    private ValueAnimator B(float... fArr) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
        ofFloat.setInterpolator(com.google.android.material.animation.a.f14007d);
        ofFloat.addUpdateListener(new c());
        return ofFloat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(17)
    public int C() {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) this.f15788b.getSystemService("window")).getDefaultDisplay().getRealMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    private int E() {
        int height = this.f15789c.getHeight();
        ViewGroup.LayoutParams layoutParams = this.f15789c.getLayoutParams();
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? height + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin : height;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int G() {
        int[] iArr = new int[2];
        this.f15789c.getLocationOnScreen(iArr);
        return iArr[1] + this.f15789c.getHeight();
    }

    private boolean N() {
        ViewGroup.LayoutParams layoutParams = this.f15789c.getLayoutParams();
        return (layoutParams instanceof CoordinatorLayout.LayoutParams) && (((CoordinatorLayout.LayoutParams) layoutParams).getBehavior() instanceof SwipeDismissBehavior);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T() {
        this.f15800n = s();
        m0();
    }

    private void c0(CoordinatorLayout.LayoutParams layoutParams) {
        SwipeDismissBehavior<? extends View> swipeDismissBehavior = this.f15803q;
        if (swipeDismissBehavior == null) {
            swipeDismissBehavior = A();
        }
        if (swipeDismissBehavior instanceof Behavior) {
            ((Behavior) swipeDismissBehavior).p(this);
        }
        swipeDismissBehavior.j(new n());
        layoutParams.setBehavior(swipeDismissBehavior);
        if (w() == null) {
            layoutParams.insetEdge = 80;
        }
    }

    private boolean e0() {
        return this.f15799m > 0 && !this.f15792f && N();
    }

    private void h0() {
        if (d0()) {
            q();
            return;
        }
        if (this.f15789c.getParent() != null) {
            this.f15789c.setVisibility(0);
        }
        S();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i0() {
        ValueAnimator v3 = v(0.0f, 1.0f);
        ValueAnimator B2 = B(C, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(v3, B2);
        animatorSet.setDuration(150L);
        animatorSet.addListener(new p());
        animatorSet.start();
    }

    private void j0(int i2) {
        ValueAnimator v3 = v(1.0f, 0.0f);
        v3.setDuration(75L);
        v3.addListener(new a(i2));
        v3.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k0() {
        int E2 = E();
        if (G) {
            ViewCompat.offsetTopAndBottom(this.f15789c, E2);
        } else {
            this.f15789c.setTranslationY(E2);
        }
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(E2, 0);
        valueAnimator.setInterpolator(com.google.android.material.animation.a.f14005b);
        valueAnimator.setDuration(250L);
        valueAnimator.addListener(new d());
        valueAnimator.addUpdateListener(new e(E2));
        valueAnimator.start();
    }

    private void l0(int i2) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(0, E());
        valueAnimator.setInterpolator(com.google.android.material.animation.a.f14005b);
        valueAnimator.setDuration(250L);
        valueAnimator.addListener(new f(i2));
        valueAnimator.addUpdateListener(new g());
        valueAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m0() {
        ViewGroup.LayoutParams layoutParams = this.f15789c.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams) || this.f15789c.f15821i == null || this.f15789c.getParent() == null) {
            return;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        marginLayoutParams.bottomMargin = this.f15789c.f15821i.bottom + (w() != null ? this.f15800n : this.f15796j);
        marginLayoutParams.leftMargin = this.f15789c.f15821i.left + this.f15797k;
        marginLayoutParams.rightMargin = this.f15789c.f15821i.right + this.f15798l;
        marginLayoutParams.topMargin = this.f15789c.f15821i.top;
        this.f15789c.requestLayout();
        if (Build.VERSION.SDK_INT < 29 || !e0()) {
            return;
        }
        this.f15789c.removeCallbacks(this.f15795i);
        this.f15789c.post(this.f15795i);
    }

    private void r(int i2) {
        if (this.f15789c.getAnimationMode() == 1) {
            j0(i2);
        } else {
            l0(i2);
        }
    }

    private int s() {
        if (w() == null) {
            return 0;
        }
        int[] iArr = new int[2];
        w().getLocationOnScreen(iArr);
        int i2 = iArr[1];
        int[] iArr2 = new int[2];
        this.f15787a.getLocationOnScreen(iArr2);
        return (iArr2[1] + this.f15787a.getHeight()) - i2;
    }

    private ValueAnimator v(float... fArr) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
        ofFloat.setInterpolator(com.google.android.material.animation.a.f14004a);
        ofFloat.addUpdateListener(new b());
        return ofFloat;
    }

    @NonNull
    protected SwipeDismissBehavior<? extends View> A() {
        return new Behavior();
    }

    @LayoutRes
    protected int D() {
        return H() ? R.layout.mtrl_layout_snackbar : R.layout.design_layout_snackbar;
    }

    @NonNull
    public View F() {
        return this.f15789c;
    }

    protected boolean H() {
        TypedArray obtainStyledAttributes = this.f15788b.obtainStyledAttributes(H);
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        obtainStyledAttributes.recycle();
        return resourceId != -1;
    }

    final void I(int i2) {
        if (d0() && this.f15789c.getVisibility() == 0) {
            r(i2);
        } else {
            R(i2);
        }
    }

    public boolean J() {
        return this.f15794h;
    }

    public boolean K() {
        return this.f15792f;
    }

    public boolean L() {
        return com.google.android.material.snackbar.b.c().e(this.f15805s);
    }

    public boolean M() {
        return com.google.android.material.snackbar.b.c().f(this.f15805s);
    }

    void O() {
        WindowInsets rootWindowInsets;
        if (Build.VERSION.SDK_INT < 29 || (rootWindowInsets = this.f15789c.getRootWindowInsets()) == null) {
            return;
        }
        this.f15799m = rootWindowInsets.getMandatorySystemGestureInsets().bottom;
        m0();
    }

    void P() {
        if (M()) {
            D.post(new m());
        }
    }

    void Q() {
        if (this.f15801o) {
            h0();
            this.f15801o = false;
        }
    }

    void R(int i2) {
        com.google.android.material.snackbar.b.c().i(this.f15805s);
        List<BaseCallback<B>> list = this.f15802p;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f15802p.get(size).a(this, i2);
            }
        }
        ViewParent parent = this.f15789c.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.f15789c);
        }
    }

    void S() {
        com.google.android.material.snackbar.b.c().j(this.f15805s);
        List<BaseCallback<B>> list = this.f15802p;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f15802p.get(size).b(this);
            }
        }
    }

    @NonNull
    public B U(@Nullable BaseCallback<B> baseCallback) {
        List<BaseCallback<B>> list;
        if (baseCallback == null || (list = this.f15802p) == null) {
            return this;
        }
        list.remove(baseCallback);
        return this;
    }

    @NonNull
    public B V(@IdRes int i2) {
        View findViewById = this.f15787a.findViewById(i2);
        if (findViewById != null) {
            return W(findViewById);
        }
        throw new IllegalArgumentException("Unable to find anchor view with id: " + i2);
    }

    @NonNull
    public B W(@Nullable View view) {
        q qVar = this.f15793g;
        if (qVar != null) {
            qVar.c();
        }
        this.f15793g = view == null ? null : q.a(this, view);
        return this;
    }

    public void X(boolean z3) {
        this.f15794h = z3;
    }

    @NonNull
    public B Y(int i2) {
        this.f15789c.setAnimationMode(i2);
        return this;
    }

    @NonNull
    public B Z(Behavior behavior) {
        this.f15803q = behavior;
        return this;
    }

    @NonNull
    public B a0(int i2) {
        this.f15791e = i2;
        return this;
    }

    @NonNull
    public B b0(boolean z3) {
        this.f15792f = z3;
        return this;
    }

    boolean d0() {
        AccessibilityManager accessibilityManager = this.f15804r;
        if (accessibilityManager == null) {
            return true;
        }
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(1);
        return enabledAccessibilityServiceList != null && enabledAccessibilityServiceList.isEmpty();
    }

    public void f0() {
        com.google.android.material.snackbar.b.c().n(z(), this.f15805s);
    }

    final void g0() {
        if (this.f15789c.getParent() == null) {
            ViewGroup.LayoutParams layoutParams = this.f15789c.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
                c0((CoordinatorLayout.LayoutParams) layoutParams);
            }
            this.f15789c.c(this.f15787a);
            T();
            this.f15789c.setVisibility(4);
        }
        if (ViewCompat.isLaidOut(this.f15789c)) {
            h0();
        } else {
            this.f15801o = true;
        }
    }

    @NonNull
    public Context getContext() {
        return this.f15788b;
    }

    @NonNull
    public B p(@Nullable BaseCallback<B> baseCallback) {
        if (baseCallback == null) {
            return this;
        }
        if (this.f15802p == null) {
            this.f15802p = new ArrayList();
        }
        this.f15802p.add(baseCallback);
        return this;
    }

    void q() {
        this.f15789c.post(new o());
    }

    public void t() {
        u(3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void u(int i2) {
        com.google.android.material.snackbar.b.c().b(this.f15805s, i2);
    }

    @Nullable
    public View w() {
        q qVar = this.f15793g;
        if (qVar == null) {
            return null;
        }
        return qVar.b();
    }

    public int x() {
        return this.f15789c.getAnimationMode();
    }

    public Behavior y() {
        return this.f15803q;
    }

    public int z() {
        return this.f15791e;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseTransientBottomBar(@NonNull Context context, @NonNull ViewGroup viewGroup, @NonNull View view, @NonNull com.google.android.material.snackbar.a aVar) {
        this.f15794h = false;
        this.f15795i = new i();
        this.f15805s = new l();
        if (viewGroup == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null parent");
        }
        if (view == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null content");
        }
        if (aVar != null) {
            this.f15787a = viewGroup;
            this.f15790d = aVar;
            this.f15788b = context;
            com.google.android.material.internal.o.a(context);
            SnackbarBaseLayout snackbarBaseLayout = (SnackbarBaseLayout) LayoutInflater.from(context).inflate(D(), viewGroup, false);
            this.f15789c = snackbarBaseLayout;
            snackbarBaseLayout.setBaseTransientBottomBar(this);
            if (view instanceof SnackbarContentLayout) {
                SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) view;
                snackbarContentLayout.c(snackbarBaseLayout.getActionTextColorAlpha());
                snackbarContentLayout.setMaxInlineActionWidth(snackbarBaseLayout.getMaxInlineActionWidth());
            }
            snackbarBaseLayout.addView(view);
            ViewCompat.setAccessibilityLiveRegion(snackbarBaseLayout, 1);
            ViewCompat.setImportantForAccessibility(snackbarBaseLayout, 1);
            ViewCompat.setFitsSystemWindows(snackbarBaseLayout, true);
            ViewCompat.setOnApplyWindowInsetsListener(snackbarBaseLayout, new j());
            ViewCompat.setAccessibilityDelegate(snackbarBaseLayout, new k());
            this.f15804r = (AccessibilityManager) context.getSystemService("accessibility");
            return;
        }
        throw new IllegalArgumentException("Transient bottom bar must have non-null callback");
    }
}
