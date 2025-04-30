package com.join.mgps.zxing.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.util.AttributeSet;
import android.view.View;
import com.google.zxing.ResultPoint;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.zxing.camera.c;
import java.util.Collection;
import java.util.HashSet;
/* loaded from: classes4.dex */
public class FaceTransferViewfinderView extends View {

    /* renamed from: l  reason: collision with root package name */
    private static final String f52551l = "log";

    /* renamed from: m  reason: collision with root package name */
    private static final long f52552m = 10;

    /* renamed from: n  reason: collision with root package name */
    private static final int f52553n = 255;

    /* renamed from: o  reason: collision with root package name */
    private static final int f52554o = 10;

    /* renamed from: p  reason: collision with root package name */
    private static final int f52555p = 6;

    /* renamed from: q  reason: collision with root package name */
    private static final int f52556q = 5;

    /* renamed from: r  reason: collision with root package name */
    private static final int f52557r = 5;

    /* renamed from: s  reason: collision with root package name */
    private static float f52558s = 0.0f;

    /* renamed from: t  reason: collision with root package name */
    private static final int f52559t = 15;

    /* renamed from: u  reason: collision with root package name */
    private static final int f52560u = 30;

    /* renamed from: a  reason: collision with root package name */
    private int f52561a;

    /* renamed from: b  reason: collision with root package name */
    private Paint f52562b;

    /* renamed from: c  reason: collision with root package name */
    private int f52563c;

    /* renamed from: d  reason: collision with root package name */
    private int f52564d;

    /* renamed from: e  reason: collision with root package name */
    private Bitmap f52565e;

    /* renamed from: f  reason: collision with root package name */
    private final int f52566f;

    /* renamed from: g  reason: collision with root package name */
    private final int f52567g;

    /* renamed from: h  reason: collision with root package name */
    private final int f52568h;

    /* renamed from: i  reason: collision with root package name */
    private Collection<ResultPoint> f52569i;

    /* renamed from: j  reason: collision with root package name */
    private Collection<ResultPoint> f52570j;

    /* renamed from: k  reason: collision with root package name */
    boolean f52571k;

    public FaceTransferViewfinderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        float f4 = context.getResources().getDisplayMetrics().density;
        f52558s = f4;
        this.f52561a = (int) (f4 * 20.0f);
        this.f52562b = new Paint();
        Resources resources = getResources();
        this.f52566f = resources.getColor(R.color.viewfinder_mask);
        this.f52567g = resources.getColor(R.color.result_view);
        this.f52568h = resources.getColor(R.color.possible_result_points);
        this.f52569i = new HashSet(5);
    }

    public void a(ResultPoint resultPoint) {
        this.f52569i.add(resultPoint);
    }

    public void b(Bitmap bitmap) {
        this.f52565e = bitmap;
        invalidate();
    }

    public void c() {
        this.f52565e = null;
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
        Rect e4 = c.c().e();
        if (e4 == null) {
            return;
        }
        if (!this.f52571k) {
            this.f52571k = true;
            this.f52563c = e4.top;
            this.f52564d = e4.bottom;
        }
        int width = canvas.getWidth();
        int height = canvas.getHeight();
        this.f52562b.setColor(this.f52565e != null ? this.f52567g : this.f52566f);
        float f4 = width;
        canvas.drawRect(0.0f, 0.0f, f4, e4.top, this.f52562b);
        canvas.drawRect(0.0f, e4.top, e4.left, e4.bottom + 1, this.f52562b);
        canvas.drawRect(e4.right + 1, e4.top, f4, e4.bottom + 1, this.f52562b);
        canvas.drawRect(0.0f, e4.bottom + 1, f4, height, this.f52562b);
        if (this.f52565e != null) {
            this.f52562b.setAlpha(255);
            canvas.drawBitmap(this.f52565e, e4.left, e4.top, this.f52562b);
            return;
        }
        this.f52562b.setColor(Color.parseColor("#03e3fe"));
        canvas.drawRect(e4.left, e4.top, i2 + this.f52561a, i4 + 10, this.f52562b);
        canvas.drawRect(e4.left, e4.top, i5 + 10, i6 + this.f52561a, this.f52562b);
        int i17 = e4.right;
        canvas.drawRect(i17 - this.f52561a, e4.top, i17, i7 + 10, this.f52562b);
        int i18 = e4.right;
        canvas.drawRect(i18 - 10, e4.top, i18, i8 + this.f52561a, this.f52562b);
        canvas.drawRect(e4.left, i10 - 10, i9 + this.f52561a, e4.bottom, this.f52562b);
        canvas.drawRect(e4.left, i12 - this.f52561a, i11 + 10, e4.bottom, this.f52562b);
        canvas.drawRect(i13 - this.f52561a, i14 - 10, e4.right, e4.bottom, this.f52562b);
        canvas.drawRect(i15 - 10, i16 - this.f52561a, e4.right, e4.bottom, this.f52562b);
        int i19 = this.f52563c + 5;
        this.f52563c = i19;
        if (i19 >= e4.bottom) {
            this.f52563c = e4.top;
        }
        Rect rect = new Rect();
        rect.left = e4.left;
        rect.right = e4.right;
        int i20 = this.f52563c;
        rect.top = i20;
        rect.bottom = i20 + 18;
        canvas.drawBitmap(((BitmapDrawable) getResources().getDrawable(R.drawable.qrcode_scan_line)).getBitmap(), (Rect) null, rect, this.f52562b);
        this.f52562b.setColor(-16777216);
        this.f52562b.setTextSize(f52558s * 15.0f);
        this.f52562b.setAlpha(64);
        this.f52562b.setTypeface(Typeface.create("System", 1));
        String string = getResources().getString(R.string.scan_qr_code_declar);
        canvas.drawText(string, (f4 - this.f52562b.measureText(string)) / 2.0f, e4.bottom + (f52558s * 30.0f), this.f52562b);
        Collection<ResultPoint> collection = this.f52569i;
        Collection<ResultPoint> collection2 = this.f52570j;
        if (collection.isEmpty()) {
            this.f52570j = null;
        } else {
            this.f52569i = new HashSet(5);
            this.f52570j = collection;
            this.f52562b.setAlpha(255);
            this.f52562b.setColor(this.f52568h);
            for (ResultPoint resultPoint : collection) {
                canvas.drawCircle(e4.left + resultPoint.getX(), e4.top + resultPoint.getY(), 6.0f, this.f52562b);
            }
        }
        if (collection2 != null) {
            this.f52562b.setAlpha(127);
            this.f52562b.setColor(this.f52568h);
            for (ResultPoint resultPoint2 : collection2) {
                canvas.drawCircle(e4.left + resultPoint2.getX(), e4.top + resultPoint2.getY(), 3.0f, this.f52562b);
            }
        }
        postInvalidateDelayed(10L, e4.left, e4.top, e4.right, e4.bottom);
    }
}
