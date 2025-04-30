package com.join.mgps.customview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import com.join.android.app.mgsim.wufun.R;
/* loaded from: classes3.dex */
public class CornersLinearLayout extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private float f45253a;

    /* renamed from: b  reason: collision with root package name */
    private float f45254b;

    /* renamed from: c  reason: collision with root package name */
    private float f45255c;

    /* renamed from: d  reason: collision with root package name */
    private float f45256d;

    /* renamed from: e  reason: collision with root package name */
    private float f45257e;

    /* renamed from: f  reason: collision with root package name */
    private int f45258f;

    /* renamed from: g  reason: collision with root package name */
    private int f45259g;

    public CornersLinearLayout(Context context) {
        this(context, null);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        canvas.save();
        Path path = new Path();
        RectF rectF = new RectF(0.0f, 0.0f, this.f45258f, this.f45259g);
        float f4 = this.f45253a;
        if (f4 > 0.0f) {
            path.addRoundRect(rectF, f4, f4, Path.Direction.CCW);
        } else {
            float f5 = this.f45254b;
            float f6 = this.f45255c;
            float f7 = this.f45257e;
            float f8 = this.f45256d;
            path.addRoundRect(rectF, new float[]{f5, f5, f6, f6, f7, f7, f8, f8}, Path.Direction.CCW);
        }
        canvas.clipPath(path);
        super.draw(canvas);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i2, int i4) {
        super.onMeasure(i2, i4);
        this.f45258f = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        this.f45259g = measuredHeight;
        setMeasuredDimension(this.f45258f, measuredHeight);
    }

    public CornersLinearLayout(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CornersLinearLayout(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CornersLinearLayout);
        this.f45253a = obtainStyledAttributes.getDimension(4, 0.0f);
        this.f45254b = obtainStyledAttributes.getDimension(2, 0.0f);
        this.f45255c = obtainStyledAttributes.getDimension(3, 0.0f);
        this.f45257e = obtainStyledAttributes.getDimension(1, 0.0f);
        this.f45256d = obtainStyledAttributes.getDimension(0, 0.0f);
        obtainStyledAttributes.recycle();
    }
}
