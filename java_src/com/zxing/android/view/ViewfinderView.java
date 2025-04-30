package com.zxing.android.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.util.AttributeSet;
import android.view.View;
import com.google.zxing.ResultPoint;
import com.join.android.app.mgsim.wufun.R;
import com.zxing.android.camera.c;
import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes3.dex */
public final class ViewfinderView extends View {

    /* renamed from: m  reason: collision with root package name */
    private static final long f65106m = 30;

    /* renamed from: n  reason: collision with root package name */
    private static final int f65107n = 255;

    /* renamed from: o  reason: collision with root package name */
    private static final int f65108o = 5;

    /* renamed from: p  reason: collision with root package name */
    private static final int f65109p = 10;

    /* renamed from: q  reason: collision with root package name */
    private static final int f65110q = 6;

    /* renamed from: r  reason: collision with root package name */
    private static final int f65111r = 5;

    /* renamed from: s  reason: collision with root package name */
    private static final int f65112s = 5;

    /* renamed from: t  reason: collision with root package name */
    private static float f65113t = 0.0f;

    /* renamed from: u  reason: collision with root package name */
    private static final int f65114u = 16;

    /* renamed from: v  reason: collision with root package name */
    private static final int f65115v = 30;

    /* renamed from: a  reason: collision with root package name */
    private int f65116a;

    /* renamed from: b  reason: collision with root package name */
    private Paint f65117b;

    /* renamed from: c  reason: collision with root package name */
    private int f65118c;

    /* renamed from: d  reason: collision with root package name */
    private int f65119d;

    /* renamed from: e  reason: collision with root package name */
    private Bitmap f65120e;

    /* renamed from: f  reason: collision with root package name */
    private final int f65121f;

    /* renamed from: g  reason: collision with root package name */
    private final int f65122g;

    /* renamed from: h  reason: collision with root package name */
    private final int f65123h;

    /* renamed from: i  reason: collision with root package name */
    private Collection<ResultPoint> f65124i;

    /* renamed from: j  reason: collision with root package name */
    private Collection<ResultPoint> f65125j;

    /* renamed from: k  reason: collision with root package name */
    private c f65126k;

    /* renamed from: l  reason: collision with root package name */
    boolean f65127l;

    public ViewfinderView(Context context) {
        this(context, null);
    }

    public void a(ResultPoint resultPoint) {
        this.f65124i.add(resultPoint);
    }

    public void b(Bitmap bitmap) {
        this.f65120e = bitmap;
        invalidate();
    }

    public void c() {
        Bitmap bitmap = this.f65120e;
        this.f65120e = null;
        if (bitmap != null) {
            bitmap.recycle();
        }
        invalidate();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int i2;
        int i4;
        Rect c4 = this.f65126k.c();
        if (c4 == null) {
            return;
        }
        if (!this.f65127l) {
            this.f65127l = true;
            this.f65118c = c4.top;
            this.f65119d = c4.bottom;
        }
        int width = canvas.getWidth();
        int height = canvas.getHeight();
        this.f65117b.setColor(this.f65120e != null ? this.f65122g : this.f65121f);
        float f4 = width;
        canvas.drawRect(0.0f, 0.0f, f4, c4.top, this.f65117b);
        canvas.drawRect(0.0f, c4.top, c4.left, c4.bottom + 1, this.f65117b);
        canvas.drawRect(c4.right + 1, c4.top, f4, c4.bottom + 1, this.f65117b);
        canvas.drawRect(0.0f, c4.bottom + 1, f4, height, this.f65117b);
        if (this.f65120e != null) {
            this.f65117b.setAlpha(255);
            canvas.drawBitmap(this.f65120e, c4.left, c4.top, this.f65117b);
            return;
        }
        this.f65117b.setColor(-1);
        canvas.drawRect(c4.left, c4.top, c4.right + 1, i2 + 2, this.f65117b);
        canvas.drawRect(c4.left, c4.top + 2, i4 + 2, c4.bottom - 1, this.f65117b);
        int i5 = c4.right;
        canvas.drawRect(i5 - 1, c4.top, i5 + 1, c4.bottom - 1, this.f65117b);
        float f5 = c4.left;
        int i6 = c4.bottom;
        canvas.drawRect(f5, i6 - 1, c4.right + 1, i6 + 1, this.f65117b);
        this.f65117b.setColor(-15809537);
        this.f65117b.setAntiAlias(true);
        int i7 = c4.left;
        int i8 = c4.top;
        canvas.drawRect((i7 - 10) + 2, (i8 - 10) + 2, ((i7 + this.f65116a) - 10) + 2, i8 + 2, this.f65117b);
        int i9 = c4.left;
        int i10 = c4.top;
        canvas.drawRect((i9 - 10) + 2, (i10 - 10) + 2, i9 + 2, ((i10 + this.f65116a) - 10) + 2, this.f65117b);
        int i11 = c4.right;
        int i12 = c4.top;
        canvas.drawRect(((i11 - this.f65116a) + 10) - 2, (i12 - 10) + 2, (i11 + 10) - 2, i12 + 2, this.f65117b);
        int i13 = c4.right;
        int i14 = c4.top;
        canvas.drawRect(i13 - 2, (i14 - 10) + 2, (i13 + 10) - 2, ((i14 + this.f65116a) - 10) + 2, this.f65117b);
        int i15 = c4.left;
        int i16 = c4.bottom;
        canvas.drawRect((i15 - 10) + 2, i16 - 2, ((i15 + this.f65116a) - 10) + 2, (i16 + 10) - 2, this.f65117b);
        int i17 = c4.left;
        int i18 = c4.bottom;
        canvas.drawRect((i17 - 10) + 2, ((i18 - this.f65116a) + 10) - 2, i17 + 2, (i18 + 10) - 2, this.f65117b);
        int i19 = c4.right;
        int i20 = c4.bottom;
        canvas.drawRect(((i19 - this.f65116a) + 10) - 2, i20 - 2, (i19 + 10) - 2, (i20 + 10) - 2, this.f65117b);
        int i21 = c4.right;
        int i22 = c4.bottom;
        canvas.drawRect(i21 - 2, ((i22 - this.f65116a) + 10) - 2, (i21 + 10) - 2, (i22 + 10) - 2, this.f65117b);
        int i23 = this.f65118c + 5;
        this.f65118c = i23;
        if (i23 >= c4.bottom) {
            this.f65118c = c4.top;
        }
        Rect rect = new Rect();
        rect.left = c4.left;
        rect.right = c4.right;
        int i24 = this.f65118c;
        rect.top = i24;
        rect.bottom = i24 + 18;
        canvas.drawBitmap(((BitmapDrawable) getResources().getDrawable(R.drawable.qr_scan_line)).getBitmap(), (Rect) null, rect, this.f65117b);
        postInvalidateDelayed(f65106m, c4.left, c4.top, c4.right, c4.bottom);
    }

    public void setCameraManager(c cVar) {
        this.f65126k = cVar;
    }

    public ViewfinderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f65117b = new Paint(1);
        this.f65121f = 1610612736;
        this.f65122g = -1342177280;
        this.f65123h = -1056964864;
        this.f65124i = new ArrayList(5);
        this.f65125j = null;
        float f4 = context.getResources().getDisplayMetrics().density;
        f65113t = f4;
        this.f65116a = (int) (f4 * 20.0f);
    }
}
