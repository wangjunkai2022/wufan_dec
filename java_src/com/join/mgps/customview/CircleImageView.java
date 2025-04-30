package com.join.mgps.customview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.annotation.ColorRes;
import androidx.annotation.DrawableRes;
import com.join.android.app.mgsim.wufun.R;
/* loaded from: classes3.dex */
public class CircleImageView extends ImageView {

    /* renamed from: r  reason: collision with root package name */
    private static final ImageView.ScaleType f45025r = ImageView.ScaleType.CENTER_CROP;

    /* renamed from: s  reason: collision with root package name */
    private static final Bitmap.Config f45026s = Bitmap.Config.ARGB_8888;

    /* renamed from: t  reason: collision with root package name */
    private static final int f45027t = 2;

    /* renamed from: u  reason: collision with root package name */
    private static final int f45028u = 0;

    /* renamed from: v  reason: collision with root package name */
    private static final int f45029v = -16777216;

    /* renamed from: w  reason: collision with root package name */
    private static final boolean f45030w = false;

    /* renamed from: a  reason: collision with root package name */
    private final RectF f45031a;

    /* renamed from: b  reason: collision with root package name */
    private final RectF f45032b;

    /* renamed from: c  reason: collision with root package name */
    private final Matrix f45033c;

    /* renamed from: d  reason: collision with root package name */
    private final Paint f45034d;

    /* renamed from: e  reason: collision with root package name */
    private final Paint f45035e;

    /* renamed from: f  reason: collision with root package name */
    private int f45036f;

    /* renamed from: g  reason: collision with root package name */
    private int f45037g;

    /* renamed from: h  reason: collision with root package name */
    private Bitmap f45038h;

    /* renamed from: i  reason: collision with root package name */
    private BitmapShader f45039i;

    /* renamed from: j  reason: collision with root package name */
    private int f45040j;

    /* renamed from: k  reason: collision with root package name */
    private int f45041k;

    /* renamed from: l  reason: collision with root package name */
    private float f45042l;

    /* renamed from: m  reason: collision with root package name */
    private float f45043m;

    /* renamed from: n  reason: collision with root package name */
    private ColorFilter f45044n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f45045o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f45046p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f45047q;

    public CircleImageView(Context context) {
        super(context);
        this.f45031a = new RectF();
        this.f45032b = new RectF();
        this.f45033c = new Matrix();
        this.f45034d = new Paint();
        this.f45035e = new Paint();
        this.f45036f = -16777216;
        this.f45037g = 0;
        b();
    }

