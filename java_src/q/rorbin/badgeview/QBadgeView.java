package q.rorbin.badgeview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import java.util.ArrayList;
import java.util.List;
import q.rorbin.badgeview.a;
/* loaded from: classes5.dex */
public class QBadgeView extends View implements q.rorbin.badgeview.a {
    protected PointF A;
    protected PointF B;
    protected PointF C;
    protected PointF D;
    protected List<PointF> E;
    protected View F;
    protected int G;
    protected int H;
    protected TextPaint I;
    protected Paint J;
    protected Paint K;

    /* renamed from: a  reason: collision with root package name */
    protected int f73956a;

    /* renamed from: b  reason: collision with root package name */
    protected int f73957b;

    /* renamed from: c  reason: collision with root package name */
    protected int f73958c;

    /* renamed from: d  reason: collision with root package name */
    protected Drawable f73959d;

    /* renamed from: e  reason: collision with root package name */
    protected Bitmap f73960e;

    /* renamed from: f  reason: collision with root package name */
    protected boolean f73961f;

    /* renamed from: g  reason: collision with root package name */
    protected float f73962g;

    /* renamed from: h  reason: collision with root package name */
    protected float f73963h;

    /* renamed from: i  reason: collision with root package name */
    protected float f73964i;

    /* renamed from: j  reason: collision with root package name */
    protected int f73965j;

    /* renamed from: k  reason: collision with root package name */
    protected String f73966k;

    /* renamed from: l  reason: collision with root package name */
    protected boolean f73967l;

    /* renamed from: m  reason: collision with root package name */
    protected boolean f73968m;

    /* renamed from: n  reason: collision with root package name */
    protected boolean f73969n;

    /* renamed from: n0  reason: collision with root package name */
    protected b f73970n0;

    /* renamed from: o  reason: collision with root package name */
    protected boolean f73971o;

    /* renamed from: o0  reason: collision with root package name */
    protected a.InterfaceC0496a f73972o0;

    /* renamed from: p  reason: collision with root package name */
    protected int f73973p;

    /* renamed from: p0  reason: collision with root package name */
    protected ViewGroup f73974p0;

    /* renamed from: q  reason: collision with root package name */
    protected float f73975q;

    /* renamed from: r  reason: collision with root package name */
    protected float f73976r;

    /* renamed from: s  reason: collision with root package name */
    protected float f73977s;

    /* renamed from: t  reason: collision with root package name */
    protected float f73978t;

    /* renamed from: u  reason: collision with root package name */
    protected int f73979u;

    /* renamed from: v  reason: collision with root package name */
    protected boolean f73980v;

    /* renamed from: w  reason: collision with root package name */
    protected RectF f73981w;

    /* renamed from: x  reason: collision with root package name */
    protected RectF f73982x;

    /* renamed from: y  reason: collision with root package name */
    protected Path f73983y;

