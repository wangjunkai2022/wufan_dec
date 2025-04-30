package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.R;
import androidx.core.widget.NestedScrollView;
import org.xmlpull.v1.XmlPullParser;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class TouchResponse {
    public static final int COMPLETE_MODE_CONTINUOUS_VELOCITY = 0;
    public static final int COMPLETE_MODE_SPRING = 1;
    private static final String G = "TouchResponse";
    private static final boolean H = false;
    private static final int I = 1000;
    private static final float J = 1.0E-7f;
    private static final float[][] K = {new float[]{0.5f, 0.0f}, new float[]{0.0f, 0.5f}, new float[]{1.0f, 0.5f}, new float[]{0.5f, 1.0f}, new float[]{0.5f, 0.5f}, new float[]{0.0f, 0.5f}, new float[]{1.0f, 0.5f}};
    private static final float[][] L = {new float[]{0.0f, -1.0f}, new float[]{0.0f, 1.0f}, new float[]{-1.0f, 0.0f}, new float[]{1.0f, 0.0f}, new float[]{-1.0f, 0.0f}, new float[]{1.0f, 0.0f}};
    private static final int M = 0;
    private static final int N = 1;
    private static final int O = 2;
    private static final int P = 3;
    private static final int Q = 4;
    private static final int R = 5;
    private static final int S = 0;
    private static final int T = 1;
    private static final int U = 2;
    private static final int V = 3;
    private static final int W = 4;
    private static final int X = 5;
    private static final int Y = 6;
    static final int Z = 1;

    /* renamed from: a0  reason: collision with root package name */
    static final int f3157a0 = 2;

    /* renamed from: b0  reason: collision with root package name */
    static final int f3158b0 = 4;
    private float A;
    private float B;
    private float C;
    private float D;
    private int E;
    private int F;

    /* renamed from: a  reason: collision with root package name */
    private int f3159a;

    /* renamed from: b  reason: collision with root package name */
    private int f3160b;

    /* renamed from: c  reason: collision with root package name */
    private int f3161c;

    /* renamed from: d  reason: collision with root package name */
    private int f3162d;

    /* renamed from: e  reason: collision with root package name */
    private int f3163e;

    /* renamed from: f  reason: collision with root package name */
    private int f3164f;

    /* renamed from: g  reason: collision with root package name */
    private float f3165g;

    /* renamed from: h  reason: collision with root package name */
    private float f3166h;

    /* renamed from: i  reason: collision with root package name */
    float f3167i;

    /* renamed from: j  reason: collision with root package name */
    float f3168j;

    /* renamed from: k  reason: collision with root package name */
    private int f3169k;

    /* renamed from: l  reason: collision with root package name */
    boolean f3170l;

    /* renamed from: m  reason: collision with root package name */
    private float f3171m;

    /* renamed from: n  reason: collision with root package name */
    private float f3172n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f3173o;

    /* renamed from: p  reason: collision with root package name */
    private float[] f3174p;

    /* renamed from: q  reason: collision with root package name */
    private int[] f3175q;

    /* renamed from: r  reason: collision with root package name */
    private float f3176r;

    /* renamed from: s  reason: collision with root package name */
    private float f3177s;

    /* renamed from: t  reason: collision with root package name */
    private final MotionLayout f3178t;

    /* renamed from: u  reason: collision with root package name */
    private float f3179u;

    /* renamed from: v  reason: collision with root package name */
    private float f3180v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f3181w;

    /* renamed from: x  reason: collision with root package name */
    private float f3182x;

    /* renamed from: y  reason: collision with root package name */
    private int f3183y;

    /* renamed from: z  reason: collision with root package name */
    private float f3184z;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TouchResponse(Context context, MotionLayout layout, XmlPullParser parser) {
        this.f3159a = 0;
        this.f3160b = 0;
        this.f3161c = 0;
        this.f3162d = -1;
        this.f3163e = -1;
        this.f3164f = -1;
        this.f3165g = 0.5f;
        this.f3166h = 0.5f;
        this.f3167i = 0.5f;
        this.f3168j = 0.5f;
        this.f3169k = -1;
        this.f3170l = false;
        this.f3171m = 0.0f;
        this.f3172n = 1.0f;
        this.f3173o = false;
        this.f3174p = new float[2];
        this.f3175q = new int[2];
        this.f3179u = 4.0f;
        this.f3180v = 1.2f;
        this.f3181w = true;
        this.f3182x = 1.0f;
        this.f3183y = 0;
        this.f3184z = 10.0f;
        this.A = 10.0f;
        this.B = 1.0f;
        this.C = Float.NaN;
        this.D = Float.NaN;
        this.E = 0;
        this.F = 0;
        this.f3178t = layout;
        c(context, Xml.asAttributeSet(parser));
    }

    private void b(TypedArray a4) {
        int indexCount = a4.getIndexCount();
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = a4.getIndex(i2);
            if (index == R.styleable.OnSwipe_touchAnchorId) {
                this.f3162d = a4.getResourceId(index, this.f3162d);
            } else if (index == R.styleable.OnSwipe_touchAnchorSide) {
                int i4 = a4.getInt(index, this.f3159a);
                this.f3159a = i4;
                float[][] fArr = K;
                this.f3166h = fArr[i4][0];
                this.f3165g = fArr[i4][1];
            } else if (index == R.styleable.OnSwipe_dragDirection) {
                int i5 = a4.getInt(index, this.f3160b);
                this.f3160b = i5;
                float[][] fArr2 = L;
                if (i5 < fArr2.length) {
                    this.f3171m = fArr2[i5][0];
                    this.f3172n = fArr2[i5][1];
                } else {
                    this.f3172n = Float.NaN;
                    this.f3171m = Float.NaN;
                    this.f3170l = true;
                }
            } else if (index == R.styleable.OnSwipe_maxVelocity) {
                this.f3179u = a4.getFloat(index, this.f3179u);
            } else if (index == R.styleable.OnSwipe_maxAcceleration) {
                this.f3180v = a4.getFloat(index, this.f3180v);
            } else if (index == R.styleable.OnSwipe_moveWhenScrollAtTop) {
                this.f3181w = a4.getBoolean(index, this.f3181w);
            } else if (index == R.styleable.OnSwipe_dragScale) {
                this.f3182x = a4.getFloat(index, this.f3182x);
            } else if (index == R.styleable.OnSwipe_dragThreshold) {
                this.f3184z = a4.getFloat(index, this.f3184z);
            } else if (index == R.styleable.OnSwipe_touchRegionId) {
                this.f3163e = a4.getResourceId(index, this.f3163e);
            } else if (index == R.styleable.OnSwipe_onTouchUp) {
                this.f3161c = a4.getInt(index, this.f3161c);
            } else if (index == R.styleable.OnSwipe_nestedScrollFlags) {
                this.f3183y = a4.getInteger(index, 0);
            } else if (index == R.styleable.OnSwipe_limitBoundsTo) {
                this.f3164f = a4.getResourceId(index, 0);
            } else if (index == R.styleable.OnSwipe_rotationCenterId) {
                this.f3169k = a4.getResourceId(index, this.f3169k);
            } else if (index == R.styleable.OnSwipe_springDamping) {
                this.A = a4.getFloat(index, this.A);
            } else if (index == R.styleable.OnSwipe_springMass) {
                this.B = a4.getFloat(index, this.B);
            } else if (index == R.styleable.OnSwipe_springStiffness) {
                this.C = a4.getFloat(index, this.C);
            } else if (index == R.styleable.OnSwipe_springStopThreshold) {
                this.D = a4.getFloat(index, this.D);
            } else if (index == R.styleable.OnSwipe_springBoundary) {
                this.E = a4.getInt(index, this.E);
            } else if (index == R.styleable.OnSwipe_autoCompleteMode) {
                this.F = a4.getInt(index, this.F);
            }
        }
    }

    private void c(Context context, AttributeSet attrs) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.OnSwipe);
        b(obtainStyledAttributes);
        obtainStyledAttributes.recycle();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float a(float dx, float dy) {
        return (dx * this.f3171m) + (dy * this.f3172n);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RectF d(ViewGroup layout, RectF rect) {
        View findViewById;
        int i2 = this.f3164f;
        if (i2 == -1 || (findViewById = layout.findViewById(i2)) == null) {
            return null;
        }
        rect.set(findViewById.getLeft(), findViewById.getTop(), findViewById.getRight(), findViewById.getBottom());
        return rect;
    }

    int e() {
        return this.f3164f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float f() {
        return this.f3180v;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean g() {
        return this.f3181w;
    }

    public int getAnchorId() {
        return this.f3162d;
    }

    public int getAutoCompleteMode() {
        return this.F;
    }

    public int getFlags() {
        return this.f3183y;
    }

    public float getMaxVelocity() {
        return this.f3179u;
    }

    public int getSpringBoundary() {
        return this.E;
    }

    public float getSpringDamping() {
        return this.A;
    }

    public float getSpringMass() {
        return this.B;
    }

    public float getSpringStiffness() {
        return this.C;
    }

    public float getSpringStopThreshold() {
        return this.D;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float h(float dx, float dy) {
        this.f3178t.g0(this.f3162d, this.f3178t.getProgress(), this.f3166h, this.f3165g, this.f3174p);
        float f4 = this.f3171m;
        if (f4 != 0.0f) {
            float[] fArr = this.f3174p;
            if (fArr[0] == 0.0f) {
                fArr[0] = 1.0E-7f;
            }
            return (dx * f4) / fArr[0];
        }
        float[] fArr2 = this.f3174p;
        if (fArr2[1] == 0.0f) {
            fArr2[1] = 1.0E-7f;
        }
        return (dy * this.f3172n) / fArr2[1];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RectF i(ViewGroup layout, RectF rect) {
        View findViewById;
        int i2 = this.f3163e;
        if (i2 == -1 || (findViewById = layout.findViewById(i2)) == null) {
            return null;
        }
        rect.set(findViewById.getLeft(), findViewById.getTop(), findViewById.getRight(), findViewById.getBottom());
        return rect;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int j() {
        return this.f3163e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean k() {
        return this.f3173o;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l(MotionEvent event, MotionLayout.MotionTracker velocityTracker, int currentState, MotionScene motionScene) {
        float f4;
        int i2;
        float f5;
        if (this.f3170l) {
            m(event, velocityTracker, currentState, motionScene);
            return;
        }
        velocityTracker.addMovement(event);
        int action = event.getAction();
        if (action == 0) {
            this.f3176r = event.getRawX();
            this.f3177s = event.getRawY();
            this.f3173o = false;
        } else if (action == 1) {
            this.f3173o = false;
            velocityTracker.computeCurrentVelocity(1000);
            float xVelocity = velocityTracker.getXVelocity();
            float yVelocity = velocityTracker.getYVelocity();
            float progress = this.f3178t.getProgress();
            int i4 = this.f3162d;
            if (i4 != -1) {
                this.f3178t.g0(i4, progress, this.f3166h, this.f3165g, this.f3174p);
            } else {
                float min = Math.min(this.f3178t.getWidth(), this.f3178t.getHeight());
                float[] fArr = this.f3174p;
                fArr[1] = this.f3172n * min;
                fArr[0] = min * this.f3171m;
            }
            float f6 = this.f3171m;
            float[] fArr2 = this.f3174p;
            float f7 = fArr2[0];
            float f8 = fArr2[1];
            if (f6 != 0.0f) {
                f4 = xVelocity / fArr2[0];
            } else {
                f4 = yVelocity / fArr2[1];
            }
            float f9 = !Float.isNaN(f4) ? (f4 / 3.0f) + progress : progress;
            if (f9 == 0.0f || f9 == 1.0f || (i2 = this.f3161c) == 3) {
                if (0.0f >= f9 || 1.0f <= f9) {
                    this.f3178t.setState(MotionLayout.TransitionState.FINISHED);
                    return;
                }
                return;
            }
            float f10 = ((double) f9) < 0.5d ? 0.0f : 1.0f;
            if (i2 == 6) {
                if (progress + f4 < 0.0f) {
                    f4 = Math.abs(f4);
                }
                f10 = 1.0f;
            }
            if (this.f3161c == 7) {
                if (progress + f4 > 1.0f) {
                    f4 = -Math.abs(f4);
                }
                f10 = 0.0f;
            }
            this.f3178t.touchAnimateTo(this.f3161c, f10, f4);
            if (0.0f >= progress || 1.0f <= progress) {
                this.f3178t.setState(MotionLayout.TransitionState.FINISHED);
            }
        } else if (action != 2) {
        } else {
            float rawY = event.getRawY() - this.f3177s;
            float rawX = event.getRawX() - this.f3176r;
            if (Math.abs((this.f3171m * rawX) + (this.f3172n * rawY)) > this.f3184z || this.f3173o) {
                float progress2 = this.f3178t.getProgress();
                if (!this.f3173o) {
                    this.f3173o = true;
                    this.f3178t.setProgress(progress2);
                }
                int i5 = this.f3162d;
                if (i5 != -1) {
                    this.f3178t.g0(i5, progress2, this.f3166h, this.f3165g, this.f3174p);
                } else {
                    float min2 = Math.min(this.f3178t.getWidth(), this.f3178t.getHeight());
                    float[] fArr3 = this.f3174p;
                    fArr3[1] = this.f3172n * min2;
                    fArr3[0] = min2 * this.f3171m;
                }
                float f11 = this.f3171m;
                float[] fArr4 = this.f3174p;
                if (Math.abs(((f11 * fArr4[0]) + (this.f3172n * fArr4[1])) * this.f3182x) < 0.01d) {
                    float[] fArr5 = this.f3174p;
                    fArr5[0] = 0.01f;
                    fArr5[1] = 0.01f;
                }
                if (this.f3171m != 0.0f) {
                    f5 = rawX / this.f3174p[0];
                } else {
                    f5 = rawY / this.f3174p[1];
                }
                float max = Math.max(Math.min(progress2 + f5, 1.0f), 0.0f);
                if (this.f3161c == 6) {
                    max = Math.max(max, 0.01f);
                }
                if (this.f3161c == 7) {
                    max = Math.min(max, 0.99f);
                }
                float progress3 = this.f3178t.getProgress();
                if (max != progress3) {
                    if (progress3 == 0.0f || progress3 == 1.0f) {
                        this.f3178t.a0(progress3 == 0.0f);
                    }
                    this.f3178t.setProgress(max);
                    velocityTracker.computeCurrentVelocity(1000);
                    this.f3178t.J = this.f3171m != 0.0f ? velocityTracker.getXVelocity() / this.f3174p[0] : velocityTracker.getYVelocity() / this.f3174p[1];
                } else {
                    this.f3178t.J = 0.0f;
                }
                this.f3176r = event.getRawX();
                this.f3177s = event.getRawY();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x026e  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0292  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x02b0  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x02bd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void m(android.view.MotionEvent r24, androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker r25, int r26, androidx.constraintlayout.motion.widget.MotionScene r27) {
        /*
            Method dump skipped, instructions count: 835
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.TouchResponse.m(android.view.MotionEvent, androidx.constraintlayout.motion.widget.MotionLayout$MotionTracker, int, androidx.constraintlayout.motion.widget.MotionScene):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n(float dx, float dy) {
        float f4;
        float progress = this.f3178t.getProgress();
        if (!this.f3173o) {
            this.f3173o = true;
            this.f3178t.setProgress(progress);
        }
        this.f3178t.g0(this.f3162d, progress, this.f3166h, this.f3165g, this.f3174p);
        float f5 = this.f3171m;
        float[] fArr = this.f3174p;
        if (Math.abs((f5 * fArr[0]) + (this.f3172n * fArr[1])) < 0.01d) {
            float[] fArr2 = this.f3174p;
            fArr2[0] = 0.01f;
            fArr2[1] = 0.01f;
        }
        float f6 = this.f3171m;
        if (f6 != 0.0f) {
            f4 = (dx * f6) / this.f3174p[0];
        } else {
            f4 = (dy * this.f3172n) / this.f3174p[1];
        }
        float max = Math.max(Math.min(progress + f4, 1.0f), 0.0f);
        if (max != this.f3178t.getProgress()) {
            this.f3178t.setProgress(max);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o(float dx, float dy) {
        float f4;
        this.f3173o = false;
        float progress = this.f3178t.getProgress();
        this.f3178t.g0(this.f3162d, progress, this.f3166h, this.f3165g, this.f3174p);
        float f5 = this.f3171m;
        float[] fArr = this.f3174p;
        float f6 = fArr[0];
        float f7 = this.f3172n;
        float f8 = fArr[1];
        if (f5 != 0.0f) {
            f4 = (dx * f5) / fArr[0];
        } else {
            f4 = (dy * f7) / fArr[1];
        }
        if (!Float.isNaN(f4)) {
            progress += f4 / 3.0f;
        }
        if (progress != 0.0f) {
            boolean z3 = progress != 1.0f;
            int i2 = this.f3161c;
            if ((i2 != 3) && z3) {
                this.f3178t.touchAnimateTo(i2, ((double) progress) >= 0.5d ? 1.0f : 0.0f, f4);
            }
        }
    }

    void p(int autoCompleteMode) {
        this.F = autoCompleteMode;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void q(float lastTouchX, float lastTouchY) {
        this.f3176r = lastTouchX;
        this.f3177s = lastTouchY;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void r(float lastTouchX, float lastTouchY) {
        this.f3176r = lastTouchX;
        this.f3177s = lastTouchY;
        this.f3173o = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void s() {
        View view;
        int i2 = this.f3162d;
        if (i2 != -1) {
            view = this.f3178t.findViewById(i2);
            if (view == null) {
                StringBuilder sb = new StringBuilder();
                sb.append("cannot find TouchAnchorId @id/");
                sb.append(Debug.getName(this.f3178t.getContext(), this.f3162d));
            }
        } else {
            view = null;
        }
        if (view instanceof NestedScrollView) {
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            nestedScrollView.setOnTouchListener(new View.OnTouchListener(this) { // from class: androidx.constraintlayout.motion.widget.TouchResponse.1
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view2, MotionEvent motionEvent) {
                    return false;
                }
            });
            nestedScrollView.setOnScrollChangeListener(new NestedScrollView.OnScrollChangeListener(this) { // from class: androidx.constraintlayout.motion.widget.TouchResponse.2
                @Override // androidx.core.widget.NestedScrollView.OnScrollChangeListener
                public void onScrollChange(NestedScrollView v3, int scrollX, int scrollY, int oldScrollX, int oldScrollY) {
                }
            });
        }
    }

    public void setAnchorId(int id) {
        this.f3162d = id;
    }

    public void setMaxAcceleration(float acceleration) {
        this.f3180v = acceleration;
    }

    public void setMaxVelocity(float velocity) {
        this.f3179u = velocity;
    }

    public void setRTL(boolean rtl) {
        if (rtl) {
            float[][] fArr = L;
            fArr[4] = fArr[3];
            fArr[5] = fArr[2];
            float[][] fArr2 = K;
            fArr2[5] = fArr2[2];
            fArr2[6] = fArr2[1];
        } else {
            float[][] fArr3 = L;
            fArr3[4] = fArr3[2];
            fArr3[5] = fArr3[3];
            float[][] fArr4 = K;
            fArr4[5] = fArr4[1];
            fArr4[6] = fArr4[2];
        }
        float[][] fArr5 = K;
        int i2 = this.f3159a;
        this.f3166h = fArr5[i2][0];
        this.f3165g = fArr5[i2][1];
        int i4 = this.f3160b;
        float[][] fArr6 = L;
        if (i4 >= fArr6.length) {
            return;
        }
        this.f3171m = fArr6[i4][0];
        this.f3172n = fArr6[i4][1];
    }

    public void setTouchAnchorLocation(float x3, float y3) {
        this.f3166h = x3;
        this.f3165g = y3;
    }

    public void setTouchUpMode(int touchUpMode) {
        this.f3161c = touchUpMode;
    }

    public String toString() {
        if (Float.isNaN(this.f3171m)) {
            return Key.ROTATION;
        }
        return this.f3171m + " , " + this.f3172n;
    }

    public TouchResponse(MotionLayout layout, OnSwipe onSwipe) {
        this.f3159a = 0;
        this.f3160b = 0;
        this.f3161c = 0;
        this.f3162d = -1;
        this.f3163e = -1;
        this.f3164f = -1;
        this.f3165g = 0.5f;
        this.f3166h = 0.5f;
        this.f3167i = 0.5f;
        this.f3168j = 0.5f;
        this.f3169k = -1;
        this.f3170l = false;
        this.f3171m = 0.0f;
        this.f3172n = 1.0f;
        this.f3173o = false;
        this.f3174p = new float[2];
        this.f3175q = new int[2];
        this.f3179u = 4.0f;
        this.f3180v = 1.2f;
        this.f3181w = true;
        this.f3182x = 1.0f;
        this.f3183y = 0;
        this.f3184z = 10.0f;
        this.A = 10.0f;
        this.B = 1.0f;
        this.C = Float.NaN;
        this.D = Float.NaN;
        this.E = 0;
        this.F = 0;
        this.f3178t = layout;
        this.f3162d = onSwipe.getTouchAnchorId();
        int touchAnchorSide = onSwipe.getTouchAnchorSide();
        this.f3159a = touchAnchorSide;
        if (touchAnchorSide != -1) {
            float[][] fArr = K;
            this.f3166h = fArr[touchAnchorSide][0];
            this.f3165g = fArr[touchAnchorSide][1];
        }
        int dragDirection = onSwipe.getDragDirection();
        this.f3160b = dragDirection;
        float[][] fArr2 = L;
        if (dragDirection < fArr2.length) {
            this.f3171m = fArr2[dragDirection][0];
            this.f3172n = fArr2[dragDirection][1];
        } else {
            this.f3172n = Float.NaN;
            this.f3171m = Float.NaN;
            this.f3170l = true;
        }
        this.f3179u = onSwipe.getMaxVelocity();
        this.f3180v = onSwipe.getMaxAcceleration();
        this.f3181w = onSwipe.getMoveWhenScrollAtTop();
        this.f3182x = onSwipe.getDragScale();
        this.f3184z = onSwipe.getDragThreshold();
        this.f3163e = onSwipe.getTouchRegionId();
        this.f3161c = onSwipe.getOnTouchUp();
        this.f3183y = onSwipe.getNestedScrollFlags();
        this.f3164f = onSwipe.getLimitBoundsTo();
        this.f3169k = onSwipe.getRotationCenterId();
        this.E = onSwipe.getSpringBoundary();
        this.A = onSwipe.getSpringDamping();
        this.B = onSwipe.getSpringMass();
        this.C = onSwipe.getSpringStiffness();
        this.D = onSwipe.getSpringStopThreshold();
        this.F = onSwipe.getAutoCompleteMode();
    }
}
