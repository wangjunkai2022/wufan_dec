package com.google.android.material.circularreveal.coordinatorlayout;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.circularreveal.CircularRevealHelper;
import com.google.android.material.circularreveal.b;
/* loaded from: classes2.dex */
public class CircularRevealCoordinatorLayout extends CoordinatorLayout implements b {
    @NonNull
    private final CircularRevealHelper F;

    public CircularRevealCoordinatorLayout(@NonNull Context context) {
        this(context, null);
    }

    @Override // com.google.android.material.circularreveal.b
    public void a() {
        this.F.a();
    }

    @Override // com.google.android.material.circularreveal.b
    public void b() {
        this.F.b();
    }

    @Override // com.google.android.material.circularreveal.CircularRevealHelper.a
    public void c(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // com.google.android.material.circularreveal.CircularRevealHelper.a
    public boolean d() {
        return super.isOpaque();
    }

    @Override // android.view.View, com.google.android.material.circularreveal.b
    public void draw(Canvas canvas) {
        CircularRevealHelper circularRevealHelper = this.F;
        if (circularRevealHelper != null) {
            circularRevealHelper.c(canvas);
        } else {
            super.draw(canvas);
        }
    }

    @Override // com.google.android.material.circularreveal.b
    @Nullable
    public Drawable getCircularRevealOverlayDrawable() {
        return this.F.g();
    }

    @Override // com.google.android.material.circularreveal.b
    public int getCircularRevealScrimColor() {
        return this.F.h();
    }

    @Override // com.google.android.material.circularreveal.b
    @Nullable
    public b.e getRevealInfo() {
        return this.F.j();
    }

    @Override // android.view.View, com.google.android.material.circularreveal.b
    public boolean isOpaque() {
        CircularRevealHelper circularRevealHelper = this.F;
        if (circularRevealHelper != null) {
            return circularRevealHelper.l();
        }
        return super.isOpaque();
    }

    @Override // com.google.android.material.circularreveal.b
    public void setCircularRevealOverlayDrawable(@Nullable Drawable drawable) {
        this.F.m(drawable);
    }

    @Override // com.google.android.material.circularreveal.b
    public void setCircularRevealScrimColor(@ColorInt int i2) {
        this.F.n(i2);
    }

    @Override // com.google.android.material.circularreveal.b
    public void setRevealInfo(@Nullable b.e eVar) {
        this.F.o(eVar);
    }

    public CircularRevealCoordinatorLayout(@NonNull Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.F = new CircularRevealHelper(this);
    }
}
