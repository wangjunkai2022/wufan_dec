package com.google.android.material.progressindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import android.widget.ProgressBar;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.ViewCompat;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import com.google.android.material.R;
import com.google.android.material.color.m;
import com.google.android.material.internal.o;
import com.google.android.material.progressindicator.b;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;
/* loaded from: classes2.dex */
public abstract class BaseProgressIndicator<S extends com.google.android.material.progressindicator.b> extends ProgressBar {

    /* renamed from: o  reason: collision with root package name */
    public static final int f15343o = 0;

    /* renamed from: p  reason: collision with root package name */
    public static final int f15344p = 1;

    /* renamed from: q  reason: collision with root package name */
    public static final int f15345q = 2;

    /* renamed from: r  reason: collision with root package name */
    public static final int f15346r = 0;

    /* renamed from: s  reason: collision with root package name */
    public static final int f15347s = 1;

    /* renamed from: t  reason: collision with root package name */
    public static final int f15348t = 2;

    /* renamed from: u  reason: collision with root package name */
    static final int f15349u = R.style.Widget_MaterialComponents_ProgressIndicator;

    /* renamed from: v  reason: collision with root package name */
    static final float f15350v = 0.2f;

    /* renamed from: w  reason: collision with root package name */
    static final int f15351w = 255;

    /* renamed from: x  reason: collision with root package name */
    static final int f15352x = 1000;

    /* renamed from: a  reason: collision with root package name */
    S f15353a;

    /* renamed from: b  reason: collision with root package name */
    private int f15354b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f15355c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f15356d;

    /* renamed from: e  reason: collision with root package name */
    private final int f15357e;

    /* renamed from: f  reason: collision with root package name */
    private final int f15358f;

    /* renamed from: g  reason: collision with root package name */
    private long f15359g;

    /* renamed from: h  reason: collision with root package name */
    com.google.android.material.progressindicator.a f15360h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f15361i;

    /* renamed from: j  reason: collision with root package name */
    private int f15362j;

    /* renamed from: k  reason: collision with root package name */
    private final Runnable f15363k;

    /* renamed from: l  reason: collision with root package name */
    private final Runnable f15364l;

    /* renamed from: m  reason: collision with root package name */
    private final Animatable2Compat.AnimationCallback f15365m;

