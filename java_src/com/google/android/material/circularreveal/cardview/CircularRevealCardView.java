package com.google.android.material.circularreveal.cardview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.circularreveal.CircularRevealHelper;
import com.google.android.material.circularreveal.b;
/* loaded from: classes2.dex */
public class CircularRevealCardView extends MaterialCardView implements b {
    @NonNull

    /* renamed from: y  reason: collision with root package name */
    private final CircularRevealHelper f14489y;

    public CircularRevealCardView(Context context) {
        this(context, null);
    }

    @Override // com.google.android.material.circularreveal.b
    public void a() {
        this.f14489y.a();
    }

    @Override // com.google.android.material.circularreveal.b
    public void b() {
        this.f14489y.b();
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
        CircularRevealHelper circularRevealHelper = this.f14489y;
        if (circularRevealHelper != null) {
            circularRevealHelper.c(canvas);
        } else {
            super.draw(canvas);
        }
    }

    @Override // com.google.android.material.circularreveal.b
    @Nullable
    public Drawable getCircularRevealOverlayDrawable() {
        return this.f14489y.g();
    }

    @Override // com.google.android.material.circularreveal.b
    public int getCircularRevealScrimColor() {
        return this.f14489y.h();
    }

    @Override // com.google.android.material.circularreveal.b
    @Nullable
    public b.e getRevealInfo() {
        return this.f14489y.j();
    }

    @Override // android.view.View, com.google.android.material.circularreveal.b
    public boolean isOpaque() {
        CircularRevealHelper circularRevealHelper = this.f14489y;
        if (circularRevealHelper != null) {
            return circularRevealHelper.l();
        }
        return super.isOpaque();
    }

    @Override // com.google.android.material.circularreveal.b
    public void setCircularRevealOverlayDrawable(@Nullable Drawable drawable) {
        this.f14489y.m(drawable);
    }

    @Override // com.google.android.material.circularreveal.b
    public void setCircularRevealScrimColor(@ColorInt int i2) {
        this.f14489y.n(i2);
    }

    @Override // com.google.android.material.circularreveal.b
    public void setRevealInfo(@Nullable b.e eVar) {
        this.f14489y.o(eVar);
    }

    public CircularRevealCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f14489y = new CircularRevealHelper(this);
    }
}
