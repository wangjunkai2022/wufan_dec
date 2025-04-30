package com.join.mgps.customview;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.Region;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.LinearInterpolator;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.internal.view.SupportMenu;
import com.join.android.app.mgsim.wufun.R;
/* loaded from: classes3.dex */
public class WaterProgressView extends View {
    private static final int D = 20;
    private static final int E = 10;
    ValueAnimator A;
    ValueAnimator B;
    Paint C;

    /* renamed from: a  reason: collision with root package name */
    private int f46498a;

    /* renamed from: b  reason: collision with root package name */
    private int f46499b;

    /* renamed from: c  reason: collision with root package name */
    private int f46500c;

    /* renamed from: d  reason: collision with root package name */
    private int f46501d;

    /* renamed from: e  reason: collision with root package name */
    private int f46502e;

    /* renamed from: f  reason: collision with root package name */
    private int f46503f;

    /* renamed from: g  reason: collision with root package name */
    private int f46504g;

    /* renamed from: h  reason: collision with root package name */
    private int f46505h;

    /* renamed from: i  reason: collision with root package name */
    private int f46506i;

    /* renamed from: j  reason: collision with root package name */
    private int f46507j;

    /* renamed from: k  reason: collision with root package name */
    private int f46508k;

    /* renamed from: l  reason: collision with root package name */
    private int f46509l;

    /* renamed from: m  reason: collision with root package name */
    private Paint f46510m;

    /* renamed from: n  reason: collision with root package name */
    private Paint f46511n;

    /* renamed from: o  reason: collision with root package name */
    private Paint f46512o;

    /* renamed from: p  reason: collision with root package name */
    private Paint f46513p;

    /* renamed from: q  reason: collision with root package name */
    private Path f46514q;

    /* renamed from: r  reason: collision with root package name */
    private Path f46515r;

    /* renamed from: s  reason: collision with root package name */
    private Rect f46516s;

    /* renamed from: t  reason: collision with root package name */
    private int f46517t;

    /* renamed from: u  reason: collision with root package name */
    private float f46518u;

    /* renamed from: v  reason: collision with root package name */
    private int f46519v;

    /* renamed from: w  reason: collision with root package name */
    private int f46520w;

    /* renamed from: x  reason: collision with root package name */
    private int f46521x;

    /* renamed from: y  reason: collision with root package name */
    private int f46522y;

