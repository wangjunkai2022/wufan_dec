package com.google.android.material.ripple;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.drawable.TintAwareDrawable;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.m;
import com.google.android.material.shape.q;
/* compiled from: RippleDrawableCompat.java */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class a extends Drawable implements q, TintAwareDrawable {

    /* renamed from: a  reason: collision with root package name */
    private b f15514a;

    @Override // android.graphics.drawable.Drawable
    @NonNull
    /* renamed from: a */
    public a mutate() {
        this.f15514a = new b(this.f15514a);
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        b bVar = this.f15514a;
        if (bVar.f15516b) {
            bVar.f15515a.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public Drawable.ConstantState getConstantState() {
        return this.f15514a;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f15514a.f15515a.getOpacity();
    }

    @Override // com.google.android.material.shape.q
    @NonNull
    public m getShapeAppearanceModel() {
        return this.f15514a.f15515a.getShapeAppearanceModel();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(@NonNull Rect rect) {
        super.onBoundsChange(rect);
        this.f15514a.f15515a.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(@NonNull int[] iArr) {
        boolean onStateChange = super.onStateChange(iArr);
        if (this.f15514a.f15515a.setState(iArr)) {
            onStateChange = true;
        }
        boolean e4 = com.google.android.material.ripple.b.e(iArr);
        b bVar = this.f15514a;
        if (bVar.f15516b != e4) {
            bVar.f15516b = e4;
            return true;
        }
        return onStateChange;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.f15514a.f15515a.setAlpha(i2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.f15514a.f15515a.setColorFilter(colorFilter);
    }

    @Override // com.google.android.material.shape.q
    public void setShapeAppearanceModel(@NonNull m mVar) {
        this.f15514a.f15515a.setShapeAppearanceModel(mVar);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTint(@ColorInt int i2) {
        this.f15514a.f15515a.setTint(i2);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintList(@Nullable ColorStateList colorStateList) {
        this.f15514a.f15515a.setTintList(colorStateList);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintMode(@Nullable PorterDuff.Mode mode) {
        this.f15514a.f15515a.setTintMode(mode);
    }

    public a(m mVar) {
        this(new b(new MaterialShapeDrawable(mVar)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RippleDrawableCompat.java */
    /* loaded from: classes2.dex */
    public static final class b extends Drawable.ConstantState {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        MaterialShapeDrawable f15515a;

        /* renamed from: b  reason: collision with root package name */
        boolean f15516b;

        public b(MaterialShapeDrawable materialShapeDrawable) {
            this.f15515a = materialShapeDrawable;
            this.f15516b = false;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        /* renamed from: a */
        public a newDrawable() {
            return new a(new b(this));
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        public b(@NonNull b bVar) {
            this.f15515a = (MaterialShapeDrawable) bVar.f15515a.getConstantState().newDrawable();
            this.f15516b = bVar.f15516b;
        }
    }

    private a(b bVar) {
        this.f15514a = bVar;
    }
}
