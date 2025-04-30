package androidx.appcompat.graphics.drawable;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.core.graphics.drawable.DrawableCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes.dex */
public class DrawerArrowDrawable extends Drawable {
    public static final int ARROW_DIRECTION_END = 3;
    public static final int ARROW_DIRECTION_LEFT = 0;
    public static final int ARROW_DIRECTION_RIGHT = 1;
    public static final int ARROW_DIRECTION_START = 2;

    /* renamed from: m  reason: collision with root package name */
    private static final float f426m = (float) Math.toRadians(45.0d);

    /* renamed from: a  reason: collision with root package name */
    private final Paint f427a;

    /* renamed from: b  reason: collision with root package name */
    private float f428b;

    /* renamed from: c  reason: collision with root package name */
    private float f429c;

    /* renamed from: d  reason: collision with root package name */
    private float f430d;

    /* renamed from: e  reason: collision with root package name */
    private float f431e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f432f;

    /* renamed from: g  reason: collision with root package name */
    private final Path f433g;

    /* renamed from: h  reason: collision with root package name */
    private final int f434h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f435i;

    /* renamed from: j  reason: collision with root package name */
    private float f436j;

    /* renamed from: k  reason: collision with root package name */
    private float f437k;

    /* renamed from: l  reason: collision with root package name */
    private int f438l;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface ArrowDirection {
    }

