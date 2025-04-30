package com.google.android.material.card;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Checkable;
import android.widget.FrameLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.cardview.widget.CardView;
import com.google.android.material.R;
import com.google.android.material.shape.i;
import com.google.android.material.shape.m;
import com.google.android.material.shape.q;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes2.dex */
public class MaterialCardView extends CardView implements Checkable, q {

    /* renamed from: o  reason: collision with root package name */
    private static final int[] f14343o = {16842911};

    /* renamed from: p  reason: collision with root package name */
    private static final int[] f14344p = {16842912};

    /* renamed from: q  reason: collision with root package name */
    private static final int[] f14345q = {R.attr.state_dragged};

    /* renamed from: r  reason: collision with root package name */
    private static final int f14346r = R.style.Widget_MaterialComponents_CardView;

    /* renamed from: s  reason: collision with root package name */
    private static final String f14347s = "MaterialCardView";

    /* renamed from: t  reason: collision with root package name */
    private static final String f14348t = "androidx.cardview.widget.CardView";

    /* renamed from: u  reason: collision with root package name */
    public static final int f14349u = 8388659;

    /* renamed from: v  reason: collision with root package name */
    public static final int f14350v = 8388691;

    /* renamed from: w  reason: collision with root package name */
    public static final int f14351w = 8388661;

    /* renamed from: x  reason: collision with root package name */
    public static final int f14352x = 8388693;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    private final com.google.android.material.card.a f14353j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f14354k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f14355l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f14356m;

    /* renamed from: n  reason: collision with root package name */
    private a f14357n;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface CheckedIconGravity {
    }

    /* loaded from: classes2.dex */
    public interface a {
        void a(MaterialCardView materialCardView, boolean z3);
    }

    public MaterialCardView(Context context) {
        this(context, null);
    }

    @NonNull
    private RectF getBoundsAsRectF() {
        RectF rectF = new RectF();
        rectF.set(this.f14353j.j().getBounds());
        return rectF;
    }

    private void i() {
        if (Build.VERSION.SDK_INT > 26) {
            this.f14353j.i();
        }
    }

    @Override // androidx.cardview.widget.CardView
    @NonNull
    public ColorStateList getCardBackgroundColor() {
        return this.f14353j.k();
    }

