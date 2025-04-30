package com.join.mgps.customview;

import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.widget.ImageView;
/* compiled from: RoundedDrawable.java */
/* loaded from: classes3.dex */
public class k0 extends Drawable {

    /* renamed from: t  reason: collision with root package name */
    public static final String f46967t = "RoundedDrawable";

    /* renamed from: u  reason: collision with root package name */
    public static final int f46968u = -16777216;

    /* renamed from: a  reason: collision with root package name */
    private final RectF f46969a = new RectF();

    /* renamed from: b  reason: collision with root package name */
    private final RectF f46970b = new RectF();

    /* renamed from: c  reason: collision with root package name */
    private final RectF f46971c;

    /* renamed from: d  reason: collision with root package name */
    private final Bitmap f46972d;

    /* renamed from: e  reason: collision with root package name */
    private final Paint f46973e;

    /* renamed from: f  reason: collision with root package name */
    private final int f46974f;

    /* renamed from: g  reason: collision with root package name */
    private final int f46975g;

    /* renamed from: h  reason: collision with root package name */
    private final RectF f46976h;

    /* renamed from: i  reason: collision with root package name */
    private final Paint f46977i;

    /* renamed from: j  reason: collision with root package name */
    private final Matrix f46978j;

    /* renamed from: k  reason: collision with root package name */
    private BitmapShader f46979k;

    /* renamed from: l  reason: collision with root package name */
    private Shader.TileMode f46980l;

    /* renamed from: m  reason: collision with root package name */
    private Shader.TileMode f46981m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f46982n;

    /* renamed from: o  reason: collision with root package name */
    private float f46983o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f46984p;

    /* renamed from: q  reason: collision with root package name */
    private float f46985q;

    /* renamed from: r  reason: collision with root package name */
    private ColorStateList f46986r;

