package com.join.mgps.customview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import java.util.List;
/* loaded from: classes3.dex */
public class SimpleViewPagerIndicator extends LinearLayout {

    /* renamed from: k  reason: collision with root package name */
    private static final int f46063k = -16777216;

    /* renamed from: l  reason: collision with root package name */
    private static final int f46064l = -756480;

    /* renamed from: a  reason: collision with root package name */
    private List<String> f46065a;

    /* renamed from: b  reason: collision with root package name */
    private int f46066b;

    /* renamed from: c  reason: collision with root package name */
    private int f46067c;

    /* renamed from: d  reason: collision with root package name */
    private float f46068d;

    /* renamed from: e  reason: collision with root package name */
    private Paint f46069e;

    /* renamed from: f  reason: collision with root package name */
    private int f46070f;

    /* renamed from: g  reason: collision with root package name */
    private ScrollView f46071g;

    /* renamed from: h  reason: collision with root package name */
    TextView f46072h;

    /* renamed from: i  reason: collision with root package name */
    TextView f46073i;

    /* renamed from: j  reason: collision with root package name */
    TextView f46074j;

    public SimpleViewPagerIndicator(Context context) {
        this(context, null);
    }

    private void a() {
        if (getChildCount() > 0) {
            removeAllViews();
        }
        int size = this.f46065a.size();
        setWeightSum(size);
        for (int i2 = 0; i2 < size; i2++) {
            if (i2 == 0) {
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -1);
                layoutParams.weight = 1.0f;
                this.f46072h.setGravity(17);
                this.f46072h.setTextColor(-16777216);
                this.f46072h.setText(this.f46065a.get(i2));
                this.f46072h.setTextSize(2, 14.0f);
                this.f46072h.setLayoutParams(layoutParams);
                addView(this.f46072h);
            } else if (i2 == 1) {
                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, -1);
                layoutParams2.weight = 1.0f;
                this.f46073i.setGravity(17);
                this.f46073i.setTextColor(-16777216);
                this.f46073i.setText(this.f46065a.get(i2));
                this.f46073i.setTextSize(2, 14.0f);
                this.f46073i.setLayoutParams(layoutParams2);
                addView(this.f46073i);
            } else if (i2 == 2) {
                LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(0, -1);
                layoutParams3.weight = 1.0f;
                this.f46074j.setGravity(17);
                this.f46074j.setTextColor(-16777216);
                this.f46074j.setText(this.f46065a.get(i2));
                this.f46074j.setTextSize(2, 14.0f);
                this.f46074j.setLayoutParams(layoutParams3);
                addView(this.f46074j);
            }
        }
    }

    public void b(int i2, float f4) {
        this.f46068d = (getWidth() / this.f46066b) * (i2 + f4);
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        double d4;
        super.dispatchDraw(canvas);
        canvas.save();
        canvas.translate(this.f46068d, getHeight() - 2);
        if (this.f46070f == 0) {
            this.f46070f = ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay().getWidth() / this.f46066b;
        }
        int i2 = this.f46070f;
        double d5 = i2;
        Double.isNaN(d5);
        float f4 = (int) (d5 * 0.15d);
        Double.isNaN(i2);
        canvas.drawLine(f4, 0.0f, i2 - ((int) (d4 * 0.15d)), 0.0f, this.f46069e);
        canvas.restore();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.f46071g.getScrollY() + this.f46071g.getHeight() == this.f46071g.getChildAt(0).getHeight()) {
            this.f46071g.requestDisallowInterceptTouchEvent(true);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public TextView getTv() {
        return this.f46072h;
    }

    public TextView getTv1() {
        return this.f46073i;
    }

    public TextView getTv2() {
        return this.f46074j;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i4, int i5, int i6) {
        super.onSizeChanged(i2, i4, i5, i6);
        int i7 = this.f46066b;
        if (i7 > 0) {
            this.f46070f = i2 / i7;
        }
    }

    public void setIndicatorColor(int i2) {
        this.f46067c = i2;
    }

    public void setParentScrollView(ScrollView scrollView) {
        this.f46071g = scrollView;
    }

    public void setTitles(List<String> list) {
        this.f46065a = list;
        this.f46066b = list.size();
        a();
    }

    public void setTv(TextView textView) {
        this.f46072h = textView;
    }

    public void setTv1(TextView textView) {
        this.f46073i = textView;
    }

    public void setTv2(TextView textView) {
        this.f46074j = textView;
    }

    public SimpleViewPagerIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f46067c = f46064l;
        this.f46069e = new Paint();
        this.f46072h = new TextView(getContext());
        this.f46073i = new TextView(getContext());
        this.f46074j = new TextView(getContext());
        this.f46069e.setColor(this.f46067c);
        this.f46069e.setStrokeWidth(9.0f);
    }
}