    private Bitmap a(Drawable drawable) {
        Bitmap createBitmap;
        if (drawable == null) {
            return null;
        }
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        try {
            if (drawable instanceof ColorDrawable) {
                createBitmap = Bitmap.createBitmap(2, 2, f45026s);
            } else {
                createBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), f45026s);
            }
            Canvas canvas = new Canvas(createBitmap);
            drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            drawable.draw(canvas);
            return createBitmap;
        } catch (OutOfMemoryError unused) {
            return null;
        }
    }

    private void b() {
        super.setScaleType(f45025r);
        this.f45045o = true;
        if (this.f45046p) {
            d();
            this.f45046p = false;
        }
    }

    private void d() {
        if (!this.f45045o) {
            this.f45046p = true;
        } else if (this.f45038h == null) {
        } else {
            Bitmap bitmap = this.f45038h;
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            this.f45039i = new BitmapShader(bitmap, tileMode, tileMode);
            this.f45034d.setAntiAlias(true);
            this.f45034d.setShader(this.f45039i);
            this.f45035e.setStyle(Paint.Style.STROKE);
            this.f45035e.setAntiAlias(true);
            this.f45035e.setColor(this.f45036f);
            this.f45035e.setStrokeWidth(this.f45037g);
            this.f45041k = this.f45038h.getHeight();
            this.f45040j = this.f45038h.getWidth();
            this.f45032b.set(0.0f, 0.0f, getWidth(), getHeight());
            this.f45043m = Math.min((this.f45032b.height() - this.f45037g) / 2.0f, (this.f45032b.width() - this.f45037g) / 2.0f);
            this.f45031a.set(this.f45032b);
            if (!this.f45047q) {
                RectF rectF = this.f45031a;
                int i2 = this.f45037g;
                rectF.inset(i2, i2);
            }
            this.f45042l = Math.min(this.f45031a.height() / 2.0f, this.f45031a.width() / 2.0f);
            e();
            invalidate();
        }
    }

    private void e() {
        float width;
        float height;
        this.f45033c.set(null);
        float f4 = 0.0f;
        if (this.f45040j * this.f45031a.height() > this.f45031a.width() * this.f45041k) {
            width = this.f45031a.height() / this.f45041k;
            f4 = (this.f45031a.width() - (this.f45040j * width)) * 0.5f;
            height = 0.0f;
        } else {
            width = this.f45031a.width() / this.f45040j;
            height = (this.f45031a.height() - (this.f45041k * width)) * 0.5f;
        }
        this.f45033c.setScale(width, width);
        Matrix matrix = this.f45033c;
        RectF rectF = this.f45031a;
        matrix.postTranslate(((int) (f4 + 0.5f)) + rectF.left, ((int) (height + 0.5f)) + rectF.top);
        this.f45039i.setLocalMatrix(this.f45033c);
    }

    public boolean c() {
        return this.f45047q;
    }

    public int getBorderColor() {
        return this.f45036f;
    }

    public int getBorderWidth() {
        return this.f45037g;
    }

    @Override // android.widget.ImageView
    public ImageView.ScaleType getScaleType() {
        return f45025r;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (getDrawable() == null) {
            return;
        }
        canvas.drawCircle(getWidth() / 2, getHeight() / 2, this.f45042l, this.f45034d);
        if (this.f45037g != 0) {
            canvas.drawCircle(getWidth() / 2, getHeight() / 2, this.f45043m, this.f45035e);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i4, int i5, int i6) {
        super.onSizeChanged(i2, i4, i5, i6);
        d();
    }

    @Override // android.widget.ImageView
    public void setAdjustViewBounds(boolean z3) {
        if (z3) {
            throw new IllegalArgumentException("adjustViewBounds not supported.");
        }
    }

    public void setBorderColor(int i2) {
        if (i2 == this.f45036f) {
            return;
        }
        this.f45036f = i2;
        this.f45035e.setColor(i2);
        invalidate();
    }

    public void setBorderColorResource(@ColorRes int i2) {
        setBorderColor(getContext().getResources().getColor(i2));
    }

    public void setBorderOverlay(boolean z3) {
        if (z3 == this.f45047q) {
            return;
        }
        this.f45047q = z3;
        d();
    }

    public void setBorderWidth(int i2) {
        if (i2 == this.f45037g) {
            return;
        }
        this.f45037g = i2;
        d();
    }

    @Override // android.widget.ImageView
    public void setColorFilter(ColorFilter colorFilter) {
        if (colorFilter == this.f45044n) {
            return;
        }
        this.f45044n = colorFilter;
        this.f45034d.setColorFilter(colorFilter);
        invalidate();
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        this.f45038h = bitmap;
        d();
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        this.f45038h = a(drawable);
        d();
    }

    @Override // android.widget.ImageView
    public void setImageResource(@DrawableRes int i2) {
        super.setImageResource(i2);
        this.f45038h = a(getDrawable());
        d();
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        this.f45038h = a(getDrawable());
        d();
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        if (scaleType != f45025r) {
            throw new IllegalArgumentException(String.format("ScaleType %s not supported.", scaleType));
        }
    }

    public CircleImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CircleImageView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f45031a = new RectF();
        this.f45032b = new RectF();
        this.f45033c = new Matrix();
        this.f45034d = new Paint();
        this.f45035e = new Paint();
        this.f45036f = -16777216;
        this.f45037g = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CircleImageView, i2, 0);
        this.f45037g = obtainStyledAttributes.getDimensionPixelSize(2, 0);
        this.f45036f = obtainStyledAttributes.getColor(0, -16777216);
        this.f45047q = obtainStyledAttributes.getBoolean(1, false);
        obtainStyledAttributes.recycle();
        b();
    }
}
