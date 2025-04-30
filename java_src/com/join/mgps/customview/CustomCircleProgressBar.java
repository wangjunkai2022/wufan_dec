package com.join.mgps.customview;

import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.LinearInterpolator;
import androidx.core.content.ContextCompat;
import com.join.android.app.mgsim.wufun.R;
/* loaded from: classes3.dex */
public class CustomCircleProgressBar extends View {

    /* renamed from: a  reason: collision with root package name */
    private int f45286a;

    /* renamed from: b  reason: collision with root package name */
    private float f45287b;

    /* renamed from: c  reason: collision with root package name */
    private int f45288c;

    /* renamed from: d  reason: collision with root package name */
    private int f45289d;

    /* renamed from: e  reason: collision with root package name */
    private float f45290e;

    /* renamed from: f  reason: collision with root package name */
    private float f45291f;

    /* renamed from: g  reason: collision with root package name */
    private int f45292g;

    /* renamed from: h  reason: collision with root package name */
    private float f45293h;

    /* renamed from: i  reason: collision with root package name */
    private int f45294i;

    /* renamed from: j  reason: collision with root package name */
    private Paint f45295j;

    /* renamed from: k  reason: collision with root package name */
    private String f45296k;

    /* renamed from: l  reason: collision with root package name */
    private Rect f45297l;

    /* renamed from: m  reason: collision with root package name */
    private ValueAnimator f45298m;

    /* loaded from: classes3.dex */
    enum DirectionEnum {
        LEFT(0, 180.0f),
        TOP(1, 270.0f),
        RIGHT(2, 0.0f),
        BOTTOM(3, 90.0f);
        
        private final float degree;
        private final int direction;

        DirectionEnum(int i2, float f4) {
            this.direction = i2;
            this.degree = f4;
        }

        public boolean equalsDescription(int i2) {
            return this.direction == i2;
        }

        public float getDegree() {
            return this.degree;
        }

        public int getDirection() {
            return this.direction;
        }

        public static float getDegree(int i2) {
            DirectionEnum direction = getDirection(i2);
            if (direction == null) {
                return 0.0f;
            }
            return direction.getDegree();
        }

        public static DirectionEnum getDirection(int i2) {
            DirectionEnum[] values;
            for (DirectionEnum directionEnum : values()) {
                if (directionEnum.equalsDescription(i2)) {
                    return directionEnum;
                }
            }
            return RIGHT;
        }
    }