    /* renamed from: z  reason: collision with root package name */
    protected Paint.FontMetrics f73984z;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public class a extends ViewGroup {
        public a(Context context) {
            super(context);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
            for (int i7 = 0; i7 < getChildCount(); i7++) {
                View childAt = getChildAt(i7);
                childAt.layout(0, 0, childAt.getMeasuredWidth(), childAt.getMeasuredHeight());
            }
        }

        @Override // android.view.View
        protected void onMeasure(int i2, int i4) {
            View view = null;
            View view2 = null;
            for (int i5 = 0; i5 < getChildCount(); i5++) {
                View childAt = getChildAt(i5);
                if (childAt instanceof QBadgeView) {
                    view2 = childAt;
                } else {
                    view = childAt;
                }
            }
            if (view == null) {
                super.onMeasure(i2, i4);
                return;
            }
            view.measure(i2, i4);
            if (view2 != null) {
                view2.measure(View.MeasureSpec.makeMeasureSpec(view.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(view.getMeasuredHeight(), 1073741824));
            }
            setMeasuredDimension(view.getMeasuredWidth(), view.getMeasuredHeight());
        }
    }

    public QBadgeView(Context context) {
        this(context, null);
    }

    private void A(Canvas canvas, PointF pointF, float f4) {
        if (pointF.x == -1000.0f && pointF.y == -1000.0f) {
            return;
        }
        if (!this.f73966k.isEmpty() && this.f73966k.length() != 1) {
            this.f73982x.left = pointF.x - ((this.f73981w.width() / 2.0f) + this.f73964i);
            this.f73982x.top = pointF.y - ((this.f73981w.height() / 2.0f) + (this.f73964i * 0.5f));
            this.f73982x.right = pointF.x + (this.f73981w.width() / 2.0f) + this.f73964i;
            this.f73982x.bottom = pointF.y + (this.f73981w.height() / 2.0f) + (this.f73964i * 0.5f);
            float height = this.f73982x.height() / 2.0f;
            if (this.f73959d != null) {
                B(canvas);
            } else {
                canvas.drawRoundRect(this.f73982x, height, height, this.J);
                if (this.f73957b != 0 && this.f73962g > 0.0f) {
                    canvas.drawRoundRect(this.f73982x, height, height, this.K);
                }
            }
        } else {
            RectF rectF = this.f73982x;
            float f5 = pointF.x;
            float f6 = (int) f4;
            rectF.left = f5 - f6;
            float f7 = pointF.y;
            rectF.top = f7 - f6;
            rectF.right = f5 + f6;
            rectF.bottom = f6 + f7;
            if (this.f73959d != null) {
                B(canvas);
            } else {
                canvas.drawCircle(f5, f7, f4, this.J);
                if (this.f73957b != 0 && this.f73962g > 0.0f) {
                    canvas.drawCircle(pointF.x, pointF.y, f4, this.K);
                }
            }
        }
        if (this.f73966k.isEmpty()) {
            return;
        }
        String str = this.f73966k;
        float f8 = pointF.x;
        RectF rectF2 = this.f73982x;
        float f9 = rectF2.bottom + rectF2.top;
        Paint.FontMetrics fontMetrics = this.f73984z;
        canvas.drawText(str, f8, ((f9 - fontMetrics.bottom) - fontMetrics.top) / 2.0f, this.I);
    }

    private void B(Canvas canvas) {
        this.J.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
        RectF rectF = this.f73982x;
        int i2 = (int) rectF.left;
        int i4 = (int) rectF.top;
        int i5 = (int) rectF.right;
        int i6 = (int) rectF.bottom;
        if (this.f73961f) {
            i5 = i2 + this.f73960e.getWidth();
            i6 = this.f73960e.getHeight() + i4;
            canvas.saveLayer(i2, i4, i5, i6, null, 31);
        }
        this.f73959d.setBounds(i2, i4, i5, i6);
        this.f73959d.draw(canvas);
        if (this.f73961f) {
            this.J.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
            canvas.drawBitmap(this.f73960e, i2, i4, this.J);
            canvas.restore();
            this.J.setXfermode(null);
            if (!this.f73966k.isEmpty() && this.f73966k.length() != 1) {
                RectF rectF2 = this.f73982x;
                canvas.drawRoundRect(rectF2, rectF2.height() / 2.0f, this.f73982x.height() / 2.0f, this.K);
                return;
            }
            canvas.drawCircle(this.f73982x.centerX(), this.f73982x.centerY(), this.f73982x.width() / 2.0f, this.K);
            return;
        }
        canvas.drawRect(this.f73982x, this.K);
    }

    private void C(Canvas canvas, float f4, float f5) {
        float f6;
        float f7;
        float f8;
        PointF pointF = this.B;
        float f9 = pointF.y;
        PointF pointF2 = this.C;
        float f10 = f9 - pointF2.y;
        float f11 = pointF.x - pointF2.x;
        this.E.clear();
        if (f11 != 0.0f) {
            double d4 = f10 / f11;
            Double.isNaN(d4);
            double d5 = (-1.0d) / d4;
            e.a(this.B, f5, Double.valueOf(d5), this.E);
            e.a(this.C, f4, Double.valueOf(d5), this.E);
        } else {
            e.a(this.B, f5, Double.valueOf(0.0d), this.E);
            e.a(this.C, f4, Double.valueOf(0.0d), this.E);
        }
        this.f73983y.reset();
        Path path = this.f73983y;
        PointF pointF3 = this.C;
        float f12 = pointF3.x;
        float f13 = pointF3.y;
        int i2 = this.f73979u;
        path.addCircle(f12, f13, f4, (i2 == 1 || i2 == 2) ? Path.Direction.CCW : Path.Direction.CW);
        PointF pointF4 = this.D;
        PointF pointF5 = this.C;
        float f14 = pointF5.x;
        PointF pointF6 = this.B;
        pointF4.x = (f14 + pointF6.x) / 2.0f;
        pointF4.y = (pointF5.y + pointF6.y) / 2.0f;
        this.f73983y.moveTo(this.E.get(2).x, this.E.get(2).y);
        Path path2 = this.f73983y;
        PointF pointF7 = this.D;
        path2.quadTo(pointF7.x, pointF7.y, this.E.get(0).x, this.E.get(0).y);
        this.f73983y.lineTo(this.E.get(1).x, this.E.get(1).y);
        Path path3 = this.f73983y;
        PointF pointF8 = this.D;
        path3.quadTo(pointF8.x, pointF8.y, this.E.get(3).x, this.E.get(3).y);
        this.f73983y.lineTo(this.E.get(2).x, this.E.get(2).y);
        this.f73983y.close();
        canvas.drawPath(this.f73983y, this.J);
        if (this.f73957b == 0 || this.f73962g <= 0.0f) {
            return;
        }
        this.f73983y.reset();
        this.f73983y.moveTo(this.E.get(2).x, this.E.get(2).y);
        Path path4 = this.f73983y;
        PointF pointF9 = this.D;
        path4.quadTo(pointF9.x, pointF9.y, this.E.get(0).x, this.E.get(0).y);
        this.f73983y.moveTo(this.E.get(1).x, this.E.get(1).y);
        Path path5 = this.f73983y;
        PointF pointF10 = this.D;
        path5.quadTo(pointF10.x, pointF10.y, this.E.get(3).x, this.E.get(3).y);
        int i4 = this.f73979u;
        if (i4 != 1 && i4 != 2) {
            float f15 = this.E.get(3).x;
            PointF pointF11 = this.C;
            f6 = f15 - pointF11.x;
            f7 = pointF11.y;
            f8 = this.E.get(3).y;
        } else {
            float f16 = this.E.get(2).x;
            PointF pointF12 = this.C;
            f6 = f16 - pointF12.x;
            f7 = pointF12.y;
            f8 = this.E.get(2).y;
        }
        double atan = Math.atan((f7 - f8) / f6);
        int i5 = this.f73979u;
        float e4 = 360.0f - ((float) e.e(e.d(atan, i5 + (-1) == 0 ? 4 : i5 - 1)));
        if (Build.VERSION.SDK_INT >= 21) {
            Path path6 = this.f73983y;
            PointF pointF13 = this.C;
            float f17 = pointF13.x;
            float f18 = pointF13.y;
            path6.addArc(f17 - f4, f18 - f4, f17 + f4, f18 + f4, e4, 180.0f);
        } else {
            Path path7 = this.f73983y;
            PointF pointF14 = this.C;
            float f19 = pointF14.x;
            float f20 = pointF14.y;
            path7.addArc(new RectF(f19 - f4, f20 - f4, f19 + f4, f20 + f4), e4, 180.0f);
        }
        canvas.drawPath(this.f73983y, this.K);
    }

    private void D(View view) {
        if (view.getParent() != null && (view.getParent() instanceof View)) {
            D((View) view.getParent());
        } else if (view instanceof ViewGroup) {
            this.f73974p0 = (ViewGroup) view;
        }
    }

    private void E() {
        float height = this.f73981w.height() > this.f73981w.width() ? this.f73981w.height() : this.f73981w.width();
        switch (this.f73973p) {
            case 17:
                PointF pointF = this.A;
                pointF.x = this.G / 2.0f;
                pointF.y = this.H / 2.0f;
                break;
            case 49:
                PointF pointF2 = this.A;
                pointF2.x = this.G / 2.0f;
                pointF2.y = this.f73976r + this.f73964i + (this.f73981w.height() / 2.0f);
                break;
            case 81:
                PointF pointF3 = this.A;
                pointF3.x = this.G / 2.0f;
                pointF3.y = this.H - ((this.f73976r + this.f73964i) + (this.f73981w.height() / 2.0f));
                break;
            case 8388627:
                PointF pointF4 = this.A;
                pointF4.x = this.f73975q + this.f73964i + (height / 2.0f);
                pointF4.y = this.H / 2.0f;
                break;
            case 8388629:
                PointF pointF5 = this.A;
                pointF5.x = this.G - ((this.f73975q + this.f73964i) + (height / 2.0f));
                pointF5.y = this.H / 2.0f;
                break;
            case 8388659:
                PointF pointF6 = this.A;
                float f4 = this.f73975q;
                float f5 = this.f73964i;
                pointF6.x = f4 + f5 + (height / 2.0f);
                pointF6.y = this.f73976r + f5 + (this.f73981w.height() / 2.0f);
                break;
            case 8388661:
                PointF pointF7 = this.A;
                float f6 = this.f73975q;
                float f7 = this.f73964i;
                pointF7.x = this.G - ((f6 + f7) + (height / 2.0f));
                pointF7.y = this.f73976r + f7 + (this.f73981w.height() / 2.0f);
                break;
            case 8388691:
                PointF pointF8 = this.A;
                float f8 = this.f73975q;
                float f9 = this.f73964i;
                pointF8.x = f8 + f9 + (height / 2.0f);
                pointF8.y = this.H - ((this.f73976r + f9) + (this.f73981w.height() / 2.0f));
                break;
            case 8388693:
                PointF pointF9 = this.A;
                float f10 = this.f73975q;
                float f11 = this.f73964i;
                pointF9.x = this.G - ((f10 + f11) + (height / 2.0f));
                pointF9.y = this.H - ((this.f73976r + f11) + (this.f73981w.height() / 2.0f));
                break;
        }
        I();
    }

    private void F(View view) {
        ViewGroup viewGroup = (ViewGroup) view.getRootView();
        this.f73974p0 = viewGroup;
        if (viewGroup == null) {
            D(view);
        }
    }

    private void G() {
        setLayerType(1, null);
        this.f73981w = new RectF();
        this.f73982x = new RectF();
        this.f73983y = new Path();
        this.A = new PointF();
        this.B = new PointF();
        this.C = new PointF();
        this.D = new PointF();
        this.E = new ArrayList();
        TextPaint textPaint = new TextPaint();
        this.I = textPaint;
        textPaint.setAntiAlias(true);
        this.I.setSubpixelText(true);
        this.I.setFakeBoldText(true);
        this.I.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        Paint paint = new Paint();
        this.J = paint;
        paint.setAntiAlias(true);
        this.J.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint();
        this.K = paint2;
        paint2.setAntiAlias(true);
        this.K.setStyle(Paint.Style.STROKE);
        this.f73956a = -1552832;
        this.f73958c = -1;
        this.f73963h = d.a(getContext(), 11.0f);
        this.f73964i = d.a(getContext(), 5.0f);
        this.f73965j = 0;
        this.f73973p = 8388661;
        this.f73975q = d.a(getContext(), 1.0f);
        this.f73976r = d.a(getContext(), 1.0f);
        this.f73978t = d.a(getContext(), 90.0f);
        this.f73971o = true;
        this.f73961f = false;
        if (Build.VERSION.SDK_INT >= 21) {
            setTranslationZ(1000.0f);
        }
    }

    private void H() {
        N(this.f73971o);
        this.J.setColor(this.f73956a);
        this.K.setColor(this.f73957b);
        this.K.setStrokeWidth(this.f73962g);
        this.I.setColor(this.f73958c);
        this.I.setTextAlign(Paint.Align.CENTER);
    }

    private void I() {
        int[] iArr = new int[2];
        getLocationOnScreen(iArr);
        PointF pointF = this.C;
        PointF pointF2 = this.A;
        pointF.x = pointF2.x + iArr[0];
        pointF.y = pointF2.y + iArr[1];
    }

    private void J() {
        RectF rectF = this.f73981w;
        rectF.left = 0.0f;
        rectF.top = 0.0f;
        if (TextUtils.isEmpty(this.f73966k)) {
            RectF rectF2 = this.f73981w;
            rectF2.right = 0.0f;
            rectF2.bottom = 0.0f;
        } else {
            this.I.setTextSize(this.f73963h);
            this.f73981w.right = this.I.measureText(this.f73966k);
            Paint.FontMetrics fontMetrics = this.I.getFontMetrics();
            this.f73984z = fontMetrics;
            this.f73981w.bottom = fontMetrics.descent - fontMetrics.ascent;
        }
        z();
    }

    private void K() {
        if (this.f73980v) {
            x(this.B);
            O(5);
            return;
        }
        L();
        O(4);
    }

    private void N(boolean z3) {
        int a4 = d.a(getContext(), 1.0f);
        int a5 = d.a(getContext(), 1.5f);
        int i2 = this.f73979u;
        if (i2 == 1) {
            a4 = d.a(getContext(), 1.0f);
            a5 = d.a(getContext(), -1.5f);
        } else if (i2 == 2) {
            a4 = d.a(getContext(), -1.0f);
            a5 = d.a(getContext(), -1.5f);
        } else if (i2 == 3) {
            a4 = d.a(getContext(), -1.0f);
            a5 = d.a(getContext(), 1.5f);
        } else if (i2 == 4) {
            a4 = d.a(getContext(), 1.0f);
            a5 = d.a(getContext(), 1.5f);
        }
        this.J.setShadowLayer(z3 ? d.a(getContext(), 2.0f) : 0.0f, a4, a5, 855638016);
    }

    private void O(int i2) {
        a.InterfaceC0496a interfaceC0496a = this.f73972o0;
        if (interfaceC0496a != null) {
            interfaceC0496a.a(i2, this, this.F);
        }
    }

    private float getBadgeCircleRadius() {
        float width;
        float f4;
        if (this.f73966k.isEmpty()) {
            return this.f73964i;
        }
        if (this.f73966k.length() == 1) {
            if (this.f73981w.height() > this.f73981w.width()) {
                width = this.f73981w.height() / 2.0f;
                f4 = this.f73964i;
            } else {
                width = this.f73981w.width() / 2.0f;
                f4 = this.f73964i;
            }
            return width + (f4 * 0.5f);
        }
        return this.f73982x.height() / 2.0f;
    }

    private void z() {
        if (this.f73966k != null && this.f73961f) {
            Bitmap bitmap = this.f73960e;
            if (bitmap != null && !bitmap.isRecycled()) {
                this.f73960e.recycle();
            }
            float badgeCircleRadius = getBadgeCircleRadius();
            if (!this.f73966k.isEmpty() && this.f73966k.length() != 1) {
                this.f73960e = Bitmap.createBitmap((int) (this.f73981w.width() + (this.f73964i * 2.0f)), (int) (this.f73981w.height() + this.f73964i), Bitmap.Config.ARGB_4444);
                Canvas canvas = new Canvas(this.f73960e);
                if (Build.VERSION.SDK_INT >= 21) {
                    canvas.drawRoundRect(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), canvas.getHeight() / 2.0f, canvas.getHeight() / 2.0f, this.J);
                    return;
                } else {
                    canvas.drawRoundRect(new RectF(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight()), canvas.getHeight() / 2.0f, canvas.getHeight() / 2.0f, this.J);
                    return;
                }
            }
            int i2 = ((int) badgeCircleRadius) * 2;
            this.f73960e = Bitmap.createBitmap(i2, i2, Bitmap.Config.ARGB_4444);
            Canvas canvas2 = new Canvas(this.f73960e);
            canvas2.drawCircle(canvas2.getWidth() / 2.0f, canvas2.getHeight() / 2.0f, canvas2.getWidth() / 2.0f, this.J);
        }
    }

