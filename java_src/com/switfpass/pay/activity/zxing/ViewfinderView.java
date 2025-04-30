package com.switfpass.pay.activity.zxing;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import com.google.zxing.ResultPoint;
import com.join.android.app.mgsim.wufun.R;
import com.switfpass.pay.activity.zxing.camera.a;
import java.util.Collection;
import java.util.HashSet;
/* loaded from: classes4.dex */
public final class ViewfinderView extends View {

    /* renamed from: n  reason: collision with root package name */
    private static final int[] f58712n = {0, 64, 128, 192, 255, 192, 128, 64};

    /* renamed from: o  reason: collision with root package name */
    private static float f58713o;

    /* renamed from: a  reason: collision with root package name */
    private final Paint f58714a;

    /* renamed from: b  reason: collision with root package name */
    private Bitmap f58715b;

    /* renamed from: c  reason: collision with root package name */
    private final int f58716c;

    /* renamed from: d  reason: collision with root package name */
    private final int f58717d;

    /* renamed from: e  reason: collision with root package name */
    private final int f58718e;

    /* renamed from: f  reason: collision with root package name */
    private final int f58719f;

    /* renamed from: g  reason: collision with root package name */
    private int f58720g;

    /* renamed from: h  reason: collision with root package name */
    private int f58721h;

    /* renamed from: i  reason: collision with root package name */
    private Collection f58722i;

    /* renamed from: j  reason: collision with root package name */
    private Collection f58723j;

    /* renamed from: k  reason: collision with root package name */
    private int f58724k;

    /* renamed from: l  reason: collision with root package name */
    private Rect f58725l;

    /* renamed from: m  reason: collision with root package name */
    private Drawable f58726m;

    public ViewfinderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f58724k = 0;
        this.f58714a = new Paint();
        Resources resources = getResources();
        this.f58716c = resources.getColor(R.bool.abc_action_bar_embed_tabs);
        this.f58717d = resources.getColor(R.bool.abc_config_actionMenuItemAllCaps);
        this.f58718e = resources.getColor(R.bool.bottomsheet_is_tablet);
        this.f58719f = resources.getColor(R.bool.default_circle_indicator_centered);
        this.f58720g = 0;
        this.f58722i = new HashSet(5);
        this.f58725l = new Rect();
        this.f58726m = getResources().getDrawable(2130837586);
        float f4 = context.getResources().getDisplayMetrics().density;
        f58713o = f4;
        this.f58721h = (int) (f4 * 20.0f);
    }

    public final void a(ResultPoint resultPoint) {
        this.f58722i.add(resultPoint);
    }

    public final void b(Bitmap bitmap) {
        this.f58715b = bitmap;
        invalidate();
    }

    public final void c() {
        this.f58715b = null;
        invalidate();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
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
        Rect d4 = a.c().d();
        if (d4 == null) {
            return;
        }
        int width = canvas.getWidth();
        int height = canvas.getHeight();
        this.f58714a.setColor(this.f58715b != null ? this.f58717d : this.f58716c);
        float f4 = width;
        canvas.drawRect(0.0f, 0.0f, f4, d4.top, this.f58714a);
        canvas.drawRect(0.0f, d4.top, d4.left, d4.bottom, this.f58714a);
        canvas.drawRect(d4.right, d4.top, f4, d4.bottom, this.f58714a);
        canvas.drawRect(0.0f, d4.bottom, f4, height, this.f58714a);
        if (this.f58715b != null) {
            this.f58714a.setAlpha(255);
            canvas.drawBitmap(this.f58715b, (Rect) null, d4, this.f58714a);
            return;
        }
        this.f58714a.setColor(this.f58718e);
        canvas.drawRect(d4.left, d4.top, i2 + this.f58721h, i4 + 10, this.f58714a);
        canvas.drawRect(d4.left, d4.top, i5 + 10, i6 + this.f58721h, this.f58714a);
        int i17 = d4.right;
        canvas.drawRect(i17 - this.f58721h, d4.top, i17, i7 + 10, this.f58714a);
        int i18 = d4.right;
        canvas.drawRect(i18 - 10, d4.top, i18, i8 + this.f58721h, this.f58714a);
        canvas.drawRect(d4.left, i10 - 10, i9 + this.f58721h, d4.bottom, this.f58714a);
        canvas.drawRect(d4.left, i12 - this.f58721h, i11 + 10, d4.bottom, this.f58714a);
        canvas.drawRect(i13 - this.f58721h, i14 - 10, d4.right, d4.bottom, this.f58714a);
        canvas.drawRect(i15 - 10, i16 - this.f58721h, d4.right, d4.bottom, this.f58714a);
        this.f58720g = (this.f58720g + 1) % f58712n.length;
        int i19 = this.f58724k + 3;
        this.f58724k = i19;
        int i20 = d4.bottom;
        int i21 = d4.top;
        if (i19 < i20 - i21) {
            this.f58725l.set(d4.left - 6, (i21 + i19) - 6, d4.right + 6, i21 + 6 + i19);
            this.f58726m.setBounds(this.f58725l);
            this.f58726m.draw(canvas);
            invalidate();
        } else {
            this.f58724k = 0;
        }
        Collection<ResultPoint> collection = this.f58722i;
        Collection<ResultPoint> collection2 = this.f58723j;
        if (collection.isEmpty()) {
            this.f58723j = null;
        } else {
            this.f58722i = new HashSet(5);
            this.f58723j = collection;
            this.f58714a.setAlpha(255);
            this.f58714a.setColor(this.f58719f);
            for (ResultPoint resultPoint : collection) {
                canvas.drawCircle(d4.left + resultPoint.getX(), d4.top + resultPoint.getY(), 6.0f, this.f58714a);
            }
        }
        if (collection2 != null) {
            this.f58714a.setAlpha(127);
            this.f58714a.setColor(this.f58719f);
            for (ResultPoint resultPoint2 : collection2) {
                canvas.drawCircle(d4.left + resultPoint2.getX(), d4.top + resultPoint2.getY(), 3.0f, this.f58714a);
            }
        }
        postInvalidateDelayed(100L, d4.left, d4.top, d4.right, d4.bottom);
    }
}
