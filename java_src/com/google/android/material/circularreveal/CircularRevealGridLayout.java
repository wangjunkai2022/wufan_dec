package com.google.android.material.circularreveal;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.GridLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.circularreveal.b;
/* loaded from: classes2.dex */
public class CircularRevealGridLayout extends GridLayout implements b {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final CircularRevealHelper f14462a;

    public CircularRevealGridLayout(Context context) {
        this(context, null);
    }

    @Override // com.google.android.material.circularreveal.b
    public void a() {
        this.f14462a.a();
    }

    @Override // com.google.android.material.circularreveal.b
    public void b() {
        this.f14462a.b();
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
    public void draw(@NonNull Canvas canvas) {
        CircularRevealHelper circularRevealHelper = this.f14462a;
        if (circularRevealHelper != null) {
            circularRevealHelper.c(canvas);
        } else {
            super.draw(canvas);
        }
    }

    @Override // com.google.android.material.circularreveal.b
    @Nullable
    public Drawable getCircularRevealOverlayDrawable() {
        return this.f14462a.g();
    }

    @Override // com.google.android.material.circularreveal.b
    public int getCircularRevealScrimColor() {
        return this.f14462a.h();
    }

    @Override // com.google.android.material.circularreveal.b
    @Nullable
    public b.e getRevealInfo() {
        return this.f14462a.j();
    }

    @Override // android.view.View, com.google.android.material.circularreveal.b
    public boolean isOpaque() {
        CircularRevealHelper circularRevealHelper = this.f14462a;
        if (circularRevealHelper != null) {
            return circularRevealHelper.l();
        }
        return super.isOpaque();
    }

    @Override // com.google.android.material.circularreveal.b
    public void setCircularRevealOverlayDrawable(@Nullable Drawable drawable) {
        this.f14462a.m(drawable);
    }

    @Override // com.google.android.material.circularreveal.b
    public void setCircularRevealScrimColor(@ColorInt int i2) {
        this.f14462a.n(i2);
    }

    @Override // com.google.android.material.circularreveal.b
    public void setRevealInfo(@Nullable b.e eVar) {
        this.f14462a.o(eVar);
    }

    public CircularRevealGridLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f14462a = new CircularRevealHelper(this);
    }
}
