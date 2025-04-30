package com.google.android.material.button;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Layout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.CompoundButton;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatButton;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R;
import com.google.android.material.shape.i;
import com.google.android.material.shape.m;
import com.google.android.material.shape.q;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.LinkedHashSet;
/* loaded from: classes2.dex */
public class MaterialButton extends AppCompatButton implements Checkable, q {

    /* renamed from: s  reason: collision with root package name */
    public static final int f14280s = 1;

    /* renamed from: t  reason: collision with root package name */
    public static final int f14281t = 2;

    /* renamed from: u  reason: collision with root package name */
    public static final int f14282u = 3;

    /* renamed from: v  reason: collision with root package name */
    public static final int f14283v = 4;

    /* renamed from: w  reason: collision with root package name */
    public static final int f14284w = 16;

    /* renamed from: x  reason: collision with root package name */
    public static final int f14285x = 32;

    /* renamed from: y  reason: collision with root package name */
    private static final String f14286y = "MaterialButton";
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.material.button.a f14288d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final LinkedHashSet<a> f14289e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private b f14290f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private PorterDuff.Mode f14291g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private ColorStateList f14292h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private Drawable f14293i;
    @Px

    /* renamed from: j  reason: collision with root package name */
    private int f14294j;
    @Px

    /* renamed from: k  reason: collision with root package name */
    private int f14295k;
    @Px

    /* renamed from: l  reason: collision with root package name */
    private int f14296l;
    @Px

    /* renamed from: m  reason: collision with root package name */
    private int f14297m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f14298n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f14299o;

    /* renamed from: p  reason: collision with root package name */
    private int f14300p;

    /* renamed from: q  reason: collision with root package name */
    private static final int[] f14278q = {16842911};

    /* renamed from: r  reason: collision with root package name */
    private static final int[] f14279r = {16842912};

