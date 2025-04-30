package androidx.constraintlayout.utils.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Layout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.motion.widget.Debug;
import androidx.constraintlayout.motion.widget.FloatLayout;
import androidx.constraintlayout.widget.R;
import androidx.core.view.GravityCompat;
/* loaded from: classes.dex */
public class MotionLabel extends View implements FloatLayout {
    private static final int A0 = 2;
    private static final int B0 = 3;

    /* renamed from: y0  reason: collision with root package name */
    static String f3302y0 = "MotionLabel";

    /* renamed from: z0  reason: collision with root package name */
    private static final int f3303z0 = 1;
    private boolean A;
    private float B;
    private float C;
    private float D;
    private Drawable E;
    Matrix F;
    private Bitmap G;
    private BitmapShader H;
    private Matrix I;
    private float J;
    private float K;

    /* renamed from: a  reason: collision with root package name */
    TextPaint f3304a;

    /* renamed from: b  reason: collision with root package name */
    Path f3305b;

    /* renamed from: c  reason: collision with root package name */
    private int f3306c;

    /* renamed from: d  reason: collision with root package name */
    private int f3307d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f3308e;

    /* renamed from: f  reason: collision with root package name */
    private float f3309f;

    /* renamed from: g  reason: collision with root package name */
    private float f3310g;

    /* renamed from: h  reason: collision with root package name */
    ViewOutlineProvider f3311h;

    /* renamed from: i  reason: collision with root package name */
    RectF f3312i;

    /* renamed from: j  reason: collision with root package name */
    private float f3313j;

    /* renamed from: k  reason: collision with root package name */
    private float f3314k;

    /* renamed from: l  reason: collision with root package name */
    private int f3315l;

    /* renamed from: m  reason: collision with root package name */
    private int f3316m;

    /* renamed from: n  reason: collision with root package name */
    private float f3317n;

    /* renamed from: n0  reason: collision with root package name */
    private float f3318n0;

    /* renamed from: o  reason: collision with root package name */
    private String f3319o;

    /* renamed from: o0  reason: collision with root package name */
    private float f3320o0;

    /* renamed from: p  reason: collision with root package name */
    boolean f3321p;

    /* renamed from: p0  reason: collision with root package name */
    Paint f3322p0;

    /* renamed from: q  reason: collision with root package name */
    private Rect f3323q;

    /* renamed from: q0  reason: collision with root package name */
    private int f3324q0;

    /* renamed from: r  reason: collision with root package name */
    private CharSequence f3325r;

    /* renamed from: r0  reason: collision with root package name */
    Rect f3326r0;

    /* renamed from: s  reason: collision with root package name */
    private int f3327s;

    /* renamed from: s0  reason: collision with root package name */
    Paint f3328s0;

    /* renamed from: t  reason: collision with root package name */
    private int f3329t;

    /* renamed from: t0  reason: collision with root package name */
    float f3330t0;

    /* renamed from: u  reason: collision with root package name */
    private int f3331u;

    /* renamed from: u0  reason: collision with root package name */
    float f3332u0;

    /* renamed from: v  reason: collision with root package name */
    private int f3333v;

    /* renamed from: v0  reason: collision with root package name */
    float f3334v0;

    /* renamed from: w  reason: collision with root package name */
    private String f3335w;

    /* renamed from: w0  reason: collision with root package name */
    float f3336w0;

    /* renamed from: x  reason: collision with root package name */
    private Layout f3337x;

    /* renamed from: x0  reason: collision with root package name */
    float f3338x0;

    /* renamed from: y  reason: collision with root package name */
    private int f3339y;

    /* renamed from: z  reason: collision with root package name */
    private int f3340z;

