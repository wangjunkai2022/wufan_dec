package com.join.mgps.customview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.join.mgps.customview.SlidingTabLayout2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SlidingTabStrip2.java */
/* loaded from: classes3.dex */
public class m0 extends LinearLayout {

    /* renamed from: j  reason: collision with root package name */
    private static final int f47017j = 0;

    /* renamed from: k  reason: collision with root package name */
    private static final byte f47018k = 38;

    /* renamed from: l  reason: collision with root package name */
    private static final int f47019l = 3;

    /* renamed from: m  reason: collision with root package name */
    private static final int f47020m = -13388315;

    /* renamed from: a  reason: collision with root package name */
    private final int f47021a;

    /* renamed from: b  reason: collision with root package name */
    private final Paint f47022b;

    /* renamed from: c  reason: collision with root package name */
    private final int f47023c;

    /* renamed from: d  reason: collision with root package name */
    private final Paint f47024d;

    /* renamed from: e  reason: collision with root package name */
    private final int f47025e;

    /* renamed from: f  reason: collision with root package name */
    private int f47026f;

    /* renamed from: g  reason: collision with root package name */
    private float f47027g;

    /* renamed from: h  reason: collision with root package name */
    private SlidingTabLayout2.d f47028h;

    /* renamed from: i  reason: collision with root package name */
    private final b f47029i;

    /* compiled from: SlidingTabStrip2.java */
    /* loaded from: classes3.dex */
    private static class b implements SlidingTabLayout2.d {

        /* renamed from: a  reason: collision with root package name */
        private int[] f47030a;

        private b() {
        }

        @Override // com.join.mgps.customview.SlidingTabLayout2.d
        public final int a(int i2) {
            int[] iArr = this.f47030a;
            return iArr[i2 % iArr.length];
        }

        void b(int... iArr) {
            this.f47030a = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m0(Context context) {
        this(context, null);
    }

    private static int a(int i2, int i4, float f4) {
        float f5 = 1.0f - f4;
        return Color.rgb((int) ((Color.red(i2) * f4) + (Color.red(i4) * f5)), (int) ((Color.green(i2) * f4) + (Color.green(i4) * f5)), (int) ((Color.blue(i2) * f4) + (Color.blue(i4) * f5)));
    }

    private static int d(int i2, byte b4) {
        return Color.argb((int) b4, Color.red(i2), Color.green(i2), Color.blue(i2));
    }

    public int b(float f4) {
        Paint paint = new Paint();
        paint.setTextSize(f4);
        Paint.FontMetrics fontMetrics = paint.getFontMetrics();
        return ((int) Math.ceil(fontMetrics.descent - fontMetrics.top)) + 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(int i2, float f4) {
        this.f47026f = i2;
        this.f47027g = f4;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(SlidingTabLayout2.d dVar) {
        this.f47028h = dVar;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(int... iArr) {
        this.f47028h = null;
        this.f47029i.b(iArr);
        invalidate();
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onDraw(Canvas canvas) {
        int i2;
        int height = getHeight();
        int childCount = getChildCount();
        SlidingTabLayout2.d dVar = this.f47028h;
        if (dVar == null) {
            dVar = this.f47029i;
        }
        if (childCount > 0) {
            View childAt = getChildAt(this.f47026f);
            int left = childAt.getLeft();
            int right = childAt.getRight();
            int a4 = dVar.a(this.f47026f);
            if (this.f47027g > 0.0f && this.f47026f < getChildCount() - 1) {
                int a5 = dVar.a(this.f47026f + 1);
                if (a4 != a5) {
                    a4 = a(a5, a4, this.f47027g);
                }
                View childAt2 = getChildAt(this.f47026f + 1);
                float left2 = this.f47027g * childAt2.getLeft();
                float f4 = this.f47027g;
                left = (int) (left2 + ((1.0f - f4) * left));
                right = (int) ((f4 * childAt2.getRight()) + ((1.0f - this.f47027g) * right));
            }
            this.f47024d.setColor(a4);
            if (childAt instanceof TextView) {
                int b4 = b(((TextView) childAt).getTextSize());
                this.f47024d.setAntiAlias(true);
                this.f47024d.setStrokeWidth(2.0f);
                this.f47024d.setStyle(Paint.Style.STROKE);
                float a6 = com.join.mgps.Util.b0.a(getContext(), 6.0f);
                RectF rectF = new RectF();
                rectF.left = left + com.join.mgps.Util.b0.a(getContext(), 1.0f);
                rectF.top = ((height - b4) / 2) * 1;
                rectF.right = right - com.join.mgps.Util.b0.a(getContext(), 1.0f);
                rectF.bottom = height - i2;
                canvas.drawRoundRect(rectF, a6, a6, this.f47024d);
            } else {
                canvas.drawRect(left, height - this.f47023c, right, height, this.f47024d);
            }
        }
        canvas.drawRect(0.0f, height - this.f47021a, getWidth(), height, this.f47022b);
    }

    m0(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setWillNotDraw(false);
        float f4 = getResources().getDisplayMetrics().density;
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(16842800, typedValue, true);
        int d4 = d(typedValue.data, f47018k);
        this.f47025e = d4;
        b bVar = new b();
        this.f47029i = bVar;
        bVar.b(f47020m);
        this.f47021a = (int) (0.0f * f4);
        Paint paint = new Paint();
        this.f47022b = paint;
        paint.setColor(d4);
        this.f47023c = (int) (f4 * 3.0f);
        this.f47024d = new Paint();
    }
}
