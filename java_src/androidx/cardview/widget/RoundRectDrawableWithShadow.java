package androidx.cardview.widget;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import androidx.annotation.Nullable;
import androidx.cardview.R;
/* loaded from: classes.dex */
class RoundRectDrawableWithShadow extends Drawable {

    /* renamed from: q  reason: collision with root package name */
    private static final double f1631q = Math.cos(Math.toRadians(45.0d));

    /* renamed from: r  reason: collision with root package name */
    private static final float f1632r = 1.5f;

    /* renamed from: s  reason: collision with root package name */
    static RoundRectHelper f1633s;

    /* renamed from: a  reason: collision with root package name */
    private final int f1634a;

    /* renamed from: c  reason: collision with root package name */
    private Paint f1636c;

    /* renamed from: d  reason: collision with root package name */
    private Paint f1637d;

    /* renamed from: e  reason: collision with root package name */
    private final RectF f1638e;

    /* renamed from: f  reason: collision with root package name */
    private float f1639f;

    /* renamed from: g  reason: collision with root package name */
    private Path f1640g;

    /* renamed from: h  reason: collision with root package name */
    private float f1641h;

    /* renamed from: i  reason: collision with root package name */
    private float f1642i;

    /* renamed from: j  reason: collision with root package name */
    private float f1643j;

    /* renamed from: k  reason: collision with root package name */
    private ColorStateList f1644k;

    /* renamed from: m  reason: collision with root package name */
    private final int f1646m;

    /* renamed from: n  reason: collision with root package name */
    private final int f1647n;

    /* renamed from: l  reason: collision with root package name */
    private boolean f1645l = true;

    /* renamed from: o  reason: collision with root package name */
    private boolean f1648o = true;

    /* renamed from: p  reason: collision with root package name */
    private boolean f1649p = false;

    /* renamed from: b  reason: collision with root package name */
    private Paint f1635b = new Paint(5);

    /* loaded from: classes.dex */
    interface RoundRectHelper {
        void drawRoundRect(Canvas canvas, RectF rectF, float f4, Paint paint);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RoundRectDrawableWithShadow(Resources resources, ColorStateList colorStateList, float f4, float f5, float f6) {
        this.f1646m = resources.getColor(R.color.cardview_shadow_start_color);
        this.f1647n = resources.getColor(R.color.cardview_shadow_end_color);
        this.f1634a = resources.getDimensionPixelSize(R.dimen.cardview_compat_inset_shadow);
        n(colorStateList);
        Paint paint = new Paint(5);
        this.f1636c = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f1639f = (int) (f4 + 0.5f);
        this.f1638e = new RectF();
        Paint paint2 = new Paint(this.f1636c);
        this.f1637d = paint2;
        paint2.setAntiAlias(false);
        s(f5, f6);
    }

    private void a(Rect rect) {
        float f4 = this.f1641h;
        float f5 = f1632r * f4;
        this.f1638e.set(rect.left + f4, rect.top + f5, rect.right - f4, rect.bottom - f5);
        b();
    }

