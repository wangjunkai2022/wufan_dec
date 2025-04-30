package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
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
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.constraintlayout.utils.widget.ImageFilterView;
import androidx.constraintlayout.widget.R;
/* loaded from: classes.dex */
public class ImageFilterButton extends AppCompatImageButton {

    /* renamed from: d  reason: collision with root package name */
    private ImageFilterView.ImageMatrix f3241d;

    /* renamed from: e  reason: collision with root package name */
    private float f3242e;

    /* renamed from: f  reason: collision with root package name */
    private float f3243f;

    /* renamed from: g  reason: collision with root package name */
    private float f3244g;

    /* renamed from: h  reason: collision with root package name */
    private Path f3245h;

    /* renamed from: i  reason: collision with root package name */
    ViewOutlineProvider f3246i;

    /* renamed from: j  reason: collision with root package name */
    RectF f3247j;

    /* renamed from: k  reason: collision with root package name */
    Drawable[] f3248k;

    /* renamed from: l  reason: collision with root package name */
    LayerDrawable f3249l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f3250m;

    /* renamed from: n  reason: collision with root package name */
    private Drawable f3251n;

    /* renamed from: o  reason: collision with root package name */
    private Drawable f3252o;

    /* renamed from: p  reason: collision with root package name */
    private float f3253p;

    /* renamed from: q  reason: collision with root package name */
    private float f3254q;

    /* renamed from: r  reason: collision with root package name */
    private float f3255r;

    /* renamed from: s  reason: collision with root package name */
    private float f3256s;

    public ImageFilterButton(Context context) {
        super(context);
        this.f3241d = new ImageFilterView.ImageMatrix();
        this.f3242e = 0.0f;
        this.f3243f = 0.0f;
        this.f3244g = Float.NaN;
        this.f3248k = new Drawable[2];
        this.f3250m = true;
        this.f3251n = null;
        this.f3252o = null;
        this.f3253p = Float.NaN;
        this.f3254q = Float.NaN;
        this.f3255r = Float.NaN;
        this.f3256s = Float.NaN;
        c(context, null);
    }

    private void c(Context context, AttributeSet attrs) {
        setPadding(0, 0, 0, 0);
        if (attrs != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, R.styleable.ImageFilterView);
            int indexCount = obtainStyledAttributes.getIndexCount();
            this.f3251n = obtainStyledAttributes.getDrawable(R.styleable.ImageFilterView_altSrc);
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == R.styleable.ImageFilterView_crossfade) {
                    this.f3242e = obtainStyledAttributes.getFloat(index, 0.0f);
                } else if (index == R.styleable.ImageFilterView_warmth) {
                    setWarmth(obtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R.styleable.ImageFilterView_saturation) {
                    setSaturation(obtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R.styleable.ImageFilterView_contrast) {
                    setContrast(obtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R.styleable.ImageFilterView_round) {
                    if (Build.VERSION.SDK_INT >= 21) {
                        setRound(obtainStyledAttributes.getDimension(index, 0.0f));
                    }
                } else if (index == R.styleable.ImageFilterView_roundPercent) {
                    if (Build.VERSION.SDK_INT >= 21) {
                        setRoundPercent(obtainStyledAttributes.getFloat(index, 0.0f));
                    }
                } else if (index == R.styleable.ImageFilterView_overlay) {
                    setOverlay(obtainStyledAttributes.getBoolean(index, this.f3250m));
                } else if (index == R.styleable.ImageFilterView_imagePanX) {
                    setImagePanX(obtainStyledAttributes.getFloat(index, this.f3253p));
                } else if (index == R.styleable.ImageFilterView_imagePanY) {
                    setImagePanY(obtainStyledAttributes.getFloat(index, this.f3254q));
                } else if (index == R.styleable.ImageFilterView_imageRotate) {
                    setImageRotate(obtainStyledAttributes.getFloat(index, this.f3256s));
                } else if (index == R.styleable.ImageFilterView_imageZoom) {
                    setImageZoom(obtainStyledAttributes.getFloat(index, this.f3255r));
                }
            }
            obtainStyledAttributes.recycle();
            Drawable drawable = getDrawable();
            this.f3252o = drawable;
            if (this.f3251n != null && drawable != null) {
                Drawable[] drawableArr = this.f3248k;
                Drawable mutate = getDrawable().mutate();
                this.f3252o = mutate;
                drawableArr[0] = mutate;
                this.f3248k[1] = this.f3251n.mutate();
                LayerDrawable layerDrawable = new LayerDrawable(this.f3248k);
                this.f3249l = layerDrawable;
                layerDrawable.getDrawable(1).setAlpha((int) (this.f3242e * 255.0f));
                if (!this.f3250m) {
                    this.f3249l.getDrawable(0).setAlpha((int) ((1.0f - this.f3242e) * 255.0f));
                }
                super.setImageDrawable(this.f3249l);
                return;
            }
            Drawable drawable2 = getDrawable();
            this.f3252o = drawable2;
            if (drawable2 != null) {
                Drawable[] drawableArr2 = this.f3248k;
                Drawable mutate2 = drawable2.mutate();
                this.f3252o = mutate2;
                drawableArr2[0] = mutate2;
            }
        }
    }

