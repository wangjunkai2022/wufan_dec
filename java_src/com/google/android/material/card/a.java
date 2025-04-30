package com.google.android.material.card;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.util.AttributeSet;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.resources.c;
import com.google.android.material.ripple.b;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.d;
import com.google.android.material.shape.e;
import com.google.android.material.shape.l;
import com.google.android.material.shape.m;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MaterialCardViewHelper.java */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class a {

    /* renamed from: u  reason: collision with root package name */
    private static final int f14358u = -1;

    /* renamed from: v  reason: collision with root package name */
    private static final double f14359v = Math.cos(Math.toRadians(45.0d));

    /* renamed from: w  reason: collision with root package name */
    private static final float f14360w = 1.5f;

    /* renamed from: x  reason: collision with root package name */
    private static final int f14361x = 2;

    /* renamed from: y  reason: collision with root package name */
    private static final Drawable f14362y;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final MaterialCardView f14363a;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final MaterialShapeDrawable f14365c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final MaterialShapeDrawable f14366d;
    @Dimension

    /* renamed from: e  reason: collision with root package name */
    private int f14367e;
    @Dimension

    /* renamed from: f  reason: collision with root package name */
    private int f14368f;

    /* renamed from: g  reason: collision with root package name */
    private int f14369g;
    @Dimension

    /* renamed from: h  reason: collision with root package name */
    private int f14370h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private Drawable f14371i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private Drawable f14372j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private ColorStateList f14373k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private ColorStateList f14374l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private m f14375m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private ColorStateList f14376n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private Drawable f14377o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private LayerDrawable f14378p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private MaterialShapeDrawable f14379q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private MaterialShapeDrawable f14380r;

    /* renamed from: t  reason: collision with root package name */
    private boolean f14382t;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final Rect f14364b = new Rect();

    /* renamed from: s  reason: collision with root package name */
    private boolean f14381s = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MaterialCardViewHelper.java */
    /* renamed from: com.google.android.material.card.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class C0102a extends InsetDrawable {
        C0102a(Drawable drawable, int i2, int i4, int i5, int i6) {
            super(drawable, i2, i4, i5, i6);
        }

        @Override // android.graphics.drawable.Drawable
        public int getMinimumHeight() {
            return -1;
        }

        @Override // android.graphics.drawable.Drawable
        public int getMinimumWidth() {
            return -1;
        }

        @Override // android.graphics.drawable.InsetDrawable, android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
        public boolean getPadding(Rect rect) {
            return false;
        }
    }

    static {
        f14362y = Build.VERSION.SDK_INT <= 28 ? new ColorDrawable() : null;
    }

    public a(@NonNull MaterialCardView materialCardView, AttributeSet attributeSet, int i2, @StyleRes int i4) {
        this.f14363a = materialCardView;
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(materialCardView.getContext(), attributeSet, i2, i4);
        this.f14365c = materialShapeDrawable;
        materialShapeDrawable.Z(materialCardView.getContext());
        materialShapeDrawable.v0(-12303292);
        m.b v3 = materialShapeDrawable.getShapeAppearanceModel().v();
        TypedArray obtainStyledAttributes = materialCardView.getContext().obtainStyledAttributes(attributeSet, R.styleable.CardView, i2, R.style.CardView);
        int i5 = R.styleable.CardView_cardCornerRadius;
        if (obtainStyledAttributes.hasValue(i5)) {
            v3.o(obtainStyledAttributes.getDimension(i5, 0.0f));
        }
        this.f14366d = new MaterialShapeDrawable();
        V(v3.m());
        obtainStyledAttributes.recycle();
    }

    @NonNull
    private Drawable B(Drawable drawable) {
        int ceil;
        int i2;
        if ((Build.VERSION.SDK_INT < 21) || this.f14363a.getUseCompatPadding()) {
            int ceil2 = (int) Math.ceil(d());
            ceil = (int) Math.ceil(c());
            i2 = ceil2;
        } else {
            ceil = 0;
            i2 = 0;
        }
        return new C0102a(drawable, ceil, i2, ceil, i2);
    }

    private boolean E() {
        return (this.f14369g & 80) == 80;
    }

    private boolean F() {
        return (this.f14369g & GravityCompat.END) == 8388613;
    }

    private boolean Z() {
        return this.f14363a.getPreventCornerOverlap() && !e();
    }

    private float a() {
        return Math.max(Math.max(b(this.f14375m.q(), this.f14365c.S()), b(this.f14375m.s(), this.f14365c.T())), Math.max(b(this.f14375m.k(), this.f14365c.u()), b(this.f14375m.i(), this.f14365c.t())));
    }

    private boolean a0() {
        return this.f14363a.getPreventCornerOverlap() && e() && this.f14363a.getUseCompatPadding();
    }

    private float b(d dVar, float f4) {
        if (dVar instanceof l) {
            double d4 = f4;
            Double.isNaN(d4);
            return (float) ((1.0d - f14359v) * d4);
        } else if (dVar instanceof e) {
            return f4 / 2.0f;
        } else {
            return 0.0f;
        }
    }

    private float c() {
        return this.f14363a.getMaxCardElevation() + (a0() ? a() : 0.0f);
    }

    private float d() {
        return (this.f14363a.getMaxCardElevation() * f14360w) + (a0() ? a() : 0.0f);
    }

    private boolean e() {
        return Build.VERSION.SDK_INT >= 21 && this.f14365c.e0();
    }

    private void e0(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 23 && (this.f14363a.getForeground() instanceof InsetDrawable)) {
            ((InsetDrawable) this.f14363a.getForeground()).setDrawable(drawable);
        } else {
            this.f14363a.setForeground(B(drawable));
        }
    }

    @NonNull
    private Drawable f() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        MaterialShapeDrawable h4 = h();
        this.f14379q = h4;
        h4.o0(this.f14373k);
        stateListDrawable.addState(new int[]{16842919}, this.f14379q);
        return stateListDrawable;
    }

    @NonNull
    private Drawable g() {
        if (b.f15517a) {
            this.f14380r = h();
            return new RippleDrawable(this.f14373k, null, this.f14380r);
        }
        return f();
    }

    private void g0() {
        Drawable drawable;
        if (b.f15517a && (drawable = this.f14377o) != null) {
            ((RippleDrawable) drawable).setColor(this.f14373k);
            return;
        }
        MaterialShapeDrawable materialShapeDrawable = this.f14379q;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.o0(this.f14373k);
        }
    }

    @NonNull
    private MaterialShapeDrawable h() {
        return new MaterialShapeDrawable(this.f14375m);
    }

    @NonNull
    private Drawable r() {
        if (this.f14377o == null) {
            this.f14377o = g();
        }
        if (this.f14378p == null) {
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{this.f14377o, this.f14366d, this.f14372j});
            this.f14378p = layerDrawable;
            layerDrawable.setId(2, R.id.mtrl_card_checked_layer_id);
        }
        return this.f14378p;
    }

    private float t() {
        if (this.f14363a.getPreventCornerOverlap()) {
            if (Build.VERSION.SDK_INT < 21 || this.f14363a.getUseCompatPadding()) {
                double d4 = 1.0d - f14359v;
                double cardViewRadius = this.f14363a.getCardViewRadius();
                Double.isNaN(cardViewRadius);
                return (float) (d4 * cardViewRadius);
            }
            return 0.0f;
        }
        return 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public Rect A() {
        return this.f14364b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean C() {
        return this.f14381s;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean D() {
        return this.f14382t;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void G(@NonNull TypedArray typedArray) {
        ColorStateList a4 = c.a(this.f14363a.getContext(), typedArray, R.styleable.MaterialCardView_strokeColor);
        this.f14376n = a4;
        if (a4 == null) {
            this.f14376n = ColorStateList.valueOf(-1);
        }
        this.f14370h = typedArray.getDimensionPixelSize(R.styleable.MaterialCardView_strokeWidth, 0);
        boolean z3 = typedArray.getBoolean(R.styleable.MaterialCardView_android_checkable, false);
        this.f14382t = z3;
        this.f14363a.setLongClickable(z3);
        this.f14374l = c.a(this.f14363a.getContext(), typedArray, R.styleable.MaterialCardView_checkedIconTint);
        N(c.e(this.f14363a.getContext(), typedArray, R.styleable.MaterialCardView_checkedIcon));
        Q(typedArray.getDimensionPixelSize(R.styleable.MaterialCardView_checkedIconSize, 0));
        P(typedArray.getDimensionPixelSize(R.styleable.MaterialCardView_checkedIconMargin, 0));
        this.f14369g = typedArray.getInteger(R.styleable.MaterialCardView_checkedIconGravity, 8388661);
        ColorStateList a5 = c.a(this.f14363a.getContext(), typedArray, R.styleable.MaterialCardView_rippleColor);
        this.f14373k = a5;
        if (a5 == null) {
            this.f14373k = ColorStateList.valueOf(com.google.android.material.color.m.d(this.f14363a, R.attr.colorControlHighlight));
        }
        K(c.a(this.f14363a.getContext(), typedArray, R.styleable.MaterialCardView_cardForegroundColor));
        g0();
        d0();
        h0();
        this.f14363a.setBackgroundInternal(B(this.f14365c));
        Drawable r3 = this.f14363a.isClickable() ? r() : this.f14366d;
        this.f14371i = r3;
        this.f14363a.setForeground(B(r3));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void H(int i2, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        if (this.f14378p != null) {
            int i12 = 0;
            if ((Build.VERSION.SDK_INT < 21) || this.f14363a.getUseCompatPadding()) {
                int ceil = (int) Math.ceil(d() * 2.0f);
                i12 = (int) Math.ceil(c() * 2.0f);
                i5 = ceil;
            } else {
                i5 = 0;
            }
            if (F()) {
                i6 = ((i2 - this.f14367e) - this.f14368f) - i12;
            } else {
                i6 = this.f14367e;
            }
            if (E()) {
                i7 = this.f14367e;
            } else {
                i7 = ((i4 - this.f14367e) - this.f14368f) - i5;
            }
            int i13 = i7;
            if (F()) {
                i8 = this.f14367e;
            } else {
                i8 = ((i2 - this.f14367e) - this.f14368f) - i12;
            }
            if (E()) {
                i9 = ((i4 - this.f14367e) - this.f14368f) - i5;
            } else {
                i9 = this.f14367e;
            }
            int i14 = i9;
            if (ViewCompat.getLayoutDirection(this.f14363a) == 1) {
                i11 = i8;
                i10 = i6;
            } else {
                i10 = i8;
                i11 = i6;
            }
            this.f14378p.setLayerInset(2, i11, i14, i10, i13);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void I(boolean z3) {
        this.f14381s = z3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void J(ColorStateList colorStateList) {
        this.f14365c.o0(colorStateList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void K(@Nullable ColorStateList colorStateList) {
        MaterialShapeDrawable materialShapeDrawable = this.f14366d;
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        materialShapeDrawable.o0(colorStateList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void L(boolean z3) {
        this.f14382t = z3;
    }

    public void M(boolean z3) {
        Drawable drawable = this.f14372j;
        if (drawable != null) {
            drawable.setAlpha(z3 ? 255 : 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void N(@Nullable Drawable drawable) {
        if (drawable != null) {
            Drawable mutate = DrawableCompat.wrap(drawable).mutate();
            this.f14372j = mutate;
            DrawableCompat.setTintList(mutate, this.f14374l);
            M(this.f14363a.isChecked());
        } else {
            this.f14372j = f14362y;
        }
        LayerDrawable layerDrawable = this.f14378p;
        if (layerDrawable != null) {
            layerDrawable.setDrawableByLayerId(R.id.mtrl_card_checked_layer_id, this.f14372j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void O(int i2) {
        this.f14369g = i2;
        H(this.f14363a.getMeasuredWidth(), this.f14363a.getMeasuredHeight());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void P(@Dimension int i2) {
        this.f14367e = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Q(@Dimension int i2) {
        this.f14368f = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void R(@Nullable ColorStateList colorStateList) {
        this.f14374l = colorStateList;
        Drawable drawable = this.f14372j;
        if (drawable != null) {
            DrawableCompat.setTintList(drawable, colorStateList);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void S(float f4) {
        V(this.f14375m.w(f4));
        this.f14371i.invalidateSelf();
        if (a0() || Z()) {
            c0();
        }
        if (a0()) {
            f0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void T(@FloatRange(from = 0.0d, to = 1.0d) float f4) {
        this.f14365c.p0(f4);
        MaterialShapeDrawable materialShapeDrawable = this.f14366d;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.p0(f4);
        }
        MaterialShapeDrawable materialShapeDrawable2 = this.f14380r;
        if (materialShapeDrawable2 != null) {
            materialShapeDrawable2.p0(f4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void U(@Nullable ColorStateList colorStateList) {
        this.f14373k = colorStateList;
        g0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void V(@NonNull m mVar) {
        this.f14375m = mVar;
        this.f14365c.setShapeAppearanceModel(mVar);
        MaterialShapeDrawable materialShapeDrawable = this.f14365c;
        materialShapeDrawable.u0(!materialShapeDrawable.e0());
        MaterialShapeDrawable materialShapeDrawable2 = this.f14366d;
        if (materialShapeDrawable2 != null) {
            materialShapeDrawable2.setShapeAppearanceModel(mVar);
        }
        MaterialShapeDrawable materialShapeDrawable3 = this.f14380r;
        if (materialShapeDrawable3 != null) {
            materialShapeDrawable3.setShapeAppearanceModel(mVar);
        }
        MaterialShapeDrawable materialShapeDrawable4 = this.f14379q;
        if (materialShapeDrawable4 != null) {
            materialShapeDrawable4.setShapeAppearanceModel(mVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void W(ColorStateList colorStateList) {
        if (this.f14376n == colorStateList) {
            return;
        }
        this.f14376n = colorStateList;
        h0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void X(@Dimension int i2) {
        if (i2 == this.f14370h) {
            return;
        }
        this.f14370h = i2;
        h0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Y(int i2, int i4, int i5, int i6) {
        this.f14364b.set(i2, i4, i5, i6);
        c0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b0() {
        Drawable drawable = this.f14371i;
        Drawable r3 = this.f14363a.isClickable() ? r() : this.f14366d;
        this.f14371i = r3;
        if (drawable != r3) {
            e0(r3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c0() {
        int a4 = (int) ((Z() || a0() ? a() : 0.0f) - t());
        MaterialCardView materialCardView = this.f14363a;
        Rect rect = this.f14364b;
        materialCardView.l(rect.left + a4, rect.top + a4, rect.right + a4, rect.bottom + a4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d0() {
        this.f14365c.n0(this.f14363a.getCardElevation());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f0() {
        if (!C()) {
            this.f14363a.setBackgroundInternal(B(this.f14365c));
        }
        this.f14363a.setForeground(B(this.f14371i));
    }

    void h0() {
        this.f14366d.E0(this.f14370h, this.f14376n);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(api = 23)
    public void i() {
        Drawable drawable = this.f14377o;
        if (drawable != null) {
            Rect bounds = drawable.getBounds();
            int i2 = bounds.bottom;
            this.f14377o.setBounds(bounds.left, bounds.top, bounds.right, i2 - 1);
            this.f14377o.setBounds(bounds.left, bounds.top, bounds.right, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public MaterialShapeDrawable j() {
        return this.f14365c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ColorStateList k() {
        return this.f14365c.y();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ColorStateList l() {
        return this.f14366d.y();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public Drawable m() {
        return this.f14372j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int n() {
        return this.f14369g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Dimension
    public int o() {
        return this.f14367e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Dimension
    public int p() {
        return this.f14368f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public ColorStateList q() {
        return this.f14374l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float s() {
        return this.f14365c.S();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @FloatRange(from = f14359v, to = 1.0d)
    public float u() {
        return this.f14365c.z();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public ColorStateList v() {
        return this.f14373k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m w() {
        return this.f14375m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ColorInt
    public int x() {
        ColorStateList colorStateList = this.f14376n;
        if (colorStateList == null) {
            return -1;
        }
        return colorStateList.getDefaultColor();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public ColorStateList y() {
        return this.f14376n;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Dimension
    public int z() {
        return this.f14370h;
    }
}
