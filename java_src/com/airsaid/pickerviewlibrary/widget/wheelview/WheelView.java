package com.airsaid.pickerviewlibrary.widget.wheelview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.airsaid.pickerviewlibrary.R;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class WheelView extends View {

    /* renamed from: p0  reason: collision with root package name */
    static final float f9352p0 = 1.4f;

    /* renamed from: q0  reason: collision with root package name */
    private static final int f9353q0 = 5;

    /* renamed from: r0  reason: collision with root package name */
    private static final float f9354r0 = 0.8f;

    /* renamed from: s0  reason: collision with root package name */
    private static final float f9355s0 = 6.0f;
    int A;
    int B;
    int C;
    int D;
    int E;
    int F;
    private int G;
    private float H;
    long I;
    int J;
    private int K;

    /* renamed from: a  reason: collision with root package name */
    Context f9356a;

    /* renamed from: b  reason: collision with root package name */
    Handler f9357b;

    /* renamed from: c  reason: collision with root package name */
    private GestureDetector f9358c;

    /* renamed from: d  reason: collision with root package name */
    f.c f9359d;

    /* renamed from: e  reason: collision with root package name */
    ScheduledExecutorService f9360e;

    /* renamed from: f  reason: collision with root package name */
    private ScheduledFuture<?> f9361f;

    /* renamed from: g  reason: collision with root package name */
    Paint f9362g;

    /* renamed from: h  reason: collision with root package name */
    Paint f9363h;

    /* renamed from: i  reason: collision with root package name */
    Paint f9364i;

    /* renamed from: j  reason: collision with root package name */
    e.c f9365j;

    /* renamed from: k  reason: collision with root package name */
    private String f9366k;

    /* renamed from: l  reason: collision with root package name */
    int f9367l;

    /* renamed from: m  reason: collision with root package name */
    int f9368m;

    /* renamed from: n  reason: collision with root package name */
    int f9369n;

    /* renamed from: n0  reason: collision with root package name */
    private int f9370n0;

    /* renamed from: o  reason: collision with root package name */
    float f9371o;

    /* renamed from: o0  reason: collision with root package name */
    private int f9372o0;

    /* renamed from: p  reason: collision with root package name */
    int f9373p;

    /* renamed from: q  reason: collision with root package name */
    int f9374q;

    /* renamed from: r  reason: collision with root package name */
    int f9375r;

    /* renamed from: s  reason: collision with root package name */
    boolean f9376s;

    /* renamed from: t  reason: collision with root package name */
    float f9377t;

    /* renamed from: u  reason: collision with root package name */
    float f9378u;

    /* renamed from: v  reason: collision with root package name */
    float f9379v;

    /* renamed from: w  reason: collision with root package name */
    int f9380w;

    /* renamed from: x  reason: collision with root package name */
    int f9381x;

    /* renamed from: y  reason: collision with root package name */
    private int f9382y;

    /* renamed from: z  reason: collision with root package name */
    int f9383z;

    /* loaded from: classes2.dex */
    public enum ACTION {
        CLICK,
        FLING,
        DAGGLE
    }

    public WheelView(Context context) {
        this(context, null);
    }

    private String b(Object obj) {
        if (obj == null) {
            return "";
        }
        if (obj instanceof g.a) {
            return ((g.a) obj).a();
        }
        return obj.toString();
    }

    private int c(int i2) {
        if (i2 < 0) {
            return c(i2 + this.f9365j.a());
        }
        return i2 > this.f9365j.a() + (-1) ? c(i2 - this.f9365j.a()) : i2;
    }

    private void e(Context context) {
        this.f9356a = context;
        this.f9357b = new c(this);
        GestureDetector gestureDetector = new GestureDetector(context, new b(this));
        this.f9358c = gestureDetector;
        gestureDetector.setIsLongpressEnabled(false);
        this.f9376s = false;
        this.f9380w = 0;
        this.f9381x = -1;
        f();
    }

    private void f() {
        Paint paint = new Paint();
        this.f9362g = paint;
        paint.setColor(this.f9373p);
        this.f9362g.setAntiAlias(true);
        this.f9362g.setTypeface(Typeface.MONOSPACE);
        this.f9362g.setTextSize(this.f9367l);
        Paint paint2 = new Paint();
        this.f9363h = paint2;
        paint2.setColor(this.f9374q);
        this.f9363h.setAntiAlias(true);
        this.f9363h.setTextScaleX(1.1f);
        this.f9363h.setTypeface(Typeface.MONOSPACE);
        this.f9363h.setTextSize(this.f9367l);
        Paint paint3 = new Paint();
        this.f9364i = paint3;
        paint3.setColor(this.f9375r);
        this.f9364i.setAntiAlias(true);
        if (Build.VERSION.SDK_INT >= 11) {
            setLayerType(1, null);
        }
    }

    private void g() {
        Rect rect = new Rect();
        for (int i2 = 0; i2 < this.f9365j.a(); i2++) {
            String b4 = b(this.f9365j.getItem(i2));
            this.f9363h.getTextBounds(b4, 0, b4.length(), rect);
            int width = rect.width();
            if (width > this.f9368m) {
                this.f9368m = width;
            }
            this.f9363h.getTextBounds("星期", 0, 2, rect);
            int height = rect.height();
            if (height > this.f9369n) {
                this.f9369n = height;
            }
        }
        this.f9371o = this.f9369n * f9352p0;
    }

    private void h(String str) {
        Rect rect = new Rect();
        this.f9363h.getTextBounds(str, 0, str.length(), rect);
        int i2 = this.K;
        if (i2 == 3) {
            this.f9370n0 = 0;
        } else if (i2 == 5) {
            this.f9370n0 = this.D - rect.width();
        } else if (i2 != 17) {
        } else {
            double width = this.D - rect.width();
            Double.isNaN(width);
            this.f9370n0 = (int) (width * 0.5d);
        }
    }

    private void i(String str) {
        Rect rect = new Rect();
        this.f9362g.getTextBounds(str, 0, str.length(), rect);
        int i2 = this.K;
        if (i2 == 3) {
            this.f9372o0 = 0;
        } else if (i2 == 5) {
            this.f9372o0 = this.D - rect.width();
        } else if (i2 != 17) {
        } else {
            double width = this.D - rect.width();
            Double.isNaN(width);
            this.f9372o0 = (int) (width * 0.5d);
        }
    }

    private void k() {
        if (this.f9365j == null) {
            return;
        }
        g();
        int i2 = (int) (this.f9371o * (this.B - 1));
        this.E = i2;
        double d4 = i2 * 2;
        Double.isNaN(d4);
        this.C = (int) (d4 / 3.141592653589793d);
        double d5 = i2;
        Double.isNaN(d5);
        this.F = (int) (d5 / 3.141592653589793d);
        this.D = View.MeasureSpec.getSize(this.J);
        int i4 = this.C;
        float f4 = this.f9371o;
        this.f9377t = (i4 - f4) / 2.0f;
        this.f9378u = (i4 + f4) / 2.0f;
        this.f9379v = ((i4 + this.f9369n) / 2.0f) - 6.0f;
        if (this.f9381x == -1) {
            if (this.f9376s) {
                this.f9381x = (this.f9365j.a() + 1) / 2;
            } else {
                this.f9381x = 0;
            }
        }
        this.f9383z = this.f9381x;
    }

    public void a() {
        ScheduledFuture<?> scheduledFuture = this.f9361f;
        if (scheduledFuture == null || scheduledFuture.isCancelled()) {
            return;
        }
        this.f9361f.cancel(true);
        this.f9361f = null;
    }

    public int d(Paint paint, String str) {
        if (str == null || str.length() <= 0) {
            return 0;
        }
        int length = str.length();
        float[] fArr = new float[length];
        paint.getTextWidths(str, fArr);
        int i2 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            i2 += (int) Math.ceil(fArr[i4]);
        }
        return i2;
    }

    public final e.c getAdapter() {
        return this.f9365j;
    }

    public final int getCurrentItem() {
        return this.f9382y;
    }

    public int getItemsCount() {
        e.c cVar = this.f9365j;
        if (cVar != null) {
            return cVar.a();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void j() {
        if (this.f9359d != null) {
            postDelayed(new d(this), 200L);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void l(float f4) {
        a();
        this.f9361f = this.f9360e.scheduleWithFixedDelay(new a(this, f4), 0L, 5L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m(ACTION action) {
        a();
        if (action == ACTION.FLING || action == ACTION.DAGGLE) {
            float f4 = this.f9371o;
            int i2 = (int) (((this.f9380w % f4) + f4) % f4);
            this.G = i2;
            if (i2 > f4 / 2.0f) {
                this.G = (int) (f4 - i2);
            } else {
                this.G = -i2;
            }
        }
        this.f9361f = this.f9360e.scheduleWithFixedDelay(new e(this, this.G), 0L, 10L, TimeUnit.MILLISECONDS);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        String str;
        int i2;
        e.c cVar = this.f9365j;
        if (cVar == null) {
            return;
        }
        Object[] objArr = new Object[this.B];
        int i4 = (int) (this.f9380w / this.f9371o);
        this.A = i4;
        try {
            this.f9383z = this.f9381x + (i4 % cVar.a());
        } catch (ArithmeticException unused) {
            System.out.println("出错了！adapter.getItemsCount() == 0，联动数据不匹配");
        }
        if (!this.f9376s) {
            if (this.f9383z < 0) {
                this.f9383z = 0;
            }
            if (this.f9383z > this.f9365j.a() - 1) {
                this.f9383z = this.f9365j.a() - 1;
            }
        } else {
            if (this.f9383z < 0) {
                this.f9383z = this.f9365j.a() + this.f9383z;
            }
            if (this.f9383z > this.f9365j.a() - 1) {
                this.f9383z -= this.f9365j.a();
            }
        }
        int i5 = (int) (this.f9380w % this.f9371o);
        int i6 = 0;
        while (true) {
            int i7 = this.B;
            if (i6 >= i7) {
                break;
            }
            int i8 = this.f9383z - ((i7 / 2) - i6);
            if (this.f9376s) {
                objArr[i6] = this.f9365j.getItem(c(i8));
            } else if (i8 < 0) {
                objArr[i6] = "";
            } else if (i8 > this.f9365j.a() - 1) {
                objArr[i6] = "";
            } else {
                objArr[i6] = this.f9365j.getItem(i8);
            }
            i6++;
        }
        float f4 = this.f9377t;
        canvas.drawLine(0.0f, f4, this.D, f4, this.f9364i);
        float f5 = this.f9378u;
        canvas.drawLine(0.0f, f5, this.D, f5, this.f9364i);
        if (this.f9366k != null) {
            canvas.drawText(this.f9366k, (this.D - d(this.f9363h, str)) - 6.0f, this.f9379v, this.f9363h);
        }
        int i9 = 0;
        while (i9 < this.B) {
            canvas.save();
            float f6 = this.f9369n * f9352p0;
            double d4 = (i9 * f6) - i5;
            Double.isNaN(d4);
            double d5 = this.E;
            Double.isNaN(d5);
            double d6 = (d4 * 3.141592653589793d) / d5;
            float f7 = (float) (90.0d - ((d6 / 3.141592653589793d) * 180.0d));
            if (f7 < 90.0f && f7 > -90.0f) {
                String b4 = b(objArr[i9]);
                h(b4);
                i(b4);
                double d7 = this.F;
                double cos = Math.cos(d6);
                i2 = i5;
                double d8 = this.F;
                Double.isNaN(d8);
                Double.isNaN(d7);
                double d9 = d7 - (cos * d8);
                double sin = Math.sin(d6);
                double d10 = this.f9369n;
                Double.isNaN(d10);
                float f8 = (float) (d9 - ((sin * d10) / 2.0d));
                canvas.translate(0.0f, f8);
                canvas.scale(1.0f, (float) Math.sin(d6));
                float f9 = this.f9377t;
                if (f8 <= f9 && this.f9369n + f8 >= f9) {
                    canvas.save();
                    canvas.clipRect(0.0f, 0.0f, this.D, this.f9377t - f8);
                    canvas.scale(1.0f, ((float) Math.sin(d6)) * f9354r0);
                    canvas.drawText(b4, this.f9372o0, this.f9369n, this.f9362g);
                    canvas.restore();
                    canvas.save();
                    canvas.clipRect(0.0f, this.f9377t - f8, this.D, (int) f6);
                    canvas.scale(1.0f, ((float) Math.sin(d6)) * 1.0f);
                    canvas.drawText(b4, this.f9370n0, this.f9369n - 6.0f, this.f9363h);
                    canvas.restore();
                } else {
                    float f10 = this.f9378u;
                    if (f8 <= f10 && this.f9369n + f8 >= f10) {
                        canvas.save();
                        canvas.clipRect(0.0f, 0.0f, this.D, this.f9378u - f8);
                        canvas.scale(1.0f, ((float) Math.sin(d6)) * 1.0f);
                        canvas.drawText(b4, this.f9370n0, this.f9369n - 6.0f, this.f9363h);
                        canvas.restore();
                        canvas.save();
                        canvas.clipRect(0.0f, this.f9378u - f8, this.D, (int) f6);
                        canvas.scale(1.0f, ((float) Math.sin(d6)) * f9354r0);
                        canvas.drawText(b4, this.f9372o0, this.f9369n, this.f9362g);
                        canvas.restore();
                    } else if (f8 >= f9 && this.f9369n + f8 <= f10) {
                        canvas.clipRect(0, 0, this.D, (int) f6);
                        canvas.drawText(b4, this.f9370n0, this.f9369n - 6.0f, this.f9363h);
                        int indexOf = this.f9365j.indexOf(objArr[i9]);
                        if (indexOf != -1) {
                            this.f9382y = indexOf;
                        }
                    } else {
                        canvas.save();
                        canvas.clipRect(0, 0, this.D, (int) f6);
                        canvas.scale(1.0f, ((float) Math.sin(d6)) * f9354r0);
                        canvas.drawText(b4, this.f9372o0, this.f9369n, this.f9362g);
                        canvas.restore();
                        canvas.restore();
                    }
                }
                canvas.restore();
            } else {
                i2 = i5;
                canvas.restore();
            }
            i9++;
            i5 = i2;
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i4) {
        this.J = i2;
        k();
        setMeasuredDimension(this.D, this.C);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        double d4;
        boolean onTouchEvent = this.f9358c.onTouchEvent(motionEvent);
        int action = motionEvent.getAction();
        if (action == 0) {
            this.I = System.currentTimeMillis();
            a();
            this.H = motionEvent.getRawY();
        } else if (action == 2) {
            float rawY = this.H - motionEvent.getRawY();
            this.H = motionEvent.getRawY();
            this.f9380w = (int) (this.f9380w + rawY);
            if (!this.f9376s) {
                float f4 = (-this.f9381x) * this.f9371o;
                float f5 = this.f9371o;
                float a4 = ((this.f9365j.a() - 1) - this.f9381x) * f5;
                int i2 = this.f9380w;
                double d5 = i2;
                double d6 = f5;
                Double.isNaN(d6);
                Double.isNaN(d5);
                if (d5 - (d6 * 0.3d) < f4) {
                    f4 = i2 - rawY;
                } else {
                    double d7 = i2;
                    double d8 = f5;
                    Double.isNaN(d8);
                    Double.isNaN(d7);
                    if (d7 + (d8 * 0.3d) > a4) {
                        a4 = i2 - rawY;
                    }
                }
                if (i2 < f4) {
                    this.f9380w = (int) f4;
                } else if (i2 > a4) {
                    this.f9380w = (int) a4;
                }
            }
        } else if (!onTouchEvent) {
            float y3 = motionEvent.getY();
            int i4 = this.F;
            double acos = Math.acos((i4 - y3) / i4);
            double d9 = this.F;
            Double.isNaN(d9);
            double d10 = acos * d9;
            float f6 = this.f9371o;
            double d11 = f6 / 2.0f;
            Double.isNaN(d11);
            double d12 = d10 + d11;
            Double.isNaN(f6);
            this.G = (int) (((((int) (d12 / d4)) - (this.B / 2)) * f6) - (((this.f9380w % f6) + f6) % f6));
            if (System.currentTimeMillis() - this.I > 120) {
                m(ACTION.DAGGLE);
            } else {
                m(ACTION.CLICK);
            }
        }
        invalidate();
        return true;
    }

    public final void setAdapter(e.c cVar) {
        this.f9365j = cVar;
        k();
        invalidate();
    }

    public final void setCurrentItem(int i2) {
        this.f9381x = i2;
        this.f9380w = 0;
        invalidate();
    }

    public final void setCyclic(boolean z3) {
        this.f9376s = z3;
    }

    public void setGravity(int i2) {
        this.K = i2;
    }

    public void setLabel(String str) {
        this.f9366k = str;
    }

    public final void setOnItemSelectedListener(f.c cVar) {
        this.f9359d = cVar;
    }

    public final void setTextSize(float f4) {
        if (f4 > 0.0f) {
            int i2 = (int) (this.f9356a.getResources().getDisplayMetrics().density * f4);
            this.f9367l = i2;
            this.f9362g.setTextSize(i2);
            this.f9363h.setTextSize(this.f9367l);
        }
    }

    public WheelView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f9360e = Executors.newSingleThreadScheduledExecutor();
        this.B = 11;
        this.G = 0;
        this.H = 0.0f;
        this.I = 0L;
        this.K = 17;
        this.f9370n0 = 0;
        this.f9372o0 = 0;
        this.f9373p = getResources().getColor(R.color.pickerview_wheelview_textcolor_out);
        this.f9374q = getResources().getColor(R.color.pickerview_wheelview_textcolor_center);
        this.f9375r = getResources().getColor(R.color.pickerview_wheelview_textcolor_divider);
        this.f9367l = getResources().getDimensionPixelSize(R.dimen.pickerview_textsize);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.PickerView_Library, 0, 0);
            this.K = obtainStyledAttributes.getInt(R.styleable.PickerView_Library_pickerview_gravity, 17);
            this.f9373p = obtainStyledAttributes.getColor(R.styleable.PickerView_Library_pickerview_textColorOut, this.f9373p);
            this.f9374q = obtainStyledAttributes.getColor(R.styleable.PickerView_Library_pickerview_textColorCenter, this.f9374q);
            this.f9375r = obtainStyledAttributes.getColor(R.styleable.PickerView_Library_pickerview_dividerColor, this.f9375r);
            this.f9367l = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.PickerView_Library_pickerview_textSize, this.f9367l);
            obtainStyledAttributes.recycle();
        }
        e(context);
    }
}
