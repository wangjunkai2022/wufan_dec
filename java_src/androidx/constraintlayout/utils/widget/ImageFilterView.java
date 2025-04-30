package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.ImageView;
import androidx.annotation.RequiresApi;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.R;
/* loaded from: classes.dex */
public class ImageFilterView extends AppCompatImageView {

    /* renamed from: d  reason: collision with root package name */
    private ImageMatrix f3259d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f3260e;

    /* renamed from: f  reason: collision with root package name */
    private Drawable f3261f;

    /* renamed from: g  reason: collision with root package name */
    private Drawable f3262g;

    /* renamed from: h  reason: collision with root package name */
    private float f3263h;

    /* renamed from: i  reason: collision with root package name */
    private float f3264i;

    /* renamed from: j  reason: collision with root package name */
    private float f3265j;

    /* renamed from: k  reason: collision with root package name */
    private Path f3266k;

    /* renamed from: l  reason: collision with root package name */
    ViewOutlineProvider f3267l;

    /* renamed from: m  reason: collision with root package name */
    RectF f3268m;

    /* renamed from: n  reason: collision with root package name */
    Drawable[] f3269n;

    /* renamed from: o  reason: collision with root package name */
    LayerDrawable f3270o;

    /* renamed from: p  reason: collision with root package name */
    float f3271p;

    /* renamed from: q  reason: collision with root package name */
    float f3272q;

    /* renamed from: r  reason: collision with root package name */
    float f3273r;

