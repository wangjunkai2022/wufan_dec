package com.join.android.app.common.view;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.RegionIterator;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.join.android.app.mgsim.wufun.R;
/* loaded from: classes.dex */
public class HighlightView {

    /* renamed from: q  reason: collision with root package name */
    private static final String f17271q = "HighlightView";

    /* renamed from: r  reason: collision with root package name */
    public static final int f17272r = 1;

    /* renamed from: s  reason: collision with root package name */
    public static final int f17273s = 2;

    /* renamed from: t  reason: collision with root package name */
    public static final int f17274t = 4;

    /* renamed from: u  reason: collision with root package name */
    public static final int f17275u = 8;

    /* renamed from: v  reason: collision with root package name */
    public static final int f17276v = 16;

    /* renamed from: w  reason: collision with root package name */
    public static final int f17277w = 32;

    /* renamed from: a  reason: collision with root package name */
    View f17278a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f17279b;

    /* renamed from: c  reason: collision with root package name */
    boolean f17280c;

    /* renamed from: e  reason: collision with root package name */
    public Rect f17282e;

    /* renamed from: f  reason: collision with root package name */
    public RectF f17283f;

    /* renamed from: g  reason: collision with root package name */
    public RectF f17284g;

    /* renamed from: h  reason: collision with root package name */
    public Matrix f17285h;

    /* renamed from: j  reason: collision with root package name */
    private float f17287j;

    /* renamed from: l  reason: collision with root package name */
    private Drawable f17289l;

    /* renamed from: m  reason: collision with root package name */
    private Drawable f17290m;

    /* renamed from: d  reason: collision with root package name */
    private ModifyMode f17281d = ModifyMode.None;

    /* renamed from: i  reason: collision with root package name */
    private boolean f17286i = false;

    /* renamed from: k  reason: collision with root package name */
    private boolean f17288k = false;

    /* renamed from: n  reason: collision with root package name */
    private final Paint f17291n = new Paint();

    /* renamed from: o  reason: collision with root package name */
    private final Paint f17292o = new Paint();

    /* renamed from: p  reason: collision with root package name */
    private final Paint f17293p = new Paint();

    /* loaded from: classes.dex */
    public enum ModifyMode {
        None,
        Move,
        Grow
    }

    public HighlightView(View view) {
        this.f17278a = view;
    }

    private Rect a() {
        RectF rectF = this.f17284g;
        RectF rectF2 = new RectF(rectF.left, rectF.top, rectF.right, rectF.bottom);
        this.f17285h.mapRect(rectF2);
        return new Rect(Math.round(rectF2.left), Math.round(rectF2.top), Math.round(rectF2.right), Math.round(rectF2.bottom));
    }

    private void h() {
        Resources resources = this.f17278a.getResources();
        this.f17289l = resources.getDrawable(R.drawable.picture_cut_button_normal);
        this.f17290m = resources.getDrawable(R.drawable.picture_cut_button_normal);
    }

