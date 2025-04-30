package com.join.mgps.zxing.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.View;
import com.google.zxing.ResultPoint;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.zxing.camera.c;
import java.util.Collection;
import java.util.HashSet;
/* loaded from: classes4.dex */
public final class ViewfinderView extends View {

    /* renamed from: l  reason: collision with root package name */
    private static final String f52572l = "log";

    /* renamed from: m  reason: collision with root package name */
    private static final long f52573m = 10;

    /* renamed from: n  reason: collision with root package name */
    private static final int f52574n = 255;

    /* renamed from: o  reason: collision with root package name */
    private static final int f52575o = 3;

    /* renamed from: p  reason: collision with root package name */
    private static final int f52576p = 3;

    /* renamed from: q  reason: collision with root package name */
    private static final int f52577q = 5;

    /* renamed from: r  reason: collision with root package name */
    private static final int f52578r = 5;

    /* renamed from: s  reason: collision with root package name */
    private static float f52579s = 0.0f;

    /* renamed from: t  reason: collision with root package name */
    private static final int f52580t = 16;

    /* renamed from: u  reason: collision with root package name */
    private static final int f52581u = 30;

    /* renamed from: a  reason: collision with root package name */
    private int f52582a;

    /* renamed from: b  reason: collision with root package name */
    private Paint f52583b;

    /* renamed from: c  reason: collision with root package name */
    private int f52584c;

    /* renamed from: d  reason: collision with root package name */
    private int f52585d;

    /* renamed from: e  reason: collision with root package name */
    private Bitmap f52586e;

    /* renamed from: f  reason: collision with root package name */
    private final int f52587f;

    /* renamed from: g  reason: collision with root package name */
    private final int f52588g;

    /* renamed from: h  reason: collision with root package name */
    private final int f52589h;

    /* renamed from: i  reason: collision with root package name */
    private Collection<ResultPoint> f52590i;

    /* renamed from: j  reason: collision with root package name */
    private Collection<ResultPoint> f52591j;

    /* renamed from: k  reason: collision with root package name */
    boolean f52592k;

    public ViewfinderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        float f4 = context.getResources().getDisplayMetrics().density;
        f52579s = f4;
        this.f52582a = (int) (f4 * 20.0f);
        this.f52583b = new Paint();
        Resources resources = getResources();
        this.f52587f = resources.getColor(R.color.viewfinder_mask);
        this.f52588g = resources.getColor(R.color.result_view);
        this.f52589h = resources.getColor(R.color.possible_result_points);
        this.f52590i = new HashSet(5);
    }

    public void a(ResultPoint resultPoint) {
        this.f52590i.add(resultPoint);
    }

    public void b(Bitmap bitmap) {
        this.f52586e = bitmap;
        invalidate();
    }

    public void c() {
        this.f52586e = null;
        invalidate();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int i2;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        Rect d4 = c.c().d();
        if (d4 == null) {
            return;
        }
        if (!this.f52592k) {
            this.f52592k = true;
            this.f52584c = d4.top;
            this.f52585d = d4.bottom;
        }
        int width = canvas.getWidth();
        int height = canvas.getHeight();
        this.f52583b.setColor(this.f52586e != null ? this.f52588g : this.f52587f);
        float f4 = width;
        canvas.drawRect(0.0f, 0.0f, f4, d4.top, this.f52583b);
        canvas.drawRect(0.0f, d4.top, d4.left, d4.bottom + 1, this.f52583b);
        canvas.drawRect(d4.right + 1, d4.top, f4, d4.bottom + 1, this.f52583b);
        canvas.drawRect(0.0f, d4.bottom + 1, f4, height, this.f52583b);
        if (this.f52586e != null) {
            this.f52583b.setAlpha(255);
            canvas.drawBitmap(this.f52586e, d4.left, d4.top, this.f52583b);
            return;
        }
        this.f52583b.setColor(-16711936);
        canvas.drawRect(d4.left, d4.top, i2 + this.f52582a, i4 + 3, this.f52583b);
        canvas.drawRect(d4.left, d4.top, i5 + 3, i6 + this.f52582a, this.f52583b);
        int i17 = d4.right;
        canvas.drawRect(i17 - this.f52582a, d4.top, i17, i7 + 3, this.f52583b);
        int i18 = d4.right;
        canvas.drawRect(i18 - 3, d4.top, i18, i8 + this.f52582a, this.f52583b);
        canvas.drawRect(d4.left, i10 - 3, i9 + this.f52582a, d4.bottom, this.f52583b);
        canvas.drawRect(d4.left, i12 - this.f52582a, i11 + 3, d4.bottom, this.f52583b);
        canvas.drawRect(i13 - this.f52582a, i14 - 3, d4.right, d4.bottom, this.f52583b);
        canvas.drawRect(i15 - 3, i16 - this.f52582a, d4.right, d4.bottom, this.f52583b);
        int i19 = this.f52584c + 5;
        this.f52584c = i19;
        if (i19 >= d4.bottom) {
            this.f52584c = d4.top;
        }
        float f5 = d4.left + 5;
        int i20 = this.f52584c;
        canvas.drawRect(f5, i20 - 1, d4.right - 5, i20 + 1, this.f52583b);
        this.f52583b.setColor(-1);
        this.f52583b.setTextSize(f52579s * 16.0f);
        this.f52583b.setTypeface(Typeface.create("System", 1));
        Collection<ResultPoint> collection = this.f52590i;
        Collection<ResultPoint> collection2 = this.f52591j;
        if (collection.isEmpty()) {
            this.f52591j = null;
        } else {
            this.f52590i = new HashSet(5);
            this.f52591j = collection;
            this.f52583b.setAlpha(255);
            this.f52583b.setColor(this.f52589h);
            for (ResultPoint resultPoint : collection) {
                canvas.drawCircle(d4.left + resultPoint.getX(), d4.top + resultPoint.getY(), 6.0f, this.f52583b);
            }
        }
        if (collection2 != null) {
            this.f52583b.setAlpha(127);
            this.f52583b.setColor(this.f52589h);
            for (ResultPoint resultPoint2 : collection2) {
                canvas.drawCircle(d4.left + resultPoint2.getX(), d4.top + resultPoint2.getY(), 3.0f, this.f52583b);
            }
        }
        postInvalidateDelayed(10L, d4.left, d4.top, d4.right, d4.bottom);
    }
}
