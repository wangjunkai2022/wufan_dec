package com.papa91.view;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
/* loaded from: classes4.dex */
public class CountDownView extends View {
    AnimatorSet animatorSet;
    private ValueAnimator circleAnimator;
    private float circleValue;
    private int curAngle;
    Handler handler;
    private int loadSuccessColor;
    private Paint mPaint;
    private Path mPathCircle;
    private Path mPathCircleDst;
    private PathMeasure mPathMeasure;
    private StatusEnum mStatus;
    private int minAngle;
    OnCountDownListener onCountDownListener;
    private Path pointerPath;
    private int progressColor;
    private float progressRadius;
    private float progressWidth;
    private int startAngle;
    private Path successPath;
    private float successValue;
    private int sweepAngle;

    /* loaded from: classes4.dex */
    public interface OnCountDownListener {
        void onCountFinished();

        void onSuccessFinish();
    }

    /* loaded from: classes4.dex */
    public enum StatusEnum {
        Loading,
        LoadSuccess
    }

    public CountDownView(Context context) {
        this(context, null);
    }

    private void initAnim() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.circleAnimator = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.papa91.view.CountDownView.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                CountDownView.this.circleValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                CountDownView.this.invalidate();
            }
        });
    }

    private void initPaint() {
        Paint paint = new Paint();
        this.mPaint = paint;
        paint.setColor(this.progressColor);
        this.mPaint.setStyle(Paint.Style.STROKE);
        this.mPaint.setDither(true);
        this.mPaint.setAntiAlias(true);
        this.mPaint.setStrokeWidth(this.progressWidth);
        this.mPaint.setStrokeCap(Paint.Cap.ROUND);
    }

    private void initPath() {
        this.mPathCircle = new Path();
        this.mPathMeasure = new PathMeasure();
        this.mPathCircleDst = new Path();
        this.pointerPath = new Path();
        this.successPath = new Path();
    }

    private void loadLoading() {
        setStatus(StatusEnum.Loading);
        invalidate();
    }

    private void loadSuccess() {
        resetPath();
        setStatus(StatusEnum.LoadSuccess);
        startSuccessAnim();
    }

    private void resetPath() {
        this.successValue = 0.0f;
        this.circleValue = 0.0f;
        this.mPathCircle.reset();
        this.mPathCircleDst.reset();
        this.pointerPath.reset();
        this.successPath.reset();
    }

    private void setStatus(StatusEnum statusEnum) {
        this.mStatus = statusEnum;
    }

    private void startSuccessAnim() {
        this.circleAnimator.setDuration(5000L);
        ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(500L);
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.papa91.view.CountDownView.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                CountDownView.this.successValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                CountDownView.this.invalidate();
            }
        });
        AnimatorSet animatorSet = new AnimatorSet();
        this.animatorSet = animatorSet;
        animatorSet.play(duration).after(this.circleAnimator);
        this.animatorSet.start();
    }

    int dip2px(int i2) {
        return (int) TypedValue.applyDimension(1, i2, getResources().getDisplayMetrics());
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        OnCountDownListener onCountDownListener;
        super.onDraw(canvas);
        canvas.translate(getPaddingLeft(), getPaddingTop());
        StatusEnum statusEnum = this.mStatus;
        if (statusEnum == StatusEnum.Loading) {
            int i2 = this.startAngle;
            int i4 = this.minAngle;
            if (i2 == i4) {
                this.sweepAngle += 6;
            }
            int i5 = this.sweepAngle;
            if (i5 >= 300 || i2 > i4) {
                this.startAngle = i2 + 6;
                if (i5 > 20) {
                    this.sweepAngle = i5 - 6;
                }
            }
            int i6 = this.startAngle;
            if (i6 > i4 + 300) {
                int i7 = i6 % 360;
                this.startAngle = i7;
                this.minAngle = i7;
                this.sweepAngle = 20;
            }
            int i8 = this.curAngle + 4;
            this.curAngle = i8;
            float f4 = this.progressRadius;
            canvas.rotate(i8, f4, f4);
            float f5 = this.progressRadius;
            canvas.drawArc(new RectF(0.0f, 0.0f, f5 * 2.0f, f5 * 2.0f), this.startAngle, this.sweepAngle, false, this.mPaint);
            invalidate();
        } else if (statusEnum == StatusEnum.LoadSuccess) {
            this.mPaint.setColor(this.loadSuccessColor);
            this.mPathCircle.addArc(new RectF(0.0f, 0.0f, getWidth() - (this.progressWidth * 2.0f), getHeight() - (this.progressWidth * 2.0f)), -90.0f, 360.0f);
            this.mPathMeasure.setPath(this.mPathCircle, false);
            PathMeasure pathMeasure = this.mPathMeasure;
            pathMeasure.getSegment(0.0f, this.circleValue * pathMeasure.getLength(), this.mPathCircleDst, true);
            canvas.drawPath(this.mPathCircleDst, this.mPaint);
            if (this.circleValue == 1.0f) {
                this.successPath.moveTo((getWidth() / 8) * 3, getWidth() / 2);
                this.successPath.lineTo(getWidth() / 2, (getWidth() / 5) * 3);
                this.successPath.lineTo((getWidth() / 3) * 2, (getWidth() / 5) * 2);
                this.mPathMeasure.nextContour();
                this.mPathMeasure.setPath(this.successPath, false);
                PathMeasure pathMeasure2 = this.mPathMeasure;
                pathMeasure2.getSegment(0.0f, this.successValue * pathMeasure2.getLength(), this.mPathCircleDst, true);
                canvas.drawPath(this.mPathCircleDst, this.mPaint);
                if (this.successValue != 1.0f || (onCountDownListener = this.onCountDownListener) == null) {
                    return;
                }
                onCountDownListener.onSuccessFinish();
                return;
            }
            this.pointerPath.moveTo(getWidth() / 2, getHeight() / 4);
            this.pointerPath.lineTo(getWidth() / 2, getHeight() / 2);
            this.pointerPath.lineTo((getWidth() * 3) / 4, getHeight() / 2);
            canvas.drawPath(this.pointerPath, this.mPaint);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i4) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode != 1073741824) {
            size = (int) ((this.progressRadius * 2.0f) + this.progressWidth + getPaddingLeft() + getPaddingRight());
        }
        int mode2 = View.MeasureSpec.getMode(i4);
        int size2 = View.MeasureSpec.getSize(i4);
        if (mode2 != 1073741824) {
            size2 = (int) ((this.progressRadius * 2.0f) + this.progressWidth + getPaddingTop() + getPaddingBottom());
        }
        setMeasuredDimension(size, size2);
    }

    public void pause() {
        AnimatorSet animatorSet = this.animatorSet;
        if (animatorSet == null || !animatorSet.isRunning()) {
            return;
        }
        this.animatorSet.pause();
    }

    public void resume() {
        AnimatorSet animatorSet = this.animatorSet;
        if (animatorSet != null && animatorSet.isStarted()) {
            this.animatorSet.resume();
        } else {
            start();
        }
    }

    public void setOnCountDownListener(OnCountDownListener onCountDownListener) {
        this.onCountDownListener = onCountDownListener;
    }

    public void start() {
        resetPath();
        setStatus(StatusEnum.LoadSuccess);
        startSuccessAnim();
    }

    public CountDownView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CountDownView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.startAngle = -90;
        this.minAngle = -90;
        this.sweepAngle = 120;
        this.curAngle = 0;
        this.handler = new Handler() { // from class: com.papa91.view.CountDownView.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                int i4 = message.what;
                if (i4 == 1) {
                    OnCountDownListener onCountDownListener = CountDownView.this.onCountDownListener;
                    if (onCountDownListener != null) {
                        onCountDownListener.onCountFinished();
                    }
                } else if (i4 != 2) {
                    return;
                }
                OnCountDownListener onCountDownListener2 = CountDownView.this.onCountDownListener;
                if (onCountDownListener2 != null) {
                    onCountDownListener2.onSuccessFinish();
                }
            }
        };
        this.progressColor = Color.parseColor("#ffffff");
        this.loadSuccessColor = Color.parseColor("#ffffff");
        this.progressWidth = dip2px(1);
        initPaint();
        initPath();
        initAnim();
    }
}
