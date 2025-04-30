package com.join.mgps.customview;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.i2;
/* loaded from: classes3.dex */
public class ScratchView extends View {

    /* renamed from: v  reason: collision with root package name */
    private static Bitmap f45992v;

    /* renamed from: w  reason: collision with root package name */
    private static Bitmap f45993w;

    /* renamed from: a  reason: collision with root package name */
    public final int f45994a;

    /* renamed from: b  reason: collision with root package name */
    public final int f45995b;

    /* renamed from: c  reason: collision with root package name */
    private final int f45996c;

    /* renamed from: d  reason: collision with root package name */
    private Paint f45997d;

    /* renamed from: e  reason: collision with root package name */
    private Path f45998e;

    /* renamed from: f  reason: collision with root package name */
    private Canvas f45999f;

    /* renamed from: g  reason: collision with root package name */
    private int f46000g;

    /* renamed from: h  reason: collision with root package name */
    private int f46001h;

    /* renamed from: i  reason: collision with root package name */
    private Paint f46002i;

    /* renamed from: j  reason: collision with root package name */
    private int f46003j;

    /* renamed from: k  reason: collision with root package name */
    private int f46004k;

    /* renamed from: l  reason: collision with root package name */
    private b f46005l;

    /* renamed from: m  reason: collision with root package name */
    private c f46006m;

    /* renamed from: n  reason: collision with root package name */
    private int f46007n;

    /* renamed from: o  reason: collision with root package name */
    private int f46008o;

    /* renamed from: p  reason: collision with root package name */
    private volatile boolean f46009p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f46010q;

    /* renamed from: r  reason: collision with root package name */
    private Runnable f46011r;

    /* renamed from: s  reason: collision with root package name */
    private Bitmap f46012s;

    /* renamed from: t  reason: collision with root package name */
    boolean f46013t;

    /* renamed from: u  reason: collision with root package name */
    int f46014u;

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                int width = ScratchView.this.getWidth();
                int height = ScratchView.this.getHeight();
                int i2 = width * height;
                float f4 = i2;
                int[] iArr = new int[i2];
                ScratchView.f45993w.getPixels(iArr, 0, width, 0, 0, width, height);
                float f5 = 0.0f;
                for (int i4 = 0; i4 < width; i4++) {
                    for (int i5 = 0; i5 < height; i5++) {
                        if (iArr[(i5 * width) + i4] == 0) {
                            f5 += 1.0f;
                        }
                    }
                }
                if (f5 <= 0.0f || f4 <= 0.0f || ((int) ((f5 * 100.0f) / f4)) <= ScratchView.this.f46004k) {
                    return;
                }
                ScratchView.this.f46009p = true;
                ScratchView.this.f46010q = false;
                ScratchView.this.postInvalidate();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface b {
        void complete();
    }

    /* loaded from: classes3.dex */
    public interface c {
        void onScratch();
    }

    public ScratchView(Context context) {
        this(context, null);
    }

    public static int e(BitmapFactory.Options options, int i2, int i4) {
        double ceil;
        int i5 = options.outHeight;
        int i6 = options.outWidth;
        if (i5 > i4 || i6 > i2) {
            if (i6 > i5) {
                ceil = Math.ceil(i5 / i4);
            } else {
                ceil = Math.ceil(i6 / i2);
            }
            return (int) ceil;
        }
        return 1;
    }