    private void d() {
        if (Float.isNaN(this.f3253p) && Float.isNaN(this.f3254q) && Float.isNaN(this.f3255r) && Float.isNaN(this.f3256s)) {
            return;
        }
        float f4 = Float.isNaN(this.f3253p) ? 0.0f : this.f3253p;
        float f5 = Float.isNaN(this.f3254q) ? 0.0f : this.f3254q;
        float f6 = Float.isNaN(this.f3255r) ? 1.0f : this.f3255r;
        float f7 = Float.isNaN(this.f3256s) ? 0.0f : this.f3256s;
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
        if (Float.isNaN(this.f3253p) && Float.isNaN(this.f3254q) && Float.isNaN(this.f3255r) && Float.isNaN(this.f3256s)) {
            setScaleType(ImageView.ScaleType.FIT_CENTER);
        } else {
            d();
        }
    }

    private void setOverlay(boolean overlay) {
        this.f3250m = overlay;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z3;
        if (Build.VERSION.SDK_INT >= 21 || this.f3244g == 0.0f || this.f3245h == null) {
            z3 = false;
        } else {
            z3 = true;
            canvas.save();
            canvas.clipPath(this.f3245h);
        }
        super.draw(canvas);
        if (z3) {
            canvas.restore();
        }
    }

    public float getContrast() {
        return this.f3241d.f3282f;
    }

    public float getCrossfade() {
        return this.f3242e;
    }

    public float getImagePanX() {
        return this.f3253p;
    }

    public float getImagePanY() {
        return this.f3254q;
    }

    public float getImageRotate() {
        return this.f3256s;
    }

    public float getImageZoom() {
        return this.f3255r;
    }

    public float getRound() {
        return this.f3244g;
    }

    public float getRoundPercent() {
        return this.f3243f;
    }

    public float getSaturation() {
        return this.f3241d.f3281e;
    }

    public float getWarmth() {
        return this.f3241d.f3283g;
    }

    @Override // android.view.View
    public void layout(int l4, int t3, int r3, int b4) {
        super.layout(l4, t3, r3, b4);
        d();
    }

    public void setAltImageResource(int resId) {
        Drawable mutate = AppCompatResources.getDrawable(getContext(), resId).mutate();
        this.f3251n = mutate;
        Drawable[] drawableArr = this.f3248k;
        drawableArr[0] = this.f3252o;
        drawableArr[1] = mutate;
        LayerDrawable layerDrawable = new LayerDrawable(this.f3248k);
        this.f3249l = layerDrawable;
        super.setImageDrawable(layerDrawable);
        setCrossfade(this.f3242e);
    }

    public void setBrightness(float brightness) {
        ImageFilterView.ImageMatrix imageMatrix = this.f3241d;
        imageMatrix.f3280d = brightness;
        imageMatrix.c(this);
    }

    public void setContrast(float contrast) {
        ImageFilterView.ImageMatrix imageMatrix = this.f3241d;
        imageMatrix.f3282f = contrast;
        imageMatrix.c(this);
    }

