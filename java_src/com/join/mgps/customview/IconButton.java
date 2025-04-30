package com.join.mgps.customview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.widget.Button;
import com.join.android.app.mgsim.wufun.R;
/* loaded from: classes3.dex */
public class IconButton extends Button {

    /* renamed from: a  reason: collision with root package name */
    protected int f45657a;

    /* renamed from: b  reason: collision with root package name */
    protected DrawablePositions f45658b;

    /* renamed from: c  reason: collision with root package name */
    protected int f45659c;

    /* renamed from: d  reason: collision with root package name */
    Rect f45660d;

    /* loaded from: classes3.dex */
    private enum DrawablePositions {
        NONE,
        LEFT_AND_RIGHT,
        LEFT,
        RIGHT
    }

    /* loaded from: classes3.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f45661a;

        static {
            int[] iArr = new int[DrawablePositions.values().length];
            f45661a = iArr;
            try {
                iArr[DrawablePositions.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f45661a[DrawablePositions.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f45661a[DrawablePositions.LEFT_AND_RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public IconButton(Context context) {
        super(context);
        this.f45660d = new Rect();
    }

    protected void a(AttributeSet attributeSet) {
        if (this.f45660d == null) {
            this.f45660d = new Rect();
        }
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.IconButton);
        setIconPadding(obtainStyledAttributes.getDimensionPixelSize(0, 0));
        obtainStyledAttributes.recycle();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        super.onLayout(z3, i2, i4, i5, i6);
        TextPaint paint = getPaint();
        String charSequence = getText().toString();
        paint.getTextBounds(charSequence, 0, charSequence.length(), this.f45660d);
        int width = this.f45657a + (this.f45659c * (this.f45658b == DrawablePositions.LEFT_AND_RIGHT ? 2 : 1)) + this.f45660d.width();
        double width2 = getWidth();
        Double.isNaN(width2);
        double d4 = width;
        Double.isNaN(d4);
        int i7 = (int) ((width2 / 2.0d) - (d4 / 2.0d));
        setCompoundDrawablePadding((-i7) + this.f45659c);
        int i8 = a.f45661a[this.f45658b.ordinal()];
        if (i8 == 1) {
            setPadding(i7, getPaddingTop(), 0, getPaddingBottom());
        } else if (i8 == 2) {
            setPadding(0, getPaddingTop(), i7, getPaddingBottom());
        } else if (i8 != 3) {
            setPadding(0, getPaddingTop(), 0, getPaddingBottom());
        } else {
            setPadding(i7, getPaddingTop(), i7, getPaddingBottom());
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        if (drawable != null && drawable3 != null) {
            this.f45657a = drawable.getIntrinsicWidth() + drawable3.getIntrinsicWidth();
            this.f45658b = DrawablePositions.LEFT_AND_RIGHT;
        } else if (drawable != null) {
            this.f45657a = drawable.getIntrinsicWidth();
            this.f45658b = DrawablePositions.LEFT;
        } else if (drawable3 != null) {
            this.f45657a = drawable3.getIntrinsicWidth();
            this.f45658b = DrawablePositions.RIGHT;
        } else {
            this.f45658b = DrawablePositions.NONE;
        }
        requestLayout();
    }

    public void setIconPadding(int i2) {
        this.f45659c = i2;
        requestLayout();
    }

    public IconButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45660d = new Rect();
        a(attributeSet);
    }

    public IconButton(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f45660d = new Rect();
        a(attributeSet);
    }
}