    @NonNull
    public ColorStateList getCardForegroundColor() {
        return this.f14353j.l();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float getCardViewRadius() {
        return super.getRadius();
    }

    @Nullable
    public Drawable getCheckedIcon() {
        return this.f14353j.m();
    }

    public int getCheckedIconGravity() {
        return this.f14353j.n();
    }

    @Dimension
    public int getCheckedIconMargin() {
        return this.f14353j.o();
    }

    @Dimension
    public int getCheckedIconSize() {
        return this.f14353j.p();
    }

    @Nullable
    public ColorStateList getCheckedIconTint() {
        return this.f14353j.q();
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingBottom() {
        return this.f14353j.A().bottom;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingLeft() {
        return this.f14353j.A().left;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingRight() {
        return this.f14353j.A().right;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingTop() {
        return this.f14353j.A().top;
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    public float getProgress() {
        return this.f14353j.u();
    }

    @Override // androidx.cardview.widget.CardView
    public float getRadius() {
        return this.f14353j.s();
    }

    public ColorStateList getRippleColor() {
        return this.f14353j.v();
    }

    @Override // com.google.android.material.shape.q
    @NonNull
    public m getShapeAppearanceModel() {
        return this.f14353j.w();
    }

    @ColorInt
    @Deprecated
    public int getStrokeColor() {
        return this.f14353j.x();
    }

    @Nullable
    public ColorStateList getStrokeColorStateList() {
        return this.f14353j.y();
    }

    @Dimension
    public int getStrokeWidth() {
        return this.f14353j.z();
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f14355l;
    }

    public boolean j() {
        com.google.android.material.card.a aVar = this.f14353j;
        return aVar != null && aVar.D();
    }

    public boolean k() {
        return this.f14356m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l(int i2, int i4, int i5, int i6) {
        super.setContentPadding(i2, i4, i5, i6);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        i.f(this, this.f14353j.j());
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i2) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i2 + 3);
        if (j()) {
            FrameLayout.mergeDrawableStates(onCreateDrawableState, f14343o);
        }
        if (isChecked()) {
            FrameLayout.mergeDrawableStates(onCreateDrawableState, f14344p);
        }
        if (k()) {
            FrameLayout.mergeDrawableStates(onCreateDrawableState, f14345q);
        }
        return onCreateDrawableState;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(@NonNull AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(f14348t);
        accessibilityEvent.setChecked(isChecked());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(f14348t);
        accessibilityNodeInfo.setCheckable(j());
        accessibilityNodeInfo.setClickable(isClickable());
        accessibilityNodeInfo.setChecked(isChecked());
    }

    @Override // androidx.cardview.widget.CardView, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i2, int i4) {
        super.onMeasure(i2, i4);
        this.f14353j.H(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (this.f14354k) {
            if (!this.f14353j.C()) {
                this.f14353j.I(true);
            }
            super.setBackgroundDrawable(drawable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBackgroundInternal(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardBackgroundColor(@ColorInt int i2) {
        this.f14353j.J(ColorStateList.valueOf(i2));
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardElevation(float f4) {
        super.setCardElevation(f4);
        this.f14353j.d0();
    }

    public void setCardForegroundColor(@Nullable ColorStateList colorStateList) {
        this.f14353j.K(colorStateList);
    }

    public void setCheckable(boolean z3) {
        this.f14353j.L(z3);
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z3) {
        if (this.f14355l != z3) {
            toggle();
        }
    }

    public void setCheckedIcon(@Nullable Drawable drawable) {
        this.f14353j.N(drawable);
    }

    public void setCheckedIconGravity(int i2) {
        if (this.f14353j.n() != i2) {
            this.f14353j.O(i2);
        }
    }

    public void setCheckedIconMargin(@Dimension int i2) {
        this.f14353j.P(i2);
    }

    public void setCheckedIconMarginResource(@DimenRes int i2) {
        if (i2 != -1) {
            this.f14353j.P(getResources().getDimensionPixelSize(i2));
        }
    }

    public void setCheckedIconResource(@DrawableRes int i2) {
        this.f14353j.N(AppCompatResources.getDrawable(getContext(), i2));
    }

    public void setCheckedIconSize(@Dimension int i2) {
        this.f14353j.Q(i2);
    }

    public void setCheckedIconSizeResource(@DimenRes int i2) {
        if (i2 != 0) {
            this.f14353j.Q(getResources().getDimensionPixelSize(i2));
        }
    }

    public void setCheckedIconTint(@Nullable ColorStateList colorStateList) {
        this.f14353j.R(colorStateList);
    }

    @Override // android.view.View
    public void setClickable(boolean z3) {
        super.setClickable(z3);
        com.google.android.material.card.a aVar = this.f14353j;
        if (aVar != null) {
            aVar.b0();
        }
    }

    @Override // androidx.cardview.widget.CardView
    public void setContentPadding(int i2, int i4, int i5, int i6) {
        this.f14353j.Y(i2, i4, i5, i6);
    }

    public void setDragged(boolean z3) {
        if (this.f14356m != z3) {
            this.f14356m = z3;
            refreshDrawableState();
            i();
            invalidate();
        }
    }

    @Override // androidx.cardview.widget.CardView
    public void setMaxCardElevation(float f4) {
        super.setMaxCardElevation(f4);
        this.f14353j.f0();
    }

    public void setOnCheckedChangeListener(@Nullable a aVar) {
        this.f14357n = aVar;
    }

    @Override // androidx.cardview.widget.CardView
    public void setPreventCornerOverlap(boolean z3) {
        super.setPreventCornerOverlap(z3);
        this.f14353j.f0();
        this.f14353j.c0();
    }

    public void setProgress(@FloatRange(from = 0.0d, to = 1.0d) float f4) {
        this.f14353j.T(f4);
    }

    @Override // androidx.cardview.widget.CardView
    public void setRadius(float f4) {
        super.setRadius(f4);
        this.f14353j.S(f4);
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        this.f14353j.U(colorStateList);
    }

    public void setRippleColorResource(@ColorRes int i2) {
        this.f14353j.U(AppCompatResources.getColorStateList(getContext(), i2));
    }

    @Override // com.google.android.material.shape.q
    public void setShapeAppearanceModel(@NonNull m mVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            setClipToOutline(mVar.u(getBoundsAsRectF()));
        }
        this.f14353j.V(mVar);
    }

    public void setStrokeColor(@ColorInt int i2) {
        setStrokeColor(ColorStateList.valueOf(i2));
    }

    public void setStrokeWidth(@Dimension int i2) {
        this.f14353j.X(i2);
        invalidate();
    }

    @Override // androidx.cardview.widget.CardView
    public void setUseCompatPadding(boolean z3) {
        super.setUseCompatPadding(z3);
        this.f14353j.f0();
        this.f14353j.c0();
    }

    @Override // android.widget.Checkable
    public void toggle() {
        if (j() && isEnabled()) {
            this.f14355l = !this.f14355l;
            refreshDrawableState();
            i();
            this.f14353j.M(this.f14355l);
            a aVar = this.f14357n;
            if (aVar != null) {
                aVar.a(this, this.f14355l);
            }
        }
    }

    public MaterialCardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialCardViewStyle);
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardBackgroundColor(@Nullable ColorStateList colorStateList) {
        this.f14353j.J(colorStateList);
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        this.f14353j.W(colorStateList);
        invalidate();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MaterialCardView(android.content.Context r8, android.util.AttributeSet r9, int r10) {
        /*
            r7 = this;
            int r6 = com.google.android.material.card.MaterialCardView.f14346r
            android.content.Context r8 = com.google.android.material.theme.overlay.a.c(r8, r9, r10, r6)
            r7.<init>(r8, r9, r10)
            r8 = 0
            r7.f14355l = r8
            r7.f14356m = r8
            r0 = 1
            r7.f14354k = r0
            android.content.Context r0 = r7.getContext()
            int[] r2 = com.google.android.material.R.styleable.MaterialCardView
            int[] r5 = new int[r8]
            r1 = r9
            r3 = r10
            r4 = r6
            android.content.res.TypedArray r8 = com.google.android.material.internal.o.j(r0, r1, r2, r3, r4, r5)
            com.google.android.material.card.a r0 = new com.google.android.material.card.a
            r0.<init>(r7, r9, r10, r6)
            r7.f14353j = r0
            android.content.res.ColorStateList r9 = super.getCardBackgroundColor()
            r0.J(r9)
            int r9 = super.getContentPaddingLeft()
            int r10 = super.getContentPaddingTop()
            int r1 = super.getContentPaddingRight()
            int r2 = super.getContentPaddingBottom()
            r0.Y(r9, r10, r1, r2)
            r0.G(r8)
            r8.recycle()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.card.MaterialCardView.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }
}
