package com.papa91.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
/* loaded from: classes4.dex */
public class RoundedRectangularProgressView extends View {
    ValueAnimator animator;
    private int color;
    private int dashColor;
    private float dashWidth;
    private int height;
    private long interval;
    float[] intervals;
    Handler mHandler;
    OnProgressListener mOnProgressListener;
    private Paint mPaint;
    private Path mPath;
    private long playTime;
    private float progress;
    private int solidColor;
    private long startTime;
    private int strokeWidth;
    private int width;

    /* loaded from: classes4.dex */
    public interface OnProgressListener {
        void onProgress(float f4, float[] fArr);
    }

    public RoundedRectangularProgressView(Context context) {
        super(context);
        this.width = 0;
        this.height = 0;
        this.color = 1724048;
        this.dashColor = 2219519;
        this.solidColor = 4268575;
        this.strokeWidth = 5;
        this.dashWidth = 10.0f;
        this.intervals = new float[]{10.0f, 10.0f};
        this.interval = 60000L;
        this.playTime = 0L;
        this.startTime = 0L;
        this.mHandler = new Handler() { // from class: com.papa91.view.RoundedRectangularProgressView.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                RoundedRectangularProgressView roundedRectangularProgressView;
                OnProgressListener onProgressListener;
                if (message.what == 1 && (onProgressListener = (roundedRectangularProgressView = RoundedRectangularProgressView.this).mOnProgressListener) != null) {
                    onProgressListener.onProgress(roundedRectangularProgressView.progress, RoundedRectangularProgressView.this.getCoordinate());
                }
            }
        };
    }

    public static int dip2px(Context context, float f4) {
        return (int) ((f4 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    private void initView(Context context, AttributeSet attributeSet) {
        this.strokeWidth = getDimension(2);
        float dimension = getDimension(5);
        this.dashWidth = dimension;
        this.intervals = new float[]{dimension, dimension};
        this.mPaint = new Paint();
        this.mPath = new Path();
        this.color = Color.parseColor("#AD7C35");
        this.dashColor = Color.parseColor("#F8CE67");
        this.solidColor = Color.parseColor("#1F2241");
        this.mPaint.setColor(this.color);
        this.mPaint.setStyle(Paint.Style.STROKE);
        this.mPaint.setAntiAlias(true);
        this.mPaint.setDither(true);
        this.mPaint.setStrokeWidth(this.strokeWidth);
    }

    void createAnimator() {
        createAnimator(0.0f, 1.0f);
    }

    public float[] getCoordinate() {
        PathMeasure pathMeasure = new PathMeasure(this.mPath, true);
        float[] fArr = new float[2];
        pathMeasure.getPosTan(pathMeasure.getLength() * this.progress, fArr, null);
        return fArr;
    }

    int getDimension(int i2) {
        return dip2px(getContext(), i2);
    }

    public OnProgressListener getOnProgressListener() {
        return this.mOnProgressListener;
    }

    public float getProgress() {
        return this.progress;
    }

    void initPath() {
        int i2 = this.strokeWidth;
        Path path = new Path();
        float f4 = i2;
        float f5 = (this.width / 2) - i2;
        float f6 = (2.0f * f5) + f4;
        RectF rectF = new RectF(f4, f4, f6, f6);
        float f7 = f4 + f5;
        path.moveTo(f4, f7);
        path.arcTo(rectF, 180.0f, 180.0f);
        float f8 = this.width - i2;
        float f9 = (this.height - i2) - f5;
        path.lineTo(f8, f9);
        path.arcTo(new RectF(f4, f9 - f5, f8, this.height - i2), 0.0f, 180.0f);
        path.lineTo(f4, f7);
        this.mPath.reset();
        this.mPath.set(path);
        invalidate();
    }

    public boolean isRunning() {
        ValueAnimator valueAnimator = this.animator;
        return valueAnimator != null && valueAnimator.isRunning();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        PathMeasure pathMeasure = new PathMeasure(this.mPath, true);
        float length = pathMeasure.getLength();
        pathMeasure.getPosTan(0.0f, new float[2], null);
        pathMeasure.getPosTan(length, new float[2], new float[2]);
        Path path = new Path();
        path.set(this.mPath);
        this.mPaint.setColor(this.solidColor);
        this.mPaint.setStyle(Paint.Style.FILL);
        canvas.drawPath(path, this.mPaint);
        this.mPaint.setColor(this.color);
        this.mPaint.setStyle(Paint.Style.STROKE);
        canvas.drawPath(path, this.mPaint);
        path.reset();
        if (Build.VERSION.SDK_INT <= 19) {
            path.lineTo(0.0f, 0.0f);
        }
        this.mPaint.setPathEffect(new DashPathEffect(this.intervals, this.dashWidth));
        this.mPaint.setColor(this.dashColor);
        this.mPaint.setStyle(Paint.Style.STROKE);
        pathMeasure.getSegment(0.0f, length * this.progress, path, true);
        canvas.drawPath(path, this.mPaint);
        this.mPaint.setPathEffect(null);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i4, int i5, int i6) {
        super.onSizeChanged(i2, i4, i5, i6);
        this.width = i2;
        this.height = i4;
        initPath();
    }

    public void pause() {
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            valueAnimator.removeAllUpdateListeners();
            this.animator.cancel();
        }
    }

    public void resume() {
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            valueAnimator.removeAllUpdateListeners();
            this.animator.cancel();
        }
        createAnimator(this.progress, 1.0f);
        this.animator.start();
    }

    public void setInterval(long j4) {
        this.interval = j4;
        if (j4 == 0) {
            this.interval = 60000L;
        }
    }

    public void setOnProgressListener(OnProgressListener onProgressListener) {
        this.mOnProgressListener = onProgressListener;
    }

    public void setProgress(float f4) {
        if (f4 >= 0.0f && f4 <= 1.0f) {
            this.progress = f4;
            invalidate();
            this.mHandler.sendEmptyMessage(1);
            return;
        }
        throw new IllegalArgumentException("progress not between 0.0f and 1.0f");
    }

    public void start() {
        this.progress = 0.0f;
        this.playTime = 0L;
        invalidate();
        createAnimator();
        this.animator.start();
    }

    public void stop() {
        this.progress = 0.0f;
        this.playTime = 0L;
        invalidate();
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            valueAnimator.removeAllUpdateListeners();
            this.animator.cancel();
        }
    }

    void createAnimator(float f4, float f5) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(f4, f5);
        this.animator = ofFloat;
        ofFloat.setDuration(this.interval - this.playTime);
        this.animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.papa91.view.RoundedRectangularProgressView.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                RoundedRectangularProgressView.this.progress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                RoundedRectangularProgressView roundedRectangularProgressView = RoundedRectangularProgressView.this;
                roundedRectangularProgressView.progress = Math.min(1.0f, roundedRectangularProgressView.progress);
                RoundedRectangularProgressView.this.playTime = System.currentTimeMillis() - RoundedRectangularProgressView.this.startTime;
                RoundedRectangularProgressView.this.invalidate();
                RoundedRectangularProgressView.this.mHandler.sendEmptyMessage(1);
            }
        });
        this.animator.addListener(new AnimatorListenerAdapter() { // from class: com.papa91.view.RoundedRectangularProgressView.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                super.onAnimationStart(animator);
                RoundedRectangularProgressView.this.startTime = System.currentTimeMillis();
            }
        });
    }

    public RoundedRectangularProgressView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.width = 0;
        this.height = 0;
        this.color = 1724048;
        this.dashColor = 2219519;
        this.solidColor = 4268575;
        this.strokeWidth = 5;
        this.dashWidth = 10.0f;
        this.intervals = new float[]{10.0f, 10.0f};
        this.interval = 60000L;
        this.playTime = 0L;
        this.startTime = 0L;
        this.mHandler = new Handler() { // from class: com.papa91.view.RoundedRectangularProgressView.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                RoundedRectangularProgressView roundedRectangularProgressView;
                OnProgressListener onProgressListener;
                if (message.what == 1 && (onProgressListener = (roundedRectangularProgressView = RoundedRectangularProgressView.this).mOnProgressListener) != null) {
                    onProgressListener.onProgress(roundedRectangularProgressView.progress, RoundedRectangularProgressView.this.getCoordinate());
                }
            }
        };
        initView(context, attributeSet);
    }

    public RoundedRectangularProgressView(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.width = 0;
        this.height = 0;
        this.color = 1724048;
        this.dashColor = 2219519;
        this.solidColor = 4268575;
        this.strokeWidth = 5;
        this.dashWidth = 10.0f;
        this.intervals = new float[]{10.0f, 10.0f};
        this.interval = 60000L;
        this.playTime = 0L;
        this.startTime = 0L;
        this.mHandler = new Handler() { // from class: com.papa91.view.RoundedRectangularProgressView.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                RoundedRectangularProgressView roundedRectangularProgressView;
                OnProgressListener onProgressListener;
                if (message.what == 1 && (onProgressListener = (roundedRectangularProgressView = RoundedRectangularProgressView.this).mOnProgressListener) != null) {
                    onProgressListener.onProgress(roundedRectangularProgressView.progress, RoundedRectangularProgressView.this.getCoordinate());
                }
            }
        };
    }
}
