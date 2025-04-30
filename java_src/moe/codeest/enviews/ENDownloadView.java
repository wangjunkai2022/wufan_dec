package moe.codeest.enviews;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.view.animation.OvershootInterpolator;
import com.papa.gsyvideoplayer.R;
/* loaded from: classes5.dex */
public class ENDownloadView extends View {
    public static final int A = 3;
    private static final int B = -1;
    private static final int C = -12959931;
    private static final int D = -1;
    private static final int E = 9;
    private static final int F = 9;
    private static final int G = 14;
    private static final int H = 0;
    private static final int I = 2;
    private static final int J = 2000;
    private static final DownloadUnit K = DownloadUnit.B;

    /* renamed from: x  reason: collision with root package name */
    public static final int f72688x = 0;

    /* renamed from: y  reason: collision with root package name */
    public static final int f72689y = 1;

    /* renamed from: z  reason: collision with root package name */
    public static final int f72690z = 2;

    /* renamed from: a  reason: collision with root package name */
    private h f72691a;

    /* renamed from: b  reason: collision with root package name */
    private int f72692b;

    /* renamed from: c  reason: collision with root package name */
    private float f72693c;

    /* renamed from: d  reason: collision with root package name */
    private double f72694d;

    /* renamed from: e  reason: collision with root package name */
    private double f72695e;

    /* renamed from: f  reason: collision with root package name */
    private int f72696f;

    /* renamed from: g  reason: collision with root package name */
    private int f72697g;

    /* renamed from: h  reason: collision with root package name */
    private DownloadUnit f72698h;

    /* renamed from: i  reason: collision with root package name */
    private Paint f72699i;

    /* renamed from: j  reason: collision with root package name */
    private Paint f72700j;

    /* renamed from: k  reason: collision with root package name */
    private Paint f72701k;

    /* renamed from: l  reason: collision with root package name */
    private Path f72702l;

    /* renamed from: m  reason: collision with root package name */
    private RectF f72703m;

    /* renamed from: n  reason: collision with root package name */
    private RectF f72704n;

    /* renamed from: o  reason: collision with root package name */
    ValueAnimator f72705o;

    /* renamed from: p  reason: collision with root package name */
    private float f72706p;

    /* renamed from: q  reason: collision with root package name */
    private float f72707q;

    /* renamed from: r  reason: collision with root package name */
    private float f72708r;

    /* renamed from: s  reason: collision with root package name */
    private float f72709s;

    /* renamed from: t  reason: collision with root package name */
    private float f72710t;

    /* renamed from: u  reason: collision with root package name */
    private float f72711u;

    /* renamed from: v  reason: collision with root package name */
    private float f72712v;

    /* renamed from: w  reason: collision with root package name */
    private float f72713w;

    /* loaded from: classes5.dex */
    public enum DownloadUnit {
        GB,
        MB,
        KB,
        B,
        NONE
    }