    public DrawerArrowDrawable(Context context) {
        Paint paint = new Paint();
        this.f427a = paint;
        this.f433g = new Path();
        this.f435i = false;
        this.f438l = 2;
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeJoin(Paint.Join.MITER);
        paint.setStrokeCap(Paint.Cap.BUTT);
        paint.setAntiAlias(true);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, R.styleable.DrawerArrowToggle, R.attr.drawerArrowStyle, R.style.Base_Widget_AppCompat_DrawerArrowToggle);
        setColor(obtainStyledAttributes.getColor(R.styleable.DrawerArrowToggle_color, 0));
        setBarThickness(obtainStyledAttributes.getDimension(R.styleable.DrawerArrowToggle_thickness, 0.0f));
        setSpinEnabled(obtainStyledAttributes.getBoolean(R.styleable.DrawerArrowToggle_spinBars, true));
        setGapSize(Math.round(obtainStyledAttributes.getDimension(R.styleable.DrawerArrowToggle_gapBetweenBars, 0.0f)));
        this.f434h = obtainStyledAttributes.getDimensionPixelSize(R.styleable.DrawerArrowToggle_drawableSize, 0);
        this.f429c = Math.round(obtainStyledAttributes.getDimension(R.styleable.DrawerArrowToggle_barLength, 0.0f));
        this.f428b = Math.round(obtainStyledAttributes.getDimension(R.styleable.DrawerArrowToggle_arrowHeadLength, 0.0f));
        this.f430d = obtainStyledAttributes.getDimension(R.styleable.DrawerArrowToggle_arrowShaftLength, 0.0f);
        obtainStyledAttributes.recycle();
    }

    private static float a(float f4, float f5, float f6) {
        return f4 + ((f5 - f4) * f6);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        float f4;
        Rect bounds = getBounds();
        int i2 = this.f438l;
        boolean z3 = false;
        if (i2 != 0 && (i2 == 1 || (i2 == 3 ? DrawableCompat.getLayoutDirection(this) == 0 : DrawableCompat.getLayoutDirection(this) == 1))) {
            z3 = true;
        }
        float f5 = this.f428b;
        float a4 = a(this.f429c, (float) Math.sqrt(f5 * f5 * 2.0f), this.f436j);
        float a5 = a(this.f429c, this.f430d, this.f436j);
        float round = Math.round(a(0.0f, this.f437k, this.f436j));
        float a6 = a(0.0f, f426m, this.f436j);
        float a7 = a(z3 ? 0.0f : -180.0f, z3 ? 180.0f : 0.0f, this.f436j);
        double d4 = a4;
        double d5 = a6;
        double cos = Math.cos(d5);
        Double.isNaN(d4);
        boolean z4 = z3;
        float round2 = (float) Math.round(cos * d4);
        double sin = Math.sin(d5);
        Double.isNaN(d4);
        float round3 = (float) Math.round(d4 * sin);
        this.f433g.rewind();
        float a8 = a(this.f431e + this.f427a.getStrokeWidth(), -this.f437k, this.f436j);
        float f6 = (-a5) / 2.0f;
        this.f433g.moveTo(f6 + round, 0.0f);
        this.f433g.rLineTo(a5 - (round * 2.0f), 0.0f);
        this.f433g.moveTo(f6, a8);
        this.f433g.rLineTo(round2, round3);
        this.f433g.moveTo(f6, -a8);
        this.f433g.rLineTo(round2, -round3);
        this.f433g.close();
        canvas.save();
        float strokeWidth = this.f427a.getStrokeWidth();
        float height = bounds.height() - (3.0f * strokeWidth);
        canvas.translate(bounds.centerX(), ((((int) (height - (2.0f * f4))) / 4) * 2) + (strokeWidth * 1.5f) + this.f431e);
        if (this.f432f) {
            canvas.rotate(a7 * (this.f435i ^ z4 ? -1 : 1));
        } else if (z4) {
            canvas.rotate(180.0f);
        }
        canvas.drawPath(this.f433g, this.f427a);
        canvas.restore();
    }

    public float getArrowHeadLength() {
        return this.f428b;
    }

    public float getArrowShaftLength() {
        return this.f430d;
    }

    public float getBarLength() {
        return this.f429c;
    }

    public float getBarThickness() {
        return this.f427a.getStrokeWidth();
    }

    @ColorInt
    public int getColor() {
        return this.f427a.getColor();
    }

    public int getDirection() {
        return this.f438l;
    }

    public float getGapSize() {
        return this.f431e;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f434h;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f434h;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public final Paint getPaint() {
        return this.f427a;
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    public float getProgress() {
        return this.f436j;
    }

    public boolean isSpinEnabled() {
        return this.f432f;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        if (i2 != this.f427a.getAlpha()) {
            this.f427a.setAlpha(i2);
            invalidateSelf();
        }
    }

    public void setArrowHeadLength(float f4) {
        if (this.f428b != f4) {
            this.f428b = f4;
            invalidateSelf();
        }
    }

    public void setArrowShaftLength(float f4) {
        if (this.f430d != f4) {
            this.f430d = f4;
            invalidateSelf();
        }
    }

    public void setBarLength(float f4) {
        if (this.f429c != f4) {
            this.f429c = f4;
            invalidateSelf();
        }
    }

    public void setBarThickness(float f4) {
        if (this.f427a.getStrokeWidth() != f4) {
            this.f427a.setStrokeWidth(f4);
            double d4 = f4 / 2.0f;
            double cos = Math.cos(f426m);
            Double.isNaN(d4);
            this.f437k = (float) (d4 * cos);
            invalidateSelf();
        }
    }

    public void setColor(@ColorInt int i2) {
        if (i2 != this.f427a.getColor()) {
            this.f427a.setColor(i2);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f427a.setColorFilter(colorFilter);
        invalidateSelf();
    }

    public void setDirection(int i2) {
        if (i2 != this.f438l) {
            this.f438l = i2;
            invalidateSelf();
        }
    }

    public void setGapSize(float f4) {
        if (f4 != this.f431e) {
            this.f431e = f4;
            invalidateSelf();
        }
    }

    public void setProgress(@FloatRange(from = 0.0d, to = 1.0d) float f4) {
        if (this.f436j != f4) {
            this.f436j = f4;
            invalidateSelf();
        }
    }

    public void setSpinEnabled(boolean z3) {
        if (this.f432f != z3) {
            this.f432f = z3;
            invalidateSelf();
        }
    }

    public void setVerticalMirror(boolean z3) {
        if (this.f435i != z3) {
            this.f435i = z3;
            invalidateSelf();
        }
    }
}
