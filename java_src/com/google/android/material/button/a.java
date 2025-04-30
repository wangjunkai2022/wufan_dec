package com.google.android.material.button;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import androidx.annotation.ChecksSdkIntAtLeast;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.internal.w;
import com.google.android.material.resources.c;
import com.google.android.material.ripple.b;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.m;
import com.google.android.material.shape.q;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MaterialButtonHelper.java */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class a {
    @ChecksSdkIntAtLeast(api = 21)

    /* renamed from: t  reason: collision with root package name */
    private static final boolean f14322t;

    /* renamed from: u  reason: collision with root package name */
    private static final boolean f14323u;

    /* renamed from: a  reason: collision with root package name */
    private final MaterialButton f14324a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private m f14325b;

    /* renamed from: c  reason: collision with root package name */
    private int f14326c;

    /* renamed from: d  reason: collision with root package name */
    private int f14327d;

    /* renamed from: e  reason: collision with root package name */
    private int f14328e;

    /* renamed from: f  reason: collision with root package name */
    private int f14329f;

    /* renamed from: g  reason: collision with root package name */
    private int f14330g;

    /* renamed from: h  reason: collision with root package name */
    private int f14331h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private PorterDuff.Mode f14332i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private ColorStateList f14333j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private ColorStateList f14334k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private ColorStateList f14335l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private Drawable f14336m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f14337n = false;

    /* renamed from: o  reason: collision with root package name */
    private boolean f14338o = false;

    /* renamed from: p  reason: collision with root package name */
    private boolean f14339p = false;

    /* renamed from: q  reason: collision with root package name */
    private boolean f14340q;

    /* renamed from: r  reason: collision with root package name */
    private LayerDrawable f14341r;

    /* renamed from: s  reason: collision with root package name */
    private int f14342s;

    static {
        int i2 = Build.VERSION.SDK_INT;
        boolean z3 = true;
        f14322t = i2 >= 21;
        f14323u = (i2 < 21 || i2 > 22) ? false : false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(MaterialButton materialButton, @NonNull m mVar) {
        this.f14324a = materialButton;
        this.f14325b = mVar;
    }

    private void E(@Dimension int i2, @Dimension int i4) {
        int paddingStart = ViewCompat.getPaddingStart(this.f14324a);
        int paddingTop = this.f14324a.getPaddingTop();
        int paddingEnd = ViewCompat.getPaddingEnd(this.f14324a);
        int paddingBottom = this.f14324a.getPaddingBottom();
        int i5 = this.f14328e;
        int i6 = this.f14329f;
        this.f14329f = i4;
        this.f14328e = i2;
        if (!this.f14338o) {
            F();
        }
        ViewCompat.setPaddingRelative(this.f14324a, paddingStart, (paddingTop + i2) - i5, paddingEnd, (paddingBottom + i4) - i6);
    }

    private void F() {
        this.f14324a.setInternalBackground(a());
        MaterialShapeDrawable f4 = f();
        if (f4 != null) {
            f4.n0(this.f14342s);
        }
    }

    private void G(@NonNull m mVar) {
        if (f14323u && !this.f14338o) {
            int paddingStart = ViewCompat.getPaddingStart(this.f14324a);
            int paddingTop = this.f14324a.getPaddingTop();
            int paddingEnd = ViewCompat.getPaddingEnd(this.f14324a);
            int paddingBottom = this.f14324a.getPaddingBottom();
            F();
            ViewCompat.setPaddingRelative(this.f14324a, paddingStart, paddingTop, paddingEnd, paddingBottom);
            return;
        }
        if (f() != null) {
            f().setShapeAppearanceModel(mVar);
        }
        if (n() != null) {
            n().setShapeAppearanceModel(mVar);
        }
        if (e() != null) {
            e().setShapeAppearanceModel(mVar);
        }
    }

    private void I() {
        MaterialShapeDrawable f4 = f();
        MaterialShapeDrawable n4 = n();
        if (f4 != null) {
            f4.E0(this.f14331h, this.f14334k);
            if (n4 != null) {
                n4.D0(this.f14331h, this.f14337n ? com.google.android.material.color.m.d(this.f14324a, R.attr.colorSurface) : 0);
            }
        }
    }

    @NonNull
    private InsetDrawable J(Drawable drawable) {
        return new InsetDrawable(drawable, this.f14326c, this.f14328e, this.f14327d, this.f14329f);
    }

    private Drawable a() {
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(this.f14325b);
        materialShapeDrawable.Z(this.f14324a.getContext());
        DrawableCompat.setTintList(materialShapeDrawable, this.f14333j);
        PorterDuff.Mode mode = this.f14332i;
        if (mode != null) {
            DrawableCompat.setTintMode(materialShapeDrawable, mode);
        }
        materialShapeDrawable.E0(this.f14331h, this.f14334k);
        MaterialShapeDrawable materialShapeDrawable2 = new MaterialShapeDrawable(this.f14325b);
        materialShapeDrawable2.setTint(0);
        materialShapeDrawable2.D0(this.f14331h, this.f14337n ? com.google.android.material.color.m.d(this.f14324a, R.attr.colorSurface) : 0);
        if (f14322t) {
            MaterialShapeDrawable materialShapeDrawable3 = new MaterialShapeDrawable(this.f14325b);
            this.f14336m = materialShapeDrawable3;
            DrawableCompat.setTint(materialShapeDrawable3, -1);
            RippleDrawable rippleDrawable = new RippleDrawable(b.d(this.f14335l), J(new LayerDrawable(new Drawable[]{materialShapeDrawable2, materialShapeDrawable})), this.f14336m);
            this.f14341r = rippleDrawable;
            return rippleDrawable;
        }
        com.google.android.material.ripple.a aVar = new com.google.android.material.ripple.a(this.f14325b);
        this.f14336m = aVar;
        DrawableCompat.setTintList(aVar, b.d(this.f14335l));
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{materialShapeDrawable2, materialShapeDrawable, this.f14336m});
        this.f14341r = layerDrawable;
        return J(layerDrawable);
    }

    @Nullable
    private MaterialShapeDrawable g(boolean z3) {
        LayerDrawable layerDrawable = this.f14341r;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 0) {
            return null;
        }
        if (f14322t) {
            return (MaterialShapeDrawable) ((LayerDrawable) ((InsetDrawable) this.f14341r.getDrawable(0)).getDrawable()).getDrawable(!z3 ? 1 : 0);
        }
        return (MaterialShapeDrawable) this.f14341r.getDrawable(!z3 ? 1 : 0);
    }

    @Nullable
    private MaterialShapeDrawable n() {
        return g(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void A(@Nullable ColorStateList colorStateList) {
        if (this.f14334k != colorStateList) {
            this.f14334k = colorStateList;
            I();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void B(int i2) {
        if (this.f14331h != i2) {
            this.f14331h = i2;
            I();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void C(@Nullable ColorStateList colorStateList) {
        if (this.f14333j != colorStateList) {
            this.f14333j = colorStateList;
            if (f() != null) {
                DrawableCompat.setTintList(f(), this.f14333j);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void D(@Nullable PorterDuff.Mode mode) {
        if (this.f14332i != mode) {
            this.f14332i = mode;
            if (f() == null || this.f14332i == null) {
                return;
            }
            DrawableCompat.setTintMode(f(), this.f14332i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void H(int i2, int i4) {
        Drawable drawable = this.f14336m;
        if (drawable != null) {
            drawable.setBounds(this.f14326c, this.f14328e, i4 - this.f14327d, i2 - this.f14329f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b() {
        return this.f14330g;
    }

    public int c() {
        return this.f14329f;
    }

    public int d() {
        return this.f14328e;
    }

    @Nullable
    public q e() {
        LayerDrawable layerDrawable = this.f14341r;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 1) {
            return null;
        }
        if (this.f14341r.getNumberOfLayers() > 2) {
            return (q) this.f14341r.getDrawable(2);
        }
        return (q) this.f14341r.getDrawable(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public MaterialShapeDrawable f() {
        return g(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public ColorStateList h() {
        return this.f14335l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public m i() {
        return this.f14325b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public ColorStateList j() {
        return this.f14334k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int k() {
        return this.f14331h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ColorStateList l() {
        return this.f14333j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PorterDuff.Mode m() {
        return this.f14332i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean o() {
        return this.f14338o;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean p() {
        return this.f14340q;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void q(@NonNull TypedArray typedArray) {
        this.f14326c = typedArray.getDimensionPixelOffset(R.styleable.MaterialButton_android_insetLeft, 0);
        this.f14327d = typedArray.getDimensionPixelOffset(R.styleable.MaterialButton_android_insetRight, 0);
        this.f14328e = typedArray.getDimensionPixelOffset(R.styleable.MaterialButton_android_insetTop, 0);
        this.f14329f = typedArray.getDimensionPixelOffset(R.styleable.MaterialButton_android_insetBottom, 0);
        int i2 = R.styleable.MaterialButton_cornerRadius;
        if (typedArray.hasValue(i2)) {
            int dimensionPixelSize = typedArray.getDimensionPixelSize(i2, -1);
            this.f14330g = dimensionPixelSize;
            y(this.f14325b.w(dimensionPixelSize));
            this.f14339p = true;
        }
        this.f14331h = typedArray.getDimensionPixelSize(R.styleable.MaterialButton_strokeWidth, 0);
        this.f14332i = w.l(typedArray.getInt(R.styleable.MaterialButton_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN);
        this.f14333j = c.a(this.f14324a.getContext(), typedArray, R.styleable.MaterialButton_backgroundTint);
        this.f14334k = c.a(this.f14324a.getContext(), typedArray, R.styleable.MaterialButton_strokeColor);
        this.f14335l = c.a(this.f14324a.getContext(), typedArray, R.styleable.MaterialButton_rippleColor);
        this.f14340q = typedArray.getBoolean(R.styleable.MaterialButton_android_checkable, false);
        this.f14342s = typedArray.getDimensionPixelSize(R.styleable.MaterialButton_elevation, 0);
        int paddingStart = ViewCompat.getPaddingStart(this.f14324a);
        int paddingTop = this.f14324a.getPaddingTop();
        int paddingEnd = ViewCompat.getPaddingEnd(this.f14324a);
        int paddingBottom = this.f14324a.getPaddingBottom();
        if (typedArray.hasValue(R.styleable.MaterialButton_android_background)) {
            s();
        } else {
            F();
        }
        ViewCompat.setPaddingRelative(this.f14324a, paddingStart + this.f14326c, paddingTop + this.f14328e, paddingEnd + this.f14327d, paddingBottom + this.f14329f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void r(int i2) {
        if (f() != null) {
            f().setTint(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void s() {
        this.f14338o = true;
        this.f14324a.setSupportBackgroundTintList(this.f14333j);
        this.f14324a.setSupportBackgroundTintMode(this.f14332i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void t(boolean z3) {
        this.f14340q = z3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void u(int i2) {
        if (this.f14339p && this.f14330g == i2) {
            return;
        }
        this.f14330g = i2;
        this.f14339p = true;
        y(this.f14325b.w(i2));
    }

    public void v(@Dimension int i2) {
        E(this.f14328e, i2);
    }

    public void w(@Dimension int i2) {
        E(i2, this.f14329f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void x(@Nullable ColorStateList colorStateList) {
        if (this.f14335l != colorStateList) {
            this.f14335l = colorStateList;
            boolean z3 = f14322t;
            if (z3 && (this.f14324a.getBackground() instanceof RippleDrawable)) {
                ((RippleDrawable) this.f14324a.getBackground()).setColor(b.d(colorStateList));
            } else if (z3 || !(this.f14324a.getBackground() instanceof com.google.android.material.ripple.a)) {
            } else {
                ((com.google.android.material.ripple.a) this.f14324a.getBackground()).setTintList(b.d(colorStateList));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void y(@NonNull m mVar) {
        this.f14325b = mVar;
        G(mVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void z(boolean z3) {
        this.f14337n = z3;
        I();
    }
}
