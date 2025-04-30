package moe.codeest.enviews;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.CornerPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.AnticipateInterpolator;
import com.papa.gsyvideoplayer.R;
/* loaded from: classes5.dex */
public class ENPlayView extends View {

    /* renamed from: q  reason: collision with root package name */
    public static int f72721q = 0;

    /* renamed from: r  reason: collision with root package name */
    public static int f72722r = 1;

    /* renamed from: s  reason: collision with root package name */
    public static int f72723s = -1;

    /* renamed from: t  reason: collision with root package name */
    public static int f72724t = -328966;

    /* renamed from: u  reason: collision with root package name */
    public static int f72725u = 4;

    /* renamed from: v  reason: collision with root package name */
    public static int f72726v = 4;

    /* renamed from: w  reason: collision with root package name */
    public static int f72727w = 1200;

    /* renamed from: a  reason: collision with root package name */
    private int f72728a;

    /* renamed from: b  reason: collision with root package name */
    private Paint f72729b;

    /* renamed from: c  reason: collision with root package name */
    private Paint f72730c;

    /* renamed from: d  reason: collision with root package name */
    private int f72731d;

    /* renamed from: e  reason: collision with root package name */
    private int f72732e;

    /* renamed from: f  reason: collision with root package name */
    private int f72733f;

    /* renamed from: g  reason: collision with root package name */
    private int f72734g;

    /* renamed from: h  reason: collision with root package name */
    private int f72735h;

    /* renamed from: i  reason: collision with root package name */
    private RectF f72736i;

    /* renamed from: j  reason: collision with root package name */
    private RectF f72737j;

    /* renamed from: k  reason: collision with root package name */
    private float f72738k;

    /* renamed from: l  reason: collision with root package name */
    private Path f72739l;

    /* renamed from: m  reason: collision with root package name */
    private Path f72740m;

    /* renamed from: n  reason: collision with root package name */
    private PathMeasure f72741n;

    /* renamed from: o  reason: collision with root package name */
    private float f72742o;

    /* renamed from: p  reason: collision with root package name */
    private int f72743p;