    public MotionLabel(Context context) {
        super(context);
        this.f3304a = new TextPaint();
        this.f3305b = new Path();
        this.f3306c = 65535;
        this.f3307d = 65535;
        this.f3308e = false;
        this.f3309f = 0.0f;
        this.f3310g = Float.NaN;
        this.f3313j = 48.0f;
        this.f3314k = Float.NaN;
        this.f3317n = 0.0f;
        this.f3319o = "Hello World";
        this.f3321p = true;
        this.f3323q = new Rect();
        this.f3327s = 1;
        this.f3329t = 1;
        this.f3331u = 1;
        this.f3333v = 1;
        this.f3339y = 8388659;
        this.f3340z = 0;
        this.A = false;
        this.J = Float.NaN;
        this.K = Float.NaN;
        this.f3318n0 = 0.0f;
        this.f3320o0 = 0.0f;
        this.f3322p0 = new Paint();
        this.f3324q0 = 0;
        this.f3332u0 = Float.NaN;
        this.f3334v0 = Float.NaN;
        this.f3336w0 = Float.NaN;
        this.f3338x0 = Float.NaN;
        f(context, null);
    }

    private void c(float l4, float t3, float r3, float b4) {
        if (this.I == null) {
            return;
        }
        this.C = r3 - l4;
        this.D = b4 - t3;
        k();
    }