    public void L() {
        PointF pointF = this.B;
        pointF.x = -1000.0f;
        pointF.y = -1000.0f;
        this.f73979u = 4;
        M(false);
        getParent().requestDisallowInterceptTouchEvent(false);
        invalidate();
    }

    protected void M(boolean z3) {
        if (getParent() != null) {
            ((ViewGroup) getParent()).removeView(this);
        }
        if (z3) {
            this.f73974p0.addView(this, new FrameLayout.LayoutParams(-1, -1));
        } else {
            c(this.F);
        }
    }

    @Override // q.rorbin.badgeview.a
    public float a(boolean z3) {
        return z3 ? d.b(getContext(), this.f73963h) : this.f73963h;
    }

    @Override // q.rorbin.badgeview.a
    public boolean b() {
        return this.f73971o;
    }

    @Override // q.rorbin.badgeview.a
    public q.rorbin.badgeview.a c(View view) {
        if (view != null) {
            if (getParent() != null) {
                ((ViewGroup) getParent()).removeView(this);
            }
            ViewParent parent = view.getParent();
            if (parent != null && (parent instanceof ViewGroup)) {
                this.F = view;
                if (parent instanceof a) {
                    ((a) parent).addView(this);
                } else {
                    ViewGroup viewGroup = (ViewGroup) parent;
                    int indexOfChild = viewGroup.indexOfChild(view);
                    ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                    viewGroup.removeView(view);
                    a aVar = new a(getContext());
                    aVar.setId(view.getId());
                    view.setId(-1);
                    viewGroup.addView(aVar, indexOfChild, layoutParams);
                    aVar.addView(view);
                    aVar.addView(this);
                }
                return this;
            }
            throw new IllegalStateException("targetView must have a parent");
        }
        throw new IllegalStateException("targetView can not be null");
    }