    /* renamed from: s  reason: collision with root package name */
    float f3274s;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class ImageMatrix {

        /* renamed from: a  reason: collision with root package name */
        float[] f3277a = new float[20];

        /* renamed from: b  reason: collision with root package name */
        ColorMatrix f3278b = new ColorMatrix();

        /* renamed from: c  reason: collision with root package name */
        ColorMatrix f3279c = new ColorMatrix();

        /* renamed from: d  reason: collision with root package name */
        float f3280d = 1.0f;

        /* renamed from: e  reason: collision with root package name */
        float f3281e = 1.0f;

        /* renamed from: f  reason: collision with root package name */
        float f3282f = 1.0f;

        /* renamed from: g  reason: collision with root package name */
        float f3283g = 1.0f;

        private void a(float brightness) {
            float[] fArr = this.f3277a;
            fArr[0] = brightness;
            fArr[1] = 0.0f;
            fArr[2] = 0.0f;
            fArr[3] = 0.0f;
            fArr[4] = 0.0f;
            fArr[5] = 0.0f;
            fArr[6] = brightness;
            fArr[7] = 0.0f;
            fArr[8] = 0.0f;
            fArr[9] = 0.0f;
            fArr[10] = 0.0f;
            fArr[11] = 0.0f;
            fArr[12] = brightness;
            fArr[13] = 0.0f;
            fArr[14] = 0.0f;
            fArr[15] = 0.0f;
            fArr[16] = 0.0f;
            fArr[17] = 0.0f;
            fArr[18] = 1.0f;
            fArr[19] = 0.0f;
        }

        private void b(float saturationStrength) {
            float f4 = 1.0f - saturationStrength;
            float f5 = 0.2999f * f4;
            float f6 = 0.587f * f4;
            float f7 = f4 * 0.114f;
            float[] fArr = this.f3277a;
            fArr[0] = f5 + saturationStrength;
            fArr[1] = f6;
            fArr[2] = f7;
            fArr[3] = 0.0f;
            fArr[4] = 0.0f;
            fArr[5] = f5;
            fArr[6] = f6 + saturationStrength;
            fArr[7] = f7;
            fArr[8] = 0.0f;
            fArr[9] = 0.0f;
            fArr[10] = f5;
            fArr[11] = f6;
            fArr[12] = f7 + saturationStrength;
            fArr[13] = 0.0f;
            fArr[14] = 0.0f;
            fArr[15] = 0.0f;
            fArr[16] = 0.0f;
            fArr[17] = 0.0f;
            fArr[18] = 1.0f;
            fArr[19] = 0.0f;
        }

        private void d(float warmth) {
            float log;
            float f4;
            float f5;
            if (warmth <= 0.0f) {
                warmth = 0.01f;
            }
            float f6 = (5000.0f / warmth) / 100.0f;
            if (f6 > 66.0f) {
                double d4 = f6 - 60.0f;
                f4 = ((float) Math.pow(d4, -0.13320475816726685d)) * 329.69873f;
                log = ((float) Math.pow(d4, 0.07551484555006027d)) * 288.12216f;
            } else {
                log = (((float) Math.log(f6)) * 99.4708f) - 161.11957f;
                f4 = 255.0f;
            }
            if (f6 < 66.0f) {
                f5 = f6 > 19.0f ? (((float) Math.log(f6 - 10.0f)) * 138.51773f) - 305.0448f : 0.0f;
            } else {
                f5 = 255.0f;
            }
            float min = Math.min(255.0f, Math.max(f4, 0.0f));
            float min2 = Math.min(255.0f, Math.max(log, 0.0f));
            float min3 = Math.min(255.0f, Math.max(f5, 0.0f));
            float min4 = Math.min(255.0f, Math.max(255.0f, 0.0f));
            float min5 = Math.min(255.0f, Math.max((((float) Math.log(50.0f)) * 99.4708f) - 161.11957f, 0.0f));
            float min6 = min3 / Math.min(255.0f, Math.max((((float) Math.log(40.0f)) * 138.51773f) - 305.0448f, 0.0f));
            float[] fArr = this.f3277a;
            fArr[0] = min / min4;
            fArr[1] = 0.0f;
            fArr[2] = 0.0f;
            fArr[3] = 0.0f;
            fArr[4] = 0.0f;
            fArr[5] = 0.0f;
            fArr[6] = min2 / min5;
            fArr[7] = 0.0f;
            fArr[8] = 0.0f;
            fArr[9] = 0.0f;
            fArr[10] = 0.0f;
            fArr[11] = 0.0f;
            fArr[12] = min6;
            fArr[13] = 0.0f;
            fArr[14] = 0.0f;
            fArr[15] = 0.0f;
            fArr[16] = 0.0f;
            fArr[17] = 0.0f;
            fArr[18] = 1.0f;
            fArr[19] = 0.0f;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void c(ImageView view) {
            boolean z3;
            this.f3278b.reset();
            float f4 = this.f3281e;
            boolean z4 = true;
            if (f4 != 1.0f) {
                b(f4);
                this.f3278b.set(this.f3277a);
                z3 = true;
            } else {
                z3 = false;
            }
            float f5 = this.f3282f;
            if (f5 != 1.0f) {
                this.f3279c.setScale(f5, f5, f5, 1.0f);
                this.f3278b.postConcat(this.f3279c);
                z3 = true;
            }
            float f6 = this.f3283g;
            if (f6 != 1.0f) {
                d(f6);
                this.f3279c.set(this.f3277a);
                this.f3278b.postConcat(this.f3279c);
                z3 = true;
            }
            float f7 = this.f3280d;
            if (f7 != 1.0f) {
                a(f7);
                this.f3279c.set(this.f3277a);
                this.f3278b.postConcat(this.f3279c);
            } else {
                z4 = z3;
            }
            if (z4) {
                view.setColorFilter(new ColorMatrixColorFilter(this.f3278b));
            } else {
                view.clearColorFilter();
            }
        }
    }

    public ImageFilterView(Context context) {
        super(context);
        this.f3259d = new ImageMatrix();
        this.f3260e = true;
        this.f3261f = null;
        this.f3262g = null;
        this.f3263h = 0.0f;
        this.f3264i = 0.0f;
        this.f3265j = Float.NaN;
        this.f3269n = new Drawable[2];
        this.f3271p = Float.NaN;
        this.f3272q = Float.NaN;
        this.f3273r = Float.NaN;
        this.f3274s = Float.NaN;
        c(context, null);
    }

    private void c(Context context, AttributeSet attrs) {
        if (attrs != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, R.styleable.ImageFilterView);
            int indexCount = obtainStyledAttributes.getIndexCount();
            this.f3261f = obtainStyledAttributes.getDrawable(R.styleable.ImageFilterView_altSrc);
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == R.styleable.ImageFilterView_crossfade) {
                    this.f3263h = obtainStyledAttributes.getFloat(index, 0.0f);
                } else if (index == R.styleable.ImageFilterView_warmth) {
                    setWarmth(obtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R.styleable.ImageFilterView_saturation) {
                    setSaturation(obtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R.styleable.ImageFilterView_contrast) {
                    setContrast(obtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R.styleable.ImageFilterView_brightness) {
                    setBrightness(obtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R.styleable.ImageFilterView_round) {
                    if (Build.VERSION.SDK_INT >= 21) {
                        setRound(obtainStyledAttributes.getDimension(index, 0.0f));
                    }
                } else if (index == R.styleable.ImageFilterView_roundPercent) {
                    if (Build.VERSION.SDK_INT >= 21) {
                        setRoundPercent(obtainStyledAttributes.getFloat(index, 0.0f));
                    }
                } else if (index == R.styleable.ImageFilterView_overlay) {
                    setOverlay(obtainStyledAttributes.getBoolean(index, this.f3260e));
                } else if (index == R.styleable.ImageFilterView_imagePanX) {
                    setImagePanX(obtainStyledAttributes.getFloat(index, this.f3271p));
                } else if (index == R.styleable.ImageFilterView_imagePanY) {
                    setImagePanY(obtainStyledAttributes.getFloat(index, this.f3272q));
                } else if (index == R.styleable.ImageFilterView_imageRotate) {
                    setImageRotate(obtainStyledAttributes.getFloat(index, this.f3274s));
                } else if (index == R.styleable.ImageFilterView_imageZoom) {
                    setImageZoom(obtainStyledAttributes.getFloat(index, this.f3273r));
                }
            }
            obtainStyledAttributes.recycle();
            Drawable drawable = getDrawable();
            this.f3262g = drawable;
            if (this.f3261f != null && drawable != null) {
                Drawable[] drawableArr = this.f3269n;
                Drawable mutate = getDrawable().mutate();
                this.f3262g = mutate;
                drawableArr[0] = mutate;
                this.f3269n[1] = this.f3261f.mutate();
                LayerDrawable layerDrawable = new LayerDrawable(this.f3269n);
                this.f3270o = layerDrawable;
                layerDrawable.getDrawable(1).setAlpha((int) (this.f3263h * 255.0f));
                if (!this.f3260e) {
                    this.f3270o.getDrawable(0).setAlpha((int) ((1.0f - this.f3263h) * 255.0f));
                }
                super.setImageDrawable(this.f3270o);
                return;
            }
            Drawable drawable2 = getDrawable();
            this.f3262g = drawable2;
            if (drawable2 != null) {
                Drawable[] drawableArr2 = this.f3269n;
                Drawable mutate2 = drawable2.mutate();
                this.f3262g = mutate2;
                drawableArr2[0] = mutate2;
            }
        }
    }

    private void d() {
        if (Float.isNaN(this.f3271p) && Float.isNaN(this.f3272q) && Float.isNaN(this.f3273r) && Float.isNaN(this.f3274s)) {
            return;
        }
        float f4 = Float.isNaN(this.f3271p) ? 0.0f : this.f3271p;
        float f5 = Float.isNaN(this.f3272q) ? 0.0f : this.f3272q;
        float f6 = Float.isNaN(this.f3273r) ? 1.0f : this.f3273r;
        float f7 = Float.isNaN(this.f3274s) ? 0.0f : this.f3274s;
        Matrix matrix = new Matrix();
        matrix.reset();
        float intrinsicWidth = getDrawable().getIntrinsicWidth();
        float intrinsicHeight = getDrawable().getIntrinsicHeight();
        float width = getWidth();
        float height = getHeight();
        float f8 = f6 * (intrinsicWidth * height < intrinsicHeight * width ? width / intrinsicWidth : height / intrinsicHeight);
        matrix.postScale(f8, f8);
        float f9 = intrinsicWidth * f8;
        float f10 = f8 * intrinsicHeight;
        matrix.postTranslate((((f4 * (width - f9)) + width) - f9) * 0.5f, (((f5 * (height - f10)) + height) - f10) * 0.5f);
        matrix.postRotate(f7, width / 2.0f, height / 2.0f);
        setImageMatrix(matrix);
        setScaleType(ImageView.ScaleType.MATRIX);
    }

    private void e() {
        if (Float.isNaN(this.f3271p) && Float.isNaN(this.f3272q) && Float.isNaN(this.f3273r) && Float.isNaN(this.f3274s)) {
            setScaleType(ImageView.ScaleType.FIT_CENTER);
        } else {
            d();
        }
    }

    private void setOverlay(boolean overlay) {
        this.f3260e = overlay;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z3;
        if (Build.VERSION.SDK_INT >= 21 || this.f3264i == 0.0f || this.f3266k == null) {
            z3 = false;
        } else {
            z3 = true;
            canvas.save();
            canvas.clipPath(this.f3266k);
        }
        super.draw(canvas);
        if (z3) {
            canvas.restore();
        }
    }

    public float getBrightness() {
        return this.f3259d.f3280d;
    }

    public float getContrast() {
        return this.f3259d.f3282f;
    }

    public float getCrossfade() {
        return this.f3263h;
    }

    public float getImagePanX() {
        return this.f3271p;
    }

    public float getImagePanY() {
        return this.f3272q;
    }

    public float getImageRotate() {
        return this.f3274s;
    }

    public float getImageZoom() {
        return this.f3273r;
    }

    public float getRound() {
        return this.f3265j;
    }

    public float getRoundPercent() {
        return this.f3264i;
    }

    public float getSaturation() {
        return this.f3259d.f3281e;
    }

    public float getWarmth() {
        return this.f3259d.f3283g;
    }

    @Override // android.view.View
    public void layout(int l4, int t3, int r3, int b4) {
        super.layout(l4, t3, r3, b4);
        d();
    }

    public void setAltImageResource(int resId) {
        Drawable mutate = AppCompatResources.getDrawable(getContext(), resId).mutate();
        this.f3261f = mutate;
        Drawable[] drawableArr = this.f3269n;
        drawableArr[0] = this.f3262g;
        drawableArr[1] = mutate;
        LayerDrawable layerDrawable = new LayerDrawable(this.f3269n);
        this.f3270o = layerDrawable;
        super.setImageDrawable(layerDrawable);
        setCrossfade(this.f3263h);
    }

    public void setBrightness(float brightness) {
        ImageMatrix imageMatrix = this.f3259d;
        imageMatrix.f3280d = brightness;
        imageMatrix.c(this);
    }

    public void setContrast(float contrast) {
        ImageMatrix imageMatrix = this.f3259d;
        imageMatrix.f3282f = contrast;
        imageMatrix.c(this);
    }

    public void setCrossfade(float crossfade) {
        this.f3263h = crossfade;
        if (this.f3269n != null) {
            if (!this.f3260e) {
                this.f3270o.getDrawable(0).setAlpha((int) ((1.0f - this.f3263h) * 255.0f));
            }
            this.f3270o.getDrawable(1).setAlpha((int) (this.f3263h * 255.0f));
            super.setImageDrawable(this.f3270o);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        if (this.f3261f != null && drawable != null) {
            Drawable mutate = drawable.mutate();
            this.f3262g = mutate;
            Drawable[] drawableArr = this.f3269n;
            drawableArr[0] = mutate;
            drawableArr[1] = this.f3261f;
            LayerDrawable layerDrawable = new LayerDrawable(this.f3269n);
            this.f3270o = layerDrawable;
            super.setImageDrawable(layerDrawable);
            setCrossfade(this.f3263h);
            return;
        }
        super.setImageDrawable(drawable);
    }

    public void setImagePanX(float pan) {
        this.f3271p = pan;
        e();
    }

    public void setImagePanY(float pan) {
        this.f3272q = pan;
        e();
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageResource(int resId) {
        if (this.f3261f != null) {
            Drawable mutate = AppCompatResources.getDrawable(getContext(), resId).mutate();
            this.f3262g = mutate;
            Drawable[] drawableArr = this.f3269n;
            drawableArr[0] = mutate;
            drawableArr[1] = this.f3261f;
            LayerDrawable layerDrawable = new LayerDrawable(this.f3269n);
            this.f3270o = layerDrawable;
            super.setImageDrawable(layerDrawable);
            setCrossfade(this.f3263h);
            return;
        }
        super.setImageResource(resId);
    }

    public void setImageRotate(float rotation) {
        this.f3274s = rotation;
        e();
    }

    public void setImageZoom(float zoom) {
        this.f3273r = zoom;
        e();
    }

    @RequiresApi(21)
    public void setRound(float round) {
        if (Float.isNaN(round)) {
            this.f3265j = round;
            float f4 = this.f3264i;
            this.f3264i = -1.0f;
            setRoundPercent(f4);
            return;
        }
        boolean z3 = this.f3265j != round;
        this.f3265j = round;
        if (round != 0.0f) {
            if (this.f3266k == null) {
                this.f3266k = new Path();
            }
            if (this.f3268m == null) {
                this.f3268m = new RectF();
            }
            if (Build.VERSION.SDK_INT >= 21) {
                if (this.f3267l == null) {
                    ViewOutlineProvider viewOutlineProvider = new ViewOutlineProvider() { // from class: androidx.constraintlayout.utils.widget.ImageFilterView.2
                        @Override // android.view.ViewOutlineProvider
                        public void getOutline(View view, Outline outline) {
                            outline.setRoundRect(0, 0, ImageFilterView.this.getWidth(), ImageFilterView.this.getHeight(), ImageFilterView.this.f3265j);
                        }
                    };
                    this.f3267l = viewOutlineProvider;
                    setOutlineProvider(viewOutlineProvider);
                }
                setClipToOutline(true);
            }
            this.f3268m.set(0.0f, 0.0f, getWidth(), getHeight());
            this.f3266k.reset();
            Path path = this.f3266k;
            RectF rectF = this.f3268m;
            float f5 = this.f3265j;
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
        boolean z3 = this.f3264i != round;
        this.f3264i = round;
        if (round != 0.0f) {
            if (this.f3266k == null) {
                this.f3266k = new Path();
            }
            if (this.f3268m == null) {
                this.f3268m = new RectF();
            }
            if (Build.VERSION.SDK_INT >= 21) {
                if (this.f3267l == null) {
                    ViewOutlineProvider viewOutlineProvider = new ViewOutlineProvider() { // from class: androidx.constraintlayout.utils.widget.ImageFilterView.1
                        @Override // android.view.ViewOutlineProvider
                        public void getOutline(View view, Outline outline) {
                            int width = ImageFilterView.this.getWidth();
                            int height = ImageFilterView.this.getHeight();
                            outline.setRoundRect(0, 0, width, height, (Math.min(width, height) * ImageFilterView.this.f3264i) / 2.0f);
                        }
                    };
                    this.f3267l = viewOutlineProvider;
                    setOutlineProvider(viewOutlineProvider);
                }
                setClipToOutline(true);
            }
            int width = getWidth();
            int height = getHeight();
            float min = (Math.min(width, height) * this.f3264i) / 2.0f;
            this.f3268m.set(0.0f, 0.0f, width, height);
            this.f3266k.reset();
            this.f3266k.addRoundRect(this.f3268m, min, min, Path.Direction.CW);
        } else if (Build.VERSION.SDK_INT >= 21) {
            setClipToOutline(false);
        }
        if (!z3 || Build.VERSION.SDK_INT < 21) {
            return;
        }
        invalidateOutline();
    }

    public void setSaturation(float saturation) {
        ImageMatrix imageMatrix = this.f3259d;
        imageMatrix.f3281e = saturation;
        imageMatrix.c(this);
    }

    public void setWarmth(float warmth) {
        ImageMatrix imageMatrix = this.f3259d;
        imageMatrix.f3283g = warmth;
        imageMatrix.c(this);
    }

    public ImageFilterView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f3259d = new ImageMatrix();
        this.f3260e = true;
        this.f3261f = null;
        this.f3262g = null;
        this.f3263h = 0.0f;
        this.f3264i = 0.0f;
        this.f3265j = Float.NaN;
        this.f3269n = new Drawable[2];
        this.f3271p = Float.NaN;
        this.f3272q = Float.NaN;
        this.f3273r = Float.NaN;
        this.f3274s = Float.NaN;
        c(context, attrs);
    }

    public ImageFilterView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f3259d = new ImageMatrix();
        this.f3260e = true;
        this.f3261f = null;
        this.f3262g = null;
        this.f3263h = 0.0f;
        this.f3264i = 0.0f;
        this.f3265j = Float.NaN;
        this.f3269n = new Drawable[2];
        this.f3271p = Float.NaN;
        this.f3272q = Float.NaN;
        this.f3273r = Float.NaN;
        this.f3274s = Float.NaN;
        c(context, attrs);
    }
}