    public void b(Canvas canvas) {
        if (this.f17280c) {
            return;
        }
        canvas.save();
        Path path = new Path();
        if (!g()) {
            this.f17293p.setColor(-16777216);
            canvas.drawRect(this.f17282e, this.f17293p);
            return;
        }
        Rect rect = new Rect();
        this.f17278a.getDrawingRect(rect);
        if (this.f17288k) {
            Rect rect2 = this.f17282e;
            float width = this.f17282e.width() / 2.0f;
            path.addCircle(rect2.left + width, rect2.top + (this.f17282e.height() / 2.0f), width, Path.Direction.CW);
            this.f17293p.setColor(-1112874);
        } else {
            path.addRect(new RectF(this.f17282e), Path.Direction.CW);
            this.f17293p.setColor(-1);
        }
        Region region = new Region();
        region.set(rect);
        region.op(this.f17282e, Region.Op.DIFFERENCE);
        RegionIterator regionIterator = new RegionIterator(region);
        Rect rect3 = new Rect();
        while (regionIterator.next(rect3)) {
            canvas.drawRect(rect3, g() ? this.f17291n : this.f17292o);
        }
        canvas.restore();
        canvas.drawPath(path, this.f17293p);
        if (this.f17281d == ModifyMode.Grow && this.f17288k) {
            int intrinsicWidth = this.f17289l.getIntrinsicWidth();
            int intrinsicHeight = this.f17289l.getIntrinsicHeight();
            double cos = Math.cos(0.7853981633974483d);
            double width2 = this.f17282e.width();
            Double.isNaN(width2);
            int round = (int) Math.round(cos * (width2 / 2.0d));
            Rect rect4 = this.f17282e;
            int width3 = ((rect4.left + (rect4.width() / 2)) + round) - (intrinsicWidth / 2);
            Rect rect5 = this.f17282e;
            int height = ((rect5.top + (rect5.height() / 2)) - round) - (intrinsicHeight / 2);
            Drawable drawable = this.f17289l;
            drawable.setBounds(width3, height, drawable.getIntrinsicWidth() + width3, this.f17289l.getIntrinsicHeight() + height);
            this.f17289l.draw(canvas);
        }
        if (this.f17288k) {
            return;
        }
        Rect rect6 = this.f17282e;
        int i2 = rect6.left + 1;
        int i4 = rect6.right + 1;
        int i5 = rect6.top + 4;
        int i6 = rect6.bottom + 3;
        int intrinsicWidth2 = this.f17289l.getIntrinsicWidth() / 2;
        int intrinsicHeight2 = this.f17289l.getIntrinsicHeight() / 2;
        int i7 = i2 - intrinsicWidth2;
        int i8 = i5 - intrinsicHeight2;
        int i9 = i2 + intrinsicWidth2;
        int i10 = i5 + intrinsicHeight2;
        this.f17290m.setBounds(i7, i8, i9, i10);
        this.f17290m.draw(canvas);
        int i11 = i4 - intrinsicWidth2;
        int i12 = i4 + intrinsicWidth2;
        this.f17289l.setBounds(i11, i8, i12, i10);
        this.f17289l.draw(canvas);
        int i13 = i6 - intrinsicHeight2;
        int i14 = i6 + intrinsicHeight2;
        this.f17289l.setBounds(i7, i13, i9, i14);
        this.f17289l.draw(canvas);
        this.f17290m.setBounds(i11, i13, i12, i14);
        this.f17290m.draw(canvas);
    }

