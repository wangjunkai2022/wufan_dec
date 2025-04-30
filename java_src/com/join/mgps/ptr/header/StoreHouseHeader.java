package com.join.mgps.ptr.header;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Transformation;
import com.facebook.common.statfs.StatFsHelper;
import com.join.mgps.ptr.PtrFrameLayout;
import com.join.mgps.ptr.PtrUIHeader;
import java.util.ArrayList;
/* loaded from: classes4.dex */
public class StoreHouseHeader extends PtrUIHeader {

    /* renamed from: a  reason: collision with root package name */
    public ArrayList<c> f51210a;

    /* renamed from: b  reason: collision with root package name */
    private int f51211b;

    /* renamed from: c  reason: collision with root package name */
    private float f51212c;

    /* renamed from: d  reason: collision with root package name */
    private int f51213d;

    /* renamed from: e  reason: collision with root package name */
    private float f51214e;

    /* renamed from: f  reason: collision with root package name */
    private int f51215f;

    /* renamed from: g  reason: collision with root package name */
    private float f51216g;

    /* renamed from: h  reason: collision with root package name */
    private int f51217h;

    /* renamed from: i  reason: collision with root package name */
    private int f51218i;

    /* renamed from: j  reason: collision with root package name */
    private int f51219j;

    /* renamed from: k  reason: collision with root package name */
    private int f51220k;

    /* renamed from: l  reason: collision with root package name */
    private float f51221l;

    /* renamed from: m  reason: collision with root package name */
    private float f51222m;

    /* renamed from: n  reason: collision with root package name */
    private float f51223n;

    /* renamed from: o  reason: collision with root package name */
    private int f51224o;

    /* renamed from: p  reason: collision with root package name */
    private int f51225p;

    /* renamed from: q  reason: collision with root package name */
    private int f51226q;

    /* renamed from: r  reason: collision with root package name */
    private Transformation f51227r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f51228s;

    /* renamed from: t  reason: collision with root package name */
    private b f51229t;

    /* renamed from: u  reason: collision with root package name */
    private int f51230u;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private int f51231a;

        /* renamed from: b  reason: collision with root package name */
        private int f51232b;

        /* renamed from: c  reason: collision with root package name */
        private int f51233c;

        /* renamed from: d  reason: collision with root package name */
        private int f51234d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f51235e;