    @Override // q.rorbin.badgeview.a
    public float d(boolean z3) {
        return z3 ? d.b(getContext(), this.f73975q) : this.f73975q;
    }

    @Override // q.rorbin.badgeview.a
    public q.rorbin.badgeview.a e(String str) {
        this.f73966k = str;
        this.f73965j = 1;
        J();
        invalidate();
        return this;
    }

    @Override // q.rorbin.badgeview.a
    public float f(boolean z3) {
        return z3 ? d.b(getContext(), this.f73976r) : this.f73976r;
    }

    @Override // q.rorbin.badgeview.a
    public q.rorbin.badgeview.a g(int i2) {
        this.f73956a = i2;
        if (i2 == 0) {
            this.I.setXfermode(null);
        } else {
            this.I.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        }
        invalidate();
        return this;
    }

    @Override // q.rorbin.badgeview.a
    public Drawable getBadgeBackground() {
        return this.f73959d;
    }

    @Override // q.rorbin.badgeview.a
    public int getBadgeBackgroundColor() {
        return this.f73956a;
    }

    @Override // q.rorbin.badgeview.a
    public int getBadgeGravity() {
        return this.f73973p;
    }

    @Override // q.rorbin.badgeview.a
    public int getBadgeNumber() {
        return this.f73965j;
    }