    /* loaded from: classes5.dex */
    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            ENDownloadView.this.f72706p = valueAnimator.getAnimatedFraction();
            ENDownloadView.this.invalidate();
        }
    }

    /* loaded from: classes5.dex */
    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ENDownloadView.this.f72692b = 1;
            ENDownloadView.this.i();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class c implements ValueAnimator.AnimatorUpdateListener {
        c() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            ENDownloadView.this.f72706p = valueAnimator.getAnimatedFraction();
            if (ENDownloadView.this.f72698h != DownloadUnit.NONE && ENDownloadView.this.f72695e > 0.0d) {
                ENDownloadView eNDownloadView = ENDownloadView.this;
                double d4 = eNDownloadView.f72706p;
                double d5 = ENDownloadView.this.f72695e;
                Double.isNaN(d4);
                eNDownloadView.f72694d = d4 * d5;
            }
            ENDownloadView.this.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class d extends AnimatorListenerAdapter {
        d() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ENDownloadView.this.f72692b = 1;
            ENDownloadView.this.i();
        }
    }

    /* loaded from: classes5.dex */
    class e implements ValueAnimator.AnimatorUpdateListener {
        e() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            ENDownloadView.this.f72706p = valueAnimator.getAnimatedFraction();
            ENDownloadView.this.invalidate();
        }
    }

    /* loaded from: classes5.dex */
    class f extends AnimatorListenerAdapter {
        f() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ENDownloadView.this.f72706p = 0.0f;
            ENDownloadView.this.f72692b = 3;
            if (ENDownloadView.this.f72691a != null) {
                ENDownloadView.this.f72691a.a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class g {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f72720a;

        static {
            int[] iArr = new int[DownloadUnit.values().length];
            f72720a = iArr;
            try {
                iArr[DownloadUnit.GB.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f72720a[DownloadUnit.MB.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f72720a[DownloadUnit.KB.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f72720a[DownloadUnit.B.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes5.dex */
    interface h {
        void a();

        void b();
    }

    public ENDownloadView(Context context) {
        super(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        ValueAnimator valueAnimator = this.f72705o;
        if (valueAnimator != null) {
            valueAnimator.removeAllListeners();
            this.f72705o.removeAllUpdateListeners();
            if (this.f72705o.isRunning()) {
                this.f72705o.cancel();
            }
            this.f72705o = null;
        }
        if (this.f72692b != 1) {
            return;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 100.0f);
        this.f72705o = ofFloat;
        ofFloat.setDuration(this.f72697g);
        this.f72705o.setInterpolator(new LinearInterpolator());
        this.f72705o.addUpdateListener(new c());
        this.f72705o.addListener(new d());
        this.f72705o.start();
    }

    private void j() {
        ValueAnimator valueAnimator = this.f72705o;
        if (valueAnimator != null) {
            valueAnimator.removeAllListeners();
            this.f72705o.removeAllUpdateListeners();
            if (this.f72705o.isRunning()) {
                this.f72705o.cancel();
            }
            this.f72705o = null;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 100.0f);
        this.f72705o = ofFloat;
        ofFloat.setDuration(700L);
        this.f72705o.setInterpolator(new OvershootInterpolator());
        this.f72705o.addUpdateListener(new e());
        this.f72705o.addListener(new f());
        this.f72705o.start();
    }

    private String k(DownloadUnit downloadUnit) {
        int i2 = g.f72720a[downloadUnit.ordinal()];
        return i2 != 1 ? i2 != 2 ? i2 != 3 ? " b" : " kb" : " mb" : " gb";
    }

    public int getCurrentState() {
        return this.f72692b;
    }

    public void l() {
        ValueAnimator valueAnimator = this.f72705o;
        if (valueAnimator != null) {
            valueAnimator.removeAllListeners();
            this.f72705o.removeAllUpdateListeners();
            if (this.f72705o.isRunning()) {
                this.f72705o.cancel();
            }
            this.f72705o = null;
        }
    }

    public void m() {
        this.f72706p = 0.0f;
        this.f72692b = 0;
        ValueAnimator valueAnimator = this.f72705o;
        if (valueAnimator != null) {
            valueAnimator.removeAllListeners();
            this.f72705o.removeAllUpdateListeners();
            if (this.f72705o.isRunning()) {
                this.f72705o.cancel();
            }
            this.f72705o = null;
        }
    }

    public void n() {
        ValueAnimator valueAnimator = this.f72705o;
        if (valueAnimator != null) {
            valueAnimator.removeAllListeners();
            this.f72705o.removeAllUpdateListeners();
            if (this.f72705o.isRunning()) {
                this.f72705o.cancel();
            }
            this.f72705o = null;
        }
        this.f72692b = 1;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 100.0f);
        this.f72705o = ofFloat;
        ofFloat.setDuration(1500L);
        this.f72705o.setInterpolator(new OvershootInterpolator());
        this.f72705o.addUpdateListener(new a());
        this.f72705o.addListener(new b());
        this.f72705o.start();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int i2 = this.f72692b;
        if (i2 == 0) {
            float f4 = this.f72706p;
            if (f4 <= 0.4d) {
                canvas.drawCircle(this.f72709s, this.f72710t, this.f72712v, this.f72700j);
                float f5 = this.f72709s;
                float f6 = this.f72711u;
                float f7 = this.f72710t;
                canvas.drawLine(f5 - f6, f7, f5, f7 + f6, this.f72699i);
                float f8 = this.f72709s;
                float f9 = this.f72710t;
                float f10 = this.f72711u;
                canvas.drawLine(f8, f9 + f10, f8 + f10, f9, this.f72699i);
                float f11 = this.f72709s;
                float f12 = this.f72710t;
                float f13 = this.f72711u;
                float f14 = this.f72706p;
                canvas.drawLine(f11, (f12 + f13) - (((f13 * 1.3f) / 0.4f) * f14), f11, (f12 - (1.6f * f13)) + (((f13 * 1.3f) / 0.4f) * f14), this.f72699i);
                return;
            } else if (f4 <= 0.6d) {
                canvas.drawCircle(this.f72709s, this.f72710t, this.f72712v, this.f72700j);
                canvas.drawCircle(this.f72709s, this.f72710t - (this.f72711u * 0.3f), 2.0f, this.f72699i);
                float f15 = this.f72709s;
                float f16 = this.f72711u;
                float f17 = this.f72706p;
                float f18 = this.f72710t;
                canvas.drawLine((f15 - f16) - (((f16 * 1.2f) / 0.2f) * (f17 - 0.4f)), f18, f15, (f18 + f16) - ((f16 / 0.2f) * (f17 - 0.4f)), this.f72699i);
                float f19 = this.f72709s;
                float f20 = this.f72710t;
                float f21 = this.f72711u;
                float f22 = this.f72706p;
                canvas.drawLine(f19, (f20 + f21) - ((f21 / 0.2f) * (f22 - 0.4f)), f19 + f21 + (((f21 * 1.2f) / 0.2f) * (f22 - 0.4f)), f20, this.f72699i);
                return;
            } else if (f4 <= 1.0f) {
                canvas.drawCircle(this.f72709s, this.f72710t, this.f72712v, this.f72700j);
                float f23 = this.f72709s;
                float f24 = this.f72710t;
                float f25 = this.f72711u;
                canvas.drawCircle(f23, (f24 - (f25 * 0.3f)) - (((this.f72712v - (f25 * 0.3f)) / 0.4f) * (this.f72706p - 0.6f)), 2.0f, this.f72699i);
                float f26 = this.f72709s;
                float f27 = this.f72711u;
                float f28 = this.f72710t;
                canvas.drawLine(f26 - (f27 * 2.2f), f28, f26 + (f27 * 2.2f), f28, this.f72699i);
                return;
            } else {
                canvas.drawCircle(this.f72709s, this.f72710t, this.f72712v, this.f72700j);
                canvas.drawCircle(this.f72709s, (this.f72710t - this.f72712v) - ((this.f72711u * 3.0f) * (this.f72706p - 1.0f)), 3.0f, this.f72699i);
                float f29 = this.f72709s;
                float f30 = this.f72711u;
                float f31 = this.f72710t;
                canvas.drawLine(f29 - (f30 * 2.2f), f31, f29 + (f30 * 2.2f), f31, this.f72699i);
                return;
            }
        }
        if (i2 == 1) {
            float f32 = this.f72706p;
            if (f32 <= 0.2d) {
                this.f72701k.setTextSize((this.f72696f / 0.2f) * f32);
            }
            canvas.drawCircle(this.f72709s, this.f72710t, this.f72712v, this.f72700j);
            canvas.drawArc(this.f72703m, -90.0f, this.f72706p * 359.99f, false, this.f72699i);
            this.f72702l.reset();
            float f33 = this.f72693c + 2.0f;
            this.f72693c = f33;
            float f34 = this.f72709s;
            float f35 = this.f72713w;
            if (f33 > f34 - (6.0f * f35)) {
                this.f72693c = f34 - (f35 * 10.0f);
            }
            this.f72702l.moveTo(this.f72693c, this.f72710t);
            for (int i4 = 0; i4 < 4; i4++) {
                Path path = this.f72702l;
                float f36 = this.f72713w;
                path.rQuadTo(f36, (-(1.0f - this.f72706p)) * f36, f36 * 2.0f, 0.0f);
                Path path2 = this.f72702l;
                float f37 = this.f72713w;
                path2.rQuadTo(f37, (1.0f - this.f72706p) * f37, f37 * 2.0f, 0.0f);
            }
            canvas.save();
            canvas.clipRect(this.f72704n);
            canvas.drawPath(this.f72702l, this.f72699i);
            canvas.restore();
            DownloadUnit downloadUnit = DownloadUnit.NONE;
        } else if (i2 != 2) {
            if (i2 != 3) {
                return;
            }
            canvas.drawCircle(this.f72709s, this.f72710t, this.f72712v, this.f72700j);
            float f38 = this.f72709s;
            float f39 = this.f72711u;
            float f40 = this.f72710t;
            float f41 = this.f72706p;
            canvas.drawLine(f38 - f39, f40, (f39 * 0.5f * f41) + (f38 - (f39 * 0.5f)), (f39 * 0.65f) + f40 + (f39 * 0.35f * f41), this.f72699i);
            float f42 = this.f72709s;
            float f43 = this.f72711u;
            float f44 = this.f72706p;
            float f45 = this.f72710t;
            canvas.drawLine((f42 - (f43 * 0.5f)) + (f43 * 0.5f * f44), (f43 * 0.65f) + f45 + (f43 * 0.35f * f44), (f42 + (1.2f * f43)) - ((0.2f * f43) * f44), (f45 - (f43 * 1.3f)) + (f43 * 1.3f * f44), this.f72699i);
            float f46 = this.f72709s;
            float f47 = this.f72711u;
            float f48 = this.f72706p;
            float f49 = this.f72710t;
            canvas.drawLine((f46 - (f47 * 0.5f)) + (f47 * 0.5f * f48), (f47 * 0.65f) + f49 + (0.35f * f47 * f48), (0.5f * f47 * f48) + (f46 - (f47 * 0.5f)), (f49 + (0.65f * f47)) - ((f47 * 2.25f) * f48), this.f72699i);
        } else {
            canvas.drawCircle(this.f72709s, this.f72710t, this.f72712v, this.f72699i);
            float f50 = this.f72706p;
            if (f50 <= 0.5d) {
                Paint paint = this.f72701k;
                int i5 = this.f72696f;
                paint.setTextSize(i5 - ((i5 / 0.2f) * f50));
            } else {
                this.f72701k.setTextSize(0.0f);
            }
            if (this.f72698h != DownloadUnit.NONE && this.f72694d > 0.0d) {
                canvas.drawText(String.format("%.2f", Double.valueOf(this.f72694d)) + k(this.f72698h), this.f72709s, this.f72710t + (this.f72711u * 1.4f), this.f72701k);
            }
            float f51 = this.f72709s;
            float f52 = this.f72711u;
            float f53 = this.f72706p;
            float f54 = this.f72710t;
            canvas.drawLine((f51 - (f52 * 2.2f)) + (1.2f * f52 * f53), f54, f51 - (f52 * 0.5f), f54 + (f52 * 0.5f * f53 * 1.3f), this.f72699i);
            float f55 = this.f72709s;
            float f56 = this.f72711u;
            float f57 = this.f72710t;
            float f58 = this.f72706p;
            canvas.drawLine(f55 - (f56 * 0.5f), f57 + (0.5f * f56 * f58 * 1.3f), (f55 + (2.2f * f56)) - (f56 * f58), f57 - ((f56 * f58) * 1.3f), this.f72699i);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i4, int i5, int i6) {
        super.onSizeChanged(i2, i4, i5, i6);
        float f4 = i2;
        this.f72707q = f4;
        float f5 = i4;
        this.f72708r = f5;
        float f6 = f4 / 2.0f;
        this.f72709s = f6;
        this.f72710t = f5 / 2.0f;
        float f7 = (f4 * 5.0f) / 12.0f;
        this.f72712v = f7;
        float f8 = f7 / 3.0f;
        this.f72711u = f8;
        float f9 = (f8 * 4.4f) / 12.0f;
        this.f72713w = f9;
        this.f72693c = f6 - (f9 * 10.0f);
        float f10 = this.f72709s;
        float f11 = this.f72712v;
        float f12 = this.f72710t;
        this.f72703m = new RectF(f10 - f11, f12 - f11, f10 + f11, f12 + f11);
        float f13 = this.f72709s;
        float f14 = this.f72713w;
        this.f72704n = new RectF(f13 - (f14 * 6.0f), 0.0f, f13 + (f14 * 6.0f), this.f72708r);
    }

    public void setDownloadConfig(int i2, double d4, DownloadUnit downloadUnit) {
        this.f72697g = i2;
        this.f72695e = d4;
        this.f72698h = downloadUnit;
    }

    public void setOnDownloadStateListener(h hVar) {
        this.f72691a = hVar;
    }

    public ENDownloadView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.download);
        int color = obtainStyledAttributes.getColor(R.styleable.download_download_line_color, -1);
        int color2 = obtainStyledAttributes.getColor(R.styleable.download_download_bg_line_color, C);
        int color3 = obtainStyledAttributes.getColor(R.styleable.download_download_text_color, -1);
        int integer = obtainStyledAttributes.getInteger(R.styleable.download_download_line_width, 9);
        int integer2 = obtainStyledAttributes.getInteger(R.styleable.download_download_bg_line_width, 9);
        int integer3 = obtainStyledAttributes.getInteger(R.styleable.download_download_text_size, 14);
        obtainStyledAttributes.recycle();
        Paint paint = new Paint(1);
        this.f72699i = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.f72699i.setStrokeCap(Paint.Cap.ROUND);
        this.f72699i.setStrokeWidth(integer);
        this.f72699i.setColor(color);
        Paint paint2 = new Paint(1);
        this.f72700j = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        this.f72700j.setStrokeCap(Paint.Cap.ROUND);
        this.f72700j.setStrokeWidth(integer2);
        this.f72700j.setColor(color2);
        Paint paint3 = new Paint(1);
        this.f72701k = paint3;
        paint3.setColor(color3);
        this.f72701k.setTextSize(integer3);
        this.f72701k.setTextAlign(Paint.Align.CENTER);
        this.f72702l = new Path();
        this.f72696f = integer3;
        this.f72692b = 0;
        this.f72698h = K;
        this.f72697g = 2000;
    }
}
