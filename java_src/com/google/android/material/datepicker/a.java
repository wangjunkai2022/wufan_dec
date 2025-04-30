package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.StyleRes;
import androidx.core.util.Preconditions;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.shape.MaterialShapeDrawable;
/* compiled from: CalendarItemStyle.java */
/* loaded from: classes2.dex */
final class a {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final Rect f14770a;

    /* renamed from: b  reason: collision with root package name */
    private final ColorStateList f14771b;

    /* renamed from: c  reason: collision with root package name */
    private final ColorStateList f14772c;

    /* renamed from: d  reason: collision with root package name */
    private final ColorStateList f14773d;

    /* renamed from: e  reason: collision with root package name */
    private final int f14774e;

    /* renamed from: f  reason: collision with root package name */
    private final com.google.android.material.shape.m f14775f;

    private a(ColorStateList colorStateList, ColorStateList colorStateList2, ColorStateList colorStateList3, int i2, com.google.android.material.shape.m mVar, @NonNull Rect rect) {
        Preconditions.checkArgumentNonnegative(rect.left);
        Preconditions.checkArgumentNonnegative(rect.top);
        Preconditions.checkArgumentNonnegative(rect.right);
        Preconditions.checkArgumentNonnegative(rect.bottom);
        this.f14770a = rect;
        this.f14771b = colorStateList2;
        this.f14772c = colorStateList;
        this.f14773d = colorStateList3;
        this.f14774e = i2;
        this.f14775f = mVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static a a(@NonNull Context context, @StyleRes int i2) {
        Preconditions.checkArgument(i2 != 0, "Cannot create a CalendarItemStyle with a styleResId of 0");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i2, R.styleable.MaterialCalendarItem);
        Rect rect = new Rect(obtainStyledAttributes.getDimensionPixelOffset(R.styleable.MaterialCalendarItem_android_insetLeft, 0), obtainStyledAttributes.getDimensionPixelOffset(R.styleable.MaterialCalendarItem_android_insetTop, 0), obtainStyledAttributes.getDimensionPixelOffset(R.styleable.MaterialCalendarItem_android_insetRight, 0), obtainStyledAttributes.getDimensionPixelOffset(R.styleable.MaterialCalendarItem_android_insetBottom, 0));
        ColorStateList a4 = com.google.android.material.resources.c.a(context, obtainStyledAttributes, R.styleable.MaterialCalendarItem_itemFillColor);
        ColorStateList a5 = com.google.android.material.resources.c.a(context, obtainStyledAttributes, R.styleable.MaterialCalendarItem_itemTextColor);
        ColorStateList a6 = com.google.android.material.resources.c.a(context, obtainStyledAttributes, R.styleable.MaterialCalendarItem_itemStrokeColor);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(R.styleable.MaterialCalendarItem_itemStrokeWidth, 0);
        com.google.android.material.shape.m m4 = com.google.android.material.shape.m.b(context, obtainStyledAttributes.getResourceId(R.styleable.MaterialCalendarItem_itemShapeAppearance, 0), obtainStyledAttributes.getResourceId(R.styleable.MaterialCalendarItem_itemShapeAppearanceOverlay, 0)).m();
        obtainStyledAttributes.recycle();
        return new a(a4, a5, a6, dimensionPixelSize, m4, rect);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b() {
        return this.f14770a.bottom;
    }

    int c() {
        return this.f14770a.left;
    }

    int d() {
        return this.f14770a.right;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int e() {
        return this.f14770a.top;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(@NonNull TextView textView) {
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        MaterialShapeDrawable materialShapeDrawable2 = new MaterialShapeDrawable();
        materialShapeDrawable.setShapeAppearanceModel(this.f14775f);
        materialShapeDrawable2.setShapeAppearanceModel(this.f14775f);
        materialShapeDrawable.o0(this.f14772c);
        materialShapeDrawable.E0(this.f14774e, this.f14773d);
        textView.setTextColor(this.f14771b);
        Drawable rippleDrawable = Build.VERSION.SDK_INT >= 21 ? new RippleDrawable(this.f14771b.withAlpha(30), materialShapeDrawable, materialShapeDrawable2) : materialShapeDrawable;
        Rect rect = this.f14770a;
        ViewCompat.setBackground(textView, new InsetDrawable(rippleDrawable, rect.left, rect.top, rect.right, rect.bottom));
    }
}