        private b() {
            this.f51231a = 0;
            this.f51232b = 0;
            this.f51233c = 0;
            this.f51234d = 0;
            this.f51235e = true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c() {
            this.f51235e = true;
            this.f51231a = 0;
            this.f51234d = StoreHouseHeader.this.f51224o / StoreHouseHeader.this.f51210a.size();
            this.f51232b = StoreHouseHeader.this.f51225p / this.f51234d;
            this.f51233c = (StoreHouseHeader.this.f51210a.size() / this.f51232b) + 1;
            run();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d() {
            this.f51235e = false;
            StoreHouseHeader.this.removeCallbacks(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = this.f51231a % this.f51232b;
            for (int i4 = 0; i4 < this.f51233c; i4++) {
                int i5 = (this.f51232b * i4) + i2;
                if (i5 <= this.f51231a) {
                    c cVar = StoreHouseHeader.this.f51210a.get(i5 % StoreHouseHeader.this.f51210a.size());
                    cVar.setFillAfter(false);
                    cVar.setFillEnabled(true);
                    cVar.setFillBefore(false);
                    cVar.setDuration(StoreHouseHeader.this.f51226q);
                    cVar.f(StoreHouseHeader.this.f51222m, StoreHouseHeader.this.f51223n);
                }
            }
            this.f51231a++;
            if (this.f51235e) {
                StoreHouseHeader.this.postDelayed(this, this.f51234d);
            }
        }
    }

    public StoreHouseHeader(Context context) {
        super(context);
        this.f51210a = new ArrayList<>();
        this.f51211b = -1;
        this.f51212c = 1.0f;
        this.f51213d = -1;
        this.f51214e = 0.7f;
        this.f51215f = -1;
        this.f51216g = 0.0f;
        this.f51217h = 0;
        this.f51218i = 0;
        this.f51219j = 0;
        this.f51220k = 0;
        this.f51221l = 0.4f;
        this.f51222m = 1.0f;
        this.f51223n = 0.4f;
        this.f51224o = 1000;
        this.f51225p = 1000;
        this.f51226q = StatFsHelper.f11741h;
        this.f51227r = new Transformation();
        this.f51228s = false;
        this.f51229t = new b();
        this.f51230u = -1;
        l();
    }

    private int getBottomOffset() {
        return getPaddingBottom() + com.join.mgps.ptr.util.b.b(10.0f);
    }

    private int getTopOffset() {
        return getPaddingTop() + com.join.mgps.ptr.util.b.b(10.0f);
    }

    private void k() {
        this.f51228s = true;
        this.f51229t.c();
        invalidate();
    }

    private void l() {
        com.join.mgps.ptr.util.b.c(getContext());
        this.f51211b = com.join.mgps.ptr.util.b.b(1.0f);
        this.f51213d = com.join.mgps.ptr.util.b.b(40.0f);
        this.f51215f = com.join.mgps.ptr.util.b.f51366a / 2;
    }

    private void q() {
        this.f51228s = false;
        this.f51229t.d();
    }

    private void setProgress(float f4) {
        this.f51216g = f4;
    }

    @Override // com.join.mgps.ptr.PtrUIHeader, com.join.mgps.ptr.c
    public void a(PtrFrameLayout ptrFrameLayout) {
        q();
    }

    @Override // com.join.mgps.ptr.PtrUIHeader, com.join.mgps.ptr.c
    public void b(PtrFrameLayout ptrFrameLayout, boolean z3, byte b4, com.join.mgps.ptr.indicator.a aVar) {
        setProgress(Math.min(1.0f, aVar.c()));
        invalidate();
    }

    @Override // com.join.mgps.ptr.PtrUIHeader, com.join.mgps.ptr.c
    public void c(PtrFrameLayout ptrFrameLayout) {
        q();
        for (int i2 = 0; i2 < this.f51210a.size(); i2++) {
            this.f51210a.get(i2).b(this.f51215f);
        }
    }

    @Override // com.join.mgps.ptr.PtrUIHeader, com.join.mgps.ptr.c
    public void d(PtrFrameLayout ptrFrameLayout) {
    }

    @Override // com.join.mgps.ptr.PtrUIHeader, com.join.mgps.ptr.c
    public void e(PtrFrameLayout ptrFrameLayout) {
        k();
    }

    public int getLoadingAniDuration() {
        return this.f51224o;
    }

    public float getScale() {
        return this.f51212c;
    }

    public void m(ArrayList<float[]> arrayList) {
        boolean z3 = this.f51210a.size() > 0;
        this.f51210a.clear();
        float f4 = 0.0f;
        float f5 = 0.0f;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            float[] fArr = arrayList.get(i2);
            PointF pointF = new PointF(com.join.mgps.ptr.util.b.b(fArr[0]) * this.f51212c, com.join.mgps.ptr.util.b.b(fArr[1]) * this.f51212c);
            PointF pointF2 = new PointF(com.join.mgps.ptr.util.b.b(fArr[2]) * this.f51212c, com.join.mgps.ptr.util.b.b(fArr[3]) * this.f51212c);
            f4 = Math.max(Math.max(f4, pointF.x), pointF2.x);
            f5 = Math.max(Math.max(f5, pointF.y), pointF2.y);
            c cVar = new c(i2, pointF, pointF2, this.f51230u, this.f51211b);
            cVar.b(this.f51215f);
            this.f51210a.add(cVar);
        }
        this.f51217h = (int) Math.ceil(f4);
        this.f51218i = (int) Math.ceil(f5);
        if (z3) {
            requestLayout();
        }
    }

    public void n(String str) {
        o(str, 25);
    }

    public void o(String str, int i2) {
        m(d.c(str, i2 * 0.01f, 14));
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float f4 = this.f51216g;
        int save = canvas.save();
        int size = this.f51210a.size();
        for (int i2 = 0; i2 < size; i2++) {
            canvas.save();
            c cVar = this.f51210a.get(i2);
            PointF pointF = cVar.f51329a;
            float f5 = this.f51219j + pointF.x;
            float f6 = this.f51220k + pointF.y;
            if (this.f51228s) {
                cVar.getTransformation(getDrawingTime(), this.f51227r);
                canvas.translate(f5, f6);
            } else if (f4 == 0.0f) {
                cVar.b(this.f51215f);
            } else {
                float f7 = this.f51214e;
                float f8 = ((1.0f - f7) * i2) / size;
                float f9 = (1.0f - f7) - f8;
                if (f4 != 1.0f && f4 < 1.0f - f9) {
                    float min = f4 > f8 ? Math.min(1.0f, (f4 - f8) / f7) : 0.0f;
                    float f10 = 1.0f - min;
                    float f11 = f5 + (cVar.f51330b * f10);
                    float f12 = f6 + ((-this.f51213d) * f10);
                    Matrix matrix = new Matrix();
                    matrix.postRotate(360.0f * min);
                    matrix.postScale(min, min);
                    matrix.postTranslate(f11, f12);
                    cVar.c(this.f51221l * min);
                    canvas.concat(matrix);
                } else {
                    canvas.translate(f5, f6);
                    cVar.c(this.f51221l);
                }
            }
            cVar.a(canvas);
            canvas.restore();
        }
        if (this.f51228s) {
            invalidate();
        }
        canvas.restoreToCount(save);
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i4) {
        super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(getTopOffset() + this.f51218i + getBottomOffset(), 1073741824));
        this.f51219j = (getMeasuredWidth() - this.f51217h) / 2;
        this.f51220k = getTopOffset();
        this.f51213d = getTopOffset();
    }

