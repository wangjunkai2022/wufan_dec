package com.join.mgps.customview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.join.android.app.mgsim.wufun.R;
/* loaded from: classes3.dex */
public class PictureHProgress extends View {

    /* renamed from: a  reason: collision with root package name */
    int f45908a;

    /* renamed from: b  reason: collision with root package name */
    int f45909b;

    /* renamed from: c  reason: collision with root package name */
    int f45910c;

    /* renamed from: d  reason: collision with root package name */
    int f45911d;

    /* renamed from: e  reason: collision with root package name */
    int f45912e;

    /* renamed from: f  reason: collision with root package name */
    int f45913f;

    /* renamed from: g  reason: collision with root package name */
    int f45914g;

    /* renamed from: h  reason: collision with root package name */
    Bitmap f45915h;

    /* renamed from: i  reason: collision with root package name */
    int f45916i;

    /* renamed from: j  reason: collision with root package name */
    int f45917j;

    /* renamed from: k  reason: collision with root package name */
    Paint f45918k;

    /* renamed from: l  reason: collision with root package name */
    Paint f45919l;

    /* renamed from: m  reason: collision with root package name */
    Paint f45920m;

    /* renamed from: n  reason: collision with root package name */
    private PorterDuffXfermode f45921n;

    /* renamed from: o  reason: collision with root package name */
    float f45922o;

    /* renamed from: p  reason: collision with root package name */
    int f45923p;

    /* renamed from: q  reason: collision with root package name */
    int f45924q;

    public PictureHProgress(Context context) {
        this(context, null);
    }

    private void a(AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.PictureHProgress);
        this.f45908a = obtainStyledAttributes.getColor(3, this.f45908a);
        this.f45909b = obtainStyledAttributes.getColor(0, this.f45909b);
        this.f45910c = obtainStyledAttributes.getResourceId(2, this.f45910c);
        this.f45911d = (int) obtainStyledAttributes.getDimension(1, this.f45911d);
        this.f45912e = (int) obtainStyledAttributes.getDimension(4, this.f45912e);
        this.f45913f = obtainStyledAttributes.getInteger(6, this.f45913f);
        this.f45914g = obtainStyledAttributes.getInteger(5, this.f45914g);
        obtainStyledAttributes.recycle();
    }

    public int getProgress() {
        return this.f45913f;
    }

    @Override // android.view.View
    @RequiresApi(api = 21)
    protected synchronized void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int saveLayer = canvas.saveLayer(0.0f, 0.0f, this.f45923p, this.f45924q, this.f45919l);
        int i2 = ((int) (this.f45911d * this.f45922o)) / 2;
        if (this.f45915h == null) {
            int i4 = i2 * 2;
            this.f45915h = Bitmap.createScaledBitmap(BitmapFactory.decodeResource(getResources(), this.f45910c), i4, i4, true);
        }
        int i5 = this.f45912e / 2;
        int i6 = this.f45923p - i2;
        int i7 = this.f45924q;
        float f4 = i2;
        float f5 = (i7 / 2) - i5;
        float f6 = (i7 / 2) + i5;
        float f7 = i5;
        canvas.drawRoundRect(new RectF(f4, f5, i6, f6), f7, f7, this.f45919l);
        this.f45918k.setXfermode(this.f45921n);
        canvas.drawRect(new RectF(f4, f5, (i6 * getProgress()) / this.f45914g, f6), this.f45918k);
        float width = ((this.f45923p - this.f45915h.getWidth()) * getProgress()) / this.f45914g;
        float f8 = (this.f45924q / 2) - i2;
        Bitmap bitmap = this.f45915h;
        if (bitmap != null) {
            canvas.drawBitmap(bitmap, width, f8, this.f45920m);
        }
        this.f45918k.setXfermode(null);
        canvas.restoreToCount(saveLayer);
    }

    @Override // android.view.View
    protected synchronized void onMeasure(int i2, int i4) {
        this.f45923p = View.MeasureSpec.getSize(i2);
        int max = Math.max(this.f45911d, this.f45912e);
        this.f45924q = max;
        setMeasuredDimension(this.f45923p, max);
    }

    public void setMaxProgress(int i2) {
        this.f45914g = i2;
    }

    public void setProgress(int i2) {
        int i4 = this.f45914g;
        if (i2 > i4) {
            i2 = i4;
        }
        this.f45913f = i2;
        postInvalidate();
    }

    public PictureHProgress(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PictureHProgress(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f45908a = -1;
        this.f45909b = -3355444;
        this.f45910c = R.drawable.ic_progress_logo;
        this.f45911d = 56;
        this.f45912e = 25;
        this.f45913f = 0;
        this.f45914g = 100;
        this.f45915h = null;
        this.f45916i = 0;
        this.f45917j = 0;
        this.f45922o = 1.0f;
        a(attributeSet);
        setLayerType(1, null);
        this.f45921n = new PorterDuffXfermode(PorterDuff.Mode.SRC_IN);
        Paint paint = new Paint();
        this.f45919l = paint;
        paint.setColor(this.f45909b);
        this.f45919l.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.f45918k = paint2;
        paint2.setColor(this.f45908a);
        this.f45918k.setAntiAlias(true);
        Paint paint3 = new Paint();
        this.f45920m = paint3;
        paint3.setAntiAlias(true);
    }
}