    /* renamed from: s  reason: collision with root package name */
    private ImageView.ScaleType f46987s;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RoundedDrawable.java */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f46988a;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            f46988a = iArr;
            try {
                iArr[ImageView.ScaleType.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f46988a[ImageView.ScaleType.CENTER_CROP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f46988a[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f46988a[ImageView.ScaleType.FIT_CENTER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f46988a[ImageView.ScaleType.FIT_END.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f46988a[ImageView.ScaleType.FIT_START.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f46988a[ImageView.ScaleType.FIT_XY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public k0(Bitmap bitmap) {
        RectF rectF = new RectF();
        this.f46971c = rectF;
        this.f46976h = new RectF();
        this.f46978j = new Matrix();
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        this.f46980l = tileMode;
        this.f46981m = tileMode;
        this.f46982n = true;
        this.f46983o = 0.0f;
        this.f46984p = false;
        this.f46985q = 0.0f;
        this.f46986r = ColorStateList.valueOf(-16777216);
        this.f46987s = ImageView.ScaleType.FIT_CENTER;
        this.f46972d = bitmap;
        int width = bitmap.getWidth();
        this.f46974f = width;
        int height = bitmap.getHeight();
        this.f46975g = height;
        rectF.set(0.0f, 0.0f, width, height);
        Paint paint = new Paint();
        this.f46973e = paint;
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.f46977i = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setAntiAlias(true);
        paint2.setColor(this.f46986r.getColorForState(getState(), -16777216));
        paint2.setStrokeWidth(this.f46985q);
    }

    public static Bitmap a(Drawable drawable) {
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        try {
            Bitmap createBitmap = Bitmap.createBitmap(Math.max(drawable.getIntrinsicWidth(), 2), Math.max(drawable.getIntrinsicHeight(), 2), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            drawable.draw(canvas);
            return createBitmap;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static k0 b(Bitmap bitmap) {
        if (bitmap != null) {
            return new k0(bitmap);
        }
        return null;
    }

    public static Drawable c(Drawable drawable) {
        if (drawable == null || (drawable instanceof k0)) {
            return drawable;
        }
        if (drawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            int numberOfLayers = layerDrawable.getNumberOfLayers();
            for (int i2 = 0; i2 < numberOfLayers; i2++) {
                layerDrawable.setDrawableByLayerId(layerDrawable.getId(i2), c(layerDrawable.getDrawable(i2)));
            }
            return layerDrawable;
        }
        Bitmap a4 = a(drawable);
        return a4 != null ? new k0(a4) : drawable;
    }

    private void u() {
        float width;
        float height;
        int i2 = a.f46988a[this.f46987s.ordinal()];
        if (i2 == 1) {
            this.f46976h.set(this.f46969a);
            RectF rectF = this.f46976h;
            float f4 = this.f46985q;
            rectF.inset(f4 / 2.0f, f4 / 2.0f);
            this.f46978j.reset();
            this.f46978j.setTranslate((int) (((this.f46976h.width() - this.f46974f) * 0.5f) + 0.5f), (int) (((this.f46976h.height() - this.f46975g) * 0.5f) + 0.5f));
        } else if (i2 == 2) {
            this.f46976h.set(this.f46969a);
            RectF rectF2 = this.f46976h;
            float f5 = this.f46985q;
            rectF2.inset(f5 / 2.0f, f5 / 2.0f);
            this.f46978j.reset();
            float f6 = 0.0f;
            if (this.f46974f * this.f46976h.height() > this.f46976h.width() * this.f46975g) {
                width = this.f46976h.height() / this.f46975g;
                f6 = (this.f46976h.width() - (this.f46974f * width)) * 0.5f;
                height = 0.0f;
            } else {
                width = this.f46976h.width() / this.f46974f;
                height = (this.f46976h.height() - (this.f46975g * width)) * 0.5f;
            }
            this.f46978j.setScale(width, width);
            Matrix matrix = this.f46978j;
            float f7 = this.f46985q;
            matrix.postTranslate(((int) (f6 + 0.5f)) + f7, ((int) (height + 0.5f)) + f7);
        } else if (i2 == 3) {
            this.f46978j.reset();
            float min = (((float) this.f46974f) > this.f46969a.width() || ((float) this.f46975g) > this.f46969a.height()) ? Math.min(this.f46969a.width() / this.f46974f, this.f46969a.height() / this.f46975g) : 1.0f;
            this.f46978j.setScale(min, min);
            this.f46978j.postTranslate((int) (((this.f46969a.width() - (this.f46974f * min)) * 0.5f) + 0.5f), (int) (((this.f46969a.height() - (this.f46975g * min)) * 0.5f) + 0.5f));
            this.f46976h.set(this.f46971c);
            this.f46978j.mapRect(this.f46976h);
            RectF rectF3 = this.f46976h;
            float f8 = this.f46985q;
            rectF3.inset(f8 / 2.0f, f8 / 2.0f);
            this.f46978j.setRectToRect(this.f46971c, this.f46976h, Matrix.ScaleToFit.FILL);
        } else if (i2 == 5) {
            this.f46976h.set(this.f46971c);
            this.f46978j.setRectToRect(this.f46971c, this.f46969a, Matrix.ScaleToFit.END);
            this.f46978j.mapRect(this.f46976h);
            RectF rectF4 = this.f46976h;
            float f9 = this.f46985q;
            rectF4.inset(f9 / 2.0f, f9 / 2.0f);
            this.f46978j.setRectToRect(this.f46971c, this.f46976h, Matrix.ScaleToFit.FILL);
        } else if (i2 == 6) {
            this.f46976h.set(this.f46971c);
            this.f46978j.setRectToRect(this.f46971c, this.f46969a, Matrix.ScaleToFit.START);
            this.f46978j.mapRect(this.f46976h);
            RectF rectF5 = this.f46976h;
            float f10 = this.f46985q;
            rectF5.inset(f10 / 2.0f, f10 / 2.0f);
            this.f46978j.setRectToRect(this.f46971c, this.f46976h, Matrix.ScaleToFit.FILL);
        } else if (i2 != 7) {
            this.f46976h.set(this.f46971c);
            this.f46978j.setRectToRect(this.f46971c, this.f46969a, Matrix.ScaleToFit.CENTER);
            this.f46978j.mapRect(this.f46976h);
            RectF rectF6 = this.f46976h;
            float f11 = this.f46985q;
            rectF6.inset(f11 / 2.0f, f11 / 2.0f);
            this.f46978j.setRectToRect(this.f46971c, this.f46976h, Matrix.ScaleToFit.FILL);
        } else {
            this.f46976h.set(this.f46969a);
            RectF rectF7 = this.f46976h;
            float f12 = this.f46985q;
            rectF7.inset(f12 / 2.0f, f12 / 2.0f);
            this.f46978j.reset();
            this.f46978j.setRectToRect(this.f46971c, this.f46976h, Matrix.ScaleToFit.FILL);
        }
        this.f46970b.set(this.f46976h);
    }

    public int d() {
        return this.f46986r.getDefaultColor();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f46982n) {
            BitmapShader bitmapShader = new BitmapShader(this.f46972d, this.f46980l, this.f46981m);
            this.f46979k = bitmapShader;
            Shader.TileMode tileMode = this.f46980l;
            Shader.TileMode tileMode2 = Shader.TileMode.CLAMP;
            if (tileMode == tileMode2 && this.f46981m == tileMode2) {
                bitmapShader.setLocalMatrix(this.f46978j);
            }
            this.f46973e.setShader(this.f46979k);
            this.f46982n = false;
        }
        if (this.f46984p) {
            if (this.f46985q > 0.0f) {
                canvas.drawOval(this.f46970b, this.f46973e);
                canvas.drawOval(this.f46976h, this.f46977i);
                return;
            }
            canvas.drawOval(this.f46970b, this.f46973e);
        } else if (this.f46985q > 0.0f) {
            canvas.drawRoundRect(this.f46970b, Math.max(this.f46983o, 0.0f), Math.max(this.f46983o, 0.0f), this.f46973e);
            RectF rectF = this.f46976h;
            float f4 = this.f46983o;
            canvas.drawRoundRect(rectF, f4, f4, this.f46977i);
        } else {
            RectF rectF2 = this.f46970b;
            float f5 = this.f46983o;
            canvas.drawRoundRect(rectF2, f5, f5, this.f46973e);
        }
    }

    public ColorStateList e() {
        return this.f46986r;
    }

    public float f() {
        return this.f46985q;
    }

    public float g() {
        return this.f46983o;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f46975g;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f46974f;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public ImageView.ScaleType h() {
        return this.f46987s;
    }

    public Shader.TileMode i() {
        return this.f46980l;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.f46986r.isStateful();
    }

    public Shader.TileMode j() {
        return this.f46981m;
    }

    public boolean k() {
        return this.f46984p;
    }

    public k0 l(int i2) {
        return m(ColorStateList.valueOf(i2));
    }

    public k0 m(ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.f46986r = colorStateList;
        this.f46977i.setColor(colorStateList.getColorForState(getState(), -16777216));
        return this;
    }

    public k0 n(float f4) {
        this.f46985q = f4;
        this.f46977i.setStrokeWidth(f4);
        return this;
    }

    public k0 o(float f4) {
        this.f46983o = f4;
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f46969a.set(rect);
        u();
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        int colorForState = this.f46986r.getColorForState(iArr, 0);
        if (this.f46977i.getColor() != colorForState) {
            this.f46977i.setColor(colorForState);
            return true;
        }
        return super.onStateChange(iArr);
    }

    public k0 p(boolean z3) {
        this.f46984p = z3;
        return this;
    }

    public k0 q(ImageView.ScaleType scaleType) {
        if (scaleType == null) {
            scaleType = ImageView.ScaleType.FIT_CENTER;
        }
        if (this.f46987s != scaleType) {
            this.f46987s = scaleType;
            u();
        }
        return this;
    }

    public k0 r(Shader.TileMode tileMode) {
        if (this.f46980l != tileMode) {
            this.f46980l = tileMode;
            this.f46982n = true;
            invalidateSelf();
        }
        return this;
    }

    public k0 s(Shader.TileMode tileMode) {
        if (this.f46981m != tileMode) {
            this.f46981m = tileMode;
            this.f46982n = true;
            invalidateSelf();
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.f46973e.setAlpha(i2);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f46973e.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z3) {
        this.f46973e.setDither(z3);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z3) {
        this.f46973e.setFilterBitmap(z3);
        invalidateSelf();
    }

    public Bitmap t() {
        return a(this);
    }
}
