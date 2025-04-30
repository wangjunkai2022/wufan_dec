package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.ViewParent;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.R;
/* loaded from: classes.dex */
public class MotionTelltales extends MockView {

    /* renamed from: s  reason: collision with root package name */
    private static final String f3343s = "MotionTelltales";

    /* renamed from: l  reason: collision with root package name */
    private Paint f3344l;

    /* renamed from: m  reason: collision with root package name */
    MotionLayout f3345m;

    /* renamed from: n  reason: collision with root package name */
    float[] f3346n;

    /* renamed from: o  reason: collision with root package name */
    Matrix f3347o;

    /* renamed from: p  reason: collision with root package name */
    int f3348p;

    /* renamed from: q  reason: collision with root package name */
    int f3349q;

    /* renamed from: r  reason: collision with root package name */
    float f3350r;

    public MotionTelltales(Context context) {
        super(context);
        this.f3344l = new Paint();
        this.f3346n = new float[2];
        this.f3347o = new Matrix();
        this.f3348p = 0;
        this.f3349q = -65281;
        this.f3350r = 0.25f;
        a(context, null);
    }

    private void a(Context context, AttributeSet attrs) {
        if (attrs != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.MotionTelltales);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == R.styleable.MotionTelltales_telltales_tailColor) {
                    this.f3349q = obtainStyledAttributes.getColor(index, this.f3349q);
                } else if (index == R.styleable.MotionTelltales_telltales_velocityMode) {
                    this.f3348p = obtainStyledAttributes.getInt(index, this.f3348p);
                } else if (index == R.styleable.MotionTelltales_telltales_tailScale) {
                    this.f3350r = obtainStyledAttributes.getFloat(index, this.f3350r);
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.f3344l.setColor(this.f3349q);
        this.f3344l.setStrokeWidth(5.0f);
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // androidx.constraintlayout.utils.widget.MockView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        getMatrix().invert(this.f3347o);
        if (this.f3345m == null) {
            ViewParent parent = getParent();
            if (parent instanceof MotionLayout) {
                this.f3345m = (MotionLayout) parent;
                return;
            }
            return;
        }
        int width = getWidth();
        int height = getHeight();
        float[] fArr = {0.1f, 0.25f, 0.5f, 0.75f, 0.9f};
        for (int i2 = 0; i2 < 5; i2++) {
            float f4 = fArr[i2];
            for (int i4 = 0; i4 < 5; i4++) {
                float f5 = fArr[i4];
                this.f3345m.getViewVelocity(this, f5, f4, this.f3346n, this.f3348p);
                this.f3347o.mapVectors(this.f3346n);
                float f6 = width * f5;
                float f7 = height * f4;
                float[] fArr2 = this.f3346n;
                float f8 = fArr2[0];
                float f9 = this.f3350r;
                float f10 = f7 - (fArr2[1] * f9);
                this.f3347o.mapVectors(fArr2);
                canvas.drawLine(f6, f7, f6 - (f8 * f9), f10, this.f3344l);
            }
        }
    }

    @Override // android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        postInvalidate();
    }

    public void setText(CharSequence text) {
        this.f3289f = text.toString();
        requestLayout();
    }

    public MotionTelltales(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f3344l = new Paint();
        this.f3346n = new float[2];
        this.f3347o = new Matrix();
        this.f3348p = 0;
        this.f3349q = -65281;
        this.f3350r = 0.25f;
        a(context, attrs);
    }

    public MotionTelltales(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f3344l = new Paint();
        this.f3346n = new float[2];
        this.f3347o = new Matrix();
        this.f3348p = 0;
        this.f3349q = -65281;
        this.f3350r = 0.25f;
        a(context, attrs);
    }
}
