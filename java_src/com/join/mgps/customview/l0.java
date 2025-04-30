package com.join.mgps.customview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.widget.LinearLayout;
import com.join.mgps.customview.SlidingTabLayout;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SlidingTabStrip.java */
/* loaded from: classes3.dex */
public class l0 extends LinearLayout {

    /* renamed from: j  reason: collision with root package name */
    private static final int f46997j = 0;

    /* renamed from: k  reason: collision with root package name */
    private static final byte f46998k = 38;

    /* renamed from: l  reason: collision with root package name */
    private static final int f46999l = 3;

    /* renamed from: m  reason: collision with root package name */
    private static final int f47000m = -13388315;

    /* renamed from: a  reason: collision with root package name */
    private final int f47001a;

    /* renamed from: b  reason: collision with root package name */
    private final Paint f47002b;

    /* renamed from: c  reason: collision with root package name */
    private final int f47003c;

    /* renamed from: d  reason: collision with root package name */
    private final Paint f47004d;

    /* renamed from: e  reason: collision with root package name */
    private final int f47005e;

    /* renamed from: f  reason: collision with root package name */
    private int f47006f;

    /* renamed from: g  reason: collision with root package name */
    private float f47007g;

    /* renamed from: h  reason: collision with root package name */
    private SlidingTabLayout.d f47008h;

    /* renamed from: i  reason: collision with root package name */
    private final b f47009i;

    /* compiled from: SlidingTabStrip.java */
    /* loaded from: classes3.dex */
    private static class b implements SlidingTabLayout.d {

        /* renamed from: a  reason: collision with root package name */
        private int[] f47010a;

        private b() {
        }

        @Override // com.join.mgps.customview.SlidingTabLayout.d
        public final int a(int i2) {
            int[] iArr = this.f47010a;
            return iArr[i2 % iArr.length];
        }

        void b(int... iArr) {
            this.f47010a = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l0(Context context) {
        this(context, null);
    }

    private static int a(int i2, int i4, float f4) {
        float f5 = 1.0f - f4;
        return Color.rgb((int) ((Color.red(i2) * f4) + (Color.red(i4) * f5)), (int) ((Color.green(i2) * f4) + (Color.green(i4) * f5)), (int) ((Color.blue(i2) * f4) + (Color.blue(i4) * f5)));
    }

    private static int c(int i2, byte b4) {
        return Color.argb((int) b4, Color.red(i2), Color.green(i2), Color.blue(i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(int i2, float f4) {
        this.f47006f = i2;
        this.f47007g = f4;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(SlidingTabLayout.d dVar) {
        this.f47008h = dVar;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(int... iArr) {
        this.f47008h = null;
        this.f47009i.b(iArr);
        invalidate();
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onDraw(Canvas canvas) {
        int height = getHeight();
        int childCount = getChildCount();
        SlidingTabLayout.d dVar = this.f47008h;
        if (dVar == null) {
            dVar = this.f47009i;
        }
        if (childCount > 0) {
            View childAt = getChildAt(this.f47006f);
            int left = childAt.getLeft();
            int right = childAt.getRight();
            int a4 = dVar.a(this.f47006f);
            if (this.f47007g > 0.0f && this.f47006f < getChildCount() - 1) {
                int a5 = dVar.a(this.f47006f + 1);
                if (a4 != a5) {
                    a4 = a(a5, a4, this.f47007g);
                }
                View childAt2 = getChildAt(this.f47006f + 1);
                float left2 = this.f47007g * childAt2.getLeft();
                float f4 = this.f47007g;
                left = (int) (left2 + ((1.0f - f4) * left));
                right = (int) ((f4 * childAt2.getRight()) + ((1.0f - this.f47007g) * right));
            }
            this.f47004d.setColor(a4);
            canvas.drawRect(left, height - this.f47003c, right, height, this.f47004d);
        }
        canvas.drawRect(0.0f, height - this.f47001a, getWidth(), height, this.f47002b);
    }

    l0(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setWillNotDraw(false);
        float f4 = getResources().getDisplayMetrics().density;
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(16842800, typedValue, true);
        int c4 = c(typedValue.data, f46998k);
        this.f47005e = c4;
        b bVar = new b();
        this.f47009i = bVar;
        bVar.b(f47000m);
        this.f47001a = (int) (0.0f * f4);
        Paint paint = new Paint();
        this.f47002b = paint;
        paint.setColor(c4);
        this.f47003c = (int) (f4 * 3.0f);
        this.f47004d = new Paint();
    }
}