    public void p(int i2) {
        String[] stringArray = getResources().getStringArray(i2);
        ArrayList<float[]> arrayList = new ArrayList<>();
        for (String str : stringArray) {
            String[] split = str.split(",");
            float[] fArr = new float[4];
            for (int i4 = 0; i4 < 4; i4++) {
                fArr[i4] = Float.parseFloat(split[i4]);
            }
            arrayList.add(fArr);
        }
        m(arrayList);
    }

    public StoreHouseHeader r(int i2) {
        this.f51213d = i2;
        return this;
    }

    public StoreHouseHeader s(int i2) {
        this.f51211b = i2;
        for (int i4 = 0; i4 < this.f51210a.size(); i4++) {
            this.f51210a.get(i4).e(i2);
        }
        return this;
    }

    public void setLoadingAniDuration(int i2) {
        this.f51224o = i2;
        this.f51225p = i2;
    }

    public void setScale(float f4) {
        this.f51212c = f4;
    }

    public StoreHouseHeader t(int i2) {
        this.f51230u = i2;
        for (int i4 = 0; i4 < this.f51210a.size(); i4++) {
            this.f51210a.get(i4).d(i2);
        }
        return this;
    }

    public StoreHouseHeader(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f51210a = new ArrayList<>();
        this.f51211b = -1;
        this.f51212c = 1.0f;
        this.f51213d = -1;
        this.f51214e = 0.7f;
        this.f51215f = -1;
        this.f51216g = 0.0f;
        this.f51217h = 0;
        this.f51218i = 0;
        this.f51219j = 0;
        this.f51220k = 0;
        this.f51221l = 0.4f;
        this.f51222m = 1.0f;
        this.f51223n = 0.4f;
        this.f51224o = 1000;
        this.f51225p = 1000;
        this.f51226q = StatFsHelper.f11741h;
        this.f51227r = new Transformation();
        this.f51228s = false;
        this.f51229t = new b();
        this.f51230u = -1;
        l();
    }

    public StoreHouseHeader(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f51210a = new ArrayList<>();
        this.f51211b = -1;
        this.f51212c = 1.0f;
        this.f51213d = -1;
        this.f51214e = 0.7f;
        this.f51215f = -1;
        this.f51216g = 0.0f;
        this.f51217h = 0;
        this.f51218i = 0;
        this.f51219j = 0;
        this.f51220k = 0;
        this.f51221l = 0.4f;
        this.f51222m = 1.0f;
        this.f51223n = 0.4f;
        this.f51224o = 1000;
        this.f51225p = 1000;
        this.f51226q = StatFsHelper.f11741h;
        this.f51227r = new Transformation();
        this.f51228s = false;
        this.f51229t = new b();
        this.f51230u = -1;
        l();
    }
}
