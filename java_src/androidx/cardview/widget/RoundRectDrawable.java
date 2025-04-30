package androidx.cardview.widget;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
@RequiresApi(21)
/* loaded from: classes.dex */
class RoundRectDrawable extends Drawable {

    /* renamed from: a  reason: collision with root package name */
    private float f1620a;

    /* renamed from: c  reason: collision with root package name */
    private final RectF f1622c;

    /* renamed from: d  reason: collision with root package name */
    private final Rect f1623d;

    /* renamed from: e  reason: collision with root package name */
    private float f1624e;

    /* renamed from: h  reason: collision with root package name */
    private ColorStateList f1627h;

    /* renamed from: i  reason: collision with root package name */
    private PorterDuffColorFilter f1628i;

    /* renamed from: j  reason: collision with root package name */
    private ColorStateList f1629j;

    /* renamed from: f  reason: collision with root package name */
    private boolean f1625f = false;

    /* renamed from: g  reason: collision with root package name */
    private boolean f1626g = true;

    /* renamed from: k  reason: collision with root package name */
    private PorterDuff.Mode f1630k = PorterDuff.Mode.SRC_IN;

    /* renamed from: b  reason: collision with root package name */
    private final Paint f1621b = new Paint(5);

    /* JADX INFO: Access modifiers changed from: package-private */
    public RoundRectDrawable(ColorStateList colorStateList, float f4) {
        this.f1620a = f4;
        c(colorStateList);
        this.f1622c = new RectF();
        this.f1623d = new Rect();
    }

    private PorterDuffColorFilter a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    private void c(ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.f1627h = colorStateList;
        this.f1621b.setColor(colorStateList.getColorForState(getState(), this.f1627h.getDefaultColor()));
    }

    private void f(Rect rect) {
        if (rect == null) {
            rect = getBounds();
        }
        this.f1622c.set(rect.left, rect.top, rect.right, rect.bottom);
        this.f1623d.set(rect);
        if (this.f1625f) {
            float d4 = RoundRectDrawableWithShadow.d(this.f1624e, this.f1620a, this.f1626g);
            this.f1623d.inset((int) Math.ceil(RoundRectDrawableWithShadow.c(this.f1624e, this.f1620a, this.f1626g)), (int) Math.ceil(d4));
            this.f1622c.set(this.f1623d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float b() {
        return this.f1624e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(float f4, boolean z3, boolean z4) {
        if (f4 == this.f1624e && this.f1625f == z3 && this.f1626g == z4) {
            return;
        }
        this.f1624e = f4;
        this.f1625f = z3;
        this.f1626g = z4;
        f(null);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        boolean z3;
        Paint paint = this.f1621b;
        if (this.f1628i == null || paint.getColorFilter() != null) {
            z3 = false;
        } else {
            paint.setColorFilter(this.f1628i);
            z3 = true;
        }
        RectF rectF = this.f1622c;
        float f4 = this.f1620a;
        canvas.drawRoundRect(rectF, f4, f4, paint);
        if (z3) {
            paint.setColorFilter(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(float f4) {
        if (f4 == this.f1620a) {
            return;
        }
        this.f1620a = f4;
        f(null);
        invalidateSelf();
    }

    public ColorStateList getColor() {
        return this.f1627h;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        outline.setRoundRect(this.f1623d, this.f1620a);
    }

    public float getRadius() {
        return this.f1620a;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.f1629j;
        return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.f1627h) != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        f(rect);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        ColorStateList colorStateList = this.f1627h;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        boolean z3 = colorForState != this.f1621b.getColor();
        if (z3) {
            this.f1621b.setColor(colorForState);
        }
        ColorStateList colorStateList2 = this.f1629j;
        if (colorStateList2 == null || (mode = this.f1630k) == null) {
            return z3;
        }
        this.f1628i = a(colorStateList2, mode);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.f1621b.setAlpha(i2);
    }

    public void setColor(@Nullable ColorStateList colorStateList) {
        c(colorStateList);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f1621b.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.f1629j = colorStateList;
        this.f1628i = a(colorStateList, this.f1630k);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        this.f1630k = mode;
        this.f1628i = a(this.f1629j, mode);
        invalidateSelf();
    }
}