    /* loaded from: classes5.dex */
    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            ENPlayView.this.f72738k = 1.0f - valueAnimator.getAnimatedFraction();
            ENPlayView.this.invalidate();
        }
    }

    /* loaded from: classes5.dex */
    class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            ENPlayView.this.f72738k = valueAnimator.getAnimatedFraction();
            ENPlayView.this.invalidate();
        }
    }

    public ENPlayView(Context context) {
        super(context);
        this.f72728a = f72722r;
        this.f72738k = 1.0f;
    }

    private int b(int i2) {
        return (int) TypedValue.applyDimension(1, i2, getContext().getResources().getDisplayMetrics());
    }

    public void c() {
        int i2 = this.f72728a;
        int i4 = f72722r;
        if (i2 == i4) {
            return;
        }
        this.f72728a = i4;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 100.0f);
        ofFloat.setDuration(this.f72743p);
        ofFloat.setInterpolator(new AnticipateInterpolator());
        ofFloat.addUpdateListener(new b());
        if (ofFloat.isRunning()) {
            return;
        }
        ofFloat.start();
    }

    public void d() {
        int i2 = this.f72728a;
        int i4 = f72721q;
        if (i2 == i4) {
            return;
        }
        this.f72728a = i4;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 100.0f);
        ofFloat.setDuration(this.f72743p);
        ofFloat.setInterpolator(new AnticipateInterpolator());
        ofFloat.addUpdateListener(new a());
        if (ofFloat.isRunning()) {
            return;
        }
        ofFloat.start();
    }

    public int getCurrentState() {
        return this.f72728a;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawCircle(this.f72733f, this.f72734g, this.f72731d / 2, this.f72730c);
        float f4 = this.f72738k;
        if (f4 < 0.0f) {
            int i2 = this.f72733f;
            int i4 = this.f72735h;
            int i5 = this.f72734g;
            canvas.drawLine(i2 + i4, (i5 - (i4 * 1.6f)) + (i4 * 10 * f4), i2 + i4, i5 + (i4 * 1.6f) + (i4 * 10 * f4), this.f72729b);
            int i6 = this.f72733f;
            int i7 = this.f72735h;
            int i8 = this.f72734g;
            canvas.drawLine(i6 - i7, i8 - (i7 * 1.6f), i6 - i7, i8 + (i7 * 1.6f), this.f72729b);
            canvas.drawArc(this.f72737j, -105.0f, 360.0f, false, this.f72729b);
        } else if (f4 <= 0.3d) {
            int i9 = this.f72733f;
            int i10 = this.f72735h;
            int i11 = this.f72734g;
            canvas.drawLine(i9 + i10, (i11 - (i10 * 1.6f)) + (((i10 * 3.2f) / 0.3f) * f4), i9 + i10, i11 + (i10 * 1.6f), this.f72729b);
            int i12 = this.f72733f;
            int i13 = this.f72735h;
            int i14 = this.f72734g;
            canvas.drawLine(i12 - i13, i14 - (i13 * 1.6f), i12 - i13, i14 + (i13 * 1.6f), this.f72729b);
            float f5 = this.f72738k;
            if (f5 != 0.0f) {
                canvas.drawArc(this.f72736i, 0.0f, f5 * 600.0f, false, this.f72729b);
            }
            RectF rectF = this.f72737j;
            float f6 = this.f72738k;
            canvas.drawArc(rectF, (f6 * 360.0f) - 105.0f, (1.0f - f6) * 360.0f, false, this.f72729b);
        } else if (f4 <= 0.6d) {
            canvas.drawArc(this.f72736i, (f4 - 0.3f) * 600.0f, 180.0f - ((f4 - 0.3f) * 600.0f), false, this.f72729b);
            this.f72740m.reset();
            PathMeasure pathMeasure = this.f72741n;
            float f7 = this.f72742o;
            pathMeasure.getSegment(0.02f * f7, (0.38f * f7) + (((f7 * 0.42f) / 0.3f) * (this.f72738k - 0.3f)), this.f72740m, true);
            canvas.drawPath(this.f72740m, this.f72729b);
            RectF rectF2 = this.f72737j;
            float f8 = this.f72738k;
            canvas.drawArc(rectF2, (f8 * 360.0f) - 105.0f, (1.0f - f8) * 360.0f, false, this.f72729b);
        } else if (f4 <= 0.8d) {
            this.f72740m.reset();
            PathMeasure pathMeasure2 = this.f72741n;
            float f9 = this.f72742o;
            float f10 = this.f72738k;
            pathMeasure2.getSegment((0.02f * f9) + (((f9 * 0.2f) / 0.2f) * (f10 - 0.6f)), (0.8f * f9) + (((f9 * 0.2f) / 0.2f) * (f10 - 0.6f)), this.f72740m, true);
            canvas.drawPath(this.f72740m, this.f72729b);
            RectF rectF3 = this.f72737j;
            float f11 = this.f72738k;
            canvas.drawArc(rectF3, (f11 * 360.0f) - 105.0f, (1.0f - f11) * 360.0f, false, this.f72729b);
        } else {
            this.f72740m.reset();
            this.f72741n.getSegment(this.f72735h * 10 * (this.f72738k - 1.0f), this.f72742o, this.f72740m, true);
            canvas.drawPath(this.f72740m, this.f72729b);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i4, int i5, int i6) {
        super.onSizeChanged(i2, i4, i5, i6);
        int i7 = (i2 * 9) / 10;
        this.f72731d = i7;
        this.f72732e = (i4 * 9) / 10;
        this.f72735h = i7 / b(4);
        this.f72733f = i2 / 2;
        this.f72734g = i4 / 2;
        int i8 = this.f72733f;
        int i9 = this.f72735h;
        int i10 = this.f72734g;
        this.f72736i = new RectF(i8 - i9, i10 + (i9 * 0.6f), i8 + i9, i10 + (i9 * 2.6f));
        int i11 = this.f72733f;
        int i12 = this.f72731d;
        int i13 = this.f72734g;
        int i14 = this.f72732e;
        this.f72737j = new RectF(i11 - (i12 / 2), i13 - (i14 / 2), i11 + (i12 / 2), i13 + (i14 / 2));
        Path path = this.f72739l;
        int i15 = this.f72733f;
        int i16 = this.f72735h;
        path.moveTo(i15 - i16, this.f72734g + (i16 * 1.8f));
        Path path2 = this.f72739l;
        int i17 = this.f72733f;
        int i18 = this.f72735h;
        path2.lineTo(i17 - i18, this.f72734g - (i18 * 1.8f));
        this.f72739l.lineTo(this.f72733f + this.f72735h, this.f72734g);
        this.f72739l.close();
        this.f72741n.setPath(this.f72739l, false);
        this.f72742o = this.f72741n.getLength();
    }

    public void setDuration(int i2) {
        this.f72743p = i2;
    }

    public ENPlayView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f72728a = f72722r;
        this.f72738k = 1.0f;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.play);
        int color = obtainStyledAttributes.getColor(R.styleable.play_play_line_color, f72723s);
        int color2 = obtainStyledAttributes.getColor(R.styleable.play_play_bg_line_color, f72724t);
        int integer = obtainStyledAttributes.getInteger(R.styleable.play_play_line_width, b(f72725u));
        int integer2 = obtainStyledAttributes.getInteger(R.styleable.play_play_bg_line_width, b(f72726v));
        obtainStyledAttributes.recycle();
        setLayerType(1, null);
        Paint paint = new Paint(1);
        this.f72729b = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.f72729b.setStrokeCap(Paint.Cap.ROUND);
        this.f72729b.setColor(color);
        this.f72729b.setStrokeWidth(integer);
        this.f72729b.setPathEffect(new CornerPathEffect(1.0f));
        Paint paint2 = new Paint(1);
        this.f72730c = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        this.f72730c.setStrokeCap(Paint.Cap.ROUND);
        this.f72730c.setColor(color2);
        this.f72730c.setStrokeWidth(integer2);
        this.f72739l = new Path();
        this.f72740m = new Path();
        this.f72741n = new PathMeasure();
        this.f72743p = f72727w;
    }
}
