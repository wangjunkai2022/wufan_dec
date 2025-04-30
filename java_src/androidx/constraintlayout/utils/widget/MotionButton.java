package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.annotation.RequiresApi;
import androidx.appcompat.widget.AppCompatButton;
import androidx.constraintlayout.widget.R;
/* loaded from: classes.dex */
public class MotionButton extends AppCompatButton {

    /* renamed from: d  reason: collision with root package name */
    private float f3295d;

    /* renamed from: e  reason: collision with root package name */
    private float f3296e;

    /* renamed from: f  reason: collision with root package name */
    private Path f3297f;

    /* renamed from: g  reason: collision with root package name */
    ViewOutlineProvider f3298g;

    /* renamed from: h  reason: collision with root package name */
    RectF f3299h;

    public MotionButton(Context context) {
        super(context);
        this.f3295d = 0.0f;
        this.f3296e = Float.NaN;
        c(context, null);
    }

    private void c(Context context, AttributeSet attrs) {
        setPadding(0, 0, 0, 0);
        if (attrs != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, R.styleable.ImageFilterView);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == R.styleable.ImageFilterView_round) {
                    if (Build.VERSION.SDK_INT >= 21) {
                        setRound(obtainStyledAttributes.getDimension(index, 0.0f));
                    }
                } else if (index == R.styleable.ImageFilterView_roundPercent && Build.VERSION.SDK_INT >= 21) {
                    setRoundPercent(obtainStyledAttributes.getFloat(index, 0.0f));
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z3;
        if (Build.VERSION.SDK_INT >= 21 || this.f3296e == 0.0f || this.f3297f == null) {
            z3 = false;
        } else {
            z3 = true;
            canvas.save();
            canvas.clipPath(this.f3297f);
        }
        super.draw(canvas);
        if (z3) {
            canvas.restore();
        }
    }

    public float getRound() {
        return this.f3296e;
    }

    public float getRoundPercent() {
        return this.f3295d;
    }

    @RequiresApi(21)
    public void setRound(float round) {
        if (Float.isNaN(round)) {
            this.f3296e = round;
            float f4 = this.f3295d;
            this.f3295d = -1.0f;
            setRoundPercent(f4);
            return;
        }
        boolean z3 = this.f3296e != round;
        this.f3296e = round;
        if (round != 0.0f) {
            if (this.f3297f == null) {
                this.f3297f = new Path();
            }
            if (this.f3299h == null) {
                this.f3299h = new RectF();
            }
            if (Build.VERSION.SDK_INT >= 21) {
                if (this.f3298g == null) {
                    ViewOutlineProvider viewOutlineProvider = new ViewOutlineProvider() { // from class: androidx.constraintlayout.utils.widget.MotionButton.2
                        @Override // android.view.ViewOutlineProvider
                        public void getOutline(View view, Outline outline) {
                            outline.setRoundRect(0, 0, MotionButton.this.getWidth(), MotionButton.this.getHeight(), MotionButton.this.f3296e);
                        }
                    };
                    this.f3298g = viewOutlineProvider;
                    setOutlineProvider(viewOutlineProvider);
                }
                setClipToOutline(true);
            }
            this.f3299h.set(0.0f, 0.0f, getWidth(), getHeight());
            this.f3297f.reset();
            Path path = this.f3297f;
            RectF rectF = this.f3299h;
            float f5 = this.f3296e;
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
        boolean z3 = this.f3295d != round;
        this.f3295d = round;
        if (round != 0.0f) {
            if (this.f3297f == null) {
                this.f3297f = new Path();
            }
            if (this.f3299h == null) {
                this.f3299h = new RectF();
            }
            if (Build.VERSION.SDK_INT >= 21) {
                if (this.f3298g == null) {
                    ViewOutlineProvider viewOutlineProvider = new ViewOutlineProvider() { // from class: androidx.constraintlayout.utils.widget.MotionButton.1
                        @Override // android.view.ViewOutlineProvider
                        public void getOutline(View view, Outline outline) {
                            int width = MotionButton.this.getWidth();
                            int height = MotionButton.this.getHeight();
                            outline.setRoundRect(0, 0, width, height, (Math.min(width, height) * MotionButton.this.f3295d) / 2.0f);
                        }
                    };
                    this.f3298g = viewOutlineProvider;
                    setOutlineProvider(viewOutlineProvider);
                }
                setClipToOutline(true);
            }
            int width = getWidth();
            int height = getHeight();
            float min = (Math.min(width, height) * this.f3295d) / 2.0f;
            this.f3299h.set(0.0f, 0.0f, width, height);
            this.f3297f.reset();
            this.f3297f.addRoundRect(this.f3299h, min, min, Path.Direction.CW);
        } else if (Build.VERSION.SDK_INT >= 21) {
            setClipToOutline(false);
        }
        if (!z3 || Build.VERSION.SDK_INT < 21) {
            return;
        }
        invalidateOutline();
    }

    public MotionButton(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f3295d = 0.0f;
        this.f3296e = Float.NaN;
        c(context, attrs);
    }

    public MotionButton(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f3295d = 0.0f;
        this.f3296e = Float.NaN;
        c(context, attrs);
    }
}