    @Override // q.rorbin.badgeview.a
    public String getBadgeText() {
        return this.f73966k;
    }

    @Override // q.rorbin.badgeview.a
    public int getBadgeTextColor() {
        return this.f73958c;
    }

    @Override // q.rorbin.badgeview.a
    public PointF getDragCenter() {
        if (this.f73967l && this.f73968m) {
            return this.B;
        }
        return null;
    }

    @Override // q.rorbin.badgeview.a
    public View getTargetView() {
        return this.F;
    }

    @Override // q.rorbin.badgeview.a
    public boolean h() {
        return this.f73967l;
    }

    @Override // q.rorbin.badgeview.a
    public void hide(boolean z3) {
        if (z3 && this.f73974p0 != null) {
            I();
            x(this.C);
            return;
        }
        q(0);
    }

    @Override // q.rorbin.badgeview.a
    public q.rorbin.badgeview.a i(a.InterfaceC0496a interfaceC0496a) {
        this.f73967l = interfaceC0496a != null;
        this.f73972o0 = interfaceC0496a;
        return this;
    }

    @Override // q.rorbin.badgeview.a
    public float j(boolean z3) {
        return z3 ? d.b(getContext(), this.f73964i) : this.f73964i;
    }

    @Override // q.rorbin.badgeview.a
    public boolean k() {
        return this.f73969n;
    }