    public static Bitmap f(Resources resources, int i2, int i4, int i5) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeResource(resources, i2, options);
        options.inSampleSize = e(options, i4, i5);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeResource(resources, i2, options);
    }

    private void g() {
        this.f45997d.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        this.f45999f.drawPath(this.f45998e, this.f45997d);
    }

    private void h() {
        if (f45992v == null) {
            f45992v = f(getResources(), this.f45996c, this.f46007n, this.f46008o);
        }
        if (f45993w == null) {
            f45993w = Bitmap.createBitmap(this.f46007n, this.f46008o, Bitmap.Config.ARGB_4444);
        }
        if (this.f45999f == null) {
            this.f45999f = new Canvas(f45993w);
        }
        m();
        l();
        this.f45999f.drawBitmap(f45992v, (Rect) null, new Rect(0, 0, this.f46007n, this.f46008o), this.f46002i);
    }

    private void i() {
        this.f45997d = new Paint();
        this.f46002i = new Paint();
        this.f45998e = new Path();
        this.f46003j = getResources().getDimensionPixelOffset(R.dimen.wdp100);
        this.f46004k = 50;
    }

    private void l() {
        this.f46002i.setColor(Color.parseColor("#c3c3c3"));
        this.f46002i.setAntiAlias(true);
        this.f46002i.setDither(true);
        this.f46002i.setStrokeJoin(Paint.Join.ROUND);
        this.f46002i.setStrokeCap(Paint.Cap.ROUND);
        this.f46002i.setStyle(Paint.Style.FILL);
        this.f46002i.setStrokeWidth(20.0f);
    }

    private void m() {
        this.f45997d.setColor(Color.parseColor("#c3c3c3"));
        this.f45997d.setAntiAlias(true);
        this.f45997d.setDither(true);
        this.f45997d.setStrokeJoin(Paint.Join.ROUND);
        this.f45997d.setStrokeCap(Paint.Cap.ROUND);
        this.f45997d.setStyle(Paint.Style.STROKE);
        this.f45997d.setStrokeWidth(this.f46003j);
    }

    public void j() {
        Bitmap bitmap = f45993w;
        if (bitmap != null) {
            bitmap.recycle();
        }
        Bitmap bitmap2 = f45992v;
        if (bitmap2 != null) {
            bitmap2.recycle();
        }
    }

    public void k() {
        i();
        h();
        this.f46009p = false;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        b bVar;
        if (this.f46009p && (bVar = this.f46005l) != null) {
            bVar.complete();
        }
        if (this.f46009p) {
            return;
        }
        g();
        canvas.drawBitmap(f45993w, 0.0f, 0.0f, (Paint) null);
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i4) {
        super.onMeasure(i2, i4);
        this.f46007n = getMeasuredWidth();
        this.f46008o = getMeasuredHeight();
        h();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f46013t && !this.f46010q) {
            if (this.f46014u <= 0) {
                i2.a(getContext()).b("已经没有次数了！");
            }
            return true;
        }
        int action = motionEvent.getAction();
        int x3 = (int) motionEvent.getX();
        int y3 = (int) motionEvent.getY();
        if (action == 0) {
            this.f46010q = true;
            this.f46000g = x3;
            this.f46001h = y3;
            this.f45998e.moveTo(x3, y3);
            getParent().requestDisallowInterceptTouchEvent(true);
        } else if (action == 2) {
            getParent().requestDisallowInterceptTouchEvent(true);
            int abs = Math.abs(x3 - this.f46000g);
            int abs2 = Math.abs(y3 - this.f46001h);
            if (abs > 3 || abs2 > 3) {
                this.f45998e.lineTo(x3, y3);
                c cVar = this.f46006m;
                if (cVar != null) {
                    cVar.onScratch();
                }
            }
            this.f46000g = x3;
            this.f46001h = y3;
            post(this.f46011r);
        }
        invalidate();
        return true;
    }

    public void setCanCratch(boolean z3) {
        this.f46013t = z3;
    }

    public void setCompletePercentage(int i2) {
        this.f46004k = i2;
    }

    public void setNumber(int i2) {
        this.f46014u = i2;
    }

    public void setOnCompleteListener(b bVar) {
        this.f46005l = bVar;
    }

    public void setOnScratchListener(c cVar) {
        this.f46006m = cVar;
    }

    public ScratchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ScratchView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f45994a = 70;
        this.f45995b = 50;
        this.f46009p = false;
        this.f46010q = false;
        this.f46011r = new a();
        this.f46013t = true;
        this.f46014u = 1;
        this.f45996c = context.obtainStyledAttributes(attributeSet, R.styleable.scratchView).getResourceId(0, 0);
        i();
    }
}
