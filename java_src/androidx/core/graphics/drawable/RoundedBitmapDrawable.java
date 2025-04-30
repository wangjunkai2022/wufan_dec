package androidx.core.graphics.drawable;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes.dex */
public abstract class RoundedBitmapDrawable extends Drawable {

    /* renamed from: n  reason: collision with root package name */
    private static final int f4331n = 3;

    /* renamed from: a  reason: collision with root package name */
    final Bitmap f4332a;

    /* renamed from: b  reason: collision with root package name */
    private int f4333b;

    /* renamed from: e  reason: collision with root package name */
    private final BitmapShader f4336e;

    /* renamed from: g  reason: collision with root package name */
    private float f4338g;

    /* renamed from: k  reason: collision with root package name */
    private boolean f4342k;

    /* renamed from: l  reason: collision with root package name */
    private int f4343l;

    /* renamed from: m  reason: collision with root package name */
    private int f4344m;

    /* renamed from: c  reason: collision with root package name */
    private int f4334c = 119;

    /* renamed from: d  reason: collision with root package name */
    private final Paint f4335d = new Paint(3);

    /* renamed from: f  reason: collision with root package name */
    private final Matrix f4337f = new Matrix();

    /* renamed from: h  reason: collision with root package name */
    final Rect f4339h = new Rect();

    /* renamed from: i  reason: collision with root package name */
    private final RectF f4340i = new RectF();

    /* renamed from: j  reason: collision with root package name */
    private boolean f4341j = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RoundedBitmapDrawable(Resources resources, Bitmap bitmap) {
        this.f4333b = 160;
        if (resources != null) {
            this.f4333b = resources.getDisplayMetrics().densityDpi;
        }
        this.f4332a = bitmap;
        if (bitmap != null) {
            a();
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            this.f4336e = new BitmapShader(bitmap, tileMode, tileMode);
            return;
        }
        this.f4344m = -1;
        this.f4343l = -1;
        this.f4336e = null;
    }

    private void a() {
        this.f4343l = this.f4332a.getScaledWidth(this.f4333b);
        this.f4344m = this.f4332a.getScaledHeight(this.f4333b);
    }

    private static boolean c(float f4) {
        return f4 > 0.05f;
    }

    private void d() {
        this.f4338g = Math.min(this.f4344m, this.f4343l) / 2;
    }

    void b(int i2, int i4, int i5, Rect rect, Rect rect2) {
        throw new UnsupportedOperationException();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Bitmap bitmap = this.f4332a;
        if (bitmap == null) {
            return;
        }
        e();
        if (this.f4335d.getShader() == null) {
            canvas.drawBitmap(bitmap, (Rect) null, this.f4339h, this.f4335d);
            return;
        }
        RectF rectF = this.f4340i;
        float f4 = this.f4338g;
        canvas.drawRoundRect(rectF, f4, f4, this.f4335d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e() {
        if (this.f4341j) {
            if (this.f4342k) {
                int min = Math.min(this.f4343l, this.f4344m);
                b(this.f4334c, min, min, getBounds(), this.f4339h);
                int min2 = Math.min(this.f4339h.width(), this.f4339h.height());
                this.f4339h.inset(Math.max(0, (this.f4339h.width() - min2) / 2), Math.max(0, (this.f4339h.height() - min2) / 2));
                this.f4338g = min2 * 0.5f;
            } else {
                b(this.f4334c, this.f4343l, this.f4344m, getBounds(), this.f4339h);
            }
            this.f4340i.set(this.f4339h);
            if (this.f4336e != null) {
                Matrix matrix = this.f4337f;
                RectF rectF = this.f4340i;
                matrix.setTranslate(rectF.left, rectF.top);
                this.f4337f.preScale(this.f4340i.width() / this.f4332a.getWidth(), this.f4340i.height() / this.f4332a.getHeight());
                this.f4336e.setLocalMatrix(this.f4337f);
                this.f4335d.setShader(this.f4336e);
            }
            this.f4341j = false;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f4335d.getAlpha();
    }

    @Nullable
    public final Bitmap getBitmap() {
        return this.f4332a;
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        return this.f4335d.getColorFilter();
    }

    public float getCornerRadius() {
        return this.f4338g;
    }

    public int getGravity() {
        return this.f4334c;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f4344m;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f4343l;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Bitmap bitmap;
        return (this.f4334c != 119 || this.f4342k || (bitmap = this.f4332a) == null || bitmap.hasAlpha() || this.f4335d.getAlpha() < 255 || c(this.f4338g)) ? -3 : -1;
    }

    @NonNull
    public final Paint getPaint() {
        return this.f4335d;
    }

    public boolean hasAntiAlias() {
        return this.f4335d.isAntiAlias();
    }

    public boolean hasMipMap() {
        throw new UnsupportedOperationException();
    }

    public boolean isCircular() {
        return this.f4342k;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        if (this.f4342k) {
            d();
        }
        this.f4341j = true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        if (i2 != this.f4335d.getAlpha()) {
            this.f4335d.setAlpha(i2);
            invalidateSelf();
        }
    }

    public void setAntiAlias(boolean z3) {
        this.f4335d.setAntiAlias(z3);
        invalidateSelf();
    }

    public void setCircular(boolean z3) {
        this.f4342k = z3;
        this.f4341j = true;
        if (z3) {
            d();
            this.f4335d.setShader(this.f4336e);
            invalidateSelf();
            return;
        }
        setCornerRadius(0.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f4335d.setColorFilter(colorFilter);
        invalidateSelf();
    }

    public void setCornerRadius(float f4) {
        if (this.f4338g == f4) {
            return;
        }
        this.f4342k = false;
        if (c(f4)) {
            this.f4335d.setShader(this.f4336e);
        } else {
            this.f4335d.setShader(null);
        }
        this.f4338g = f4;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z3) {
        this.f4335d.setDither(z3);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z3) {
        this.f4335d.setFilterBitmap(z3);
        invalidateSelf();
    }

    public void setGravity(int i2) {
        if (this.f4334c != i2) {
            this.f4334c = i2;
            this.f4341j = true;
            invalidateSelf();
        }
    }

    public void setMipMap(boolean z3) {
        throw new UnsupportedOperationException();
    }

    public void setTargetDensity(@NonNull Canvas canvas) {
        setTargetDensity(canvas.getDensity());
    }

    public void setTargetDensity(@NonNull DisplayMetrics displayMetrics) {
        setTargetDensity(displayMetrics.densityDpi);
    }

    public void setTargetDensity(int i2) {
        if (this.f4333b != i2) {
            if (i2 == 0) {
                i2 = 160;
            }
            this.f4333b = i2;
            if (this.f4332a != null) {
                a();
            }
            invalidateSelf();
        }
    }
}