    @Override // q.rorbin.badgeview.a
    public q.rorbin.badgeview.a l(int i2) {
        this.f73958c = i2;
        invalidate();
        return this;
    }

    @Override // q.rorbin.badgeview.a
    public q.rorbin.badgeview.a m(float f4, boolean z3) {
        return r(f4, f4, z3);
    }

    @Override // q.rorbin.badgeview.a
    public q.rorbin.badgeview.a n(int i2, float f4, boolean z3) {
        this.f73957b = i2;
        if (z3) {
            f4 = d.a(getContext(), f4);
        }
        this.f73962g = f4;
        invalidate();
        return this;
    }

    @Override // q.rorbin.badgeview.a
    public q.rorbin.badgeview.a o(int i2) {
        if (i2 != 8388659 && i2 != 8388661 && i2 != 8388691 && i2 != 8388693 && i2 != 17 && i2 != 49 && i2 != 81 && i2 != 8388627 && i2 != 8388629) {
            throw new IllegalStateException("only support Gravity.START | Gravity.TOP , Gravity.END | Gravity.TOP , Gravity.START | Gravity.BOTTOM , Gravity.END | Gravity.BOTTOM , Gravity.CENTER , Gravity.CENTER | Gravity.TOP , Gravity.CENTER | Gravity.BOTTOM ,Gravity.CENTER | Gravity.START , Gravity.CENTER | Gravity.END");
        }
        this.f73973p = i2;
        invalidate();
        return this;
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f73974p0 == null) {
            F(this.F);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        b bVar = this.f73970n0;
        if (bVar != null && bVar.isRunning()) {
            this.f73970n0.b(canvas);
        } else if (this.f73966k != null) {
            H();
            float badgeCircleRadius = getBadgeCircleRadius();
            float b4 = this.f73977s * (1.0f - (e.b(this.C, this.B) / this.f73978t));
            if (this.f73967l && this.f73968m) {
                this.f73979u = e.c(this.B, this.C);
                N(this.f73971o);
                boolean z3 = b4 < ((float) d.a(getContext(), 1.5f));
                this.f73980v = z3;
                if (z3) {
                    O(3);
                    A(canvas, this.B, badgeCircleRadius);
                    return;
                }
                O(2);
                C(canvas, b4, badgeCircleRadius);
                A(canvas, this.B, badgeCircleRadius);
                return;
            }
            E();
            A(canvas, this.A, badgeCircleRadius);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i4, int i5, int i6) {
        super.onSizeChanged(i2, i4, i5, i6);
        this.G = i2;
        this.H = i4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0014, code lost:
        if (r0 != 6) goto L12;
     */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ac  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r7) {
        /*
            r6 = this;
            int r0 = r7.getActionMasked()
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L45
            if (r0 == r2) goto L31
            r3 = 2
            if (r0 == r3) goto L18
            r3 = 3
            if (r0 == r3) goto L31
            r3 = 5
            if (r0 == r3) goto L45
            r3 = 6
            if (r0 == r3) goto L31
            goto La8
        L18:
            boolean r0 = r6.f73968m
            if (r0 == 0) goto La8
            android.graphics.PointF r0 = r6.B
            float r3 = r7.getRawX()
            r0.x = r3
            android.graphics.PointF r0 = r6.B
            float r3 = r7.getRawY()
            r0.y = r3
            r6.invalidate()
            goto La8
        L31:
            int r0 = r7.getActionIndex()
            int r0 = r7.getPointerId(r0)
            if (r0 != 0) goto La8
            boolean r0 = r6.f73968m
            if (r0 == 0) goto La8
            r6.f73968m = r1
            r6.K()
            goto La8
        L45:
            float r0 = r7.getX()
            float r3 = r7.getY()
            boolean r4 = r6.f73967l
            if (r4 == 0) goto La8
            int r4 = r7.getActionIndex()
            int r4 = r7.getPointerId(r4)
            if (r4 != 0) goto La8
            android.graphics.RectF r4 = r6.f73982x
            float r5 = r4.left
            int r5 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r5 <= 0) goto La8
            float r5 = r4.right
            int r0 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r0 >= 0) goto La8
            float r0 = r4.top
            int r0 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
            if (r0 <= 0) goto La8
            float r0 = r4.bottom
            int r0 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
            if (r0 >= 0) goto La8
            java.lang.String r0 = r6.f73966k
            if (r0 == 0) goto La8
            r6.I()
            r6.f73968m = r2
            r6.O(r2)
            android.content.Context r0 = r6.getContext()
            r3 = 1088421888(0x40e00000, float:7.0)
            int r0 = q.rorbin.badgeview.d.a(r0, r3)
            float r0 = (float) r0
            r6.f73977s = r0
            android.view.ViewParent r0 = r6.getParent()
            r0.requestDisallowInterceptTouchEvent(r2)
            r6.M(r2)
            android.graphics.PointF r0 = r6.B
            float r3 = r7.getRawX()
            r0.x = r3
            android.graphics.PointF r0 = r6.B
            float r3 = r7.getRawY()
            r0.y = r3
        La8:
            boolean r0 = r6.f73968m
            if (r0 != 0) goto Lb2
            boolean r7 = super.onTouchEvent(r7)
            if (r7 == 0) goto Lb3
        Lb2:
            r1 = 1
        Lb3:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: q.rorbin.badgeview.QBadgeView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // q.rorbin.badgeview.a
    public q.rorbin.badgeview.a p(Drawable drawable) {
        return w(drawable, false);
    }

    @Override // q.rorbin.badgeview.a
    public q.rorbin.badgeview.a q(int i2) {
        this.f73965j = i2;
        if (i2 < 0) {
            this.f73966k = "";
        } else if (i2 > 99) {
            this.f73966k = this.f73969n ? String.valueOf(i2) : "99+";
        } else if (i2 > 0 && i2 <= 99) {
            this.f73966k = String.valueOf(i2);
        } else if (i2 == 0) {
            this.f73966k = null;
        }
        J();
        invalidate();
        return this;
    }

    @Override // q.rorbin.badgeview.a
    public q.rorbin.badgeview.a r(float f4, float f5, boolean z3) {
        if (z3) {
            f4 = d.a(getContext(), f4);
        }
        this.f73975q = f4;
        if (z3) {
            f5 = d.a(getContext(), f5);
        }
        this.f73976r = f5;
        invalidate();
        return this;
    }

    @Override // q.rorbin.badgeview.a
    public q.rorbin.badgeview.a s(boolean z3) {
        this.f73971o = z3;
        invalidate();
        return this;
    }

    @Override // q.rorbin.badgeview.a
    public q.rorbin.badgeview.a t(boolean z3) {
        this.f73969n = z3;
        int i2 = this.f73965j;
        if (i2 > 99) {
            q(i2);
        }
        return this;
    }

    @Override // q.rorbin.badgeview.a
    public q.rorbin.badgeview.a u(float f4, boolean z3) {
        if (z3) {
            f4 = d.a(getContext(), f4);
        }
        this.f73964i = f4;
        z();
        invalidate();
        return this;
    }

    @Override // q.rorbin.badgeview.a
    public q.rorbin.badgeview.a v(float f4, boolean z3) {
        if (z3) {
            f4 = d.a(getContext(), f4);
        }
        this.f73963h = f4;
        J();
        invalidate();
        return this;
    }

    @Override // q.rorbin.badgeview.a
    public q.rorbin.badgeview.a w(Drawable drawable, boolean z3) {
        this.f73961f = z3;
        this.f73959d = drawable;
        z();
        invalidate();
        return this;
    }

    protected void x(PointF pointF) {
        if (this.f73966k == null) {
            return;
        }
        b bVar = this.f73970n0;
        if (bVar == null || !bVar.isRunning()) {
            M(true);
            b bVar2 = new b(y(), pointF, this);
            this.f73970n0 = bVar2;
            bVar2.start();
            q(0);
        }
    }

    protected Bitmap y() {
        Bitmap createBitmap = Bitmap.createBitmap(((int) this.f73982x.width()) + d.a(getContext(), 3.0f), ((int) this.f73982x.height()) + d.a(getContext(), 3.0f), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        A(canvas, new PointF(canvas.getWidth() / 2.0f, canvas.getHeight() / 2.0f), getBadgeCircleRadius());
        return createBitmap;
    }

    private QBadgeView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private QBadgeView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        G();
    }
}
