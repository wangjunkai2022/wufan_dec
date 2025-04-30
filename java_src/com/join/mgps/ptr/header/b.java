package com.join.mgps.ptr.header;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.Transformation;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: RentalsSunDrawable.java */
/* loaded from: classes4.dex */
public class b extends Drawable implements Animatable {
    private static final float A = 1.05f;
    private static final float B = 0.22f;
    private static final float C = 1.2f;
    private static final float D = 1.3f;
    private static final float E = 0.75f;
    private static final float F = 1.2f;
    private static final float G = 1.5f;
    private static final Interpolator H = new LinearInterpolator();

    /* renamed from: x  reason: collision with root package name */
    private static final float f51302x = 0.3f;

    /* renamed from: y  reason: collision with root package name */
    private static final int f51303y = 1000;

    /* renamed from: z  reason: collision with root package name */
    private static final float f51304z = 0.65f;

    /* renamed from: a  reason: collision with root package name */
    private View f51305a;

    /* renamed from: c  reason: collision with root package name */
    private Animation f51307c;

    /* renamed from: d  reason: collision with root package name */
    private int f51308d;

    /* renamed from: e  reason: collision with root package name */
    private int f51309e;

    /* renamed from: f  reason: collision with root package name */
    private int f51310f;

    /* renamed from: g  reason: collision with root package name */
    private float f51311g;

    /* renamed from: h  reason: collision with root package name */
    private float f51312h;

    /* renamed from: i  reason: collision with root package name */
    private int f51313i;

    /* renamed from: j  reason: collision with root package name */
    private float f51314j;

    /* renamed from: k  reason: collision with root package name */
    private float f51315k;

    /* renamed from: l  reason: collision with root package name */
    private float f51316l;

    /* renamed from: n  reason: collision with root package name */
    private float f51318n;

    /* renamed from: o  reason: collision with root package name */
    private float f51319o;

    /* renamed from: r  reason: collision with root package name */
    private Bitmap f51322r;

    /* renamed from: s  reason: collision with root package name */
    private Bitmap f51323s;

    /* renamed from: t  reason: collision with root package name */
    private Bitmap f51324t;

    /* renamed from: v  reason: collision with root package name */
    private Context f51326v;

    /* renamed from: w  reason: collision with root package name */
    private int f51327w;

    /* renamed from: m  reason: collision with root package name */
    private int f51317m = 100;

    /* renamed from: p  reason: collision with root package name */
    private float f51320p = 0.0f;

    /* renamed from: q  reason: collision with root package name */
    private float f51321q = 0.0f;

    /* renamed from: u  reason: collision with root package name */
    private boolean f51325u = false;

