package com.google.android.material.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageButton;
import androidx.annotation.RestrictTo;
@SuppressLint({"AppCompatCustomView"})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class VisibilityAwareImageButton extends ImageButton {

    /* renamed from: a  reason: collision with root package name */
    private int f15083a;

    public VisibilityAwareImageButton(Context context) {
        this(context, null);
    }

    public final void c(int i2, boolean z3) {
        super.setVisibility(i2);
        if (z3) {
            this.f15083a = i2;
        }
    }

    public final int getUserSetVisibility() {
        return this.f15083a;
    }

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int i2) {
        c(i2, true);
    }

    public VisibilityAwareImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VisibilityAwareImageButton(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f15083a = getVisibility();
    }
}