    private void f(Context context, AttributeSet attrs) {
        h(context, attrs);
        if (attrs != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, R.styleable.MotionLabel);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == R.styleable.MotionLabel_android_text) {
                    setText(obtainStyledAttributes.getText(index));
                } else if (index == R.styleable.MotionLabel_android_fontFamily) {
                    this.f3335w = obtainStyledAttributes.getString(index);
                } else if (index == R.styleable.MotionLabel_scaleFromTextSize) {
                    this.f3314k = obtainStyledAttributes.getDimensionPixelSize(index, (int) this.f3314k);
                } else if (index == R.styleable.MotionLabel_android_textSize) {
                    this.f3313j = obtainStyledAttributes.getDimensionPixelSize(index, (int) this.f3313j);
                } else if (index == R.styleable.MotionLabel_android_textStyle) {
                    this.f3315l = obtainStyledAttributes.getInt(index, this.f3315l);
                } else if (index == R.styleable.MotionLabel_android_typeface) {
                    this.f3316m = obtainStyledAttributes.getInt(index, this.f3316m);
                } else if (index == R.styleable.MotionLabel_android_textColor) {
                    this.f3306c = obtainStyledAttributes.getColor(index, this.f3306c);
                } else if (index == R.styleable.MotionLabel_borderRound) {
                    float dimension = obtainStyledAttributes.getDimension(index, this.f3310g);
                    this.f3310g = dimension;
                    if (Build.VERSION.SDK_INT >= 21) {
                        setRound(dimension);
                    }
                } else if (index == R.styleable.MotionLabel_borderRoundPercent) {
                    float f4 = obtainStyledAttributes.getFloat(index, this.f3309f);
                    this.f3309f = f4;
                    if (Build.VERSION.SDK_INT >= 21) {
                        setRoundPercent(f4);
                    }
                } else if (index == R.styleable.MotionLabel_android_gravity) {
                    setGravity(obtainStyledAttributes.getInt(index, -1));
                } else if (index == R.styleable.MotionLabel_android_autoSizeTextType) {
                    this.f3340z = obtainStyledAttributes.getInt(index, 0);
                } else if (index == R.styleable.MotionLabel_textOutlineColor) {
                    this.f3307d = obtainStyledAttributes.getInt(index, this.f3307d);
                    this.f3308e = true;
                } else if (index == R.styleable.MotionLabel_textOutlineThickness) {
                    this.f3317n = obtainStyledAttributes.getDimension(index, this.f3317n);
                    this.f3308e = true;
                } else if (index == R.styleable.MotionLabel_textBackground) {
                    this.E = obtainStyledAttributes.getDrawable(index);
                    this.f3308e = true;
                } else if (index == R.styleable.MotionLabel_textBackgroundPanX) {
                    this.f3332u0 = obtainStyledAttributes.getFloat(index, this.f3332u0);
                } else if (index == R.styleable.MotionLabel_textBackgroundPanY) {
                    this.f3334v0 = obtainStyledAttributes.getFloat(index, this.f3334v0);
                } else if (index == R.styleable.MotionLabel_textPanX) {
                    this.f3318n0 = obtainStyledAttributes.getFloat(index, this.f3318n0);
                } else if (index == R.styleable.MotionLabel_textPanY) {
                    this.f3320o0 = obtainStyledAttributes.getFloat(index, this.f3320o0);
                } else if (index == R.styleable.MotionLabel_textBackgroundRotate) {
                    this.f3338x0 = obtainStyledAttributes.getFloat(index, this.f3338x0);
                } else if (index == R.styleable.MotionLabel_textBackgroundZoom) {
                    this.f3336w0 = obtainStyledAttributes.getFloat(index, this.f3336w0);
                } else if (index == R.styleable.MotionLabel_textureHeight) {
                    this.J = obtainStyledAttributes.getDimension(index, this.J);
                } else if (index == R.styleable.MotionLabel_textureWidth) {
                    this.K = obtainStyledAttributes.getDimension(index, this.K);
                } else if (index == R.styleable.MotionLabel_textureEffect) {
                    this.f3324q0 = obtainStyledAttributes.getInt(index, this.f3324q0);
                }
            }
            obtainStyledAttributes.recycle();
        }
        j();
        i();
    }

    private void g(String familyName, int typefaceIndex, int styleIndex) {
        Typeface typeface;
        Typeface create;
        if (familyName != null) {
            typeface = Typeface.create(familyName, styleIndex);
            if (typeface != null) {
                setTypeface(typeface);
                return;
            }
        } else {
            typeface = null;
        }
        if (typefaceIndex == 1) {
            typeface = Typeface.SANS_SERIF;
        } else if (typefaceIndex == 2) {
            typeface = Typeface.SERIF;
        } else if (typefaceIndex == 3) {
            typeface = Typeface.MONOSPACE;
        }
        if (styleIndex > 0) {
            if (typeface == null) {
                create = Typeface.defaultFromStyle(styleIndex);
            } else {
                create = Typeface.create(typeface, styleIndex);
            }
            setTypeface(create);
            int style = ((create != null ? create.getStyle() : 0) ^ (-1)) & styleIndex;
            this.f3304a.setFakeBoldText((style & 1) != 0);
            this.f3304a.setTextSkewX((style & 2) != 0 ? -0.25f : 0.0f);
            return;
        }
        this.f3304a.setFakeBoldText(false);
        this.f3304a.setTextSkewX(0.0f);
        setTypeface(typeface);
    }

    private float getHorizontalOffset() {
        float f4 = Float.isNaN(this.f3314k) ? 1.0f : this.f3313j / this.f3314k;
        TextPaint textPaint = this.f3304a;
        String str = this.f3319o;
        return (((((Float.isNaN(this.C) ? getMeasuredWidth() : this.C) - getPaddingLeft()) - getPaddingRight()) - (f4 * textPaint.measureText(str, 0, str.length()))) * (this.f3318n0 + 1.0f)) / 2.0f;
    }

    private float getVerticalOffset() {
        float f4 = Float.isNaN(this.f3314k) ? 1.0f : this.f3313j / this.f3314k;
        Paint.FontMetrics fontMetrics = this.f3304a.getFontMetrics();
        float measuredHeight = ((Float.isNaN(this.D) ? getMeasuredHeight() : this.D) - getPaddingTop()) - getPaddingBottom();
        float f5 = fontMetrics.descent;
        float f6 = fontMetrics.ascent;
        return (((measuredHeight - ((f5 - f6) * f4)) * (1.0f - this.f3320o0)) / 2.0f) - (f4 * f6);
    }

    private void h(Context context, @Nullable AttributeSet attrs) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(androidx.appcompat.R.attr.colorPrimary, typedValue, true);
        TextPaint textPaint = this.f3304a;
        int i2 = typedValue.data;
        this.f3306c = i2;
        textPaint.setColor(i2);
    }

    private void j() {
        if (this.E != null) {
            this.I = new Matrix();
            int intrinsicWidth = this.E.getIntrinsicWidth();
            int intrinsicHeight = this.E.getIntrinsicHeight();
            if (intrinsicWidth <= 0 && (intrinsicWidth = getWidth()) == 0) {
                intrinsicWidth = Float.isNaN(this.K) ? 128 : (int) this.K;
            }
            if (intrinsicHeight <= 0 && (intrinsicHeight = getHeight()) == 0) {
                intrinsicHeight = Float.isNaN(this.J) ? 128 : (int) this.J;
            }
            if (this.f3324q0 != 0) {
                intrinsicWidth /= 2;
                intrinsicHeight /= 2;
            }
            this.G = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(this.G);
            this.E.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            this.E.setFilterBitmap(true);
            this.E.draw(canvas);
            if (this.f3324q0 != 0) {
                this.G = d(this.G, 4);
            }
            Bitmap bitmap = this.G;
            Shader.TileMode tileMode = Shader.TileMode.REPEAT;
            this.H = new BitmapShader(bitmap, tileMode, tileMode);
        }
    }

    private void k() {
        float f4 = Float.isNaN(this.f3332u0) ? 0.0f : this.f3332u0;
        float f5 = Float.isNaN(this.f3334v0) ? 0.0f : this.f3334v0;
        float f6 = Float.isNaN(this.f3336w0) ? 1.0f : this.f3336w0;
        float f7 = Float.isNaN(this.f3338x0) ? 0.0f : this.f3338x0;
        this.I.reset();
        float width = this.G.getWidth();
        float height = this.G.getHeight();
        float f8 = Float.isNaN(this.K) ? this.C : this.K;
        float f9 = Float.isNaN(this.J) ? this.D : this.J;
        float f10 = f6 * (width * f9 < height * f8 ? f8 / width : f9 / height);
        this.I.postScale(f10, f10);
        float f11 = width * f10;
        float f12 = f8 - f11;
        float f13 = f10 * height;
        float f14 = f9 - f13;
        if (!Float.isNaN(this.J)) {
            f14 = this.J / 2.0f;
        }
        if (!Float.isNaN(this.K)) {
            f12 = this.K / 2.0f;
        }
        this.I.postTranslate((((f4 * f12) + f8) - f11) * 0.5f, (((f5 * f14) + f9) - f13) * 0.5f);
        this.I.postRotate(f7, f8 / 2.0f, f9 / 2.0f);
        this.H.setLocalMatrix(this.I);
    }

    Bitmap d(Bitmap bitmapOriginal, int factor) {
        System.nanoTime();
        int width = bitmapOriginal.getWidth() / 2;
        int height = bitmapOriginal.getHeight() / 2;
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmapOriginal, width, height, true);
        for (int i2 = 0; i2 < factor && width >= 32 && height >= 32; i2++) {
            width /= 2;
            height /= 2;
            createScaledBitmap = Bitmap.createScaledBitmap(createScaledBitmap, width, height, true);
        }
        return createScaledBitmap;
    }

    void e(float scale) {
        if (this.f3308e || scale != 1.0f) {
            this.f3305b.reset();
            String str = this.f3319o;
            int length = str.length();
            this.f3304a.getTextBounds(str, 0, length, this.f3323q);
            this.f3304a.getTextPath(str, 0, length, 0.0f, 0.0f, this.f3305b);
            if (scale != 1.0f) {
                StringBuilder sb = new StringBuilder();
                sb.append(Debug.getLoc());
                sb.append(" scale ");
                sb.append(scale);
                Matrix matrix = new Matrix();
                matrix.postScale(scale, scale);
                this.f3305b.transform(matrix);
            }
            Rect rect = this.f3323q;
            rect.right--;
            rect.left++;
            rect.bottom++;
            rect.top--;
            RectF rectF = new RectF();
            rectF.bottom = getHeight();
            rectF.right = getWidth();
            this.f3321p = false;
        }
    }

    public float getRound() {
        return this.f3310g;
    }

    public float getRoundPercent() {
        return this.f3309f;
    }

    public float getScaleFromTextSize() {
        return this.f3314k;
    }

    public float getTextBackgroundPanX() {
        return this.f3332u0;
    }

    public float getTextBackgroundPanY() {
        return this.f3334v0;
    }

    public float getTextBackgroundRotate() {
        return this.f3338x0;
    }

    public float getTextBackgroundZoom() {
        return this.f3336w0;
    }

    public int getTextOutlineColor() {
        return this.f3307d;
    }

    public float getTextPanX() {
        return this.f3318n0;
    }

    public float getTextPanY() {
        return this.f3320o0;
    }

    public float getTextureHeight() {
        return this.J;
    }

    public float getTextureWidth() {
        return this.K;
    }

    public Typeface getTypeface() {
        return this.f3304a.getTypeface();
    }

    void i() {
        this.f3327s = getPaddingLeft();
        this.f3329t = getPaddingRight();
        this.f3331u = getPaddingTop();
        this.f3333v = getPaddingBottom();
        g(this.f3335w, this.f3316m, this.f3315l);
        this.f3304a.setColor(this.f3306c);
        this.f3304a.setStrokeWidth(this.f3317n);
        this.f3304a.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f3304a.setFlags(128);
        setTextSize(this.f3313j);
        this.f3304a.setAntiAlias(true);
    }

    @Override // android.view.View
    public void layout(int l4, int t3, int r3, int b4) {
        super.layout(l4, t3, r3, b4);
        boolean isNaN = Float.isNaN(this.f3314k);
        float f4 = isNaN ? 1.0f : this.f3313j / this.f3314k;
        this.C = r3 - l4;
        this.D = b4 - t3;
        if (this.A) {
            if (this.f3326r0 == null) {
                this.f3328s0 = new Paint();
                this.f3326r0 = new Rect();
                this.f3328s0.set(this.f3304a);
                this.f3330t0 = this.f3328s0.getTextSize();
            }
            Paint paint = this.f3328s0;
            String str = this.f3319o;
            paint.getTextBounds(str, 0, str.length(), this.f3326r0);
            int width = this.f3326r0.width();
            int height = (int) (this.f3326r0.height() * 1.3f);
            float f5 = (this.C - this.f3329t) - this.f3327s;
            float f6 = (this.D - this.f3333v) - this.f3331u;
            if (isNaN) {
                float f7 = width;
                float f8 = height;
                if (f7 * f6 > f8 * f5) {
                    this.f3304a.setTextSize((this.f3330t0 * f5) / f7);
                } else {
                    this.f3304a.setTextSize((this.f3330t0 * f6) / f8);
                }
            } else {
                float f9 = width;
                float f10 = height;
                f4 = f9 * f6 > f10 * f5 ? f5 / f9 : f6 / f10;
            }
        }
        if (this.f3308e || !isNaN) {
            c(l4, t3, r3, b4);
            e(f4);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f4 = Float.isNaN(this.f3314k) ? 1.0f : this.f3313j / this.f3314k;
        super.onDraw(canvas);
        if (!this.f3308e && f4 == 1.0f) {
            canvas.drawText(this.f3319o, this.B + this.f3327s + getHorizontalOffset(), this.f3331u + getVerticalOffset(), this.f3304a);
            return;
        }
        if (this.f3321p) {
            e(f4);
        }
        if (this.F == null) {
            this.F = new Matrix();
        }
        if (this.f3308e) {
            this.f3322p0.set(this.f3304a);
            this.F.reset();
            float horizontalOffset = this.f3327s + getHorizontalOffset();
            float verticalOffset = this.f3331u + getVerticalOffset();
            this.F.postTranslate(horizontalOffset, verticalOffset);
            this.F.preScale(f4, f4);
            this.f3305b.transform(this.F);
            if (this.H != null) {
                this.f3304a.setFilterBitmap(true);
                this.f3304a.setShader(this.H);
            } else {
                this.f3304a.setColor(this.f3306c);
            }
            this.f3304a.setStyle(Paint.Style.FILL);
            this.f3304a.setStrokeWidth(this.f3317n);
            canvas.drawPath(this.f3305b, this.f3304a);
            if (this.H != null) {
                this.f3304a.setShader(null);
            }
            this.f3304a.setColor(this.f3307d);
            this.f3304a.setStyle(Paint.Style.STROKE);
            this.f3304a.setStrokeWidth(this.f3317n);
            canvas.drawPath(this.f3305b, this.f3304a);
            this.F.reset();
            this.F.postTranslate(-horizontalOffset, -verticalOffset);
            this.f3305b.transform(this.F);
            this.f3304a.set(this.f3322p0);
            return;
        }
        float horizontalOffset2 = this.f3327s + getHorizontalOffset();
        float verticalOffset2 = this.f3331u + getVerticalOffset();
        this.F.reset();
        this.F.preTranslate(horizontalOffset2, verticalOffset2);
        this.f3305b.transform(this.F);
        this.f3304a.setColor(this.f3306c);
        this.f3304a.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f3304a.setStrokeWidth(this.f3317n);
        canvas.drawPath(this.f3305b, this.f3304a);
        this.F.reset();
        this.F.preTranslate(-horizontalOffset2, -verticalOffset2);
        this.f3305b.transform(this.F);
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int mode = View.MeasureSpec.getMode(widthMeasureSpec);
        int mode2 = View.MeasureSpec.getMode(heightMeasureSpec);
        int size = View.MeasureSpec.getSize(widthMeasureSpec);
        int size2 = View.MeasureSpec.getSize(heightMeasureSpec);
        this.A = false;
        this.f3327s = getPaddingLeft();
        this.f3329t = getPaddingRight();
        this.f3331u = getPaddingTop();
        this.f3333v = getPaddingBottom();
        if (mode == 1073741824 && mode2 == 1073741824) {
            if (this.f3340z != 0) {
                this.A = true;
            }
        } else {
            TextPaint textPaint = this.f3304a;
            String str = this.f3319o;
            textPaint.getTextBounds(str, 0, str.length(), this.f3323q);
            if (mode != 1073741824) {
                size = (int) (this.f3323q.width() + 0.99999f);
            }
            size += this.f3327s + this.f3329t;
            if (mode2 != 1073741824) {
                int fontMetricsInt = (int) (this.f3304a.getFontMetricsInt(null) + 0.99999f);
                if (mode2 == Integer.MIN_VALUE) {
                    fontMetricsInt = Math.min(size2, fontMetricsInt);
                }
                size2 = this.f3331u + this.f3333v + fontMetricsInt;
            }
        }
        setMeasuredDimension(size, size2);
    }

    @SuppressLint({"RtlHardcoded"})
    public void setGravity(int gravity) {
        if ((gravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK) == 0) {
            gravity |= GravityCompat.START;
        }
        if ((gravity & 112) == 0) {
            gravity |= 48;
        }
        if (gravity != this.f3339y) {
            invalidate();
        }
        this.f3339y = gravity;
        int i2 = gravity & 112;
        if (i2 == 48) {
            this.f3320o0 = -1.0f;
        } else if (i2 != 80) {
            this.f3320o0 = 0.0f;
        } else {
            this.f3320o0 = 1.0f;
        }
        int i4 = gravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i4 != 3) {
            if (i4 != 5) {
                if (i4 != 8388611) {
                    if (i4 != 8388613) {
                        this.f3318n0 = 0.0f;
                        return;
                    }
                }
            }
            this.f3318n0 = 1.0f;
            return;
        }
        this.f3318n0 = -1.0f;
    }

    @RequiresApi(21)
    public void setRound(float round) {
        if (Float.isNaN(round)) {
            this.f3310g = round;
            float f4 = this.f3309f;
            this.f3309f = -1.0f;
            setRoundPercent(f4);
            return;
        }
        boolean z3 = this.f3310g != round;
        this.f3310g = round;
        if (round != 0.0f) {
            if (this.f3305b == null) {
                this.f3305b = new Path();
            }
            if (this.f3312i == null) {
                this.f3312i = new RectF();
            }
            if (Build.VERSION.SDK_INT >= 21) {
                if (this.f3311h == null) {
                    ViewOutlineProvider viewOutlineProvider = new ViewOutlineProvider() { // from class: androidx.constraintlayout.utils.widget.MotionLabel.2
                        @Override // android.view.ViewOutlineProvider
                        public void getOutline(View view, Outline outline) {
                            outline.setRoundRect(0, 0, MotionLabel.this.getWidth(), MotionLabel.this.getHeight(), MotionLabel.this.f3310g);
                        }
                    };
                    this.f3311h = viewOutlineProvider;
                    setOutlineProvider(viewOutlineProvider);
                }
                setClipToOutline(true);
            }
            this.f3312i.set(0.0f, 0.0f, getWidth(), getHeight());
            this.f3305b.reset();
            Path path = this.f3305b;
            RectF rectF = this.f3312i;
            float f5 = this.f3310g;
            path.addRoundRect(rectF, f5, f5, Path.Direction.CW);
        } else if (Build.VERSION.SDK_INT >= 21) {
            setClipToOutline(false);
        }
        if (!z3 || Build.VERSION.SDK_INT < 21) {
            return;
        }
        invalidateOutline();
    }

    @RequiresApi(21)
    public void setRoundPercent(float round) {
        boolean z3 = this.f3309f != round;
        this.f3309f = round;
        if (round != 0.0f) {
            if (this.f3305b == null) {
                this.f3305b = new Path();
            }
            if (this.f3312i == null) {
                this.f3312i = new RectF();
            }
            if (Build.VERSION.SDK_INT >= 21) {
                if (this.f3311h == null) {
                    ViewOutlineProvider viewOutlineProvider = new ViewOutlineProvider() { // from class: androidx.constraintlayout.utils.widget.MotionLabel.1
                        @Override // android.view.ViewOutlineProvider
                        public void getOutline(View view, Outline outline) {
                            int width = MotionLabel.this.getWidth();
                            int height = MotionLabel.this.getHeight();
                            outline.setRoundRect(0, 0, width, height, (Math.min(width, height) * MotionLabel.this.f3309f) / 2.0f);
                        }
                    };
                    this.f3311h = viewOutlineProvider;
                    setOutlineProvider(viewOutlineProvider);
                }
                setClipToOutline(true);
            }
            int width = getWidth();
            int height = getHeight();
            float min = (Math.min(width, height) * this.f3309f) / 2.0f;
            this.f3312i.set(0.0f, 0.0f, width, height);
            this.f3305b.reset();
            this.f3305b.addRoundRect(this.f3312i, min, min, Path.Direction.CW);
        } else if (Build.VERSION.SDK_INT >= 21) {
            setClipToOutline(false);
        }
        if (!z3 || Build.VERSION.SDK_INT < 21) {
            return;
        }
        invalidateOutline();
    }

    public void setScaleFromTextSize(float size) {
        this.f3314k = size;
    }

    public void setText(CharSequence text) {
        this.f3319o = text.toString();
        invalidate();
    }

    public void setTextBackgroundPanX(float pan) {
        this.f3332u0 = pan;
        k();
        invalidate();
    }

    public void setTextBackgroundPanY(float pan) {
        this.f3334v0 = pan;
        k();
        invalidate();
    }

    public void setTextBackgroundRotate(float rotation) {
        this.f3338x0 = rotation;
        k();
        invalidate();
    }

    public void setTextBackgroundZoom(float zoom) {
        this.f3336w0 = zoom;
        k();
        invalidate();
    }

    public void setTextFillColor(int color) {
        this.f3306c = color;
        invalidate();
    }

    public void setTextOutlineColor(int color) {
        this.f3307d = color;
        this.f3308e = true;
        invalidate();
    }

    public void setTextOutlineThickness(float width) {
        this.f3317n = width;
        this.f3308e = true;
        if (Float.isNaN(width)) {
            this.f3317n = 1.0f;
            this.f3308e = false;
        }
        invalidate();
    }

    public void setTextPanX(float textPanX) {
        this.f3318n0 = textPanX;
        invalidate();
    }

    public void setTextPanY(float textPanY) {
        this.f3320o0 = textPanY;
        invalidate();
    }

    public void setTextSize(float size) {
        this.f3313j = size;
        StringBuilder sb = new StringBuilder();
        sb.append(Debug.getLoc());
        sb.append("  ");
        sb.append(size);
        sb.append(" / ");
        sb.append(this.f3314k);
        TextPaint textPaint = this.f3304a;
        if (!Float.isNaN(this.f3314k)) {
            size = this.f3314k;
        }
        textPaint.setTextSize(size);
        e(Float.isNaN(this.f3314k) ? 1.0f : this.f3313j / this.f3314k);
        requestLayout();
        invalidate();
    }

    public void setTextureHeight(float mTextureHeight) {
        this.J = mTextureHeight;
        k();
        invalidate();
    }

    public void setTextureWidth(float mTextureWidth) {
        this.K = mTextureWidth;
        k();
        invalidate();
    }

    public void setTypeface(Typeface tf) {
        if (this.f3304a.getTypeface() != tf) {
            this.f3304a.setTypeface(tf);
            if (this.f3337x != null) {
                this.f3337x = null;
                requestLayout();
                invalidate();
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.FloatLayout
    public void layout(float l4, float t3, float r3, float b4) {
        int i2 = (int) (l4 + 0.5f);
        this.B = l4 - i2;
        int i4 = (int) (r3 + 0.5f);
        int i5 = i4 - i2;
        int i6 = (int) (b4 + 0.5f);
        int i7 = (int) (0.5f + t3);
        int i8 = i6 - i7;
        float f4 = r3 - l4;
        this.C = f4;
        float f5 = b4 - t3;
        this.D = f5;
        c(l4, t3, r3, b4);
        if (getMeasuredHeight() == i8 && getMeasuredWidth() == i5) {
            super.layout(i2, i7, i4, i6);
        } else {
            measure(View.MeasureSpec.makeMeasureSpec(i5, 1073741824), View.MeasureSpec.makeMeasureSpec(i8, 1073741824));
            super.layout(i2, i7, i4, i6);
        }
        if (this.A) {
            if (this.f3326r0 == null) {
                this.f3328s0 = new Paint();
                this.f3326r0 = new Rect();
                this.f3328s0.set(this.f3304a);
                this.f3330t0 = this.f3328s0.getTextSize();
            }
            this.C = f4;
            this.D = f5;
            Paint paint = this.f3328s0;
            String str = this.f3319o;
            paint.getTextBounds(str, 0, str.length(), this.f3326r0);
            float height = this.f3326r0.height() * 1.3f;
            float f6 = (f4 - this.f3329t) - this.f3327s;
            float f7 = (f5 - this.f3333v) - this.f3331u;
            float width = this.f3326r0.width();
            if (width * f7 > height * f6) {
                this.f3304a.setTextSize((this.f3330t0 * f6) / width);
            } else {
                this.f3304a.setTextSize((this.f3330t0 * f7) / height);
            }
            if (this.f3308e || !Float.isNaN(this.f3314k)) {
                e(Float.isNaN(this.f3314k) ? 1.0f : this.f3313j / this.f3314k);
            }
        }
    }

    public MotionLabel(Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        this.f3304a = new TextPaint();
        this.f3305b = new Path();
        this.f3306c = 65535;
        this.f3307d = 65535;
        this.f3308e = false;
        this.f3309f = 0.0f;
        this.f3310g = Float.NaN;
        this.f3313j = 48.0f;
        this.f3314k = Float.NaN;
        this.f3317n = 0.0f;
        this.f3319o = "Hello World";
        this.f3321p = true;
        this.f3323q = new Rect();
        this.f3327s = 1;
        this.f3329t = 1;
        this.f3331u = 1;
        this.f3333v = 1;
        this.f3339y = 8388659;
        this.f3340z = 0;
        this.A = false;
        this.J = Float.NaN;
        this.K = Float.NaN;
        this.f3318n0 = 0.0f;
        this.f3320o0 = 0.0f;
        this.f3322p0 = new Paint();
        this.f3324q0 = 0;
        this.f3332u0 = Float.NaN;
        this.f3334v0 = Float.NaN;
        this.f3336w0 = Float.NaN;
        this.f3338x0 = Float.NaN;
        f(context, attrs);
    }

    public MotionLabel(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f3304a = new TextPaint();
        this.f3305b = new Path();
        this.f3306c = 65535;
        this.f3307d = 65535;
        this.f3308e = false;
        this.f3309f = 0.0f;
        this.f3310g = Float.NaN;
        this.f3313j = 48.0f;
        this.f3314k = Float.NaN;
        this.f3317n = 0.0f;
        this.f3319o = "Hello World";
        this.f3321p = true;
        this.f3323q = new Rect();
        this.f3327s = 1;
        this.f3329t = 1;
        this.f3331u = 1;
        this.f3333v = 1;
        this.f3339y = 8388659;
        this.f3340z = 0;
        this.A = false;
        this.J = Float.NaN;
        this.K = Float.NaN;
        this.f3318n0 = 0.0f;
        this.f3320o0 = 0.0f;
        this.f3322p0 = new Paint();
        this.f3324q0 = 0;
        this.f3332u0 = Float.NaN;
        this.f3334v0 = Float.NaN;
        this.f3336w0 = Float.NaN;
        this.f3338x0 = Float.NaN;
        f(context, attrs);
    }
}