    public void setCrossfade(float crossfade) {
        this.f3242e = crossfade;
        if (this.f3248k != null) {
            if (!this.f3250m) {
                this.f3249l.getDrawable(0).setAlpha((int) ((1.0f - this.f3242e) * 255.0f));
            }
            this.f3249l.getDrawable(1).setAlpha((int) (this.f3242e * 255.0f));
            super.setImageDrawable(this.f3249l);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageButton, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        if (this.f3251n != null && drawable != null) {
            Drawable mutate = drawable.mutate();
            this.f3252o = mutate;
            Drawable[] drawableArr = this.f3248k;
            drawableArr[0] = mutate;
            drawableArr[1] = this.f3251n;
            LayerDrawable layerDrawable = new LayerDrawable(this.f3248k);
            this.f3249l = layerDrawable;
            super.setImageDrawable(layerDrawable);
            setCrossfade(this.f3242e);
            return;
        }
        super.setImageDrawable(drawable);
    }

    public void setImagePanX(float pan) {
        this.f3253p = pan;
        e();
    }

    public void setImagePanY(float pan) {
        this.f3254q = pan;
        e();
    }

    @Override // androidx.appcompat.widget.AppCompatImageButton, android.widget.ImageView
    public void setImageResource(int resId) {
        if (this.f3251n != null) {
            Drawable mutate = AppCompatResources.getDrawable(getContext(), resId).mutate();
            this.f3252o = mutate;
            Drawable[] drawableArr = this.f3248k;
            drawableArr[0] = mutate;
            drawableArr[1] = this.f3251n;
            LayerDrawable layerDrawable = new LayerDrawable(this.f3248k);
            this.f3249l = layerDrawable;
            super.setImageDrawable(layerDrawable);
            setCrossfade(this.f3242e);
            return;
        }
        super.setImageResource(resId);
    }

    public void setImageRotate(float rotation) {
        this.f3256s = rotation;
        e();
    }

    public void setImageZoom(float zoom) {
        this.f3255r = zoom;
        e();
    }

    @RequiresApi(21)
    public void setRound(float round) {
        if (Float.isNaN(round)) {
            this.f3244g = round;
            float f4 = this.f3243f;
            this.f3243f = -1.0f;
            setRoundPercent(f4);
            return;
        }
        boolean z3 = this.f3244g != round;
        this.f3244g = round;
        if (round != 0.0f) {
            if (this.f3245h == null) {
                this.f3245h = new Path();
            }
            if (this.f3247j == null) {
                this.f3247j = new RectF();
            }
            if (Build.VERSION.SDK_INT >= 21) {
                if (this.f3246i == null) {
                    ViewOutlineProvider viewOutlineProvider = new ViewOutlineProvider() { // from class: androidx.constraintlayout.utils.widget.ImageFilterButton.2
                        @Override // android.view.ViewOutlineProvider
                        public void getOutline(View view, Outline outline) {
                            outline.setRoundRect(0, 0, ImageFilterButton.this.getWidth(), ImageFilterButton.this.getHeight(), ImageFilterButton.this.f3244g);
                        }
                    };
                    this.f3246i = viewOutlineProvider;
                    setOutlineProvider(viewOutlineProvider);
                }
                setClipToOutline(true);
            }
            this.f3247j.set(0.0f, 0.0f, getWidth(), getHeight());
            this.f3245h.reset();
            Path path = this.f3245h;
            RectF rectF = this.f3247j;
            float f5 = this.f3244g;
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
        boolean z3 = this.f3243f != round;
        this.f3243f = round;
        if (round != 0.0f) {
            if (this.f3245h == null) {
                this.f3245h = new Path();
            }
            if (this.f3247j == null) {
                this.f3247j = new RectF();
            }
            if (Build.VERSION.SDK_INT >= 21) {
                if (this.f3246i == null) {
                    ViewOutlineProvider viewOutlineProvider = new ViewOutlineProvider() { // from class: androidx.constraintlayout.utils.widget.ImageFilterButton.1
                        @Override // android.view.ViewOutlineProvider
                        public void getOutline(View view, Outline outline) {
                            int width = ImageFilterButton.this.getWidth();
                            int height = ImageFilterButton.this.getHeight();
                            outline.setRoundRect(0, 0, width, height, (Math.min(width, height) * ImageFilterButton.this.f3243f) / 2.0f);
                        }
                    };
                    this.f3246i = viewOutlineProvider;
                    setOutlineProvider(viewOutlineProvider);
                }
                setClipToOutline(true);
            }
            int width = getWidth();
            int height = getHeight();
            float min = (Math.min(width, height) * this.f3243f) / 2.0f;
            this.f3247j.set(0.0f, 0.0f, width, height);
            this.f3245h.reset();
            this.f3245h.addRoundRect(this.f3247j, min, min, Path.Direction.CW);
        } else if (Build.VERSION.SDK_INT >= 21) {
            setClipToOutline(false);
        }
        if (!z3 || Build.VERSION.SDK_INT < 21) {
            return;
        }
        invalidateOutline();
    }

    public void setSaturation(float saturation) {
        ImageFilterView.ImageMatrix imageMatrix = this.f3241d;
        imageMatrix.f3281e = saturation;
        imageMatrix.c(this);
    }

    public void setWarmth(float warmth) {
        ImageFilterView.ImageMatrix imageMatrix = this.f3241d;
        imageMatrix.f3283g = warmth;
        imageMatrix.c(this);
    }

    public ImageFilterButton(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f3241d = new ImageFilterView.ImageMatrix();
        this.f3242e = 0.0f;
        this.f3243f = 0.0f;
        this.f3244g = Float.NaN;
        this.f3248k = new Drawable[2];
        this.f3250m = true;
        this.f3251n = null;
        this.f3252o = null;
        this.f3253p = Float.NaN;
        this.f3254q = Float.NaN;
        this.f3255r = Float.NaN;
        this.f3256s = Float.NaN;
        c(context, attrs);
    }

    public ImageFilterButton(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f3241d = new ImageFilterView.ImageMatrix();
        this.f3242e = 0.0f;
        this.f3243f = 0.0f;
        this.f3244g = Float.NaN;
        this.f3248k = new Drawable[2];
        this.f3250m = true;
        this.f3251n = null;
        this.f3252o = null;
        this.f3253p = Float.NaN;
        this.f3254q = Float.NaN;
        this.f3255r = Float.NaN;
        this.f3256s = Float.NaN;
        c(context, attrs);
    }
}
