package com.join.mgps.customview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
/* loaded from: classes3.dex */
public class HistogramView extends View implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private int f45615a;

    /* renamed from: b  reason: collision with root package name */
    private View f45616b;

    /* renamed from: c  reason: collision with root package name */
    private String f45617c;

    /* renamed from: d  reason: collision with root package name */
    private int f45618d;

    /* renamed from: e  reason: collision with root package name */
    private int f45619e;

    /* renamed from: f  reason: collision with root package name */
    private int f45620f;

    /* renamed from: g  reason: collision with root package name */
    private int f45621g;

    /* renamed from: h  reason: collision with root package name */
    private int f45622h;

    /* renamed from: i  reason: collision with root package name */
    private double f45623i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f45624j;

    /* renamed from: k  reason: collision with root package name */
    private Handler f45625k;

    /* renamed from: l  reason: collision with root package name */
    private int f45626l;

    /* renamed from: m  reason: collision with root package name */
    private int f45627m;

    /* renamed from: n  reason: collision with root package name */
    private Canvas f45628n;

    public HistogramView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45624j = true;
        this.f45625k = new Handler();
        this.f45626l = 20;
        this.f45627m = 1;
    }

    private void a(Paint paint, boolean z3) {
        paint.setColor(Color.parseColor(this.f45617c));
        if (z3) {
            this.f45625k.postDelayed(this, this.f45627m);
            if (this.f45622h == 0) {
                Canvas canvas = this.f45628n;
                int i2 = this.f45615a;
                canvas.drawRect(0.0f, (i2 / 4) - 1, this.f45621g, ((i2 * 3) / 4) + 1, paint);
                return;
            }
            return;
        }
        int i4 = this.f45620f;
        if (i4 == 0) {
            Canvas canvas2 = this.f45628n;
            int i5 = this.f45615a;
            canvas2.drawRect(0.0f, (i5 / 4) - 1, 10.0f, ((i5 * 3) / 4) + 1, paint);
            return;
        }
        Canvas canvas3 = this.f45628n;
        int i6 = this.f45615a;
        canvas3.drawRect(0.0f, (i6 / 4) - 1, i4, ((i6 * 3) / 4) + 1, paint);
    }

    public boolean b() {
        return this.f45624j;
    }

    public int getAnimRate() {
        return this.f45626l;
    }

    public int getOrientation() {
        return this.f45622h;
    }

    public double getProgress() {
        return this.f45623i;
    }

    public String getRateBackgroundColor() {
        return this.f45617c;
    }

    public int getRateBackgroundId() {
        return this.f45618d;
    }

    public int getRateHeight() {
        return this.f45619e;
    }

    public View getRateView() {
        return this.f45616b;
    }

    public int getRateWidth() {
        return this.f45620f;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f45628n = canvas;
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        if (this.f45617c != null) {
            a(paint, this.f45624j);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i4, int i5, int i6) {
        super.onSizeChanged(i2, i4, i5, i6);
        this.f45615a = i4;
        if (this.f45622h == 0) {
            double d4 = i2;
            double d5 = this.f45623i;
            Double.isNaN(d4);
            this.f45620f = (int) (d4 * d5);
            this.f45619e = i4;
            return;
        }
        double d6 = i4;
        double d7 = this.f45623i;
        Double.isNaN(d6);
        this.f45619e = (int) (d6 * d7);
        this.f45620f = i2;
    }

    @Override // java.lang.Runnable
    public void run() {
        int i2;
        int i4;
        int i5 = this.f45622h;
        if (i5 == 0 && (i4 = this.f45621g) <= this.f45620f) {
            this.f45621g = i4 + this.f45626l;
            invalidate();
        } else if (i5 == 1 && (i2 = this.f45621g) <= this.f45619e) {
            this.f45621g = i2 + this.f45626l;
            invalidate();
        } else {
            this.f45625k.removeCallbacks(this);
            this.f45621g = 0;
        }
    }

    public void setAnim(boolean z3) {
        this.f45624j = z3;
    }

    public void setAnimRate(int i2) {
        this.f45626l = i2;
    }

    public void setOrientation(int i2) {
        this.f45622h = i2;
    }

    public void setProgress(double d4) {
        this.f45623i = d4;
    }

    public void setRateBackgroundColor(String str) {
        this.f45617c = str;
        this.f45618d = -1;
    }

    public void setRateBackgroundId(int i2) {
        this.f45618d = i2;
        this.f45617c = null;
    }

    public void setRateHeight(int i2) {
        this.f45619e = i2;
    }

    public void setRateView(View view) {
        this.f45616b = view;
    }

    public void setRateWidth(int i2) {
        this.f45620f = i2;
    }

    public HistogramView(Context context) {
        super(context);
        this.f45624j = true;
        this.f45625k = new Handler();
        this.f45626l = 20;
        this.f45627m = 1;
    }
}