    /* renamed from: z  reason: collision with root package name */
    private static final int f14287z = R.style.Widget_MaterialComponents_Button;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface IconGravity {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        boolean f14301a;

        /* loaded from: classes2.dex */
        class a implements Parcelable.ClassLoaderCreator<SavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            @NonNull
            /* renamed from: a */
            public SavedState createFromParcel(@NonNull Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            @NonNull
            /* renamed from: b */
            public SavedState createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            @NonNull
            /* renamed from: c */
            public SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private void a(@NonNull Parcel parcel) {
            this.f14301a = parcel.readInt() == 1;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.f14301a ? 1 : 0);
        }

        public SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            if (classLoader == null) {
                getClass().getClassLoader();
            }
            a(parcel);
        }
    }

    /* loaded from: classes2.dex */
    public interface a {
        void a(MaterialButton materialButton, boolean z3);
    }

    /* loaded from: classes2.dex */
    interface b {
        void a(MaterialButton materialButton, boolean z3);
    }

    public MaterialButton(@NonNull Context context) {
        this(context, null);
    }

    private boolean d() {
        int i2 = this.f14300p;
        return i2 == 3 || i2 == 4;
    }

    private boolean e() {
        int i2 = this.f14300p;
        return i2 == 1 || i2 == 2;
    }

    private boolean f() {
        int i2 = this.f14300p;
        return i2 == 16 || i2 == 32;
    }

    private boolean g() {
        return ViewCompat.getLayoutDirection(this) == 1;
    }

    @NonNull
    private String getA11yClassName() {
        return (c() ? CompoundButton.class : Button.class).getName();
    }

    private Layout.Alignment getActualTextAlignment() {
        if (Build.VERSION.SDK_INT < 17) {
            return getGravityTextAlignment();
        }
        int textAlignment = getTextAlignment();
        if (textAlignment != 1) {
            if (textAlignment == 6 || textAlignment == 3) {
                return Layout.Alignment.ALIGN_OPPOSITE;
            }
            if (textAlignment != 4) {
                return Layout.Alignment.ALIGN_NORMAL;
            }
            return Layout.Alignment.ALIGN_CENTER;
        }
        return getGravityTextAlignment();
    }

    private Layout.Alignment getGravityTextAlignment() {
        int gravity = getGravity() & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (gravity != 1) {
            if (gravity != 5 && gravity != 8388613) {
                return Layout.Alignment.ALIGN_NORMAL;
            }
            return Layout.Alignment.ALIGN_OPPOSITE;
        }
        return Layout.Alignment.ALIGN_CENTER;
    }

    private int getTextHeight() {
        TextPaint paint = getPaint();
        String charSequence = getText().toString();
        if (getTransformationMethod() != null) {
            charSequence = getTransformationMethod().getTransformation(charSequence, this).toString();
        }
        Rect rect = new Rect();
        paint.getTextBounds(charSequence, 0, charSequence.length(), rect);
        return Math.min(rect.height(), getLayout().getHeight());
    }

    private int getTextWidth() {
        TextPaint paint = getPaint();
        String charSequence = getText().toString();
        if (getTransformationMethod() != null) {
            charSequence = getTransformationMethod().getTransformation(charSequence, this).toString();
        }
        return Math.min((int) paint.measureText(charSequence), getLayout().getEllipsizedWidth());
    }

    private boolean h() {
        com.google.android.material.button.a aVar = this.f14288d;
        return (aVar == null || aVar.o()) ? false : true;
    }

    private void j() {
        if (e()) {
            TextViewCompat.setCompoundDrawablesRelative(this, this.f14293i, null, null, null);
        } else if (d()) {
            TextViewCompat.setCompoundDrawablesRelative(this, null, null, this.f14293i, null);
        } else if (f()) {
            TextViewCompat.setCompoundDrawablesRelative(this, null, this.f14293i, null, null);
        }
    }

    private void k(boolean z3) {
        Drawable drawable = this.f14293i;
        boolean z4 = true;
        if (drawable != null) {
            Drawable mutate = DrawableCompat.wrap(drawable).mutate();
            this.f14293i = mutate;
            DrawableCompat.setTintList(mutate, this.f14292h);
            PorterDuff.Mode mode = this.f14291g;
            if (mode != null) {
                DrawableCompat.setTintMode(this.f14293i, mode);
            }
            int i2 = this.f14294j;
            if (i2 == 0) {
                i2 = this.f14293i.getIntrinsicWidth();
            }
            int i4 = this.f14294j;
            if (i4 == 0) {
                i4 = this.f14293i.getIntrinsicHeight();
            }
            Drawable drawable2 = this.f14293i;
            int i5 = this.f14295k;
            int i6 = this.f14296l;
            drawable2.setBounds(i5, i6, i2 + i5, i4 + i6);
            this.f14293i.setVisible(true, z3);
        }
        if (z3) {
            j();
            return;
        }
        Drawable[] compoundDrawablesRelative = TextViewCompat.getCompoundDrawablesRelative(this);
        Drawable drawable3 = compoundDrawablesRelative[0];
        Drawable drawable4 = compoundDrawablesRelative[1];
        Drawable drawable5 = compoundDrawablesRelative[2];
        if ((!e() || drawable3 == this.f14293i) && ((!d() || drawable5 == this.f14293i) && (!f() || drawable4 == this.f14293i))) {
            z4 = false;
        }
        if (z4) {
            j();
        }
    }

    private void l(int i2, int i4) {
        if (this.f14293i == null || getLayout() == null) {
            return;
        }
        if (!e() && !d()) {
            if (f()) {
                this.f14295k = 0;
                if (this.f14300p == 16) {
                    this.f14296l = 0;
                    k(false);
                    return;
                }
                int i5 = this.f14294j;
                if (i5 == 0) {
                    i5 = this.f14293i.getIntrinsicHeight();
                }
                int textHeight = (((((i4 - getTextHeight()) - getPaddingTop()) - i5) - this.f14297m) - getPaddingBottom()) / 2;
                if (this.f14296l != textHeight) {
                    this.f14296l = textHeight;
                    k(false);
                    return;
                }
                return;
            }
            return;
        }
        this.f14296l = 0;
        Layout.Alignment actualTextAlignment = getActualTextAlignment();
        int i6 = this.f14300p;
        if (i6 != 1 && i6 != 3 && ((i6 != 2 || actualTextAlignment != Layout.Alignment.ALIGN_NORMAL) && (i6 != 4 || actualTextAlignment != Layout.Alignment.ALIGN_OPPOSITE))) {
            int i7 = this.f14294j;
            if (i7 == 0) {
                i7 = this.f14293i.getIntrinsicWidth();
            }
            int textWidth = ((((i2 - getTextWidth()) - ViewCompat.getPaddingEnd(this)) - i7) - this.f14297m) - ViewCompat.getPaddingStart(this);
            if (actualTextAlignment == Layout.Alignment.ALIGN_CENTER) {
                textWidth /= 2;
            }
            if (g() != (this.f14300p == 4)) {
                textWidth = -textWidth;
            }
            if (this.f14295k != textWidth) {
                this.f14295k = textWidth;
                k(false);
                return;
            }
            return;
        }
        this.f14295k = 0;
        k(false);
    }

    public void a(@NonNull a aVar) {
        this.f14289e.add(aVar);
    }

    public void b() {
        this.f14289e.clear();
    }

    public boolean c() {
        com.google.android.material.button.a aVar = this.f14288d;
        return aVar != null && aVar.p();
    }

    @Override // android.view.View
    @Nullable
    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    @Override // android.view.View
    @Nullable
    public PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    @Px
    public int getCornerRadius() {
        if (h()) {
            return this.f14288d.b();
        }
        return 0;
    }

    public Drawable getIcon() {
        return this.f14293i;
    }

    public int getIconGravity() {
        return this.f14300p;
    }

    @Px
    public int getIconPadding() {
        return this.f14297m;
    }

    @Px
    public int getIconSize() {
        return this.f14294j;
    }

    public ColorStateList getIconTint() {
        return this.f14292h;
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.f14291g;
    }

    @Dimension
    public int getInsetBottom() {
        return this.f14288d.c();
    }

    @Dimension
    public int getInsetTop() {
        return this.f14288d.d();
    }

    @Nullable
    public ColorStateList getRippleColor() {
        if (h()) {
            return this.f14288d.h();
        }
        return null;
    }

    @Override // com.google.android.material.shape.q
    @NonNull
    public m getShapeAppearanceModel() {
        if (h()) {
            return this.f14288d.i();
        }
        throw new IllegalStateException("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
    }

    public ColorStateList getStrokeColor() {
        if (h()) {
            return this.f14288d.j();
        }
        return null;
    }

    @Px
    public int getStrokeWidth() {
        if (h()) {
            return this.f14288d.k();
        }
        return 0;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public ColorStateList getSupportBackgroundTintList() {
        if (h()) {
            return this.f14288d.l();
        }
        return super.getSupportBackgroundTintList();
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        if (h()) {
            return this.f14288d.m();
        }
        return super.getSupportBackgroundTintMode();
    }

    public void i(@NonNull a aVar) {
        this.f14289e.remove(aVar);
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f14298n;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (h()) {
            i.f(this, this.f14288d.f());
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i2) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i2 + 2);
        if (c()) {
            Button.mergeDrawableStates(onCreateDrawableState, f14278q);
        }
        if (isChecked()) {
            Button.mergeDrawableStates(onCreateDrawableState, f14279r);
        }
        return onCreateDrawableState;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void onInitializeAccessibilityEvent(@NonNull AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(getA11yClassName());
        accessibilityEvent.setChecked(isChecked());
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getA11yClassName());
        accessibilityNodeInfo.setCheckable(c());
        accessibilityNodeInfo.setChecked(isChecked());
        accessibilityNodeInfo.setClickable(isClickable());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView, android.view.View
    public void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        com.google.android.material.button.a aVar;
        super.onLayout(z3, i2, i4, i5, i6);
        if (Build.VERSION.SDK_INT == 21 && (aVar = this.f14288d) != null) {
            aVar.H(i6 - i4, i5 - i2);
        }
        l(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(@Nullable Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setChecked(savedState.f14301a);
    }

    @Override // android.widget.TextView, android.view.View
    @NonNull
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f14301a = this.f14298n;
        return savedState;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
        super.onTextChanged(charSequence, i2, i4, i5);
        l(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public boolean performClick() {
        toggle();
        return super.performClick();
    }

    @Override // android.view.View
    public void refreshDrawableState() {
        super.refreshDrawableState();
        if (this.f14293i != null) {
            if (this.f14293i.setState(getDrawableState())) {
                invalidate();
            }
        }
    }

    @Override // android.view.View
    public void setBackground(@NonNull Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(@ColorInt int i2) {
        if (h()) {
            this.f14288d.r(i2);
        } else {
            super.setBackgroundColor(i2);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundDrawable(@NonNull Drawable drawable) {
        if (h()) {
            if (drawable != getBackground()) {
                this.f14288d.s();
                super.setBackgroundDrawable(drawable);
                return;
            }
            getBackground().setState(drawable.getState());
            return;
        }
        super.setBackgroundDrawable(drawable);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundResource(@DrawableRes int i2) {
        setBackgroundDrawable(i2 != 0 ? AppCompatResources.getDrawable(getContext(), i2) : null);
    }

    @Override // android.view.View
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    @Override // android.view.View
    public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        setSupportBackgroundTintMode(mode);
    }

    public void setCheckable(boolean z3) {
        if (h()) {
            this.f14288d.t(z3);
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z3) {
        if (c() && isEnabled() && this.f14298n != z3) {
            this.f14298n = z3;
            refreshDrawableState();
            if (getParent() instanceof MaterialButtonToggleGroup) {
                ((MaterialButtonToggleGroup) getParent()).p(this, this.f14298n);
            }
            if (this.f14299o) {
                return;
            }
            this.f14299o = true;
            Iterator<a> it2 = this.f14289e.iterator();
            while (it2.hasNext()) {
                it2.next().a(this, this.f14298n);
            }
            this.f14299o = false;
        }
    }

    public void setCornerRadius(@Px int i2) {
        if (h()) {
            this.f14288d.u(i2);
        }
    }

    public void setCornerRadiusResource(@DimenRes int i2) {
        if (h()) {
            setCornerRadius(getResources().getDimensionPixelSize(i2));
        }
    }

    @Override // android.view.View
    @RequiresApi(21)
    public void setElevation(float f4) {
        super.setElevation(f4);
        if (h()) {
            this.f14288d.f().n0(f4);
        }
    }

    public void setIcon(@Nullable Drawable drawable) {
        if (this.f14293i != drawable) {
            this.f14293i = drawable;
            k(true);
            l(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconGravity(int i2) {
        if (this.f14300p != i2) {
            this.f14300p = i2;
            l(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconPadding(@Px int i2) {
        if (this.f14297m != i2) {
            this.f14297m = i2;
            setCompoundDrawablePadding(i2);
        }
    }

    public void setIconResource(@DrawableRes int i2) {
        setIcon(i2 != 0 ? AppCompatResources.getDrawable(getContext(), i2) : null);
    }

    public void setIconSize(@Px int i2) {
        if (i2 >= 0) {
            if (this.f14294j != i2) {
                this.f14294j = i2;
                k(true);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("iconSize cannot be less than 0");
    }

    public void setIconTint(@Nullable ColorStateList colorStateList) {
        if (this.f14292h != colorStateList) {
            this.f14292h = colorStateList;
            k(false);
        }
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.f14291g != mode) {
            this.f14291g = mode;
            k(false);
        }
    }

    public void setIconTintResource(@ColorRes int i2) {
        setIconTint(AppCompatResources.getColorStateList(getContext(), i2));
    }

    public void setInsetBottom(@Dimension int i2) {
        this.f14288d.v(i2);
    }

    public void setInsetTop(@Dimension int i2) {
        this.f14288d.w(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setInternalBackground(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setOnPressedChangeListenerInternal(@Nullable b bVar) {
        this.f14290f = bVar;
    }

    @Override // android.view.View
    public void setPressed(boolean z3) {
        b bVar = this.f14290f;
        if (bVar != null) {
            bVar.a(this, z3);
        }
        super.setPressed(z3);
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        if (h()) {
            this.f14288d.x(colorStateList);
        }
    }

    public void setRippleColorResource(@ColorRes int i2) {
        if (h()) {
            setRippleColor(AppCompatResources.getColorStateList(getContext(), i2));
        }
    }

    @Override // com.google.android.material.shape.q
    public void setShapeAppearanceModel(@NonNull m mVar) {
        if (h()) {
            this.f14288d.y(mVar);
            return;
        }
        throw new IllegalStateException("Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setShouldDrawSurfaceColorStroke(boolean z3) {
        if (h()) {
            this.f14288d.z(z3);
        }
    }

    public void setStrokeColor(@Nullable ColorStateList colorStateList) {
        if (h()) {
            this.f14288d.A(colorStateList);
        }
    }

    public void setStrokeColorResource(@ColorRes int i2) {
        if (h()) {
            setStrokeColor(AppCompatResources.getColorStateList(getContext(), i2));
        }
    }

    public void setStrokeWidth(@Px int i2) {
        if (h()) {
            this.f14288d.B(i2);
        }
    }

    public void setStrokeWidthResource(@DimenRes int i2) {
        if (h()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i2));
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        if (h()) {
            this.f14288d.C(colorStateList);
        } else {
            super.setSupportBackgroundTintList(colorStateList);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        if (h()) {
            this.f14288d.D(mode);
        } else {
            super.setSupportBackgroundTintMode(mode);
        }
    }

    @Override // android.view.View
    @RequiresApi(17)
    public void setTextAlignment(int i2) {
        super.setTextAlignment(i2);
        l(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.f14298n);
    }

    public MaterialButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialButtonStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MaterialButton(@androidx.annotation.NonNull android.content.Context r9, @androidx.annotation.Nullable android.util.AttributeSet r10, int r11) {
        /*
            r8 = this;
            int r6 = com.google.android.material.button.MaterialButton.f14287z
            android.content.Context r9 = com.google.android.material.theme.overlay.a.c(r9, r10, r11, r6)
            r8.<init>(r9, r10, r11)
            java.util.LinkedHashSet r9 = new java.util.LinkedHashSet
            r9.<init>()
            r8.f14289e = r9
            r9 = 0
            r8.f14298n = r9
            r8.f14299o = r9
            android.content.Context r7 = r8.getContext()
            int[] r2 = com.google.android.material.R.styleable.MaterialButton
            int[] r5 = new int[r9]
            r0 = r7
            r1 = r10
            r3 = r11
            r4 = r6
            android.content.res.TypedArray r0 = com.google.android.material.internal.o.j(r0, r1, r2, r3, r4, r5)
            int r1 = com.google.android.material.R.styleable.MaterialButton_iconPadding
            int r1 = r0.getDimensionPixelSize(r1, r9)
            r8.f14297m = r1
            int r1 = com.google.android.material.R.styleable.MaterialButton_iconTintMode
            r2 = -1
            int r1 = r0.getInt(r1, r2)
            android.graphics.PorterDuff$Mode r2 = android.graphics.PorterDuff.Mode.SRC_IN
            android.graphics.PorterDuff$Mode r1 = com.google.android.material.internal.w.l(r1, r2)
            r8.f14291g = r1
            android.content.Context r1 = r8.getContext()
            int r2 = com.google.android.material.R.styleable.MaterialButton_iconTint
            android.content.res.ColorStateList r1 = com.google.android.material.resources.c.a(r1, r0, r2)
            r8.f14292h = r1
            android.content.Context r1 = r8.getContext()
            int r2 = com.google.android.material.R.styleable.MaterialButton_icon
            android.graphics.drawable.Drawable r1 = com.google.android.material.resources.c.e(r1, r0, r2)
            r8.f14293i = r1
            int r1 = com.google.android.material.R.styleable.MaterialButton_iconGravity
            r2 = 1
            int r1 = r0.getInteger(r1, r2)
            r8.f14300p = r1
            int r1 = com.google.android.material.R.styleable.MaterialButton_iconSize
            int r1 = r0.getDimensionPixelSize(r1, r9)
            r8.f14294j = r1
            com.google.android.material.shape.m$b r10 = com.google.android.material.shape.m.e(r7, r10, r11, r6)
            com.google.android.material.shape.m r10 = r10.m()
            com.google.android.material.button.a r11 = new com.google.android.material.button.a
            r11.<init>(r8, r10)
            r8.f14288d = r11
            r11.q(r0)
            r0.recycle()
            int r10 = r8.f14297m
            r8.setCompoundDrawablePadding(r10)
            android.graphics.drawable.Drawable r10 = r8.f14293i
            if (r10 == 0) goto L84
            r9 = 1
        L84:
            r8.k(r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.button.MaterialButton.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }
}
