package com.join.mgps.customview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.join.android.app.mgsim.wufun.R;
/* loaded from: classes3.dex */
public class MStarBar extends View {

    /* renamed from: a  reason: collision with root package name */
    private int f45780a;

    /* renamed from: b  reason: collision with root package name */
    private int f45781b;

    /* renamed from: c  reason: collision with root package name */
    private int f45782c;

    /* renamed from: d  reason: collision with root package name */
    private float f45783d;

    /* renamed from: e  reason: collision with root package name */
    private Bitmap f45784e;

    /* renamed from: f  reason: collision with root package name */
    private Drawable f45785f;

    /* renamed from: g  reason: collision with root package name */
    private a f45786g;

    /* renamed from: h  reason: collision with root package name */
    private Paint f45787h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f45788i;

    /* loaded from: classes3.dex */
    public interface a {
        void a(float f4);
    }

    public MStarBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45780a = 0;
        this.f45781b = 5;
        this.f45783d = 0.0f;
        this.f45788i = true;
        b(context, attributeSet);
    }

    private Bitmap a(Drawable drawable) {
        if (drawable == null) {
            return null;
        }
        int i2 = this.f45782c;
        Bitmap createBitmap = Bitmap.createBitmap(i2, i2, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        int i4 = this.f45782c;
        drawable.setBounds(0, 0, i4, i4);
        drawable.draw(canvas);
        return createBitmap;
    }

    private void b(Context context, AttributeSet attributeSet) {
        setClickable(true);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RatingBar);
        this.f45780a = (int) obtainStyledAttributes.getDimension(2, 0.0f);
        this.f45782c = (int) obtainStyledAttributes.getDimension(5, 20.0f);
        this.f45781b = obtainStyledAttributes.getInteger(1, 5);
        this.f45785f = obtainStyledAttributes.getDrawable(3);
        this.f45788i = obtainStyledAttributes.getBoolean(0, false);
        this.f45784e = a(obtainStyledAttributes.getDrawable(4));
        obtainStyledAttributes.recycle();
        Paint paint = new Paint();
        this.f45787h = paint;
        paint.setAntiAlias(true);
        Paint paint2 = this.f45787h;
        Bitmap bitmap = this.f45784e;
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        paint2.setShader(new BitmapShader(bitmap, tileMode, tileMode));
    }

    public float getStarMark() {
        return this.f45783d;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f45784e == null || this.f45785f == null) {
            return;
        }
        for (int i2 = 0; i2 < this.f45781b; i2++) {
            Drawable drawable = this.f45785f;
            int i4 = this.f45780a;
            int i5 = this.f45782c;
            drawable.setBounds((i4 + i5) * i2, 0, ((i4 + i5) * i2) + i5, i5);
            this.f45785f.draw(canvas);
        }
        float f4 = this.f45783d;
        if (f4 > 1.0f) {
            int i6 = this.f45782c;
            canvas.drawRect(0.0f, 0.0f, i6, i6, this.f45787h);
            float f5 = this.f45783d;
            if (f5 - ((int) f5) == 0.0f) {
                for (int i7 = 1; i7 < this.f45783d; i7++) {
                    canvas.translate(this.f45780a + this.f45782c, 0.0f);
                    int i8 = this.f45782c;
                    canvas.drawRect(0.0f, 0.0f, i8, i8, this.f45787h);
                }
                return;
            }
            for (int i9 = 1; i9 < this.f45783d - 1.0f; i9++) {
                canvas.translate(this.f45780a + this.f45782c, 0.0f);
                int i10 = this.f45782c;
                canvas.drawRect(0.0f, 0.0f, i10, i10, this.f45787h);
            }
            canvas.translate(this.f45780a + this.f45782c, 0.0f);
            float f6 = this.f45783d;
            canvas.drawRect(0.0f, 0.0f, ((Math.round((f6 - ((int) f6)) * 10.0f) * 1.0f) / 10.0f) * this.f45782c, this.f45782c, this.f45787h);
            return;
        }
        int i11 = this.f45782c;
        canvas.drawRect(0.0f, 0.0f, i11 * f4, i11, this.f45787h);
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i4) {
        super.onMeasure(i2, i4);
        int i5 = this.f45782c;
        int i6 = this.f45781b;
        setMeasuredDimension((i5 * i6) + (this.f45780a * (i6 - 1)), i5);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (isEnabled()) {
            int x3 = (int) motionEvent.getX();
            if (x3 < 0) {
                x3 = 0;
            }
            if (x3 > getMeasuredWidth()) {
                x3 = getMeasuredWidth();
            }
            int action = motionEvent.getAction();
            if (action == 0) {
                setStarMark((x3 * 1.0f) / ((getMeasuredWidth() * 1.0f) / this.f45781b));
            } else if (action == 2) {
                setStarMark((x3 * 1.0f) / ((getMeasuredWidth() * 1.0f) / this.f45781b));
            }
            invalidate();
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    public void setIntegerMark(boolean z3) {
    }

    public void setOnStarChangeListener(a aVar) {
        this.f45786g = aVar;
    }

    public void setStarCount(int i2) {
        this.f45781b = i2;
        requestLayout();
    }

    public void setStarMark(double d4) {
        if (!this.f45788i) {
            this.f45783d = (int) Math.ceil(d4);
        } else {
            this.f45783d = (((float) Math.round(d4 * 10.0d)) * 1.0f) / 10.0f;
        }
        a aVar = this.f45786g;
        if (aVar != null) {
            aVar.a(this.f45783d);
        }
        invalidate();
    }

    public MStarBar(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f45780a = 0;
        this.f45781b = 5;
        this.f45783d = 0.0f;
        this.f45788i = true;
        b(context, attributeSet);
    }
}