    /* loaded from: classes3.dex */
    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            CustomCircleProgressBar.this.f45293h = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            CustomCircleProgressBar.this.postInvalidate();
        }
    }

    public CustomCircleProgressBar(Context context) {
        this(context, null);
    }

    public static int b(Context context, float f4) {
        return (int) ((f4 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    private void c(float f4) {
        ValueAnimator ofFloat = ObjectAnimator.ofFloat(0.0f, f4);
        this.f45298m = ofFloat;
        ofFloat.addUpdateListener(new a());
        this.f45298m.setStartDelay(500L);
        this.f45298m.setDuration(2000L);
        this.f45298m.setInterpolator(new LinearInterpolator());
        this.f45298m.start();
    }

    private String getProgressText() {
        return ((int) ((this.f45293h / this.f45292g) * 100.0f)) + "%";
    }

    public int getInsideColor() {
        return this.f45288c;
    }

    public synchronized int getMaxProgress() {
        return this.f45292g;
    }

    public int getOutsideColor() {
        return this.f45286a;
    }

    public float getOutsideRadius() {
        return this.f45287b;
    }

    public synchronized float getProgress() {
        return this.f45293h;
    }

    public int getProgressTextColor() {
        return this.f45289d;
    }

    public float getProgressTextSize() {
        return this.f45290e;
    }

    public float getProgressWidth() {
        return this.f45291f;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Paint.FontMetricsInt fontMetricsInt;
        super.onDraw(canvas);
        this.f45295j.setColor(this.f45288c);
        this.f45295j.setStyle(Paint.Style.STROKE);
        this.f45295j.setStrokeWidth(this.f45291f);
        this.f45295j.setAntiAlias(true);
        float width = getWidth() / 2;
        canvas.drawCircle(width, width, this.f45287b, this.f45295j);
        this.f45295j.setColor(this.f45286a);
        float f4 = this.f45287b;
        canvas.drawArc(new RectF(width - f4, width - f4, width + f4, width + f4), DirectionEnum.getDegree(this.f45294i), (this.f45293h / this.f45292g) * 360.0f, false, this.f45295j);
        this.f45297l = new Rect();
        this.f45295j.setColor(this.f45289d);
        this.f45295j.setTextSize(this.f45290e);
        this.f45295j.setStrokeWidth(0.0f);
        String progressText = getProgressText();
        this.f45296k = progressText;
        this.f45295j.getTextBounds(progressText, 0, progressText.length(), this.f45297l);
        int i2 = this.f45295j.getFontMetricsInt().top;
        canvas.drawText(this.f45296k, (getMeasuredWidth() / 2) - (this.f45297l.width() / 2), (((getMeasuredHeight() - fontMetricsInt.bottom) + i2) / 2) - i2, this.f45295j);
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i4) {
        int size = View.MeasureSpec.getSize(i2);
        if (View.MeasureSpec.getMode(i2) != 1073741824) {
            size = (int) ((this.f45287b * 2.0f) + this.f45291f);
        }
        int size2 = View.MeasureSpec.getSize(i4);
        if (View.MeasureSpec.getMode(i4) != 1073741824) {
            size2 = (int) ((this.f45287b * 2.0f) + this.f45291f);
        }
        setMeasuredDimension(size, size2);
    }

    public void setInsideColor(int i2) {
        this.f45288c = i2;
    }

    public synchronized void setMaxProgress(int i2) {
        if (i2 >= 0) {
            this.f45292g = i2;
        } else {
            throw new IllegalArgumentException("maxProgress should not be less than 0");
        }
    }

    public void setOutsideColor(int i2) {
        this.f45286a = i2;
    }

    public void setOutsideRadius(float f4) {
        this.f45287b = f4;
    }

    public synchronized void setProgress(int i2) {
        if (i2 >= 0) {
            int i4 = this.f45292g;
            if (i2 > i4) {
                i2 = i4;
            }
            this.f45293h = i2;
            postInvalidate();
        } else {
            throw new IllegalArgumentException("progress should not be less than 0");
        }
    }

    public void setProgressTextColor(int i2) {
        this.f45289d = i2;
    }

    public void setProgressTextSize(float f4) {
        this.f45290e = f4;
    }

    public void setProgressWidth(float f4) {
        this.f45291f = f4;
    }

    public CustomCircleProgressBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CustomCircleProgressBar(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.CustomCircleProgressBar, i2, 0);
        this.f45286a = obtainStyledAttributes.getColor(3, ContextCompat.getColor(getContext(), R.color.colorPrimary));
        this.f45287b = obtainStyledAttributes.getDimension(4, b(getContext(), 60.0f));
        this.f45288c = obtainStyledAttributes.getColor(1, ContextCompat.getColor(getContext(), R.color.inside_color));
        this.f45289d = obtainStyledAttributes.getColor(6, ContextCompat.getColor(getContext(), R.color.colorPrimary));
        this.f45290e = obtainStyledAttributes.getDimension(7, b(getContext(), 14.0f));
        this.f45291f = obtainStyledAttributes.getDimension(8, b(getContext(), 10.0f));
        this.f45293h = obtainStyledAttributes.getFloat(5, 50.0f);
        this.f45292g = obtainStyledAttributes.getInt(2, 100);
        this.f45294i = obtainStyledAttributes.getInt(0, 3);
        obtainStyledAttributes.recycle();
        this.f45295j = new Paint();
    }
}
