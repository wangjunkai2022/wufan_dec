package com.google.android.material.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.core.view.GravityCompat;
import com.google.android.material.R;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class ForegroundLinearLayout extends LinearLayoutCompat {
    boolean A;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private Drawable f15047v;

    /* renamed from: w  reason: collision with root package name */
    private final Rect f15048w;

    /* renamed from: x  reason: collision with root package name */
    private final Rect f15049x;

    /* renamed from: y  reason: collision with root package name */
    private int f15050y;

    /* renamed from: z  reason: collision with root package name */
    protected boolean f15051z;

    public ForegroundLinearLayout(@NonNull Context context) {
        this(context, null);
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        Drawable drawable = this.f15047v;
        if (drawable != null) {
            if (this.A) {
                this.A = false;
                Rect rect = this.f15048w;
                Rect rect2 = this.f15049x;
                int right = getRight() - getLeft();
                int bottom = getBottom() - getTop();
                if (this.f15051z) {
                    rect.set(0, 0, right, bottom);
                } else {
                    rect.set(getPaddingLeft(), getPaddingTop(), right - getPaddingRight(), bottom - getPaddingBottom());
                }
                Gravity.apply(this.f15050y, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), rect, rect2);
                drawable.setBounds(rect2);
            }
            drawable.draw(canvas);
        }
    }

    @Override // android.view.View
    @RequiresApi(21)
    @TargetApi(21)
    public void drawableHotspotChanged(float f4, float f5) {
        super.drawableHotspotChanged(f4, f5);
        Drawable drawable = this.f15047v;
        if (drawable != null) {
            drawable.setHotspot(f4, f5);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f15047v;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        this.f15047v.setState(getDrawableState());
    }

    @Override // android.view.View
    @Nullable
    public Drawable getForeground() {
        return this.f15047v;
    }

    @Override // android.view.View
    public int getForegroundGravity() {
        return this.f15050y;
    }

    @Override // android.view.ViewGroup, android.view.View
    @RequiresApi(11)
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f15047v;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        super.onLayout(z3, i2, i4, i5, i6);
        this.A = z3 | this.A;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i4, int i5, int i6) {
        super.onSizeChanged(i2, i4, i5, i6);
        this.A = true;
    }

    @Override // android.view.View
    public void setForeground(@Nullable Drawable drawable) {
        Drawable drawable2 = this.f15047v;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
                unscheduleDrawable(this.f15047v);
            }
            this.f15047v = drawable;
            if (drawable != null) {
                setWillNotDraw(false);
                drawable.setCallback(this);
                if (drawable.isStateful()) {
                    drawable.setState(getDrawableState());
                }
                if (this.f15050y == 119) {
                    drawable.getPadding(new Rect());
                }
            } else {
                setWillNotDraw(true);
            }
            requestLayout();
            invalidate();
        }
    }

    @Override // android.view.View
    public void setForegroundGravity(int i2) {
        if (this.f15050y != i2) {
            if ((8388615 & i2) == 0) {
                i2 |= GravityCompat.START;
            }
            if ((i2 & 112) == 0) {
                i2 |= 48;
            }
            this.f15050y = i2;
            if (i2 == 119 && this.f15047v != null) {
                this.f15047v.getPadding(new Rect());
            }
            requestLayout();
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f15047v;
    }

    public ForegroundLinearLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ForegroundLinearLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f15048w = new Rect();
        this.f15049x = new Rect();
        this.f15050y = 119;
        this.f15051z = true;
        this.A = false;
        TypedArray j4 = o.j(context, attributeSet, R.styleable.ForegroundLinearLayout, i2, 0, new int[0]);
        this.f15050y = j4.getInt(R.styleable.ForegroundLinearLayout_android_foregroundGravity, this.f15050y);
        Drawable drawable = j4.getDrawable(R.styleable.ForegroundLinearLayout_android_foreground);
        if (drawable != null) {
            setForeground(drawable);
        }
        this.f15051z = j4.getBoolean(R.styleable.ForegroundLinearLayout_foregroundInsidePadding, true);
        j4.recycle();
    }
}