    public Rect c() {
        RectF rectF = this.f17284g;
        return new Rect((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
    }

    public int d(float f4, float f5) {
        Rect a4 = a();
        if (this.f17288k) {
            float centerX = f4 - a4.centerX();
            float centerY = f5 - a4.centerY();
            int sqrt = (int) Math.sqrt((centerX * centerX) + (centerY * centerY));
            int width = this.f17282e.width() / 2;
            return ((float) Math.abs(sqrt - width)) <= 20.0f ? Math.abs(centerY) > Math.abs(centerX) ? centerY < 0.0f ? 8 : 16 : centerX < 0.0f ? 2 : 4 : sqrt < width ? 32 : 1;
        }
        boolean z3 = false;
        boolean z4 = f5 >= ((float) a4.top) - 20.0f && f5 < ((float) a4.bottom) + 20.0f;
        int i2 = a4.left;
        if (f4 >= i2 - 20.0f && f4 < a4.right + 20.0f) {
            z3 = true;
        }
        int i4 = (Math.abs(((float) i2) - f4) >= 20.0f || !z4) ? 1 : 3;
        if (Math.abs(a4.right - f4) < 20.0f && z4) {
            i4 |= 4;
        }
        if (Math.abs(a4.top - f5) < 20.0f && z3) {
            i4 |= 8;
        }
        if (Math.abs(a4.bottom - f5) < 20.0f && z3) {
            i4 |= 16;
        }
        if (i4 == 1 && a4.contains((int) f4, (int) f5)) {
            return 32;
        }
        return i4;
    }

    void e(float f4, float f5) {
        if (this.f17286i) {
            if (f4 != 0.0f) {
                f5 = f4 / this.f17287j;
            } else if (f5 != 0.0f) {
                f4 = this.f17287j * f5;
            }
        }
        RectF rectF = new RectF(this.f17284g);
        if (f4 > 0.0f && rectF.width() + (f4 * 2.0f) > this.f17283f.width()) {
            f4 = (this.f17283f.width() - rectF.width()) / 2.0f;
            if (this.f17286i) {
                f5 = f4 / this.f17287j;
            }
        }
        if (f5 > 0.0f && rectF.height() + (f5 * 2.0f) > this.f17283f.height()) {
            f5 = (this.f17283f.height() - rectF.height()) / 2.0f;
            if (this.f17286i) {
                f4 = this.f17287j * f5;
            }
        }
        rectF.inset(-f4, -f5);
        if (rectF.width() < 25.0f) {
            return;
        }
        if (rectF.height() < (this.f17286i ? 25.0f / this.f17287j : 25.0f)) {
            return;
        }
        float f6 = rectF.left;
        RectF rectF2 = this.f17283f;
        float f7 = rectF2.left;
        if (f6 < f7) {
            rectF.offset(f7 - f6, 0.0f);
        } else {
            float f8 = rectF.right;
            float f9 = rectF2.right;
            if (f8 > f9) {
                rectF.offset(-(f8 - f9), 0.0f);
            }
        }
        float f10 = rectF.top;
        RectF rectF3 = this.f17283f;
        float f11 = rectF3.top;
        if (f10 < f11) {
            rectF.offset(0.0f, f11 - f10);
        } else {
            float f12 = rectF.bottom;
            float f13 = rectF3.bottom;
            if (f12 > f13) {
                rectF.offset(0.0f, -(f12 - f13));
            }
        }
        this.f17284g.set(rectF);
        this.f17282e = a();
        this.f17278a.invalidate();
    }

    public void f(int i2, float f4, float f5) {
        Rect a4 = a();
        if (i2 == 1) {
            return;
        }
        if (i2 == 32) {
            j(f4 * (this.f17284g.width() / a4.width()), f5 * (this.f17284g.height() / a4.height()));
            return;
        }
        if ((i2 & 6) == 0) {
            f4 = 0.0f;
        }
        if ((i2 & 24) == 0) {
            f5 = 0.0f;
        }
        e(((i2 & 2) != 0 ? -1 : 1) * f4 * (this.f17284g.width() / a4.width()), ((i2 & 8) != 0 ? -1 : 1) * f5 * (this.f17284g.height() / a4.height()));
    }

    public boolean g() {
        return this.f17279b;
    }

    public void i() {
        this.f17282e = a();
    }

    void j(float f4, float f5) {
        Rect rect = new Rect(this.f17282e);
        this.f17284g.offset(f4, f5);
        RectF rectF = this.f17284g;
        rectF.offset(Math.max(0.0f, this.f17283f.left - rectF.left), Math.max(0.0f, this.f17283f.top - this.f17284g.top));
        RectF rectF2 = this.f17284g;
        rectF2.offset(Math.min(0.0f, this.f17283f.right - rectF2.right), Math.min(0.0f, this.f17283f.bottom - this.f17284g.bottom));
        Rect a4 = a();
        this.f17282e = a4;
        rect.union(a4);
        rect.inset(-10, -10);
        this.f17278a.invalidate();
    }

    public void k(boolean z3) {
        this.f17279b = z3;
    }

    public void l(boolean z3) {
        this.f17280c = z3;
    }

    public void m(ModifyMode modifyMode) {
        if (modifyMode != this.f17281d) {
            this.f17281d = modifyMode;
            this.f17278a.invalidate();
        }
    }

    public void n(Matrix matrix, Rect rect, RectF rectF, boolean z3, boolean z4) {
        if (z3) {
            z4 = true;
        }
        this.f17285h = new Matrix(matrix);
        this.f17284g = rectF;
        this.f17283f = new RectF(rect);
        this.f17286i = z4;
        this.f17288k = z3;
        this.f17287j = this.f17284g.width() / this.f17284g.height();
        this.f17282e = a();
        this.f17291n.setARGB(125, 50, 50, 50);
        this.f17292o.setARGB(125, 50, 50, 50);
        this.f17293p.setStrokeWidth(3.0f);
        this.f17293p.setStyle(Paint.Style.STROKE);
        this.f17293p.setAntiAlias(true);
        this.f17281d = ModifyMode.None;
        h();
    }
}
