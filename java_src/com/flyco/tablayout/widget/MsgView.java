package com.flyco.tablayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import com.flyco.tablayout.R;
/* loaded from: classes2.dex */
public class MsgView extends TextView {

    /* renamed from: a  reason: collision with root package name */
    private Context f13887a;

    /* renamed from: b  reason: collision with root package name */
    private GradientDrawable f13888b;

    /* renamed from: c  reason: collision with root package name */
    private int f13889c;

    /* renamed from: d  reason: collision with root package name */
    private int f13890d;

    /* renamed from: e  reason: collision with root package name */
    private int f13891e;

    /* renamed from: f  reason: collision with root package name */
    private int f13892f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f13893g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f13894h;

    public MsgView(Context context) {
        this(context, null);
    }

    private void d(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MsgView);
        this.f13889c = obtainStyledAttributes.getColor(R.styleable.MsgView_mv_backgroundColor, 0);
        this.f13890d = obtainStyledAttributes.getDimensionPixelSize(R.styleable.MsgView_mv_cornerRadius, 0);
        this.f13891e = obtainStyledAttributes.getDimensionPixelSize(R.styleable.MsgView_mv_strokeWidth, 0);
        this.f13892f = obtainStyledAttributes.getColor(R.styleable.MsgView_mv_strokeColor, 0);
        this.f13893g = obtainStyledAttributes.getBoolean(R.styleable.MsgView_mv_isRadiusHalfHeight, false);
        this.f13894h = obtainStyledAttributes.getBoolean(R.styleable.MsgView_mv_isWidthHeightEqual, false);
        obtainStyledAttributes.recycle();
    }

    private void e(GradientDrawable gradientDrawable, int i2, int i4) {
        gradientDrawable.setColor(i2);
        gradientDrawable.setCornerRadius(this.f13890d);
        gradientDrawable.setStroke(this.f13891e, i4);
    }

    protected int a(float f4) {
        return (int) ((f4 * this.f13887a.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public boolean b() {
        return this.f13893g;
    }

    public boolean c() {
        return this.f13894h;
    }

    protected int f(float f4) {
        return (int) ((f4 * this.f13887a.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    public int getBackgroundColor() {
        return this.f13889c;
    }

    public int getCornerRadius() {
        return this.f13890d;
    }

    public int getStrokeColor() {
        return this.f13892f;
    }

    public int getStrokeWidth() {
        return this.f13891e;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        super.onLayout(z3, i2, i4, i5, i6);
        if (b()) {
            setCornerRadius(getHeight() / 2);
        } else {
            setBgSelector();
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i2, int i4) {
        if (c() && getWidth() > 0 && getHeight() > 0) {
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.max(getWidth(), getHeight()), 1073741824);
            super.onMeasure(makeMeasureSpec, makeMeasureSpec);
            return;
        }
        super.onMeasure(i2, i4);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i2) {
        this.f13889c = i2;
        setBgSelector();
    }

    public void setBgSelector() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        e(this.f13888b, this.f13889c, this.f13892f);
        stateListDrawable.addState(new int[]{-16842919}, this.f13888b);
        if (Build.VERSION.SDK_INT >= 16) {
            setBackground(stateListDrawable);
        } else {
            setBackgroundDrawable(stateListDrawable);
        }
    }

    public void setCornerRadius(int i2) {
        this.f13890d = a(i2);
        setBgSelector();
    }

    public void setIsRadiusHalfHeight(boolean z3) {
        this.f13893g = z3;
        setBgSelector();
    }

    public void setIsWidthHeightEqual(boolean z3) {
        this.f13894h = z3;
        setBgSelector();
    }

    public void setStrokeColor(int i2) {
        this.f13892f = i2;
        setBgSelector();
    }

    public void setStrokeWidth(int i2) {
        this.f13891e = a(i2);
        setBgSelector();
    }

    public MsgView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MsgView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f13888b = new GradientDrawable();
        this.f13887a = context;
        d(context, attributeSet);
    }
}