    private void b() {
        float f4 = this.f1639f;
        RectF rectF = new RectF(-f4, -f4, f4, f4);
        RectF rectF2 = new RectF(rectF);
        float f5 = this.f1642i;
        rectF2.inset(-f5, -f5);
        Path path = this.f1640g;
        if (path == null) {
            this.f1640g = new Path();
        } else {
            path.reset();
        }
        this.f1640g.setFillType(Path.FillType.EVEN_ODD);
        this.f1640g.moveTo(-this.f1639f, 0.0f);
        this.f1640g.rLineTo(-this.f1642i, 0.0f);
        this.f1640g.arcTo(rectF2, 180.0f, 90.0f, false);
        this.f1640g.arcTo(rectF, 270.0f, -90.0f, false);
        this.f1640g.close();
        float f6 = this.f1639f;
        float f7 = f6 / (this.f1642i + f6);
        Paint paint = this.f1636c;
        float f8 = this.f1639f + this.f1642i;
        int i2 = this.f1646m;
        paint.setShader(new RadialGradient(0.0f, 0.0f, f8, new int[]{i2, i2, this.f1647n}, new float[]{0.0f, f7, 1.0f}, Shader.TileMode.CLAMP));
        Paint paint2 = this.f1637d;
        float f9 = this.f1639f;
        float f10 = this.f1642i;
        int i4 = this.f1646m;
        paint2.setShader(new LinearGradient(0.0f, (-f9) + f10, 0.0f, (-f9) - f10, new int[]{i4, i4, this.f1647n}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
        this.f1637d.setAntiAlias(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float c(float f4, float f5, boolean z3) {
        if (z3) {
            double d4 = f4;
            double d5 = f5;
            Double.isNaN(d5);
            Double.isNaN(d4);
            return (float) (d4 + ((1.0d - f1631q) * d5));
        }
        return f4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float d(float f4, float f5, boolean z3) {
        if (z3) {
            double d4 = f4 * f1632r;
            double d5 = f5;
            Double.isNaN(d5);
            Double.isNaN(d4);
            return (float) (d4 + ((1.0d - f1631q) * d5));
        }
        return f4 * f1632r;
    }

    private void e(Canvas canvas) {
        float f4 = this.f1639f;
        float f5 = (-f4) - this.f1642i;
        float f6 = f4 + this.f1634a + (this.f1643j / 2.0f);
        float f7 = f6 * 2.0f;
        boolean z3 = this.f1638e.width() - f7 > 0.0f;
        boolean z4 = this.f1638e.height() - f7 > 0.0f;
        int save = canvas.save();
        RectF rectF = this.f1638e;
        canvas.translate(rectF.left + f6, rectF.top + f6);
        canvas.drawPath(this.f1640g, this.f1636c);
        if (z3) {
            canvas.drawRect(0.0f, f5, this.f1638e.width() - f7, -this.f1639f, this.f1637d);
        }
        canvas.restoreToCount(save);
        int save2 = canvas.save();
        RectF rectF2 = this.f1638e;
        canvas.translate(rectF2.right - f6, rectF2.bottom - f6);
        canvas.rotate(180.0f);
        canvas.drawPath(this.f1640g, this.f1636c);
        if (z3) {
            canvas.drawRect(0.0f, f5, this.f1638e.width() - f7, (-this.f1639f) + this.f1642i, this.f1637d);
        }
        canvas.restoreToCount(save2);
        int save3 = canvas.save();
        RectF rectF3 = this.f1638e;
        canvas.translate(rectF3.left + f6, rectF3.bottom - f6);
        canvas.rotate(270.0f);
        canvas.drawPath(this.f1640g, this.f1636c);
        if (z4) {
            canvas.drawRect(0.0f, f5, this.f1638e.height() - f7, -this.f1639f, this.f1637d);
        }
        canvas.restoreToCount(save3);
        int save4 = canvas.save();
        RectF rectF4 = this.f1638e;
        canvas.translate(rectF4.right - f6, rectF4.top + f6);
        canvas.rotate(90.0f);
        canvas.drawPath(this.f1640g, this.f1636c);
        if (z4) {
            canvas.drawRect(0.0f, f5, this.f1638e.height() - f7, -this.f1639f, this.f1637d);
        }
        canvas.restoreToCount(save4);
    }

    private void n(ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.f1644k = colorStateList;
        this.f1635b.setColor(colorStateList.getColorForState(getState(), this.f1644k.getDefaultColor()));
    }

    private void s(float f4, float f5) {
        if (f4 < 0.0f) {
            throw new IllegalArgumentException("Invalid shadow size " + f4 + ". Must be >= 0");
        } else if (f5 >= 0.0f) {
            float t3 = t(f4);
            float t4 = t(f5);
            if (t3 > t4) {
                if (!this.f1649p) {
                    this.f1649p = true;
                }
                t3 = t4;
            }
            if (this.f1643j == t3 && this.f1641h == t4) {
                return;
            }
            this.f1643j = t3;
            this.f1641h = t4;
            this.f1642i = (int) ((t3 * f1632r) + this.f1634a + 0.5f);
            this.f1645l = true;
            invalidateSelf();
        } else {
            throw new IllegalArgumentException("Invalid max shadow size " + f5 + ". Must be >= 0");
        }
    }

    private int t(float f4) {
        int i2 = (int) (f4 + 0.5f);
        return i2 % 2 == 1 ? i2 - 1 : i2;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f1645l) {
            a(getBounds());
            this.f1645l = false;
        }
        canvas.translate(0.0f, this.f1643j / 2.0f);
        e(canvas);
        canvas.translate(0.0f, (-this.f1643j) / 2.0f);
        f1633s.drawRoundRect(canvas, this.f1638e, this.f1639f, this.f1635b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ColorStateList f() {
        return this.f1644k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float g() {
        return this.f1639f;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int ceil = (int) Math.ceil(d(this.f1641h, this.f1639f, this.f1648o));
        int ceil2 = (int) Math.ceil(c(this.f1641h, this.f1639f, this.f1648o));
        rect.set(ceil2, ceil, ceil2, ceil);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h(Rect rect) {
        getPadding(rect);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float i() {
        return this.f1641h;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList = this.f1644k;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float j() {
        float f4 = this.f1641h;
        return (Math.max(f4, this.f1639f + this.f1634a + ((f4 * f1632r) / 2.0f)) * 2.0f) + (((this.f1641h * f1632r) + this.f1634a) * 2.0f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float k() {
        float f4 = this.f1641h;
        return (Math.max(f4, this.f1639f + this.f1634a + (f4 / 2.0f)) * 2.0f) + ((this.f1641h + this.f1634a) * 2.0f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float l() {
        return this.f1643j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m(boolean z3) {
        this.f1648o = z3;
        invalidateSelf();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o(@Nullable ColorStateList colorStateList) {
        n(colorStateList);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f1645l = true;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        ColorStateList colorStateList = this.f1644k;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        if (this.f1635b.getColor() == colorForState) {
            return false;
        }
        this.f1635b.setColor(colorForState);
        this.f1645l = true;
        invalidateSelf();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void p(float f4) {
        if (f4 >= 0.0f) {
            float f5 = (int) (f4 + 0.5f);
            if (this.f1639f == f5) {
                return;
            }
            this.f1639f = f5;
            this.f1645l = true;
            invalidateSelf();
            return;
        }
        throw new IllegalArgumentException("Invalid radius " + f4 + ". Must be >= 0");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void q(float f4) {
        s(this.f1643j, f4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void r(float f4) {
        s(f4, this.f1641h);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.f1635b.setAlpha(i2);
        this.f1636c.setAlpha(i2);
        this.f1637d.setAlpha(i2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f1635b.setColorFilter(colorFilter);
    }
}