    /* renamed from: n  reason: collision with root package name */
    private final Animatable2Compat.AnimationCallback f15366n;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface HideAnimationBehavior {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface ShowAnimationBehavior {
    }

    /* loaded from: classes2.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseProgressIndicator.this.l();
        }
    }

    /* loaded from: classes2.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseProgressIndicator.this.k();
            BaseProgressIndicator.this.f15359g = -1L;
        }
    }

    /* loaded from: classes2.dex */
    class c extends Animatable2Compat.AnimationCallback {
        c() {
        }

        @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat.AnimationCallback
        public void onAnimationEnd(Drawable drawable) {
            BaseProgressIndicator.this.setIndeterminate(false);
            BaseProgressIndicator baseProgressIndicator = BaseProgressIndicator.this;
            baseProgressIndicator.setProgressCompat(baseProgressIndicator.f15354b, BaseProgressIndicator.this.f15355c);
        }
    }

    /* loaded from: classes2.dex */
    class d extends Animatable2Compat.AnimationCallback {
        d() {
        }

        @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat.AnimationCallback
        public void onAnimationEnd(Drawable drawable) {
            super.onAnimationEnd(drawable);
            if (BaseProgressIndicator.this.f15361i) {
                return;
            }
            BaseProgressIndicator baseProgressIndicator = BaseProgressIndicator.this;
            baseProgressIndicator.setVisibility(baseProgressIndicator.f15362j);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseProgressIndicator(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i2, @StyleRes int i4) {
        super(com.google.android.material.theme.overlay.a.c(context, attributeSet, i2, f15349u), attributeSet, i2);
        this.f15359g = -1L;
        this.f15361i = false;
        this.f15362j = 4;
        this.f15363k = new a();
        this.f15364l = new b();
        this.f15365m = new c();
        this.f15366n = new d();
        Context context2 = getContext();
        this.f15353a = i(context2, attributeSet);
        TypedArray j4 = o.j(context2, attributeSet, R.styleable.BaseProgressIndicator, i2, i4, new int[0]);
        this.f15357e = j4.getInt(R.styleable.BaseProgressIndicator_showDelay, -1);
        this.f15358f = Math.min(j4.getInt(R.styleable.BaseProgressIndicator_minHideDelay, -1), 1000);
        j4.recycle();
        this.f15360h = new com.google.android.material.progressindicator.a();
        this.f15356d = true;
    }

    @Nullable
    private g<S> getCurrentDrawingDelegate() {
        if (isIndeterminate()) {
            if (getIndeterminateDrawable() == null) {
                return null;
            }
            return getIndeterminateDrawable().x();
        } else if (getProgressDrawable() == null) {
            return null;
        } else {
            return getProgressDrawable().z();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        ((f) getCurrentDrawable()).s(false, false, true);
        if (n()) {
            setVisibility(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        if (this.f15358f > 0) {
            this.f15359g = SystemClock.uptimeMillis();
        }
        setVisibility(0);
    }

    private boolean n() {
        return (getProgressDrawable() == null || !getProgressDrawable().isVisible()) && (getIndeterminateDrawable() == null || !getIndeterminateDrawable().isVisible());
    }

    private void o() {
        if (getProgressDrawable() != null && getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().w().d(this.f15365m);
        }
        if (getProgressDrawable() != null) {
            getProgressDrawable().registerAnimationCallback(this.f15366n);
        }
        if (getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().registerAnimationCallback(this.f15366n);
        }
    }

    private void q() {
        if (getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().unregisterAnimationCallback(this.f15366n);
            getIndeterminateDrawable().w().h();
        }
        if (getProgressDrawable() != null) {
            getProgressDrawable().unregisterAnimationCallback(this.f15366n);
        }
    }

    @Override // android.widget.ProgressBar
    @Nullable
    public Drawable getCurrentDrawable() {
        return isIndeterminate() ? getIndeterminateDrawable() : getProgressDrawable();
    }

    public int getHideAnimationBehavior() {
        return this.f15353a.f15387f;
    }

    @NonNull
    public int[] getIndicatorColor() {
        return this.f15353a.f15384c;
    }

    public int getShowAnimationBehavior() {
        return this.f15353a.f15386e;
    }

    @ColorInt
    public int getTrackColor() {
        return this.f15353a.f15385d;
    }

    @Px
    public int getTrackCornerRadius() {
        return this.f15353a.f15383b;
    }

    @Px
    public int getTrackThickness() {
        return this.f15353a.f15382a;
    }

    protected void h(boolean z3) {
        if (this.f15356d) {
            ((f) getCurrentDrawable()).s(r(), false, z3);
        }
    }

    abstract S i(@NonNull Context context, @NonNull AttributeSet attributeSet);

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        if (getCurrentDrawable() != null) {
            getCurrentDrawable().invalidateSelf();
        }
    }

    public void j() {
        if (getVisibility() != 0) {
            removeCallbacks(this.f15363k);
            return;
        }
        removeCallbacks(this.f15364l);
        long uptimeMillis = SystemClock.uptimeMillis() - this.f15359g;
        int i2 = this.f15358f;
        if (uptimeMillis >= ((long) i2)) {
            this.f15364l.run();
        } else {
            postDelayed(this.f15364l, i2 - uptimeMillis);
        }
    }

    boolean m() {
        View view = this;
        while (view.getVisibility() == 0) {
            ViewParent parent = view.getParent();
            if (parent == null) {
                return getWindowVisibility() == 0;
            } else if (!(parent instanceof View)) {
                return true;
            } else {
                view = (View) parent;
            }
        }
        return false;
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        o();
        if (r()) {
            l();
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.f15364l);
        removeCallbacks(this.f15363k);
        ((f) getCurrentDrawable()).i();
        q();
        super.onDetachedFromWindow();
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected synchronized void onDraw(@NonNull Canvas canvas) {
        int save = canvas.save();
        if (getPaddingLeft() != 0 || getPaddingTop() != 0) {
            canvas.translate(getPaddingLeft(), getPaddingTop());
        }
        if (getPaddingRight() != 0 || getPaddingBottom() != 0) {
            canvas.clipRect(0, 0, getWidth() - (getPaddingLeft() + getPaddingRight()), getHeight() - (getPaddingTop() + getPaddingBottom()));
        }
        getCurrentDrawable().draw(canvas);
        canvas.restoreToCount(save);
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected synchronized void onMeasure(int i2, int i4) {
        int paddingLeft;
        int paddingTop;
        super.onMeasure(i2, i4);
        g<S> currentDrawingDelegate = getCurrentDrawingDelegate();
        if (currentDrawingDelegate == null) {
            return;
        }
        int e4 = currentDrawingDelegate.e();
        int d4 = currentDrawingDelegate.d();
        if (e4 < 0) {
            paddingLeft = getMeasuredWidth();
        } else {
            paddingLeft = e4 + getPaddingLeft() + getPaddingRight();
        }
        if (d4 < 0) {
            paddingTop = getMeasuredHeight();
        } else {
            paddingTop = d4 + getPaddingTop() + getPaddingBottom();
        }
        setMeasuredDimension(paddingLeft, paddingTop);
    }

    @Override // android.view.View
    protected void onVisibilityChanged(@NonNull View view, int i2) {
        super.onVisibilityChanged(view, i2);
        h(i2 == 0);
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        h(false);
    }

    public void p() {
        if (this.f15357e > 0) {
            removeCallbacks(this.f15363k);
            postDelayed(this.f15363k, this.f15357e);
            return;
        }
        this.f15363k.run();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean r() {
        return ViewCompat.isAttachedToWindow(this) && getWindowVisibility() == 0 && m();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @VisibleForTesting
    public void setAnimatorDurationScaleProvider(@NonNull com.google.android.material.progressindicator.a aVar) {
        this.f15360h = aVar;
        if (getProgressDrawable() != null) {
            getProgressDrawable().f15429c = aVar;
        }
        if (getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().f15429c = aVar;
        }
    }

    public void setHideAnimationBehavior(int i2) {
        this.f15353a.f15387f = i2;
        invalidate();
    }

    @Override // android.widget.ProgressBar
    public synchronized void setIndeterminate(boolean z3) {
        if (z3 == isIndeterminate()) {
            return;
        }
        f fVar = (f) getCurrentDrawable();
        if (fVar != null) {
            fVar.i();
        }
        super.setIndeterminate(z3);
        f fVar2 = (f) getCurrentDrawable();
        if (fVar2 != null) {
            fVar2.s(r(), false, false);
        }
        if ((fVar2 instanceof i) && r()) {
            ((i) fVar2).w().g();
        }
        this.f15361i = false;
    }

    @Override // android.widget.ProgressBar
    public void setIndeterminateDrawable(@Nullable Drawable drawable) {
        if (drawable == null) {
            super.setIndeterminateDrawable(null);
        } else if (drawable instanceof i) {
            ((f) drawable).i();
            super.setIndeterminateDrawable(drawable);
        } else {
            throw new IllegalArgumentException("Cannot set framework drawable as indeterminate drawable.");
        }
    }

    public void setIndicatorColor(@ColorInt int... iArr) {
        if (iArr.length == 0) {
            iArr = new int[]{m.b(getContext(), R.attr.colorPrimary, -1)};
        }
        if (Arrays.equals(getIndicatorColor(), iArr)) {
            return;
        }
        this.f15353a.f15384c = iArr;
        getIndeterminateDrawable().w().c();
        invalidate();
    }

    @Override // android.widget.ProgressBar
    public synchronized void setProgress(int i2) {
        if (isIndeterminate()) {
            return;
        }
        setProgressCompat(i2, false);
    }

    public void setProgressCompat(int i2, boolean z3) {
        if (isIndeterminate()) {
            if (getProgressDrawable() != null) {
                this.f15354b = i2;
                this.f15355c = z3;
                this.f15361i = true;
                if (getIndeterminateDrawable().isVisible() && this.f15360h.a(getContext().getContentResolver()) != 0.0f) {
                    getIndeterminateDrawable().w().f();
                    return;
                } else {
                    this.f15365m.onAnimationEnd(getIndeterminateDrawable());
                    return;
                }
            }
            return;
        }
        super.setProgress(i2);
        if (getProgressDrawable() == null || z3) {
            return;
        }
        getProgressDrawable().jumpToCurrentState();
    }

    @Override // android.widget.ProgressBar
    public void setProgressDrawable(@Nullable Drawable drawable) {
        if (drawable == null) {
            super.setProgressDrawable(null);
        } else if (drawable instanceof e) {
            e eVar = (e) drawable;
            eVar.i();
            super.setProgressDrawable(eVar);
            eVar.E(getProgress() / getMax());
        } else {
            throw new IllegalArgumentException("Cannot set framework drawable as progress drawable.");
        }
    }

    public void setShowAnimationBehavior(int i2) {
        this.f15353a.f15386e = i2;
        invalidate();
    }

    public void setTrackColor(@ColorInt int i2) {
        S s3 = this.f15353a;
        if (s3.f15385d != i2) {
            s3.f15385d = i2;
            invalidate();
        }
    }

    public void setTrackCornerRadius(@Px int i2) {
        S s3 = this.f15353a;
        if (s3.f15383b != i2) {
            s3.f15383b = Math.min(i2, s3.f15382a / 2);
        }
    }

    public void setTrackThickness(@Px int i2) {
        S s3 = this.f15353a;
        if (s3.f15382a != i2) {
            s3.f15382a = i2;
            requestLayout();
        }
    }

    public void setVisibilityAfterHide(int i2) {
        if (i2 != 0 && i2 != 4 && i2 != 8) {
            throw new IllegalArgumentException("The component's visibility must be one of VISIBLE, INVISIBLE, and GONE defined in View.");
        }
        this.f15362j = i2;
    }

    @Override // android.widget.ProgressBar
    @Nullable
    public i<S> getIndeterminateDrawable() {
        return (i) super.getIndeterminateDrawable();
    }

    @Override // android.widget.ProgressBar
    @Nullable
    public e<S> getProgressDrawable() {
        return (e) super.getProgressDrawable();
    }
}