    /* renamed from: z  reason: collision with root package name */
    private int f46523z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            WaterProgressView.this.f46517t = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            WaterProgressView.this.invalidate(new Rect(0, 0, WaterProgressView.this.f46508k + 0, WaterProgressView.this.f46509l + 0));
        }
    }

    /* loaded from: classes3.dex */
    class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            WaterProgressView.this.f46504g = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            WaterProgressView.this.invalidate();
        }
    }

    public WaterProgressView(Context context) {
        this(context, null);
    }

    private void e(Canvas canvas) {
        canvas.save();
        for (int i2 = 0; i2 < 100; i2++) {
            if (i2 < this.f46504g) {
                this.f46510m.setColor(this.f46499b);
            } else {
                this.f46510m.setColor(this.f46498a);
            }
            canvas.rotate(3.6f, this.f46505h / 2, this.f46506i / 2);
            canvas.drawLine(this.f46505h / 2, getPaddingTop(), this.f46505h / 2, getPaddingTop() + 20, this.f46510m);
        }
        canvas.restore();
    }

    private void f(Canvas canvas) {
        this.f46513p.getTextBounds(this.f46504g + "%", 0, (this.f46504g + "%").length(), this.f46516s);
        canvas.drawText(this.f46504g + "%", (this.f46505h / 2) - (this.f46516s.width() / 2), this.f46506i / 2, this.f46513p);
    }

    private void g(Canvas canvas, boolean z3) {
        this.f46514q.reset();
        canvas.save();
        canvas.clipPath(this.f46514q);
        this.f46514q.addCircle(this.f46505h / 2, this.f46506i / 2, this.f46520w, Path.Direction.CCW);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26) {
            canvas.clipPath(this.f46514q);
        } else {
            canvas.clipPath(this.f46514q, Region.Op.REPLACE);
        }
        canvas.restore();
        this.f46514q.reset();
        this.f46514q.moveTo(0, this.f46522y);
        if (z3) {
            int i4 = 1;
            while (true) {
                int i5 = this.f46519v;
                if (i4 <= i5 * 3) {
                    int i6 = this.f46521x;
                    int i7 = this.f46517t;
                    int i8 = (((i6 * i4) + 0) - (i6 / 2)) - i7;
                    if (i4 % 2 != 0) {
                        int i9 = this.f46522y;
                        this.f46514q.quadTo(i8, i9 - this.f46518u, ((i6 * i4) + 0) - i7, i9);
                    } else {
                        int i10 = this.f46522y;
                        this.f46514q.quadTo(i8, i10 + this.f46518u, ((i6 * i4) + 0) - i7, i10);
                    }
                    i4++;
                } else {
                    this.f46514q.lineTo(0 + (i5 * 2 * this.f46521x), 0.0f);
                    this.f46514q.lineTo(0.0f, 0.0f);
                    this.f46514q.close();
                    canvas.drawPath(this.f46514q, this.f46511n);
                    return;
                }
            }
        } else {
            this.f46515r.reset();
            canvas.save();
            canvas.clipPath(this.f46515r);
            this.f46515r.addCircle(this.f46505h / 2, this.f46506i / 2, this.f46520w, Path.Direction.CCW);
            if (i2 >= 26) {
                canvas.clipPath(this.f46515r);
            } else {
                canvas.clipPath(this.f46515r, Region.Op.REPLACE);
            }
            canvas.restore();
            this.f46515r.reset();
            this.f46515r.moveTo(0, this.f46522y);
            int i11 = (-this.f46519v) * 2;
            while (true) {
                int i12 = this.f46519v;
                if (i11 <= i12) {
                    int i13 = this.f46521x;
                    int i14 = this.f46517t;
                    int i15 = (((i13 * i11) + 0) - (i13 / 2)) + i14;
                    if (i11 % 2 != 0) {
                        int i16 = this.f46522y;
                        this.f46515r.quadTo(i15, i16 - this.f46518u, (i13 * i11) + 0 + i14, i16);
                    } else {
                        int i17 = this.f46522y;
                        this.f46515r.quadTo(i15, i17 + this.f46518u, (i13 * i11) + 0 + i14, i17);
                    }
                    i11++;
                } else {
                    this.f46515r.lineTo(0 + (i12 * this.f46521x * 2), 0.0f);
                    this.f46515r.lineTo(0.0f, 0.0f);
                    this.f46515r.close();
                    canvas.drawPath(this.f46515r, this.f46512o);
                    return;
                }
            }
        }
    }

    private void h(Canvas canvas, boolean z3) {
        this.C.setStyle(Paint.Style.FILL);
        this.C.setColor(SupportMenu.CATEGORY_MASK);
        int width = canvas.getWidth();
        int height = canvas.getHeight();
        Path path = new Path();
        path.addCircle(width / 2, height / 2, this.f46520w, Path.Direction.CW);
        new Path().addCircle(0.0f, 0.0f, this.f46520w, Path.Direction.CW);
        if (z3) {
            this.f46514q.reset();
            this.f46514q.moveTo(0, this.f46522y);
            int i2 = 1;
            while (true) {
                int i4 = this.f46519v;
                if (i2 <= i4 * 3) {
                    int i5 = this.f46521x;
                    int i6 = this.f46517t;
                    int i7 = (((i5 * i2) + 0) - (i5 / 2)) - i6;
                    if (i2 % 2 != 0) {
                        int i8 = this.f46522y;
                        this.f46514q.quadTo(i7, i8 - this.f46518u, ((i5 * i2) + 0) - i6, i8);
                    } else {
                        int i9 = this.f46522y;
                        this.f46514q.quadTo(i7, i9 + this.f46518u, ((i5 * i2) + 0) - i6, i9);
                    }
                    i2++;
                } else {
                    this.f46514q.lineTo(0 + (i4 * 2 * this.f46521x), 0.0f);
                    this.f46514q.lineTo(0.0f, 0.0f);
                    this.f46514q.close();
                    path.op(this.f46514q, Path.Op.INTERSECT);
                    canvas.drawPath(path, this.f46511n);
                    return;
                }
            }
        } else {
            this.f46515r.reset();
            this.f46515r.moveTo(0, this.f46522y);
            int i10 = (-this.f46519v) * 2;
            while (true) {
                int i11 = this.f46519v;
                if (i10 <= i11) {
                    int i12 = this.f46521x;
                    int i13 = this.f46517t;
                    int i14 = (((i12 * i10) + 0) - (i12 / 2)) + i13;
                    if (i10 % 2 != 0) {
                        int i15 = this.f46522y;
                        this.f46515r.quadTo(i14, i15 - this.f46518u, (i12 * i10) + 0 + i13, i15);
                    } else {
                        int i16 = this.f46522y;
                        this.f46515r.quadTo(i14, i16 + this.f46518u, (i12 * i10) + 0 + i13, i16);
                    }
                    i10++;
                } else {
                    this.f46515r.lineTo(0 + (i11 * this.f46521x * 2), 0.0f);
                    this.f46515r.lineTo(0.0f, 0.0f);
                    this.f46515r.close();
                    path.op(this.f46515r, Path.Op.INTERSECT);
                    canvas.drawPath(path, this.f46512o);
                    return;
                }
            }
        }
    }

    private void i() {
        Paint paint = new Paint();
        this.f46510m = paint;
        paint.setColor(this.f46498a);
        this.f46510m.setStyle(Paint.Style.STROKE);
        this.f46510m.setAntiAlias(true);
        Paint paint2 = new Paint(1);
        this.f46511n = paint2;
        paint2.setAntiAlias(true);
        this.f46511n.setColor(this.f46500c);
        this.f46511n.setStrokeWidth(3.0f);
        this.f46511n.setStyle(Paint.Style.FILL_AND_STROKE);
        Paint paint3 = new Paint();
        this.f46512o = paint3;
        paint3.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f46512o.setColor(this.f46501d);
        this.f46512o.setAntiAlias(true);
        Paint paint4 = new Paint();
        this.f46513p = paint4;
        paint4.setAntiAlias(true);
        this.f46513p.setColor(this.f46502e);
        this.f46513p.setTextSize(this.f46507j);
        this.f46516s = new Rect();
        this.f46513p.getTextBounds(this.f46504g + "%", 0, (this.f46504g + "%").length(), this.f46516s);
        this.f46514q = new Path();
        this.f46515r = new Path();
    }

    private void j() {
        int i2 = this.f46504g;
        if (i2 < 50) {
            if (i2 < 20) {
                this.f46518u = 30.0f;
            } else {
                this.f46518u = i2 * 0.7f;
            }
        } else if (i2 > 80) {
            this.f46518u = 30.0f;
        } else {
            this.f46518u = (100 - i2) * 0.7f;
        }
    }

    private void m() {
        ValueAnimator ofInt = ValueAnimator.ofInt(0, this.f46521x * this.f46519v * 2);
        this.A = ofInt;
        ofInt.setDuration(this.f46523z);
        this.A.setRepeatCount(-1);
        this.A.setInterpolator(new LinearInterpolator());
        this.A.addUpdateListener(new a());
        this.A.start();
    }

    @RequiresApi(api = 19)
    public void k() {
        this.A.pause();
    }

    @RequiresApi(api = 19)
    public void l() {
        this.A.resume();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int i2 = this.f46509l;
        this.f46522y = i2 - ((this.f46504g * i2) / 100);
        h(canvas, false);
        h(canvas, true);
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i4) {
        super.onMeasure(i2, i4);
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i4);
        int min = Math.min(size, View.MeasureSpec.getSize(i4));
        if (mode == 1073741824) {
            this.f46505h = min;
        } else {
            this.f46505h = this.f46503f;
        }
        if (mode2 == 1073741824) {
            this.f46506i = min;
        } else {
            this.f46506i = this.f46503f;
        }
        int i5 = this.f46505h;
        this.f46508k = i5;
        int i6 = this.f46506i;
        this.f46509l = i6;
        this.f46521x = i5 / this.f46519v;
        this.f46520w = i5 / 2;
        setMeasuredDimension(i5, i6);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i4, int i5, int i6) {
        super.onSizeChanged(i2, i4, i5, i6);
        this.f46505h = Math.min(i2, i4);
        int min = Math.min(i2, i4);
        this.f46506i = min;
        int i7 = this.f46505h;
        this.f46508k = i7;
        this.f46509l = min;
        this.f46521x = i7 / this.f46519v;
        this.f46520w = i7 / 2;
        m();
    }

    public void setProgress(int i2) {
        if (i2 <= 0 || i2 >= 100) {
            return;
        }
        this.f46504g = i2;
        ValueAnimator ofInt = ValueAnimator.ofInt(i2, i2);
        this.B = ofInt;
        ofInt.setDuration(2000L);
        this.B.addUpdateListener(new b());
        this.B.start();
    }

    public void setWaveTime(int i2) {
        this.f46523z = i2;
        ValueAnimator valueAnimator = this.A;
        if (valueAnimator != null) {
            valueAnimator.setDuration(i2);
            this.A.start();
        }
        invalidate();
    }

    public WaterProgressView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public WaterProgressView(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f46503f = 300;
        this.f46504g = 0;
        this.f46517t = 0;
        this.f46518u = 30.0f;
        this.f46519v = 2;
        this.f46523z = 2000;
        this.C = new Paint();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.WaterProgressView, i2, 0);
        this.f46498a = obtainStyledAttributes.getColor(1, -7829368);
        this.f46499b = obtainStyledAttributes.getColor(2, -16776961);
        this.f46500c = obtainStyledAttributes.getColor(0, -16776961);
        this.f46501d = obtainStyledAttributes.getColor(3, -16711936);
        this.f46502e = obtainStyledAttributes.getColor(4, -16777216);
        this.f46507j = (int) obtainStyledAttributes.getDimension(5, getResources().getDimensionPixelOffset(R.dimen.wdp32));
        this.f46518u = (int) obtainStyledAttributes.getDimension(7, getResources().getDimensionPixelOffset(R.dimen.wdp10));
        this.f46519v = obtainStyledAttributes.getInt(6, 2);
        obtainStyledAttributes.recycle();
        i();
    }
}