    /* renamed from: b  reason: collision with root package name */
    private Matrix f51306b = new Matrix();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RentalsSunDrawable.java */
    /* loaded from: classes4.dex */
    public class a extends Animation {
        a() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f4, Transformation transformation) {
            b.this.j(f4);
        }
    }

    public b(Context context, View view) {
        this.f51326v = context;
        this.f51305a = view;
        f();
        a();
        k();
    }

    private void a() {
        Bitmap decodeResource = BitmapFactory.decodeResource(getContext().getResources(), R.drawable.rentals_sky);
        this.f51322r = decodeResource;
        this.f51322r = Bitmap.createScaledBitmap(decodeResource, this.f51309e, this.f51310f, true);
        Bitmap decodeResource2 = BitmapFactory.decodeResource(getContext().getResources(), R.drawable.about_papa_icon);
        this.f51324t = decodeResource2;
        int i2 = this.f51309e;
        this.f51324t = Bitmap.createScaledBitmap(decodeResource2, i2, (int) (i2 * B), true);
        Bitmap decodeResource3 = BitmapFactory.decodeResource(getContext().getResources(), R.drawable.rentals_sun);
        this.f51323s = decodeResource3;
        int i4 = this.f51317m;
        this.f51323s = Bitmap.createScaledBitmap(decodeResource3, i4, i4, true);
    }

    private void b(Canvas canvas) {
        Matrix matrix = this.f51306b;
        matrix.reset();
        int max = Math.max(0, this.f51308d - this.f51327w);
        float min = Math.min(1.0f, Math.abs(this.f51320p));
        float f4 = min - f51302x;
        float f5 = A;
        if (f4 > 0.0f) {
            f5 = A - ((f4 / 0.7f) * 0.049999952f);
        }
        int i2 = this.f51309e;
        matrix.postScale(f5, f5);
        matrix.postTranslate((-((i2 * f5) - i2)) / 2.0f, (((max + 50) + this.f51311g) - ((this.f51310f * (f5 - 1.0f)) / 2.0f)) + (this.f51312h * min));
        canvas.drawBitmap(this.f51322r, matrix, null);
    }

    private void c(Canvas canvas) {
        float f4;
        float f5;
        Matrix matrix = this.f51306b;
        matrix.reset();
        float f6 = this.f51320p;
        if (f6 > 1.0f) {
            f6 = (f6 + 9.0f) / 10.0f;
        }
        float f7 = this.f51317m / 2.0f;
        float f8 = 1.2f;
        float f9 = this.f51318n;
        float f10 = this.f51319o + ((this.f51327w / 2) * (1.0f - f6));
        float f11 = f6 - f51302x;
        if (f11 > 0.0f) {
            float f12 = f11 / 0.7f;
            float f13 = 1.0f - (0.25f * f12);
            f8 = 1.2f + (f12 * 0.29999995f);
            float f14 = f7 * f13;
            float f15 = f10 * (2.0f - f13);
            matrix.preTranslate((f7 - f14) + f9, f15);
            matrix.preScale(f13, f13);
            f4 = f9 + f7;
            f5 = f15 + f14;
        } else {
            matrix.postTranslate(f9, f10);
            f4 = f9 + f7;
            f5 = f10 + f7;
        }
        boolean z3 = this.f51325u;
        matrix.postRotate((z3 ? -360 : 360) * this.f51321q * (z3 ? 1.0f : f8), f4, f5);
        canvas.drawBitmap(this.f51323s, matrix, null);
    }

    private void d(Canvas canvas) {
        float f4;
        float f5;
        Matrix matrix = this.f51306b;
        matrix.reset();
        int max = Math.max(0, this.f51308d - this.f51327w);
        float min = Math.min(1.0f, Math.abs(this.f51320p));
        float f6 = min - f51302x;
        float f7 = 1.2f;
        if (f6 > 0.0f) {
            float f8 = f6 / 0.7f;
            f7 = 1.2f + (0.099999905f * f8);
            float f9 = this.f51314j;
            f5 = f9 - ((this.f51315k - f9) * f8);
            f4 = this.f51316l * (1.0f - f8);
        } else {
            float f10 = min / f51302x;
            float f11 = this.f51314j;
            f4 = f10 * this.f51316l;
            f5 = f11;
        }
        int i2 = this.f51309e;
        matrix.postScale(f7, f7);
        matrix.postTranslate((-((i2 * f7) - i2)) / 2.0f, ((max + f5) - ((this.f51313i * (f7 - 1.0f)) / 2.0f)) + f4);
        canvas.drawBitmap(this.f51324t, matrix, null);
    }

    private void f() {
        com.join.mgps.ptr.util.b.c(this.f51326v);
        this.f51327w = com.join.mgps.ptr.util.b.b(120.0f);
        int i2 = getContext().getResources().getDisplayMetrics().widthPixels;
        this.f51309e = i2;
        int i4 = (int) (i2 * f51304z);
        this.f51310f = i4;
        this.f51311g = -(i4 * 0.28f);
        this.f51312h = com.join.mgps.ptr.util.b.a(15.0f);
        int i5 = (int) (this.f51309e * B);
        this.f51313i = i5;
        int i6 = this.f51327w;
        this.f51314j = (i6 - (i5 * 1.2f)) + (i6 * 0.42f);
        this.f51315k = (i6 - (i5 * D)) + (i6 * 0.42f);
        this.f51316l = com.join.mgps.ptr.util.b.a(10.0f);
        this.f51318n = this.f51309e * f51302x;
        this.f51319o = this.f51327w * 0.5f;
        this.f51308d = 0;
    }

    private Context getContext() {
        return this.f51326v;
    }

    private void k() {
        a aVar = new a();
        this.f51307c = aVar;
        aVar.setRepeatCount(-1);
        this.f51307c.setRepeatMode(1);
        this.f51307c.setInterpolator(H);
        this.f51307c.setDuration(1000L);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int save = canvas.save();
        canvas.translate(0.0f, this.f51327w - this.f51308d);
        b(canvas);
        c(canvas);
        d(canvas);
        canvas.restoreToCount(save);
    }

    public int e() {
        return this.f51327w;
    }

    public void g(int i2) {
        this.f51308d = i2;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public void h() {
        i(0.0f);
        j(0.0f);
    }

    public void i(float f4) {
        this.f51320p = f4;
        j(f4);
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return false;
    }

    public void j(float f4) {
        this.f51321q = f4;
        this.f51305a.invalidate();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(int i2, int i4, int i5, int i6) {
        super.setBounds(i2, i4, i5, this.f51310f + i4);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f51307c.reset();
        this.f51325u = true;
        this.f51305a.startAnimation(this.f51307c);
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f51305a.clearAnimation();
        this.f51325u = false;
        h();
    }
}
