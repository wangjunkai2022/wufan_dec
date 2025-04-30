package com.join.mgps.customview;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
/* compiled from: CircleDrawable.java */
/* loaded from: classes3.dex */
public class b extends Drawable {

    /* renamed from: f  reason: collision with root package name */
    public static final String f46768f = "CircleDrawable";

    /* renamed from: a  reason: collision with root package name */
    protected final Paint f46769a;

    /* renamed from: b  reason: collision with root package name */
    protected final int f46770b;

    /* renamed from: c  reason: collision with root package name */
    protected final BitmapShader f46771c;

    /* renamed from: d  reason: collision with root package name */
    protected float f46772d;

    /* renamed from: e  reason: collision with root package name */
    protected Bitmap f46773e;

    public b(Bitmap bitmap) {
        this(bitmap, 0);
    }

    public void a() {
        Rect bounds = getBounds();
        if (bounds == null) {
            return;
        }
        Matrix matrix = new Matrix();
        float width = bounds.width() / this.f46773e.getWidth();
        float height = bounds.height() / this.f46773e.getHeight();
        if (width <= height) {
            width = height;
        }
        matrix.postScale(width, width);
        this.f46771c.setLocalMatrix(matrix);
    }

    public void b() {
        float height;
        int i2;
        Rect bounds = getBounds();
        if (bounds.width() < bounds.height()) {
            height = bounds.width() / 2.0f;
            i2 = this.f46770b;
        } else {
            height = bounds.height() / 2.0f;
            i2 = this.f46770b;
        }
        this.f46772d = height - i2;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        canvas.drawCircle(bounds.width() / 2.0f, bounds.height() / 2.0f, this.f46772d, this.f46769a);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        a();
        b();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.f46769a.setAlpha(i2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f46769a.setColorFilter(colorFilter);
    }

    public b(Bitmap bitmap, int i2) {
        this.f46770b = i2;
        this.f46773e = bitmap;
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        this.f46771c = bitmapShader;
        Paint paint = new Paint();
        this.f46769a = paint;
        paint.setAntiAlias(true);
        paint.setShader(bitmapShader);
    }
}
