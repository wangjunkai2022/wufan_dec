package androidx.constraintlayout.motion.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.view.Display;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Flow;
import androidx.constraintlayout.core.widgets.Guideline;
import androidx.constraintlayout.core.widgets.Helper;
import androidx.constraintlayout.core.widgets.HelperWidget;
import androidx.constraintlayout.core.widgets.Placeholder;
import androidx.constraintlayout.core.widgets.VirtualLayout;
import androidx.constraintlayout.motion.utils.StopLogic;
import androidx.constraintlayout.motion.utils.ViewState;
import androidx.constraintlayout.motion.widget.MotionScene;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintLayoutStates;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.Constraints;
import androidx.constraintlayout.widget.R;
import androidx.constraintlayout.widget.StateSet;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.NestedScrollingParent3;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes.dex */
public class MotionLayout extends ConstraintLayout implements NestedScrollingParent3 {
    public static final int DEBUG_SHOW_NONE = 0;
    public static final int DEBUG_SHOW_PATH = 2;
    public static final int DEBUG_SHOW_PROGRESS = 1;
    public static boolean IS_IN_EDIT_MODE = false;
    static final String J1 = "MotionLayout";
    private static final boolean K1 = false;
    static final int L1 = 50;
    private static final float M1 = 1.0E-5f;
    public static final int TOUCH_UP_COMPLETE = 0;
    public static final int TOUCH_UP_COMPLETE_TO_END = 2;
    public static final int TOUCH_UP_COMPLETE_TO_START = 1;
    public static final int TOUCH_UP_DECELERATE = 4;
    public static final int TOUCH_UP_DECELERATE_AND_COMPLETE = 5;
    public static final int TOUCH_UP_NEVER_TO_END = 7;
    public static final int TOUCH_UP_NEVER_TO_START = 6;
    public static final int TOUCH_UP_STOP = 3;
    public static final int VELOCITY_LAYOUT = 1;
    public static final int VELOCITY_POST_LAYOUT = 0;
    public static final int VELOCITY_STATIC_LAYOUT = 3;
    public static final int VELOCITY_STATIC_POST_LAYOUT = 2;
    boolean A0;
    Rect A1;
    boolean B0;
    private boolean B1;
    private TransitionListener C0;
    TransitionState C1;
    private float D0;
    Model D1;
    private float E0;
    private boolean E1;
    int F0;
    private RectF F1;
    MotionScene G;
    DevModeDraw G0;
    private View G1;
    Interpolator H;
    private boolean H0;
    private Matrix H1;
    Interpolator I;
    private StopLogic I0;
    ArrayList<Integer> I1;
    float J;
    private DecelerateInterpolator J0;
    private int K;
    private DesignTool K0;
    boolean L0;
    int M0;
    int N0;
    int O0;
    int P0;
    boolean Q0;
    float R0;
    float S0;
    long T0;
    float U0;
    private boolean V0;
    private ArrayList<MotionHelper> W0;
    private ArrayList<MotionHelper> X0;
    private ArrayList<MotionHelper> Y0;
    private CopyOnWriteArrayList<TransitionListener> Z0;

    /* renamed from: a1  reason: collision with root package name */
    private int f2973a1;

    /* renamed from: b1  reason: collision with root package name */
    private long f2974b1;

    /* renamed from: c1  reason: collision with root package name */
    private float f2975c1;

    /* renamed from: d1  reason: collision with root package name */
    private int f2976d1;

    /* renamed from: e1  reason: collision with root package name */
    private float f2977e1;

    /* renamed from: f1  reason: collision with root package name */
    boolean f2978f1;

    /* renamed from: g1  reason: collision with root package name */
    protected boolean f2979g1;

    /* renamed from: h1  reason: collision with root package name */
    int f2980h1;

    /* renamed from: i1  reason: collision with root package name */
    int f2981i1;

    /* renamed from: j1  reason: collision with root package name */
    int f2982j1;

    /* renamed from: k1  reason: collision with root package name */
    int f2983k1;

    /* renamed from: l1  reason: collision with root package name */
    int f2984l1;

    /* renamed from: m1  reason: collision with root package name */
    int f2985m1;

    /* renamed from: n0  reason: collision with root package name */
    int f2986n0;

    /* renamed from: n1  reason: collision with root package name */
    float f2987n1;

    /* renamed from: o0  reason: collision with root package name */
    private int f2988o0;

    /* renamed from: o1  reason: collision with root package name */
    private KeyCache f2989o1;

    /* renamed from: p0  reason: collision with root package name */
    private int f2990p0;

    /* renamed from: p1  reason: collision with root package name */
    private boolean f2991p1;

    /* renamed from: q0  reason: collision with root package name */
    private int f2992q0;

    /* renamed from: q1  reason: collision with root package name */
    private StateCache f2993q1;

    /* renamed from: r0  reason: collision with root package name */
    private boolean f2994r0;

    /* renamed from: r1  reason: collision with root package name */
    private Runnable f2995r1;

    /* renamed from: s0  reason: collision with root package name */
    HashMap<View, MotionController> f2996s0;

    /* renamed from: s1  reason: collision with root package name */
    private int[] f2997s1;

    /* renamed from: t0  reason: collision with root package name */
    private long f2998t0;

    /* renamed from: t1  reason: collision with root package name */
    int f2999t1;

    /* renamed from: u0  reason: collision with root package name */
    private float f3000u0;

    /* renamed from: u1  reason: collision with root package name */
    private boolean f3001u1;

    /* renamed from: v0  reason: collision with root package name */
    float f3002v0;

    /* renamed from: v1  reason: collision with root package name */
    int f3003v1;

    /* renamed from: w0  reason: collision with root package name */
    float f3004w0;

    /* renamed from: w1  reason: collision with root package name */
    HashMap<View, ViewState> f3005w1;

    /* renamed from: x0  reason: collision with root package name */
    private long f3006x0;

    /* renamed from: x1  reason: collision with root package name */
    private int f3007x1;

    /* renamed from: y0  reason: collision with root package name */
    float f3008y0;

    /* renamed from: y1  reason: collision with root package name */
    private int f3009y1;

    /* renamed from: z0  reason: collision with root package name */
    private boolean f3010z0;

    /* renamed from: z1  reason: collision with root package name */
    private int f3011z1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.MotionLayout$5  reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass5 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f3016a;

        static {
            int[] iArr = new int[TransitionState.values().length];
            f3016a = iArr;
            try {
                iArr[TransitionState.UNDEFINED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3016a[TransitionState.SETUP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3016a[TransitionState.MOVING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3016a[TransitionState.FINISHED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes.dex */
    class DecelerateInterpolator extends MotionInterpolator {

        /* renamed from: a  reason: collision with root package name */
        float f3017a = 0.0f;

        /* renamed from: b  reason: collision with root package name */
        float f3018b = 0.0f;

        /* renamed from: c  reason: collision with root package name */
        float f3019c;

        DecelerateInterpolator() {
        }

        public void config(float velocity, float position, float maxAcceleration) {
            this.f3017a = velocity;
            this.f3018b = position;
            this.f3019c = maxAcceleration;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionInterpolator, android.animation.TimeInterpolator
        public float getInterpolation(float time) {
            float f4;
            float f5;
            float f6 = this.f3017a;
            if (f6 > 0.0f) {
                float f7 = this.f3019c;
                if (f6 / f7 < time) {
                    time = f6 / f7;
                }
                MotionLayout.this.J = f6 - (f7 * time);
                f4 = (f6 * time) - (((f7 * time) * time) / 2.0f);
                f5 = this.f3018b;
            } else {
                float f8 = this.f3019c;
                if ((-f6) / f8 < time) {
                    time = (-f6) / f8;
                }
                MotionLayout.this.J = (f8 * time) + f6;
                f4 = (f6 * time) + (((f8 * time) * time) / 2.0f);
                f5 = this.f3018b;
            }
            return f4 + f5;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionInterpolator
        public float getVelocity() {
            return MotionLayout.this.J;
        }
    }

    /* loaded from: classes.dex */
    private class DevModeDraw {

        /* renamed from: v  reason: collision with root package name */
        private static final int f3021v = 16;

        /* renamed from: a  reason: collision with root package name */
        float[] f3022a;

        /* renamed from: b  reason: collision with root package name */
        int[] f3023b;

        /* renamed from: c  reason: collision with root package name */
        float[] f3024c;

        /* renamed from: d  reason: collision with root package name */
        Path f3025d;

        /* renamed from: e  reason: collision with root package name */
        Paint f3026e;

        /* renamed from: f  reason: collision with root package name */
        Paint f3027f;

        /* renamed from: g  reason: collision with root package name */
        Paint f3028g;

        /* renamed from: h  reason: collision with root package name */
        Paint f3029h;

        /* renamed from: i  reason: collision with root package name */
        Paint f3030i;

        /* renamed from: j  reason: collision with root package name */
        private float[] f3031j;

        /* renamed from: p  reason: collision with root package name */
        DashPathEffect f3037p;

        /* renamed from: q  reason: collision with root package name */
        int f3038q;

        /* renamed from: t  reason: collision with root package name */
        int f3041t;

        /* renamed from: k  reason: collision with root package name */
        final int f3032k = -21965;

        /* renamed from: l  reason: collision with root package name */
        final int f3033l = -2067046;

        /* renamed from: m  reason: collision with root package name */
        final int f3034m = -13391360;

        /* renamed from: n  reason: collision with root package name */
        final int f3035n = 1996488704;

        /* renamed from: o  reason: collision with root package name */
        final int f3036o = 10;

        /* renamed from: r  reason: collision with root package name */
        Rect f3039r = new Rect();

        /* renamed from: s  reason: collision with root package name */
        boolean f3040s = false;

        public DevModeDraw() {
            this.f3041t = 1;
            Paint paint = new Paint();
            this.f3026e = paint;
            paint.setAntiAlias(true);
            this.f3026e.setColor(-21965);
            this.f3026e.setStrokeWidth(2.0f);
            this.f3026e.setStyle(Paint.Style.STROKE);
            Paint paint2 = new Paint();
            this.f3027f = paint2;
            paint2.setAntiAlias(true);
            this.f3027f.setColor(-2067046);
            this.f3027f.setStrokeWidth(2.0f);
            this.f3027f.setStyle(Paint.Style.STROKE);
            Paint paint3 = new Paint();
            this.f3028g = paint3;
            paint3.setAntiAlias(true);
            this.f3028g.setColor(-13391360);
            this.f3028g.setStrokeWidth(2.0f);
            this.f3028g.setStyle(Paint.Style.STROKE);
            Paint paint4 = new Paint();
            this.f3029h = paint4;
            paint4.setAntiAlias(true);
            this.f3029h.setColor(-13391360);
            this.f3029h.setTextSize(MotionLayout.this.getContext().getResources().getDisplayMetrics().density * 12.0f);
            this.f3031j = new float[8];
            Paint paint5 = new Paint();
            this.f3030i = paint5;
            paint5.setAntiAlias(true);
            DashPathEffect dashPathEffect = new DashPathEffect(new float[]{4.0f, 8.0f}, 0.0f);
            this.f3037p = dashPathEffect;
            this.f3028g.setPathEffect(dashPathEffect);
            this.f3024c = new float[100];
            this.f3023b = new int[50];
            if (this.f3040s) {
                this.f3026e.setStrokeWidth(8.0f);
                this.f3030i.setStrokeWidth(8.0f);
                this.f3027f.setStrokeWidth(8.0f);
                this.f3041t = 4;
            }
        }

        private void a(Canvas canvas) {
            canvas.drawLines(this.f3022a, this.f3026e);
        }

        private void b(Canvas canvas) {
            boolean z3 = false;
            boolean z4 = false;
            for (int i2 = 0; i2 < this.f3038q; i2++) {
                int[] iArr = this.f3023b;
                if (iArr[i2] == 1) {
                    z3 = true;
                }
                if (iArr[i2] == 0) {
                    z4 = true;
                }
            }
            if (z3) {
                e(canvas);
            }
            if (z4) {
                c(canvas);
            }
        }

        private void c(Canvas canvas) {
            float[] fArr = this.f3022a;
            float f4 = fArr[0];
            float f5 = fArr[1];
            float f6 = fArr[fArr.length - 2];
            float f7 = fArr[fArr.length - 1];
            canvas.drawLine(Math.min(f4, f6), Math.max(f5, f7), Math.max(f4, f6), Math.max(f5, f7), this.f3028g);
            canvas.drawLine(Math.min(f4, f6), Math.min(f5, f7), Math.min(f4, f6), Math.max(f5, f7), this.f3028g);
        }

        private void d(Canvas canvas, float x3, float y3) {
            double d4;
            double d5;
            float[] fArr = this.f3022a;
            float f4 = fArr[0];
            float f5 = fArr[1];
            float f6 = fArr[fArr.length - 2];
            float f7 = fArr[fArr.length - 1];
            float min = Math.min(f4, f6);
            float max = Math.max(f5, f7);
            float min2 = x3 - Math.min(f4, f6);
            float max2 = Math.max(f5, f7) - y3;
            StringBuilder sb = new StringBuilder();
            sb.append("");
            Double.isNaN((min2 * 100.0f) / Math.abs(f6 - f4));
            sb.append(((int) (d4 + 0.5d)) / 100.0f);
            String sb2 = sb.toString();
            k(sb2, this.f3029h);
            canvas.drawText(sb2, ((min2 / 2.0f) - (this.f3039r.width() / 2)) + min, y3 - 20.0f, this.f3029h);
            canvas.drawLine(x3, y3, Math.min(f4, f6), y3, this.f3028g);
            StringBuilder sb3 = new StringBuilder();
            sb3.append("");
            Double.isNaN((max2 * 100.0f) / Math.abs(f7 - f5));
            sb3.append(((int) (d5 + 0.5d)) / 100.0f);
            String sb4 = sb3.toString();
            k(sb4, this.f3029h);
            canvas.drawText(sb4, x3 + 5.0f, max - ((max2 / 2.0f) - (this.f3039r.height() / 2)), this.f3029h);
            canvas.drawLine(x3, y3, x3, Math.max(f5, f7), this.f3028g);
        }

        private void e(Canvas canvas) {
            float[] fArr = this.f3022a;
            canvas.drawLine(fArr[0], fArr[1], fArr[fArr.length - 2], fArr[fArr.length - 1], this.f3028g);
        }

        private void f(Canvas canvas, float x3, float y3) {
            float[] fArr = this.f3022a;
            float f4 = fArr[0];
            float f5 = fArr[1];
            float f6 = fArr[fArr.length - 2];
            float f7 = fArr[fArr.length - 1];
            float hypot = (float) Math.hypot(f4 - f6, f5 - f7);
            float f8 = f6 - f4;
            float f9 = f7 - f5;
            float f10 = (((x3 - f4) * f8) + ((y3 - f5) * f9)) / (hypot * hypot);
            float f11 = f4 + (f8 * f10);
            float f12 = f5 + (f10 * f9);
            Path path = new Path();
            path.moveTo(x3, y3);
            path.lineTo(f11, f12);
            float hypot2 = (float) Math.hypot(f11 - x3, f12 - y3);
            String str = "" + (((int) ((hypot2 * 100.0f) / hypot)) / 100.0f);
            k(str, this.f3029h);
            canvas.drawTextOnPath(str, path, (hypot2 / 2.0f) - (this.f3039r.width() / 2), -20.0f, this.f3029h);
            canvas.drawLine(x3, y3, f11, f12, this.f3028g);
        }

        private void g(Canvas canvas, float x3, float y3, int viewWidth, int viewHeight) {
            double d4;
            double d5;
            StringBuilder sb = new StringBuilder();
            sb.append("");
            Double.isNaN(((x3 - (viewWidth / 2)) * 100.0f) / (MotionLayout.this.getWidth() - viewWidth));
            sb.append(((int) (d4 + 0.5d)) / 100.0f);
            String sb2 = sb.toString();
            k(sb2, this.f3029h);
            canvas.drawText(sb2, ((x3 / 2.0f) - (this.f3039r.width() / 2)) + 0.0f, y3 - 20.0f, this.f3029h);
            canvas.drawLine(x3, y3, Math.min(0.0f, 1.0f), y3, this.f3028g);
            StringBuilder sb3 = new StringBuilder();
            sb3.append("");
            Double.isNaN(((y3 - (viewHeight / 2)) * 100.0f) / (MotionLayout.this.getHeight() - viewHeight));
            sb3.append(((int) (d5 + 0.5d)) / 100.0f);
            String sb4 = sb3.toString();
            k(sb4, this.f3029h);
            canvas.drawText(sb4, x3 + 5.0f, 0.0f - ((y3 / 2.0f) - (this.f3039r.height() / 2)), this.f3029h);
            canvas.drawLine(x3, y3, x3, Math.max(0.0f, 1.0f), this.f3028g);
        }

        private void h(Canvas canvas, MotionController motionController) {
            this.f3025d.reset();
            for (int i2 = 0; i2 <= 50; i2++) {
                motionController.f(i2 / 50, this.f3031j, 0);
                Path path = this.f3025d;
                float[] fArr = this.f3031j;
                path.moveTo(fArr[0], fArr[1]);
                Path path2 = this.f3025d;
                float[] fArr2 = this.f3031j;
                path2.lineTo(fArr2[2], fArr2[3]);
                Path path3 = this.f3025d;
                float[] fArr3 = this.f3031j;
                path3.lineTo(fArr3[4], fArr3[5]);
                Path path4 = this.f3025d;
                float[] fArr4 = this.f3031j;
                path4.lineTo(fArr4[6], fArr4[7]);
                this.f3025d.close();
            }
            this.f3026e.setColor(1140850688);
            canvas.translate(2.0f, 2.0f);
            canvas.drawPath(this.f3025d, this.f3026e);
            canvas.translate(-2.0f, -2.0f);
            this.f3026e.setColor(SupportMenu.CATEGORY_MASK);
            canvas.drawPath(this.f3025d, this.f3026e);
        }

        private void i(Canvas canvas, int mode, int keyFrames, MotionController motionController) {
            int i2;
            int i4;
            float f4;
            float f5;
            View view = motionController.f2943b;
            if (view != null) {
                i2 = view.getWidth();
                i4 = motionController.f2943b.getHeight();
            } else {
                i2 = 0;
                i4 = 0;
            }
            for (int i5 = 1; i5 < keyFrames - 1; i5++) {
                if (mode != 4 || this.f3023b[i5 - 1] != 0) {
                    float[] fArr = this.f3024c;
                    int i6 = i5 * 2;
                    float f6 = fArr[i6];
                    float f7 = fArr[i6 + 1];
                    this.f3025d.reset();
                    this.f3025d.moveTo(f6, f7 + 10.0f);
                    this.f3025d.lineTo(f6 + 10.0f, f7);
                    this.f3025d.lineTo(f6, f7 - 10.0f);
                    this.f3025d.lineTo(f6 - 10.0f, f7);
                    this.f3025d.close();
                    int i7 = i5 - 1;
                    motionController.m(i7);
                    if (mode == 4) {
                        int[] iArr = this.f3023b;
                        if (iArr[i7] == 1) {
                            f(canvas, f6 - 0.0f, f7 - 0.0f);
                        } else if (iArr[i7] == 0) {
                            d(canvas, f6 - 0.0f, f7 - 0.0f);
                        } else if (iArr[i7] == 2) {
                            f4 = f7;
                            f5 = f6;
                            g(canvas, f6 - 0.0f, f7 - 0.0f, i2, i4);
                            canvas.drawPath(this.f3025d, this.f3030i);
                        }
                        f4 = f7;
                        f5 = f6;
                        canvas.drawPath(this.f3025d, this.f3030i);
                    } else {
                        f4 = f7;
                        f5 = f6;
                    }
                    if (mode == 2) {
                        f(canvas, f5 - 0.0f, f4 - 0.0f);
                    }
                    if (mode == 3) {
                        d(canvas, f5 - 0.0f, f4 - 0.0f);
                    }
                    if (mode == 6) {
                        g(canvas, f5 - 0.0f, f4 - 0.0f, i2, i4);
                    }
                    canvas.drawPath(this.f3025d, this.f3030i);
                }
            }
            float[] fArr2 = this.f3022a;
            if (fArr2.length > 1) {
                canvas.drawCircle(fArr2[0], fArr2[1], 8.0f, this.f3027f);
                float[] fArr3 = this.f3022a;
                canvas.drawCircle(fArr3[fArr3.length - 2], fArr3[fArr3.length - 1], 8.0f, this.f3027f);
            }
        }

        private void j(Canvas canvas, float x12, float y12, float x22, float y22) {
            canvas.drawRect(x12, y12, x22, y22, this.f3028g);
            canvas.drawLine(x12, y12, x22, y22, this.f3028g);
        }

        public void draw(Canvas canvas, HashMap<View, MotionController> frameArrayList, int duration, int debugPath) {
            if (frameArrayList == null || frameArrayList.size() == 0) {
                return;
            }
            canvas.save();
            if (!MotionLayout.this.isInEditMode() && (debugPath & 1) == 2) {
                String str = MotionLayout.this.getContext().getResources().getResourceName(MotionLayout.this.f2988o0) + ":" + MotionLayout.this.getProgress();
                canvas.drawText(str, 10.0f, MotionLayout.this.getHeight() - 30, this.f3029h);
                canvas.drawText(str, 11.0f, MotionLayout.this.getHeight() - 29, this.f3026e);
            }
            for (MotionController motionController : frameArrayList.values()) {
                int drawPath = motionController.getDrawPath();
                if (debugPath > 0 && drawPath == 0) {
                    drawPath = 1;
                }
                if (drawPath != 0) {
                    this.f3038q = motionController.d(this.f3024c, this.f3023b);
                    if (drawPath >= 1) {
                        int i2 = duration / 16;
                        float[] fArr = this.f3022a;
                        if (fArr == null || fArr.length != i2 * 2) {
                            this.f3022a = new float[i2 * 2];
                            this.f3025d = new Path();
                        }
                        int i4 = this.f3041t;
                        canvas.translate(i4, i4);
                        this.f3026e.setColor(1996488704);
                        this.f3030i.setColor(1996488704);
                        this.f3027f.setColor(1996488704);
                        this.f3028g.setColor(1996488704);
                        motionController.e(this.f3022a, i2);
                        drawAll(canvas, drawPath, this.f3038q, motionController);
                        this.f3026e.setColor(-21965);
                        this.f3027f.setColor(-2067046);
                        this.f3030i.setColor(-2067046);
                        this.f3028g.setColor(-13391360);
                        int i5 = this.f3041t;
                        canvas.translate(-i5, -i5);
                        drawAll(canvas, drawPath, this.f3038q, motionController);
                        if (drawPath == 5) {
                            h(canvas, motionController);
                        }
                    }
                }
            }
            canvas.restore();
        }

        public void drawAll(Canvas canvas, int mode, int keyFrames, MotionController motionController) {
            if (mode == 4) {
                b(canvas);
            }
            if (mode == 2) {
                e(canvas);
            }
            if (mode == 3) {
                c(canvas);
            }
            a(canvas);
            i(canvas, mode, keyFrames, motionController);
        }

        void k(String text, Paint paint) {
            paint.getTextBounds(text, 0, text.length(), this.f3039r);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class Model {

        /* renamed from: a  reason: collision with root package name */
        ConstraintWidgetContainer f3043a = new ConstraintWidgetContainer();

        /* renamed from: b  reason: collision with root package name */
        ConstraintWidgetContainer f3044b = new ConstraintWidgetContainer();

        /* renamed from: c  reason: collision with root package name */
        ConstraintSet f3045c = null;

        /* renamed from: d  reason: collision with root package name */
        ConstraintSet f3046d = null;

        /* renamed from: e  reason: collision with root package name */
        int f3047e;

        /* renamed from: f  reason: collision with root package name */
        int f3048f;

        Model() {
        }

        private void a(int widthMeasureSpec, int heightMeasureSpec) {
            int optimizationLevel = MotionLayout.this.getOptimizationLevel();
            MotionLayout motionLayout = MotionLayout.this;
            if (motionLayout.f2986n0 == motionLayout.getStartState()) {
                MotionLayout motionLayout2 = MotionLayout.this;
                ConstraintWidgetContainer constraintWidgetContainer = this.f3044b;
                ConstraintSet constraintSet = this.f3046d;
                motionLayout2.p(constraintWidgetContainer, optimizationLevel, (constraintSet == null || constraintSet.mRotate == 0) ? widthMeasureSpec : heightMeasureSpec, (constraintSet == null || constraintSet.mRotate == 0) ? heightMeasureSpec : widthMeasureSpec);
                ConstraintSet constraintSet2 = this.f3045c;
                if (constraintSet2 != null) {
                    MotionLayout motionLayout3 = MotionLayout.this;
                    ConstraintWidgetContainer constraintWidgetContainer2 = this.f3043a;
                    int i2 = constraintSet2.mRotate;
                    int i4 = i2 == 0 ? widthMeasureSpec : heightMeasureSpec;
                    if (i2 == 0) {
                        widthMeasureSpec = heightMeasureSpec;
                    }
                    motionLayout3.p(constraintWidgetContainer2, optimizationLevel, i4, widthMeasureSpec);
                    return;
                }
                return;
            }
            ConstraintSet constraintSet3 = this.f3045c;
            if (constraintSet3 != null) {
                MotionLayout motionLayout4 = MotionLayout.this;
                ConstraintWidgetContainer constraintWidgetContainer3 = this.f3043a;
                int i5 = constraintSet3.mRotate;
                motionLayout4.p(constraintWidgetContainer3, optimizationLevel, i5 == 0 ? widthMeasureSpec : heightMeasureSpec, i5 == 0 ? heightMeasureSpec : widthMeasureSpec);
            }
            MotionLayout motionLayout5 = MotionLayout.this;
            ConstraintWidgetContainer constraintWidgetContainer4 = this.f3044b;
            ConstraintSet constraintSet4 = this.f3046d;
            int i6 = (constraintSet4 == null || constraintSet4.mRotate == 0) ? widthMeasureSpec : heightMeasureSpec;
            if (constraintSet4 == null || constraintSet4.mRotate == 0) {
                widthMeasureSpec = heightMeasureSpec;
            }
            motionLayout5.p(constraintWidgetContainer4, optimizationLevel, i6, widthMeasureSpec);
        }

        @SuppressLint({"LogConditional"})
        private void c(String title, ConstraintWidgetContainer c4) {
            String str = title + " " + Debug.getName((View) c4.getCompanionWidget());
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append("  ========= ");
            sb.append(c4);
            int size = c4.getChildren().size();
            for (int i2 = 0; i2 < size; i2++) {
                String str2 = str + "[" + i2 + "] ";
                ConstraintWidget constraintWidget = c4.getChildren().get(i2);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("");
                sb2.append(constraintWidget.mTop.mTarget != null ? "T" : "_");
                String sb3 = sb2.toString();
                StringBuilder sb4 = new StringBuilder();
                sb4.append(sb3);
                sb4.append(constraintWidget.mBottom.mTarget != null ? "B" : "_");
                String sb5 = sb4.toString();
                StringBuilder sb6 = new StringBuilder();
                sb6.append(sb5);
                sb6.append(constraintWidget.mLeft.mTarget != null ? "L" : "_");
                String sb7 = sb6.toString();
                StringBuilder sb8 = new StringBuilder();
                sb8.append(sb7);
                sb8.append(constraintWidget.mRight.mTarget != null ? "R" : "_");
                String sb9 = sb8.toString();
                View view = (View) constraintWidget.getCompanionWidget();
                String name = Debug.getName(view);
                if (view instanceof TextView) {
                    name = name + "(" + ((Object) ((TextView) view).getText()) + ")";
                }
                StringBuilder sb10 = new StringBuilder();
                sb10.append(str2);
                sb10.append("  ");
                sb10.append(name);
                sb10.append(" ");
                sb10.append(constraintWidget);
                sb10.append(" ");
                sb10.append(sb9);
            }
            StringBuilder sb11 = new StringBuilder();
            sb11.append(str);
            sb11.append(" done. ");
        }

        @SuppressLint({"LogConditional"})
        private void d(String str, ConstraintLayout.LayoutParams params) {
            StringBuilder sb = new StringBuilder();
            sb.append(" ");
            sb.append(params.startToStart != -1 ? "SS" : "__");
            String sb2 = sb.toString();
            StringBuilder sb3 = new StringBuilder();
            sb3.append(sb2);
            sb3.append(params.startToEnd != -1 ? "|SE" : "|__");
            String sb4 = sb3.toString();
            StringBuilder sb5 = new StringBuilder();
            sb5.append(sb4);
            sb5.append(params.endToStart != -1 ? "|ES" : "|__");
            String sb6 = sb5.toString();
            StringBuilder sb7 = new StringBuilder();
            sb7.append(sb6);
            sb7.append(params.endToEnd != -1 ? "|EE" : "|__");
            String sb8 = sb7.toString();
            StringBuilder sb9 = new StringBuilder();
            sb9.append(sb8);
            sb9.append(params.leftToLeft != -1 ? "|LL" : "|__");
            String sb10 = sb9.toString();
            StringBuilder sb11 = new StringBuilder();
            sb11.append(sb10);
            sb11.append(params.leftToRight != -1 ? "|LR" : "|__");
            String sb12 = sb11.toString();
            StringBuilder sb13 = new StringBuilder();
            sb13.append(sb12);
            sb13.append(params.rightToLeft != -1 ? "|RL" : "|__");
            String sb14 = sb13.toString();
            StringBuilder sb15 = new StringBuilder();
            sb15.append(sb14);
            sb15.append(params.rightToRight != -1 ? "|RR" : "|__");
            String sb16 = sb15.toString();
            StringBuilder sb17 = new StringBuilder();
            sb17.append(sb16);
            sb17.append(params.topToTop != -1 ? "|TT" : "|__");
            String sb18 = sb17.toString();
            StringBuilder sb19 = new StringBuilder();
            sb19.append(sb18);
            sb19.append(params.topToBottom != -1 ? "|TB" : "|__");
            String sb20 = sb19.toString();
            StringBuilder sb21 = new StringBuilder();
            sb21.append(sb20);
            sb21.append(params.bottomToTop != -1 ? "|BT" : "|__");
            String sb22 = sb21.toString();
            StringBuilder sb23 = new StringBuilder();
            sb23.append(sb22);
            sb23.append(params.bottomToBottom != -1 ? "|BB" : "|__");
            String sb24 = sb23.toString();
            StringBuilder sb25 = new StringBuilder();
            sb25.append(str);
            sb25.append(sb24);
        }

        @SuppressLint({"LogConditional"})
        private void e(String str, ConstraintWidget child) {
            String str2;
            String str3;
            String str4;
            StringBuilder sb = new StringBuilder();
            sb.append(" ");
            String str5 = "__";
            if (child.mTop.mTarget != null) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("T");
                sb2.append(child.mTop.mTarget.mType == ConstraintAnchor.Type.TOP ? "T" : "B");
                str2 = sb2.toString();
            } else {
                str2 = "__";
            }
            sb.append(str2);
            String sb3 = sb.toString();
            StringBuilder sb4 = new StringBuilder();
            sb4.append(sb3);
            if (child.mBottom.mTarget != null) {
                StringBuilder sb5 = new StringBuilder();
                sb5.append("B");
                sb5.append(child.mBottom.mTarget.mType == ConstraintAnchor.Type.TOP ? "T" : "B");
                str3 = sb5.toString();
            } else {
                str3 = "__";
            }
            sb4.append(str3);
            String sb6 = sb4.toString();
            StringBuilder sb7 = new StringBuilder();
            sb7.append(sb6);
            if (child.mLeft.mTarget != null) {
                StringBuilder sb8 = new StringBuilder();
                sb8.append("L");
                sb8.append(child.mLeft.mTarget.mType == ConstraintAnchor.Type.LEFT ? "L" : "R");
                str4 = sb8.toString();
            } else {
                str4 = "__";
            }
            sb7.append(str4);
            String sb9 = sb7.toString();
            StringBuilder sb10 = new StringBuilder();
            sb10.append(sb9);
            if (child.mRight.mTarget != null) {
                StringBuilder sb11 = new StringBuilder();
                sb11.append("R");
                sb11.append(child.mRight.mTarget.mType == ConstraintAnchor.Type.LEFT ? "L" : "R");
                str5 = sb11.toString();
            }
            sb10.append(str5);
            String sb12 = sb10.toString();
            StringBuilder sb13 = new StringBuilder();
            sb13.append(str);
            sb13.append(sb12);
            sb13.append(" ---  ");
            sb13.append(child);
        }

        private void h(ConstraintWidgetContainer base, ConstraintSet cSet) {
            SparseArray<ConstraintWidget> sparseArray = new SparseArray<>();
            Constraints.LayoutParams layoutParams = new Constraints.LayoutParams(-2, -2);
            sparseArray.clear();
            sparseArray.put(0, base);
            sparseArray.put(MotionLayout.this.getId(), base);
            if (cSet != null && cSet.mRotate != 0) {
                MotionLayout motionLayout = MotionLayout.this;
                motionLayout.p(this.f3044b, motionLayout.getOptimizationLevel(), View.MeasureSpec.makeMeasureSpec(MotionLayout.this.getHeight(), 1073741824), View.MeasureSpec.makeMeasureSpec(MotionLayout.this.getWidth(), 1073741824));
            }
            Iterator<ConstraintWidget> it2 = base.getChildren().iterator();
            while (it2.hasNext()) {
                ConstraintWidget next = it2.next();
                next.setAnimated(true);
                sparseArray.put(((View) next.getCompanionWidget()).getId(), next);
            }
            Iterator<ConstraintWidget> it3 = base.getChildren().iterator();
            while (it3.hasNext()) {
                ConstraintWidget next2 = it3.next();
                View view = (View) next2.getCompanionWidget();
                cSet.applyToLayoutParams(view.getId(), layoutParams);
                next2.setWidth(cSet.getWidth(view.getId()));
                next2.setHeight(cSet.getHeight(view.getId()));
                if (view instanceof ConstraintHelper) {
                    cSet.applyToHelper((ConstraintHelper) view, next2, layoutParams, sparseArray);
                    if (view instanceof Barrier) {
                        ((Barrier) view).validateParams();
                    }
                }
                if (Build.VERSION.SDK_INT >= 17) {
                    layoutParams.resolveLayoutDirection(MotionLayout.this.getLayoutDirection());
                } else {
                    layoutParams.resolveLayoutDirection(0);
                }
                MotionLayout.this.h(false, view, next2, layoutParams, sparseArray);
                if (cSet.getVisibilityMode(view.getId()) == 1) {
                    next2.setVisibility(view.getVisibility());
                } else {
                    next2.setVisibility(cSet.getVisibility(view.getId()));
                }
            }
            Iterator<ConstraintWidget> it4 = base.getChildren().iterator();
            while (it4.hasNext()) {
                ConstraintWidget next3 = it4.next();
                if (next3 instanceof VirtualLayout) {
                    Helper helper = (Helper) next3;
                    ((ConstraintHelper) next3.getCompanionWidget()).updatePreLayout(base, helper, sparseArray);
                    ((VirtualLayout) helper).captureWidgets();
                }
            }
        }

        void b(ConstraintWidgetContainer src, ConstraintWidgetContainer dest) {
            ConstraintWidget constraintWidget;
            ArrayList<ConstraintWidget> children = src.getChildren();
            HashMap<ConstraintWidget, ConstraintWidget> hashMap = new HashMap<>();
            hashMap.put(src, dest);
            dest.getChildren().clear();
            dest.copy(src, hashMap);
            Iterator<ConstraintWidget> it2 = children.iterator();
            while (it2.hasNext()) {
                ConstraintWidget next = it2.next();
                if (next instanceof androidx.constraintlayout.core.widgets.Barrier) {
                    constraintWidget = new androidx.constraintlayout.core.widgets.Barrier();
                } else if (next instanceof Guideline) {
                    constraintWidget = new Guideline();
                } else if (next instanceof Flow) {
                    constraintWidget = new Flow();
                } else if (next instanceof Placeholder) {
                    constraintWidget = new Placeholder();
                } else if (next instanceof Helper) {
                    constraintWidget = new HelperWidget();
                } else {
                    constraintWidget = new ConstraintWidget();
                }
                dest.add(constraintWidget);
                hashMap.put(next, constraintWidget);
            }
            Iterator<ConstraintWidget> it3 = children.iterator();
            while (it3.hasNext()) {
                ConstraintWidget next2 = it3.next();
                hashMap.get(next2).copy(next2, hashMap);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x00d6  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x0123 A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void build() {
            /*
                Method dump skipped, instructions count: 326
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionLayout.Model.build():void");
        }

        ConstraintWidget f(ConstraintWidgetContainer container, View view) {
            if (container.getCompanionWidget() == view) {
                return container;
            }
            ArrayList<ConstraintWidget> children = container.getChildren();
            int size = children.size();
            for (int i2 = 0; i2 < size; i2++) {
                ConstraintWidget constraintWidget = children.get(i2);
                if (constraintWidget.getCompanionWidget() == view) {
                    return constraintWidget;
                }
            }
            return null;
        }

        void g(ConstraintWidgetContainer baseLayout, ConstraintSet start, ConstraintSet end) {
            this.f3045c = start;
            this.f3046d = end;
            this.f3043a = new ConstraintWidgetContainer();
            this.f3044b = new ConstraintWidgetContainer();
            this.f3043a.setMeasurer(((ConstraintLayout) MotionLayout.this).f3376c.getMeasurer());
            this.f3044b.setMeasurer(((ConstraintLayout) MotionLayout.this).f3376c.getMeasurer());
            this.f3043a.removeAllChildren();
            this.f3044b.removeAllChildren();
            b(((ConstraintLayout) MotionLayout.this).f3376c, this.f3043a);
            b(((ConstraintLayout) MotionLayout.this).f3376c, this.f3044b);
            if (MotionLayout.this.f3004w0 > 0.5d) {
                if (start != null) {
                    h(this.f3043a, start);
                }
                h(this.f3044b, end);
            } else {
                h(this.f3044b, end);
                if (start != null) {
                    h(this.f3043a, start);
                }
            }
            this.f3043a.setRtl(MotionLayout.this.l());
            this.f3043a.updateHierarchy();
            this.f3044b.setRtl(MotionLayout.this.l());
            this.f3044b.updateHierarchy();
            ViewGroup.LayoutParams layoutParams = MotionLayout.this.getLayoutParams();
            if (layoutParams != null) {
                if (layoutParams.width == -2) {
                    ConstraintWidgetContainer constraintWidgetContainer = this.f3043a;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    constraintWidgetContainer.setHorizontalDimensionBehaviour(dimensionBehaviour);
                    this.f3044b.setHorizontalDimensionBehaviour(dimensionBehaviour);
                }
                if (layoutParams.height == -2) {
                    ConstraintWidgetContainer constraintWidgetContainer2 = this.f3043a;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    constraintWidgetContainer2.setVerticalDimensionBehaviour(dimensionBehaviour2);
                    this.f3044b.setVerticalDimensionBehaviour(dimensionBehaviour2);
                }
            }
        }

        public boolean isNotConfiguredWith(int startId, int endId) {
            return (startId == this.f3047e && endId == this.f3048f) ? false : true;
        }

        public void measure(int widthMeasureSpec, int heightMeasureSpec) {
            int mode = View.MeasureSpec.getMode(widthMeasureSpec);
            int mode2 = View.MeasureSpec.getMode(heightMeasureSpec);
            MotionLayout motionLayout = MotionLayout.this;
            motionLayout.f2984l1 = mode;
            motionLayout.f2985m1 = mode2;
            motionLayout.getOptimizationLevel();
            a(widthMeasureSpec, heightMeasureSpec);
            if (((MotionLayout.this.getParent() instanceof MotionLayout) && mode == 1073741824 && mode2 == 1073741824) ? false : true) {
                a(widthMeasureSpec, heightMeasureSpec);
                MotionLayout.this.f2980h1 = this.f3043a.getWidth();
                MotionLayout.this.f2981i1 = this.f3043a.getHeight();
                MotionLayout.this.f2982j1 = this.f3044b.getWidth();
                MotionLayout.this.f2983k1 = this.f3044b.getHeight();
                MotionLayout motionLayout2 = MotionLayout.this;
                motionLayout2.f2979g1 = (motionLayout2.f2980h1 == motionLayout2.f2982j1 && motionLayout2.f2981i1 == motionLayout2.f2983k1) ? false : true;
            }
            MotionLayout motionLayout3 = MotionLayout.this;
            int i2 = motionLayout3.f2980h1;
            int i4 = motionLayout3.f2981i1;
            int i5 = motionLayout3.f2984l1;
            if (i5 == Integer.MIN_VALUE || i5 == 0) {
                i2 = (int) (i2 + (motionLayout3.f2987n1 * (motionLayout3.f2982j1 - i2)));
            }
            int i6 = i2;
            int i7 = motionLayout3.f2985m1;
            if (i7 == Integer.MIN_VALUE || i7 == 0) {
                i4 = (int) (i4 + (motionLayout3.f2987n1 * (motionLayout3.f2983k1 - i4)));
            }
            MotionLayout.this.o(widthMeasureSpec, heightMeasureSpec, i6, i4, this.f3043a.isWidthMeasuredTooSmall() || this.f3044b.isWidthMeasuredTooSmall(), this.f3043a.isHeightMeasuredTooSmall() || this.f3044b.isHeightMeasuredTooSmall());
        }

        public void reEvaluateState() {
            measure(MotionLayout.this.f2990p0, MotionLayout.this.f2992q0);
            MotionLayout.this.p0();
        }

        public void setMeasuredId(int startId, int endId) {
            this.f3047e = startId;
            this.f3048f = endId;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public interface MotionTracker {
        void addMovement(MotionEvent event);

        void clear();

        void computeCurrentVelocity(int units);

        void computeCurrentVelocity(int units, float maxVelocity);

        float getXVelocity();

        float getXVelocity(int id);

        float getYVelocity();

        float getYVelocity(int id);

        void recycle();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class StateCache {

        /* renamed from: a  reason: collision with root package name */
        float f3052a = Float.NaN;

        /* renamed from: b  reason: collision with root package name */
        float f3053b = Float.NaN;

        /* renamed from: c  reason: collision with root package name */
        int f3054c = -1;

        /* renamed from: d  reason: collision with root package name */
        int f3055d = -1;

        /* renamed from: e  reason: collision with root package name */
        final String f3056e = "motion.progress";

        /* renamed from: f  reason: collision with root package name */
        final String f3057f = "motion.velocity";

        /* renamed from: g  reason: collision with root package name */
        final String f3058g = "motion.StartState";

        /* renamed from: h  reason: collision with root package name */
        final String f3059h = "motion.EndState";

        StateCache() {
        }

        void a() {
            int i2 = this.f3054c;
            if (i2 != -1 || this.f3055d != -1) {
                if (i2 == -1) {
                    MotionLayout.this.transitionToState(this.f3055d);
                } else {
                    int i4 = this.f3055d;
                    if (i4 == -1) {
                        MotionLayout.this.setState(i2, -1, -1);
                    } else {
                        MotionLayout.this.setTransition(i2, i4);
                    }
                }
                MotionLayout.this.setState(TransitionState.SETUP);
            }
            if (Float.isNaN(this.f3053b)) {
                if (Float.isNaN(this.f3052a)) {
                    return;
                }
                MotionLayout.this.setProgress(this.f3052a);
                return;
            }
            MotionLayout.this.setProgress(this.f3052a, this.f3053b);
            this.f3052a = Float.NaN;
            this.f3053b = Float.NaN;
            this.f3054c = -1;
            this.f3055d = -1;
        }

        public Bundle getTransitionState() {
            Bundle bundle = new Bundle();
            bundle.putFloat("motion.progress", this.f3052a);
            bundle.putFloat("motion.velocity", this.f3053b);
            bundle.putInt("motion.StartState", this.f3054c);
            bundle.putInt("motion.EndState", this.f3055d);
            return bundle;
        }

        public void recordState() {
            this.f3055d = MotionLayout.this.f2988o0;
            this.f3054c = MotionLayout.this.K;
            this.f3053b = MotionLayout.this.getVelocity();
            this.f3052a = MotionLayout.this.getProgress();
        }

        public void setEndState(int endState) {
            this.f3055d = endState;
        }

        public void setProgress(float progress) {
            this.f3052a = progress;
        }

        public void setStartState(int startState) {
            this.f3054c = startState;
        }

        public void setTransitionState(Bundle bundle) {
            this.f3052a = bundle.getFloat("motion.progress");
            this.f3053b = bundle.getFloat("motion.velocity");
            this.f3054c = bundle.getInt("motion.StartState");
            this.f3055d = bundle.getInt("motion.EndState");
        }

        public void setVelocity(float mVelocity) {
            this.f3053b = mVelocity;
        }
    }

    /* loaded from: classes.dex */
    public interface TransitionListener {
        void onTransitionChange(MotionLayout motionLayout, int startId, int endId, float progress);

        void onTransitionCompleted(MotionLayout motionLayout, int currentId);

        void onTransitionStarted(MotionLayout motionLayout, int startId, int endId);

        void onTransitionTrigger(MotionLayout motionLayout, int triggerId, boolean positive, float progress);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum TransitionState {
        UNDEFINED,
        SETUP,
        MOVING,
        FINISHED
    }

    public MotionLayout(@NonNull Context context) {
        super(context);
        this.I = null;
        this.J = 0.0f;
        this.K = -1;
        this.f2986n0 = -1;
        this.f2988o0 = -1;
        this.f2990p0 = 0;
        this.f2992q0 = 0;
        this.f2994r0 = true;
        this.f2996s0 = new HashMap<>();
        this.f2998t0 = 0L;
        this.f3000u0 = 1.0f;
        this.f3002v0 = 0.0f;
        this.f3004w0 = 0.0f;
        this.f3008y0 = 0.0f;
        this.A0 = false;
        this.B0 = false;
        this.F0 = 0;
        this.H0 = false;
        this.I0 = new StopLogic();
        this.J0 = new DecelerateInterpolator();
        this.L0 = true;
        this.Q0 = false;
        this.V0 = false;
        this.W0 = null;
        this.X0 = null;
        this.Y0 = null;
        this.Z0 = null;
        this.f2973a1 = 0;
        this.f2974b1 = -1L;
        this.f2975c1 = 0.0f;
        this.f2976d1 = 0;
        this.f2977e1 = 0.0f;
        this.f2978f1 = false;
        this.f2979g1 = false;
        this.f2989o1 = new KeyCache();
        this.f2991p1 = false;
        this.f2995r1 = null;
        this.f2997s1 = null;
        this.f2999t1 = 0;
        this.f3001u1 = false;
        this.f3003v1 = 0;
        this.f3005w1 = new HashMap<>();
        this.A1 = new Rect();
        this.B1 = false;
        this.C1 = TransitionState.UNDEFINED;
        this.D1 = new Model();
        this.E1 = false;
        this.F1 = new RectF();
        this.G1 = null;
        this.H1 = null;
        this.I1 = new ArrayList<>();
        k0(null);
    }

    private boolean T(View view, MotionEvent event, float offsetX, float offsetY) {
        Matrix matrix = view.getMatrix();
        if (matrix.isIdentity()) {
            event.offsetLocation(offsetX, offsetY);
            boolean onTouchEvent = view.onTouchEvent(event);
            event.offsetLocation(-offsetX, -offsetY);
            return onTouchEvent;
        }
        MotionEvent obtain = MotionEvent.obtain(event);
        obtain.offsetLocation(offsetX, offsetY);
        if (this.H1 == null) {
            this.H1 = new Matrix();
        }
        matrix.invert(this.H1);
        obtain.transform(this.H1);
        boolean onTouchEvent2 = view.onTouchEvent(obtain);
        obtain.recycle();
        return onTouchEvent2;
    }

    private void U() {
        MotionScene motionScene = this.G;
        if (motionScene == null) {
            return;
        }
        int y3 = motionScene.y();
        MotionScene motionScene2 = this.G;
        V(y3, motionScene2.h(motionScene2.y()));
        SparseIntArray sparseIntArray = new SparseIntArray();
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        Iterator<MotionScene.Transition> it2 = this.G.getDefinedTransitions().iterator();
        while (it2.hasNext()) {
            MotionScene.Transition next = it2.next();
            MotionScene.Transition transition = this.G.f3094c;
            W(next);
            int startConstraintSetId = next.getStartConstraintSetId();
            int endConstraintSetId = next.getEndConstraintSetId();
            String name = Debug.getName(getContext(), startConstraintSetId);
            String name2 = Debug.getName(getContext(), endConstraintSetId);
            if (sparseIntArray.get(startConstraintSetId) == endConstraintSetId) {
                StringBuilder sb = new StringBuilder();
                sb.append("CHECK: two transitions with the same start and end ");
                sb.append(name);
                sb.append("->");
                sb.append(name2);
            }
            if (sparseIntArray2.get(endConstraintSetId) == startConstraintSetId) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("CHECK: you can't have reverse transitions");
                sb2.append(name);
                sb2.append("->");
                sb2.append(name2);
            }
            sparseIntArray.put(startConstraintSetId, endConstraintSetId);
            sparseIntArray2.put(endConstraintSetId, startConstraintSetId);
            if (this.G.h(startConstraintSetId) == null) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(" no such constraintSetStart ");
                sb3.append(name);
            }
            if (this.G.h(endConstraintSetId) == null) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append(" no such constraintSetEnd ");
                sb4.append(name);
            }
        }
    }

    private void V(int csetId, ConstraintSet set) {
        String name = Debug.getName(getContext(), csetId);
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            int id = childAt.getId();
            if (id == -1) {
                StringBuilder sb = new StringBuilder();
                sb.append("CHECK: ");
                sb.append(name);
                sb.append(" ALL VIEWS SHOULD HAVE ID's ");
                sb.append(childAt.getClass().getName());
                sb.append(" does not!");
            }
            if (set.getConstraint(id) == null) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("CHECK: ");
                sb2.append(name);
                sb2.append(" NO CONSTRAINTS for ");
                sb2.append(Debug.getName(childAt));
            }
        }
        int[] knownIds = set.getKnownIds();
        for (int i4 = 0; i4 < knownIds.length; i4++) {
            int i5 = knownIds[i4];
            String name2 = Debug.getName(getContext(), i5);
            if (findViewById(knownIds[i4]) == null) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("CHECK: ");
                sb3.append(name);
                sb3.append(" NO View matches id ");
                sb3.append(name2);
            }
            if (set.getHeight(i5) == -1) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append("CHECK: ");
                sb4.append(name);
                sb4.append("(");
                sb4.append(name2);
                sb4.append(") no LAYOUT_HEIGHT");
            }
            if (set.getWidth(i5) == -1) {
                StringBuilder sb5 = new StringBuilder();
                sb5.append("CHECK: ");
                sb5.append(name);
                sb5.append("(");
                sb5.append(name2);
                sb5.append(") no LAYOUT_HEIGHT");
            }
        }
    }

    private void W(MotionScene.Transition transition) {
        transition.getStartConstraintSetId();
        transition.getEndConstraintSetId();
    }

    private void X() {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            MotionController motionController = this.f2996s0.get(childAt);
            if (motionController != null) {
                motionController.A(childAt);
            }
        }
    }

    @SuppressLint({"LogConditional"})
    private void Y() {
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            StringBuilder sb = new StringBuilder();
            sb.append(" ");
            sb.append(Debug.getLocation());
            sb.append(" ");
            sb.append(Debug.getName(this));
            sb.append(" ");
            sb.append(Debug.getName(getContext(), this.f2986n0));
            sb.append(" ");
            sb.append(Debug.getName(childAt));
            sb.append(childAt.getLeft());
            sb.append(" ");
            sb.append(childAt.getTop());
        }
    }

    private void c0() {
        boolean z3;
        float signum = Math.signum(this.f3008y0 - this.f3004w0);
        long nanoTime = getNanoTime();
        Interpolator interpolator = this.H;
        float f4 = this.f3004w0 + (!(interpolator instanceof StopLogic) ? ((((float) (nanoTime - this.f3006x0)) * signum) * 1.0E-9f) / this.f3000u0 : 0.0f);
        if (this.f3010z0) {
            f4 = this.f3008y0;
        }
        if ((signum <= 0.0f || f4 < this.f3008y0) && (signum > 0.0f || f4 > this.f3008y0)) {
            z3 = false;
        } else {
            f4 = this.f3008y0;
            z3 = true;
        }
        if (interpolator != null && !z3) {
            if (this.H0) {
                f4 = interpolator.getInterpolation(((float) (nanoTime - this.f2998t0)) * 1.0E-9f);
            } else {
                f4 = interpolator.getInterpolation(f4);
            }
        }
        if ((signum > 0.0f && f4 >= this.f3008y0) || (signum <= 0.0f && f4 <= this.f3008y0)) {
            f4 = this.f3008y0;
        }
        this.f2987n1 = f4;
        int childCount = getChildCount();
        long nanoTime2 = getNanoTime();
        Interpolator interpolator2 = this.I;
        if (interpolator2 != null) {
            f4 = interpolator2.getInterpolation(f4);
        }
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            MotionController motionController = this.f2996s0.get(childAt);
            if (motionController != null) {
                motionController.t(childAt, f4, nanoTime2, this.f2989o1);
            }
        }
        if (this.f2979g1) {
            requestLayout();
        }
    }

    private void d0() {
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList;
        if ((this.C0 == null && ((copyOnWriteArrayList = this.Z0) == null || copyOnWriteArrayList.isEmpty())) || this.f2977e1 == this.f3002v0) {
            return;
        }
        if (this.f2976d1 != -1) {
            TransitionListener transitionListener = this.C0;
            if (transitionListener != null) {
                transitionListener.onTransitionStarted(this, this.K, this.f2988o0);
            }
            CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList2 = this.Z0;
            if (copyOnWriteArrayList2 != null) {
                Iterator<TransitionListener> it2 = copyOnWriteArrayList2.iterator();
                while (it2.hasNext()) {
                    it2.next().onTransitionStarted(this, this.K, this.f2988o0);
                }
            }
            this.f2978f1 = true;
        }
        this.f2976d1 = -1;
        float f4 = this.f3002v0;
        this.f2977e1 = f4;
        TransitionListener transitionListener2 = this.C0;
        if (transitionListener2 != null) {
            transitionListener2.onTransitionChange(this, this.K, this.f2988o0, f4);
        }
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList3 = this.Z0;
        if (copyOnWriteArrayList3 != null) {
            Iterator<TransitionListener> it3 = copyOnWriteArrayList3.iterator();
            while (it3.hasNext()) {
                it3.next().onTransitionChange(this, this.K, this.f2988o0, this.f3002v0);
            }
        }
        this.f2978f1 = true;
    }

    private void f0(MotionLayout motionLayout, int mBeginState, int mEndState) {
        TransitionListener transitionListener = this.C0;
        if (transitionListener != null) {
            transitionListener.onTransitionStarted(this, mBeginState, mEndState);
        }
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList = this.Z0;
        if (copyOnWriteArrayList != null) {
            Iterator<TransitionListener> it2 = copyOnWriteArrayList.iterator();
            while (it2.hasNext()) {
                it2.next().onTransitionStarted(motionLayout, mBeginState, mEndState);
            }
        }
    }

    private boolean j0(float x3, float y3, View view, MotionEvent event) {
        boolean z3;
        View childAt;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                if (j0((childAt.getLeft() + x3) - view.getScrollX(), (childAt.getTop() + y3) - view.getScrollY(), viewGroup.getChildAt(childCount), event)) {
                    z3 = true;
                    break;
                }
            }
        }
        z3 = false;
        if (!z3) {
            this.F1.set(x3, y3, (view.getRight() + x3) - view.getLeft(), (view.getBottom() + y3) - view.getTop());
            if ((event.getAction() != 0 || this.F1.contains(event.getX(), event.getY())) && T(view, event, -x3, -y3)) {
                return true;
            }
        }
        return z3;
    }

    private void k0(AttributeSet attrs) {
        MotionScene motionScene;
        IS_IN_EDIT_MODE = isInEditMode();
        if (attrs != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, R.styleable.MotionLayout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            boolean z3 = true;
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == R.styleable.MotionLayout_layoutDescription) {
                    this.G = new MotionScene(getContext(), this, obtainStyledAttributes.getResourceId(index, -1));
                } else if (index == R.styleable.MotionLayout_currentState) {
                    this.f2986n0 = obtainStyledAttributes.getResourceId(index, -1);
                } else if (index == R.styleable.MotionLayout_motionProgress) {
                    this.f3008y0 = obtainStyledAttributes.getFloat(index, 0.0f);
                    this.A0 = true;
                } else if (index == R.styleable.MotionLayout_applyMotionScene) {
                    z3 = obtainStyledAttributes.getBoolean(index, z3);
                } else if (index == R.styleable.MotionLayout_showPaths) {
                    if (this.F0 == 0) {
                        this.F0 = obtainStyledAttributes.getBoolean(index, false) ? 2 : 0;
                    }
                } else if (index == R.styleable.MotionLayout_motionDebug) {
                    this.F0 = obtainStyledAttributes.getInt(index, 0);
                }
            }
            obtainStyledAttributes.recycle();
            if (!z3) {
                this.G = null;
            }
        }
        if (this.F0 != 0) {
            U();
        }
        if (this.f2986n0 != -1 || (motionScene = this.G) == null) {
            return;
        }
        this.f2986n0 = motionScene.y();
        this.K = this.G.y();
        this.f2988o0 = this.G.j();
    }

    private void o0() {
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList;
        if (this.C0 == null && ((copyOnWriteArrayList = this.Z0) == null || copyOnWriteArrayList.isEmpty())) {
            return;
        }
        this.f2978f1 = false;
        Iterator<Integer> it2 = this.I1.iterator();
        while (it2.hasNext()) {
            Integer next = it2.next();
            TransitionListener transitionListener = this.C0;
            if (transitionListener != null) {
                transitionListener.onTransitionCompleted(this, next.intValue());
            }
            CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList2 = this.Z0;
            if (copyOnWriteArrayList2 != null) {
                Iterator<TransitionListener> it3 = copyOnWriteArrayList2.iterator();
                while (it3.hasNext()) {
                    it3.next().onTransitionCompleted(this, next.intValue());
                }
            }
        }
        this.I1.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p0() {
        int childCount = getChildCount();
        this.D1.build();
        boolean z3 = true;
        this.A0 = true;
        SparseArray sparseArray = new SparseArray();
        int i2 = 0;
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            sparseArray.put(childAt.getId(), this.f2996s0.get(childAt));
        }
        int width = getWidth();
        int height = getHeight();
        int gatPathMotionArc = this.G.gatPathMotionArc();
        if (gatPathMotionArc != -1) {
            for (int i5 = 0; i5 < childCount; i5++) {
                MotionController motionController = this.f2996s0.get(getChildAt(i5));
                if (motionController != null) {
                    motionController.setPathMotionArc(gatPathMotionArc);
                }
            }
        }
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
        int[] iArr = new int[this.f2996s0.size()];
        int i6 = 0;
        for (int i7 = 0; i7 < childCount; i7++) {
            MotionController motionController2 = this.f2996s0.get(getChildAt(i7));
            if (motionController2.getAnimateRelativeTo() != -1) {
                sparseBooleanArray.put(motionController2.getAnimateRelativeTo(), true);
                iArr[i6] = motionController2.getAnimateRelativeTo();
                i6++;
            }
        }
        if (this.Y0 != null) {
            for (int i8 = 0; i8 < i6; i8++) {
                MotionController motionController3 = this.f2996s0.get(findViewById(iArr[i8]));
                if (motionController3 != null) {
                    this.G.getKeyFrames(motionController3);
                }
            }
            Iterator<MotionHelper> it2 = this.Y0.iterator();
            while (it2.hasNext()) {
                it2.next().onPreSetup(this, this.f2996s0);
            }
            for (int i9 = 0; i9 < i6; i9++) {
                MotionController motionController4 = this.f2996s0.get(findViewById(iArr[i9]));
                if (motionController4 != null) {
                    motionController4.setup(width, height, this.f3000u0, getNanoTime());
                }
            }
        } else {
            for (int i10 = 0; i10 < i6; i10++) {
                MotionController motionController5 = this.f2996s0.get(findViewById(iArr[i10]));
                if (motionController5 != null) {
                    this.G.getKeyFrames(motionController5);
                    motionController5.setup(width, height, this.f3000u0, getNanoTime());
                }
            }
        }
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt2 = getChildAt(i11);
            MotionController motionController6 = this.f2996s0.get(childAt2);
            if (!sparseBooleanArray.get(childAt2.getId()) && motionController6 != null) {
                this.G.getKeyFrames(motionController6);
                motionController6.setup(width, height, this.f3000u0, getNanoTime());
            }
        }
        float staggered = this.G.getStaggered();
        if (staggered != 0.0f) {
            boolean z4 = ((double) staggered) < 0.0d;
            float abs = Math.abs(staggered);
            float f4 = -3.4028235E38f;
            float f5 = Float.MAX_VALUE;
            int i12 = 0;
            float f6 = Float.MAX_VALUE;
            float f7 = -3.4028235E38f;
            while (true) {
                if (i12 >= childCount) {
                    z3 = false;
                    break;
                }
                MotionController motionController7 = this.f2996s0.get(getChildAt(i12));
                if (!Float.isNaN(motionController7.f2954m)) {
                    break;
                }
                float finalX = motionController7.getFinalX();
                float finalY = motionController7.getFinalY();
                float f8 = z4 ? finalY - finalX : finalY + finalX;
                f6 = Math.min(f6, f8);
                f7 = Math.max(f7, f8);
                i12++;
            }
            if (!z3) {
                while (i2 < childCount) {
                    MotionController motionController8 = this.f2996s0.get(getChildAt(i2));
                    float finalX2 = motionController8.getFinalX();
                    float finalY2 = motionController8.getFinalY();
                    float f9 = z4 ? finalY2 - finalX2 : finalY2 + finalX2;
                    motionController8.f2956o = 1.0f / (1.0f - abs);
                    motionController8.f2955n = abs - (((f9 - f6) * abs) / (f7 - f6));
                    i2++;
                }
                return;
            }
            for (int i13 = 0; i13 < childCount; i13++) {
                MotionController motionController9 = this.f2996s0.get(getChildAt(i13));
                if (!Float.isNaN(motionController9.f2954m)) {
                    f5 = Math.min(f5, motionController9.f2954m);
                    f4 = Math.max(f4, motionController9.f2954m);
                }
            }
            while (i2 < childCount) {
                MotionController motionController10 = this.f2996s0.get(getChildAt(i2));
                if (!Float.isNaN(motionController10.f2954m)) {
                    motionController10.f2956o = 1.0f / (1.0f - abs);
                    if (z4) {
                        motionController10.f2955n = abs - (((f4 - motionController10.f2954m) / (f4 - f5)) * abs);
                    } else {
                        motionController10.f2955n = abs - (((motionController10.f2954m - f5) * abs) / (f4 - f5));
                    }
                }
                i2++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Rect q0(ConstraintWidget cw) {
        this.A1.top = cw.getY();
        this.A1.left = cw.getX();
        Rect rect = this.A1;
        int width = cw.getWidth();
        Rect rect2 = this.A1;
        rect.right = width + rect2.left;
        int height = cw.getHeight();
        Rect rect3 = this.A1;
        rect2.bottom = height + rect3.top;
        return rect3;
    }

    private static boolean r0(float velocity, float position, float maxAcceleration) {
        if (velocity > 0.0f) {
            float f4 = velocity / maxAcceleration;
            return position + ((velocity * f4) - (((maxAcceleration * f4) * f4) / 2.0f)) > 1.0f;
        }
        float f5 = (-velocity) / maxAcceleration;
        return position + ((velocity * f5) + (((maxAcceleration * f5) * f5) / 2.0f)) < 0.0f;
    }

    void S(float position) {
        MotionScene motionScene = this.G;
        if (motionScene == null) {
            return;
        }
        float f4 = this.f3004w0;
        float f5 = this.f3002v0;
        if (f4 != f5 && this.f3010z0) {
            this.f3004w0 = f5;
        }
        float f6 = this.f3004w0;
        if (f6 == position) {
            return;
        }
        this.H0 = false;
        this.f3008y0 = position;
        this.f3000u0 = motionScene.getDuration() / 1000.0f;
        setProgress(this.f3008y0);
        this.H = null;
        this.I = this.G.getInterpolator();
        this.f3010z0 = false;
        this.f2998t0 = getNanoTime();
        this.A0 = true;
        this.f3002v0 = f6;
        this.f3004w0 = f6;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Z(boolean disable) {
        MotionScene motionScene = this.G;
        if (motionScene == null) {
            return;
        }
        motionScene.disableAutoTransition(disable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a0(boolean start) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            MotionController motionController = this.f2996s0.get(getChildAt(i2));
            if (motionController != null) {
                motionController.h(start);
            }
        }
    }

    public void addTransitionListener(TransitionListener listener) {
        if (this.Z0 == null) {
            this.Z0 = new CopyOnWriteArrayList<>();
        }
        this.Z0.add(listener);
    }

    public boolean applyViewTransition(int viewTransitionId, MotionController motionController) {
        MotionScene motionScene = this.G;
        if (motionScene != null) {
            return motionScene.applyViewTransition(viewTransitionId, motionController);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:103:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x020b  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x022d  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0172  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b0(boolean r21) {
        /*
            Method dump skipped, instructions count: 632
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionLayout.b0(boolean):void");
    }

    public ConstraintSet cloneConstraintSet(int id) {
        MotionScene motionScene = this.G;
        if (motionScene == null) {
            return null;
        }
        ConstraintSet h4 = motionScene.h(id);
        ConstraintSet constraintSet = new ConstraintSet();
        constraintSet.clone(h4);
        return constraintSet;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        long j4;
        ViewTransitionController viewTransitionController;
        ArrayList<MotionHelper> arrayList = this.Y0;
        if (arrayList != null) {
            Iterator<MotionHelper> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                it2.next().onPreDraw(canvas);
            }
        }
        b0(false);
        MotionScene motionScene = this.G;
        if (motionScene != null && (viewTransitionController = motionScene.f3110s) != null) {
            viewTransitionController.c();
        }
        super.dispatchDraw(canvas);
        if (this.G == null) {
            return;
        }
        if ((this.F0 & 1) == 1 && !isInEditMode()) {
            this.f2973a1++;
            long nanoTime = getNanoTime();
            long j5 = this.f2974b1;
            if (j5 != -1) {
                if (nanoTime - j5 > 200000000) {
                    this.f2975c1 = ((int) ((this.f2973a1 / (((float) j4) * 1.0E-9f)) * 100.0f)) / 100.0f;
                    this.f2973a1 = 0;
                    this.f2974b1 = nanoTime;
                }
            } else {
                this.f2974b1 = nanoTime;
            }
            Paint paint = new Paint();
            paint.setTextSize(42.0f);
            StringBuilder sb = new StringBuilder();
            sb.append(this.f2975c1 + " fps " + Debug.getState(this, this.K) + " -> ");
            sb.append(Debug.getState(this, this.f2988o0));
            sb.append(" (progress: ");
            sb.append(((int) (getProgress() * 1000.0f)) / 10.0f);
            sb.append(" ) state=");
            int i2 = this.f2986n0;
            sb.append(i2 == -1 ? "undefined" : Debug.getState(this, i2));
            String sb2 = sb.toString();
            paint.setColor(-16777216);
            canvas.drawText(sb2, 11.0f, getHeight() - 29, paint);
            paint.setColor(-7864184);
            canvas.drawText(sb2, 10.0f, getHeight() - 30, paint);
        }
        if (this.F0 > 1) {
            if (this.G0 == null) {
                this.G0 = new DevModeDraw();
            }
            this.G0.draw(canvas, this.f2996s0, this.G.getDuration(), this.F0);
        }
        ArrayList<MotionHelper> arrayList2 = this.Y0;
        if (arrayList2 != null) {
            Iterator<MotionHelper> it3 = arrayList2.iterator();
            while (it3.hasNext()) {
                it3.next().onPostDraw(canvas);
            }
        }
    }

    protected void e0() {
        int i2;
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList;
        if ((this.C0 != null || ((copyOnWriteArrayList = this.Z0) != null && !copyOnWriteArrayList.isEmpty())) && this.f2976d1 == -1) {
            this.f2976d1 = this.f2986n0;
            if (this.I1.isEmpty()) {
                i2 = -1;
            } else {
                ArrayList<Integer> arrayList = this.I1;
                i2 = arrayList.get(arrayList.size() - 1).intValue();
            }
            int i4 = this.f2986n0;
            if (i2 != i4 && i4 != -1) {
                this.I1.add(Integer.valueOf(i4));
            }
        }
        o0();
        Runnable runnable = this.f2995r1;
        if (runnable != null) {
            runnable.run();
        }
        int[] iArr = this.f2997s1;
        if (iArr == null || this.f2999t1 <= 0) {
            return;
        }
        transitionToState(iArr[0]);
        int[] iArr2 = this.f2997s1;
        System.arraycopy(iArr2, 1, iArr2, 0, iArr2.length - 1);
        this.f2999t1--;
    }

    public void enableTransition(int transitionID, boolean enable) {
        MotionScene.Transition transition = getTransition(transitionID);
        if (enable) {
            transition.setEnabled(true);
            return;
        }
        MotionScene motionScene = this.G;
        if (transition == motionScene.f3094c) {
            Iterator<MotionScene.Transition> it2 = motionScene.getTransitionsWithState(this.f2986n0).iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                MotionScene.Transition next = it2.next();
                if (next.isEnabled()) {
                    this.G.f3094c = next;
                    break;
                }
            }
        }
        transition.setEnabled(false);
    }

    public void enableViewTransition(int viewTransitionId, boolean enable) {
        MotionScene motionScene = this.G;
        if (motionScene != null) {
            motionScene.enableViewTransition(viewTransitionId, enable);
        }
    }

    public void fireTrigger(int triggerId, boolean positive, float progress) {
        TransitionListener transitionListener = this.C0;
        if (transitionListener != null) {
            transitionListener.onTransitionTrigger(this, triggerId, positive, progress);
        }
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList = this.Z0;
        if (copyOnWriteArrayList != null) {
            Iterator<TransitionListener> it2 = copyOnWriteArrayList.iterator();
            while (it2.hasNext()) {
                it2.next().onTransitionTrigger(this, triggerId, positive, progress);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g0(int mTouchAnchorId, float pos, float locationX, float locationY, float[] mAnchorDpDt) {
        String resourceName;
        HashMap<View, MotionController> hashMap = this.f2996s0;
        View viewById = getViewById(mTouchAnchorId);
        MotionController motionController = hashMap.get(viewById);
        if (motionController != null) {
            motionController.k(pos, locationX, locationY, mAnchorDpDt);
            float y3 = viewById.getY();
            this.D0 = pos;
            this.E0 = y3;
            return;
        }
        if (viewById == null) {
            resourceName = "" + mTouchAnchorId;
        } else {
            resourceName = viewById.getContext().getResources().getResourceName(mTouchAnchorId);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("WARNING could not find view id ");
        sb.append(resourceName);
    }

    public ConstraintSet getConstraintSet(int id) {
        MotionScene motionScene = this.G;
        if (motionScene == null) {
            return null;
        }
        return motionScene.h(id);
    }

    public int[] getConstraintSetIds() {
        MotionScene motionScene = this.G;
        if (motionScene == null) {
            return null;
        }
        return motionScene.getConstraintSetIds();
    }

    public int getCurrentState() {
        return this.f2986n0;
    }

    public void getDebugMode(boolean showPaths) {
        this.F0 = showPaths ? 2 : 1;
        invalidate();
    }

    public ArrayList<MotionScene.Transition> getDefinedTransitions() {
        MotionScene motionScene = this.G;
        if (motionScene == null) {
            return null;
        }
        return motionScene.getDefinedTransitions();
    }

    public DesignTool getDesignTool() {
        if (this.K0 == null) {
            this.K0 = new DesignTool(this);
        }
        return this.K0;
    }

    public int getEndState() {
        return this.f2988o0;
    }

    protected long getNanoTime() {
        return System.nanoTime();
    }

    public float getProgress() {
        return this.f3004w0;
    }

    public MotionScene getScene() {
        return this.G;
    }

    public int getStartState() {
        return this.K;
    }

    public float getTargetPosition() {
        return this.f3008y0;
    }

    public MotionScene.Transition getTransition(int id) {
        return this.G.getTransitionById(id);
    }

    public Bundle getTransitionState() {
        if (this.f2993q1 == null) {
            this.f2993q1 = new StateCache();
        }
        this.f2993q1.recordState();
        return this.f2993q1.getTransitionState();
    }

    public long getTransitionTimeMs() {
        MotionScene motionScene = this.G;
        if (motionScene != null) {
            this.f3000u0 = motionScene.getDuration() / 1000.0f;
        }
        return this.f3000u0 * 1000.0f;
    }

    public float getVelocity() {
        return this.J;
    }

    public void getViewVelocity(View view, float posOnViewX, float posOnViewY, float[] returnVelocity, int type) {
        float f4;
        float f5 = this.J;
        float f6 = this.f3004w0;
        if (this.H != null) {
            float signum = Math.signum(this.f3008y0 - f6);
            float interpolation = this.H.getInterpolation(this.f3004w0 + M1);
            float interpolation2 = this.H.getInterpolation(this.f3004w0);
            f5 = (signum * ((interpolation - interpolation2) / M1)) / this.f3000u0;
            f4 = interpolation2;
        } else {
            f4 = f6;
        }
        Interpolator interpolator = this.H;
        if (interpolator instanceof MotionInterpolator) {
            f5 = ((MotionInterpolator) interpolator).getVelocity();
        }
        MotionController motionController = this.f2996s0.get(view);
        if ((type & 1) == 0) {
            motionController.q(f4, view.getWidth(), view.getHeight(), posOnViewX, posOnViewY, returnVelocity);
        } else {
            motionController.k(f4, posOnViewX, posOnViewY, returnVelocity);
        }
        if (type < 2) {
            returnVelocity[0] = returnVelocity[0] * f5;
            returnVelocity[1] = returnVelocity[1] * f5;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String h0(int id) {
        MotionScene motionScene = this.G;
        if (motionScene == null) {
            return null;
        }
        return motionScene.lookUpConstraintName(id);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MotionController i0(int mTouchAnchorId) {
        return this.f2996s0.get(findViewById(mTouchAnchorId));
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        if (Build.VERSION.SDK_INT >= 19) {
            return super.isAttachedToWindow();
        }
        return getWindowToken() != null;
    }

    public boolean isDelayedApplicationOfInitialState() {
        return this.B1;
    }

    public boolean isInRotation() {
        return this.f3001u1;
    }

    public boolean isInteractionEnabled() {
        return this.f2994r0;
    }

    public boolean isViewTransitionEnabled(int viewTransitionId) {
        MotionScene motionScene = this.G;
        if (motionScene != null) {
            return motionScene.isViewTransitionEnabled(viewTransitionId);
        }
        return false;
    }

    public void jumpToState(int id) {
        if (!isAttachedToWindow()) {
            this.f2986n0 = id;
        }
        if (this.K == id) {
            setProgress(0.0f);
        } else if (this.f2988o0 == id) {
            setProgress(1.0f);
        } else {
            setTransition(id, id);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int l0(String id) {
        MotionScene motionScene = this.G;
        if (motionScene == null) {
            return 0;
        }
        return motionScene.lookUpConstraintId(id);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    public void loadLayoutDescription(int motionScene) {
        MotionScene.Transition transition;
        if (motionScene != 0) {
            try {
                MotionScene motionScene2 = new MotionScene(getContext(), this, motionScene);
                this.G = motionScene2;
                if (this.f2986n0 == -1) {
                    this.f2986n0 = motionScene2.y();
                    this.K = this.G.y();
                    this.f2988o0 = this.G.j();
                }
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= 19 && !isAttachedToWindow()) {
                    this.G = null;
                    return;
                }
                if (i2 >= 17) {
                    try {
                        Display display = getDisplay();
                        this.f3011z1 = display == null ? 0 : display.getRotation();
                    } catch (Exception e4) {
                        throw new IllegalArgumentException("unable to parse MotionScene file", e4);
                    }
                }
                MotionScene motionScene3 = this.G;
                if (motionScene3 != null) {
                    ConstraintSet h4 = motionScene3.h(this.f2986n0);
                    this.G.N(this);
                    ArrayList<MotionHelper> arrayList = this.Y0;
                    if (arrayList != null) {
                        Iterator<MotionHelper> it2 = arrayList.iterator();
                        while (it2.hasNext()) {
                            it2.next().onFinishedMotionScene(this);
                        }
                    }
                    if (h4 != null) {
                        h4.applyTo(this);
                    }
                    this.K = this.f2986n0;
                }
                n0();
                StateCache stateCache = this.f2993q1;
                if (stateCache != null) {
                    if (this.B1) {
                        post(new Runnable() { // from class: androidx.constraintlayout.motion.widget.MotionLayout.1
                            @Override // java.lang.Runnable
                            public void run() {
                                MotionLayout.this.f2993q1.a();
                            }
                        });
                        return;
                    } else {
                        stateCache.a();
                        return;
                    }
                }
                MotionScene motionScene4 = this.G;
                if (motionScene4 == null || (transition = motionScene4.f3094c) == null || transition.getAutoTransition() != 4) {
                    return;
                }
                transitionToEnd();
                setState(TransitionState.SETUP);
                setState(TransitionState.MOVING);
                return;
            } catch (Exception e5) {
                throw new IllegalArgumentException("unable to parse MotionScene file", e5);
            }
        }
        this.G = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MotionTracker m0() {
        return MyTracker.obtain();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    protected void n(int id) {
        this.f3384k = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n0() {
        MotionScene motionScene = this.G;
        if (motionScene == null) {
            return;
        }
        if (motionScene.f(this, this.f2986n0)) {
            requestLayout();
            return;
        }
        int i2 = this.f2986n0;
        if (i2 != -1) {
            this.G.addOnClickListeners(this, i2);
        }
        if (this.G.Q()) {
            this.G.P();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        MotionScene.Transition transition;
        int i2;
        Display display;
        super.onAttachedToWindow();
        if (Build.VERSION.SDK_INT >= 17 && (display = getDisplay()) != null) {
            this.f3011z1 = display.getRotation();
        }
        MotionScene motionScene = this.G;
        if (motionScene != null && (i2 = this.f2986n0) != -1) {
            ConstraintSet h4 = motionScene.h(i2);
            this.G.N(this);
            ArrayList<MotionHelper> arrayList = this.Y0;
            if (arrayList != null) {
                Iterator<MotionHelper> it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    it2.next().onFinishedMotionScene(this);
                }
            }
            if (h4 != null) {
                h4.applyTo(this);
            }
            this.K = this.f2986n0;
        }
        n0();
        StateCache stateCache = this.f2993q1;
        if (stateCache != null) {
            if (this.B1) {
                post(new Runnable() { // from class: androidx.constraintlayout.motion.widget.MotionLayout.4
                    @Override // java.lang.Runnable
                    public void run() {
                        MotionLayout.this.f2993q1.a();
                    }
                });
                return;
            } else {
                stateCache.a();
                return;
            }
        }
        MotionScene motionScene2 = this.G;
        if (motionScene2 == null || (transition = motionScene2.f3094c) == null || transition.getAutoTransition() != 4) {
            return;
        }
        transitionToEnd();
        setState(TransitionState.SETUP);
        setState(TransitionState.MOVING);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent event) {
        TouchResponse touchResponse;
        int j4;
        RectF i2;
        MotionScene motionScene = this.G;
        if (motionScene != null && this.f2994r0) {
            ViewTransitionController viewTransitionController = motionScene.f3110s;
            if (viewTransitionController != null) {
                viewTransitionController.k(event);
            }
            MotionScene.Transition transition = this.G.f3094c;
            if (transition != null && transition.isEnabled() && (touchResponse = transition.getTouchResponse()) != null && ((event.getAction() != 0 || (i2 = touchResponse.i(this, new RectF())) == null || i2.contains(event.getX(), event.getY())) && (j4 = touchResponse.j()) != -1)) {
                View view = this.G1;
                if (view == null || view.getId() != j4) {
                    this.G1 = findViewById(j4);
                }
                View view2 = this.G1;
                if (view2 != null) {
                    this.F1.set(view2.getLeft(), this.G1.getTop(), this.G1.getRight(), this.G1.getBottom());
                    if (this.F1.contains(event.getX(), event.getY()) && !j0(this.G1.getLeft(), this.G1.getTop(), this.G1, event)) {
                        return onTouchEvent(event);
                    }
                }
            }
        }
        return false;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        this.f2991p1 = true;
        try {
            if (this.G == null) {
                super.onLayout(changed, left, top, right, bottom);
                return;
            }
            int i2 = right - left;
            int i4 = bottom - top;
            if (this.O0 != i2 || this.P0 != i4) {
                rebuildScene();
                b0(true);
            }
            this.O0 = i2;
            this.P0 = i4;
            this.M0 = i2;
            this.N0 = i4;
        } finally {
            this.f2991p1 = false;
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (this.G == null) {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
            return;
        }
        boolean z3 = false;
        boolean z4 = (this.f2990p0 == widthMeasureSpec && this.f2992q0 == heightMeasureSpec) ? false : true;
        if (this.E1) {
            this.E1 = false;
            n0();
            o0();
            z4 = true;
        }
        if (this.f3381h) {
            z4 = true;
        }
        this.f2990p0 = widthMeasureSpec;
        this.f2992q0 = heightMeasureSpec;
        int y3 = this.G.y();
        int j4 = this.G.j();
        if ((z4 || this.D1.isNotConfiguredWith(y3, j4)) && this.K != -1) {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
            this.D1.g(this.f3376c, this.G.h(y3), this.G.h(j4));
            this.D1.reEvaluateState();
            this.D1.setMeasuredId(y3, j4);
        } else {
            if (z4) {
                super.onMeasure(widthMeasureSpec, heightMeasureSpec);
            }
            z3 = true;
        }
        if (this.f2979g1 || z3) {
            int paddingTop = getPaddingTop() + getPaddingBottom();
            int width = this.f3376c.getWidth() + getPaddingLeft() + getPaddingRight();
            int height = this.f3376c.getHeight() + paddingTop;
            int i2 = this.f2984l1;
            if (i2 == Integer.MIN_VALUE || i2 == 0) {
                int i4 = this.f2980h1;
                width = (int) (i4 + (this.f2987n1 * (this.f2982j1 - i4)));
                requestLayout();
            }
            int i5 = this.f2985m1;
            if (i5 == Integer.MIN_VALUE || i5 == 0) {
                int i6 = this.f2981i1;
                height = (int) (i6 + (this.f2987n1 * (this.f2983k1 - i6)));
                requestLayout();
            }
            setMeasuredDimension(width, height);
        }
        c0();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedFling(@NonNull View target, float velocityX, float velocityY, boolean consumed) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedPreFling(@NonNull View target, float velocityX, float velocityY) {
        return false;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedPreScroll(@NonNull final View target, int dx, int dy, @NonNull int[] consumed, int type) {
        MotionScene.Transition transition;
        TouchResponse touchResponse;
        int j4;
        MotionScene motionScene = this.G;
        if (motionScene == null || (transition = motionScene.f3094c) == null || !transition.isEnabled()) {
            return;
        }
        int i2 = -1;
        if (!transition.isEnabled() || (touchResponse = transition.getTouchResponse()) == null || (j4 = touchResponse.j()) == -1 || target.getId() == j4) {
            if (motionScene.q()) {
                TouchResponse touchResponse2 = transition.getTouchResponse();
                if (touchResponse2 != null && (touchResponse2.getFlags() & 4) != 0) {
                    i2 = dy;
                }
                float f4 = this.f3002v0;
                if ((f4 == 1.0f || f4 == 0.0f) && target.canScrollVertically(i2)) {
                    return;
                }
            }
            if (transition.getTouchResponse() != null && (transition.getTouchResponse().getFlags() & 1) != 0) {
                float r3 = motionScene.r(dx, dy);
                float f5 = this.f3004w0;
                if ((f5 <= 0.0f && r3 < 0.0f) || (f5 >= 1.0f && r3 > 0.0f)) {
                    if (Build.VERSION.SDK_INT >= 21) {
                        target.setNestedScrollingEnabled(false);
                        target.post(new Runnable(this) { // from class: androidx.constraintlayout.motion.widget.MotionLayout.3
                            @Override // java.lang.Runnable
                            public void run() {
                                target.setNestedScrollingEnabled(true);
                            }
                        });
                        return;
                    }
                    return;
                }
            }
            float f6 = this.f3002v0;
            long nanoTime = getNanoTime();
            float f7 = dx;
            this.R0 = f7;
            float f8 = dy;
            this.S0 = f8;
            double d4 = nanoTime - this.T0;
            Double.isNaN(d4);
            this.U0 = (float) (d4 * 1.0E-9d);
            this.T0 = nanoTime;
            motionScene.J(f7, f8);
            if (f6 != this.f3002v0) {
                consumed[0] = dx;
                consumed[1] = dy;
            }
            b0(false);
            if (consumed[0] == 0 && consumed[1] == 0) {
                return;
            }
            this.Q0 = true;
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScroll(@NonNull View target, int dxConsumed, int dyConsumed, int dxUnconsumed, int dyUnconsumed, int type) {
    }

    @Override // androidx.core.view.NestedScrollingParent3
    public void onNestedScroll(@NonNull View target, int dxConsumed, int dyConsumed, int dxUnconsumed, int dyUnconsumed, int type, int[] consumed) {
        if (this.Q0 || dxConsumed != 0 || dyConsumed != 0) {
            consumed[0] = consumed[0] + dxUnconsumed;
            consumed[1] = consumed[1] + dyUnconsumed;
        }
        this.Q0 = false;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScrollAccepted(@NonNull View child, @NonNull View target, int axes, int type) {
        this.T0 = getNanoTime();
        this.U0 = 0.0f;
        this.R0 = 0.0f;
        this.S0 = 0.0f;
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int layoutDirection) {
        MotionScene motionScene = this.G;
        if (motionScene != null) {
            motionScene.setRtl(l());
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public boolean onStartNestedScroll(@NonNull View child, @NonNull View target, int axes, int type) {
        MotionScene.Transition transition;
        MotionScene motionScene = this.G;
        return (motionScene == null || (transition = motionScene.f3094c) == null || transition.getTouchResponse() == null || (this.G.f3094c.getTouchResponse().getFlags() & 2) != 0) ? false : true;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onStopNestedScroll(@NonNull View target, int type) {
        MotionScene motionScene = this.G;
        if (motionScene != null) {
            float f4 = this.U0;
            if (f4 == 0.0f) {
                return;
            }
            motionScene.K(this.R0 / f4, this.S0 / f4);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        MotionScene motionScene = this.G;
        if (motionScene != null && this.f2994r0 && motionScene.Q()) {
            MotionScene.Transition transition = this.G.f3094c;
            if (transition != null && !transition.isEnabled()) {
                return super.onTouchEvent(event);
            }
            this.G.L(event, getCurrentState(), this);
            if (this.G.f3094c.isTransitionFlag(4)) {
                return this.G.f3094c.getTouchResponse().k();
            }
            return true;
        }
        return super.onTouchEvent(event);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        if (view instanceof MotionHelper) {
            MotionHelper motionHelper = (MotionHelper) view;
            if (this.Z0 == null) {
                this.Z0 = new CopyOnWriteArrayList<>();
            }
            this.Z0.add(motionHelper);
            if (motionHelper.isUsedOnShow()) {
                if (this.W0 == null) {
                    this.W0 = new ArrayList<>();
                }
                this.W0.add(motionHelper);
            }
            if (motionHelper.isUseOnHide()) {
                if (this.X0 == null) {
                    this.X0 = new ArrayList<>();
                }
                this.X0.add(motionHelper);
            }
            if (motionHelper.isDecorator()) {
                if (this.Y0 == null) {
                    this.Y0 = new ArrayList<>();
                }
                this.Y0.add(motionHelper);
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        ArrayList<MotionHelper> arrayList = this.W0;
        if (arrayList != null) {
            arrayList.remove(view);
        }
        ArrayList<MotionHelper> arrayList2 = this.X0;
        if (arrayList2 != null) {
            arrayList2.remove(view);
        }
    }

    @Deprecated
    public void rebuildMotion() {
        rebuildScene();
    }

    public void rebuildScene() {
        this.D1.reEvaluateState();
        invalidate();
    }

    public boolean removeTransitionListener(TransitionListener listener) {
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList = this.Z0;
        if (copyOnWriteArrayList == null) {
            return false;
        }
        return copyOnWriteArrayList.remove(listener);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View, android.view.ViewParent
    public void requestLayout() {
        MotionScene motionScene;
        MotionScene.Transition transition;
        if (!this.f2979g1 && this.f2986n0 == -1 && (motionScene = this.G) != null && (transition = motionScene.f3094c) != null) {
            int layoutDuringTransition = transition.getLayoutDuringTransition();
            if (layoutDuringTransition == 0) {
                return;
            }
            if (layoutDuringTransition == 2) {
                int childCount = getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    this.f2996s0.get(getChildAt(i2)).remeasure();
                }
                return;
            }
        }
        super.requestLayout();
    }

    @RequiresApi(api = 17)
    public void rotateTo(int id, int duration) {
        this.f3001u1 = true;
        this.f3007x1 = getWidth();
        this.f3009y1 = getHeight();
        int rotation = getDisplay().getRotation();
        this.f3003v1 = (rotation + 1) % 4 <= (this.f3011z1 + 1) % 4 ? 2 : 1;
        this.f3011z1 = rotation;
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            ViewState viewState = this.f3005w1.get(childAt);
            if (viewState == null) {
                viewState = new ViewState();
                this.f3005w1.put(childAt, viewState);
            }
            viewState.getState(childAt);
        }
        this.K = -1;
        this.f2988o0 = id;
        this.G.O(-1, id);
        this.D1.g(this.f3376c, null, this.G.h(this.f2988o0));
        this.f3002v0 = 0.0f;
        this.f3004w0 = 0.0f;
        invalidate();
        transitionToEnd(new Runnable() { // from class: androidx.constraintlayout.motion.widget.MotionLayout.2
            @Override // java.lang.Runnable
            public void run() {
                MotionLayout.this.f3001u1 = false;
            }
        });
        if (duration > 0) {
            this.f3000u0 = duration / 1000.0f;
        }
    }

    public void scheduleTransitionTo(int id) {
        if (getCurrentState() == -1) {
            transitionToState(id);
            return;
        }
        int[] iArr = this.f2997s1;
        if (iArr == null) {
            this.f2997s1 = new int[4];
        } else if (iArr.length <= this.f2999t1) {
            this.f2997s1 = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.f2997s1;
        int i2 = this.f2999t1;
        this.f2999t1 = i2 + 1;
        iArr2[i2] = id;
    }

    public void setDebugMode(int debugMode) {
        this.F0 = debugMode;
        invalidate();
    }

    public void setDelayedApplicationOfInitialState(boolean delayedApply) {
        this.B1 = delayedApply;
    }

    public void setInteractionEnabled(boolean enabled) {
        this.f2994r0 = enabled;
    }

    public void setInterpolatedProgress(float pos) {
        if (this.G != null) {
            setState(TransitionState.MOVING);
            Interpolator interpolator = this.G.getInterpolator();
            if (interpolator != null) {
                setProgress(interpolator.getInterpolation(pos));
                return;
            }
        }
        setProgress(pos);
    }

    public void setOnHide(float progress) {
        ArrayList<MotionHelper> arrayList = this.X0;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.X0.get(i2).setProgress(progress);
            }
        }
    }

    public void setOnShow(float progress) {
        ArrayList<MotionHelper> arrayList = this.W0;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.W0.get(i2).setProgress(progress);
            }
        }
    }

    public void setProgress(float pos, float velocity) {
        if (!isAttachedToWindow()) {
            if (this.f2993q1 == null) {
                this.f2993q1 = new StateCache();
            }
            this.f2993q1.setProgress(pos);
            this.f2993q1.setVelocity(velocity);
            return;
        }
        setProgress(pos);
        setState(TransitionState.MOVING);
        this.J = velocity;
        if (velocity != 0.0f) {
            S(velocity <= 0.0f ? 0.0f : 1.0f);
        } else if (pos == 0.0f || pos == 1.0f) {
        } else {
            S(pos <= 0.5f ? 0.0f : 1.0f);
        }
    }

    public void setScene(MotionScene scene) {
        this.G = scene;
        scene.setRtl(l());
        rebuildScene();
    }

    void setStartState(int beginId) {
        if (!isAttachedToWindow()) {
            if (this.f2993q1 == null) {
                this.f2993q1 = new StateCache();
            }
            this.f2993q1.setStartState(beginId);
            this.f2993q1.setEndState(beginId);
            return;
        }
        this.f2986n0 = beginId;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setState(TransitionState newState) {
        TransitionState transitionState = TransitionState.FINISHED;
        if (newState == transitionState && this.f2986n0 == -1) {
            return;
        }
        TransitionState transitionState2 = this.C1;
        this.C1 = newState;
        TransitionState transitionState3 = TransitionState.MOVING;
        if (transitionState2 == transitionState3 && newState == transitionState3) {
            d0();
        }
        int i2 = AnonymousClass5.f3016a[transitionState2.ordinal()];
        if (i2 != 1 && i2 != 2) {
            if (i2 == 3 && newState == transitionState) {
                e0();
                return;
            }
            return;
        }
        if (newState == transitionState3) {
            d0();
        }
        if (newState == transitionState) {
            e0();
        }
    }

    public void setTransition(int beginId, int endId) {
        if (!isAttachedToWindow()) {
            if (this.f2993q1 == null) {
                this.f2993q1 = new StateCache();
            }
            this.f2993q1.setStartState(beginId);
            this.f2993q1.setEndState(endId);
            return;
        }
        MotionScene motionScene = this.G;
        if (motionScene != null) {
            this.K = beginId;
            this.f2988o0 = endId;
            motionScene.O(beginId, endId);
            this.D1.g(this.f3376c, this.G.h(beginId), this.G.h(endId));
            rebuildScene();
            this.f3004w0 = 0.0f;
            transitionToStart();
        }
    }

    public void setTransitionDuration(int milliseconds) {
        MotionScene motionScene = this.G;
        if (motionScene == null) {
            return;
        }
        motionScene.setDuration(milliseconds);
    }

    public void setTransitionListener(TransitionListener listener) {
        this.C0 = listener;
    }

    public void setTransitionState(Bundle bundle) {
        if (this.f2993q1 == null) {
            this.f2993q1 = new StateCache();
        }
        this.f2993q1.setTransitionState(bundle);
        if (isAttachedToWindow()) {
            this.f2993q1.a();
        }
    }

    @Override // android.view.View
    public String toString() {
        Context context = getContext();
        return Debug.getName(context, this.K) + "->" + Debug.getName(context, this.f2988o0) + " (pos:" + this.f3004w0 + " Dpos/Dt:" + this.J;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0037, code lost:
        if (r10 != 7) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void touchAnimateTo(int r10, float r11, float r12) {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionLayout.touchAnimateTo(int, float, float):void");
    }

    public void touchSpringTo(float position, float currentVelocity) {
        if (this.G == null || this.f3004w0 == position) {
            return;
        }
        this.H0 = true;
        this.f2998t0 = getNanoTime();
        this.f3000u0 = this.G.getDuration() / 1000.0f;
        this.f3008y0 = position;
        this.A0 = true;
        this.I0.springConfig(this.f3004w0, position, currentVelocity, this.G.v(), this.G.w(), this.G.u(), this.G.x(), this.G.t());
        int i2 = this.f2986n0;
        this.f3008y0 = position;
        this.f2986n0 = i2;
        this.H = this.I0;
        this.f3010z0 = false;
        this.f2998t0 = getNanoTime();
        invalidate();
    }

    public void transitionToEnd() {
        S(1.0f);
        this.f2995r1 = null;
    }

    public void transitionToStart() {
        S(0.0f);
    }

    public void transitionToState(int id) {
        if (!isAttachedToWindow()) {
            if (this.f2993q1 == null) {
                this.f2993q1 = new StateCache();
            }
            this.f2993q1.setEndState(id);
            return;
        }
        transitionToState(id, -1, -1);
    }

    public void updateState(int stateId, ConstraintSet set) {
        MotionScene motionScene = this.G;
        if (motionScene != null) {
            motionScene.setConstraintSet(stateId, set);
        }
        updateState();
        if (this.f2986n0 == stateId) {
            set.applyTo(this);
        }
    }

    public void updateStateAnimate(int stateId, ConstraintSet set, int duration) {
        if (this.G != null && this.f2986n0 == stateId) {
            int i2 = R.id.view_transition;
            updateState(i2, getConstraintSet(stateId));
            setState(i2, -1, -1);
            updateState(stateId, set);
            MotionScene.Transition transition = new MotionScene.Transition(-1, this.G, i2, stateId);
            transition.setDuration(duration);
            setTransition(transition);
            transitionToEnd();
        }
    }

    public void viewTransition(int viewTransitionId, View... view) {
        MotionScene motionScene = this.G;
        if (motionScene != null) {
            motionScene.viewTransition(viewTransitionId, view);
        }
    }

    /* loaded from: classes.dex */
    private static class MyTracker implements MotionTracker {

        /* renamed from: b  reason: collision with root package name */
        private static MyTracker f3050b = new MyTracker();

        /* renamed from: a  reason: collision with root package name */
        VelocityTracker f3051a;

        private MyTracker() {
        }

        public static MyTracker obtain() {
            f3050b.f3051a = VelocityTracker.obtain();
            return f3050b;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public void addMovement(MotionEvent event) {
            VelocityTracker velocityTracker = this.f3051a;
            if (velocityTracker != null) {
                velocityTracker.addMovement(event);
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public void clear() {
            VelocityTracker velocityTracker = this.f3051a;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public void computeCurrentVelocity(int units) {
            VelocityTracker velocityTracker = this.f3051a;
            if (velocityTracker != null) {
                velocityTracker.computeCurrentVelocity(units);
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public float getXVelocity() {
            VelocityTracker velocityTracker = this.f3051a;
            if (velocityTracker != null) {
                return velocityTracker.getXVelocity();
            }
            return 0.0f;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public float getYVelocity() {
            VelocityTracker velocityTracker = this.f3051a;
            if (velocityTracker != null) {
                return velocityTracker.getYVelocity();
            }
            return 0.0f;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public void recycle() {
            VelocityTracker velocityTracker = this.f3051a;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f3051a = null;
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public void computeCurrentVelocity(int units, float maxVelocity) {
            VelocityTracker velocityTracker = this.f3051a;
            if (velocityTracker != null) {
                velocityTracker.computeCurrentVelocity(units, maxVelocity);
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public float getXVelocity(int id) {
            VelocityTracker velocityTracker = this.f3051a;
            if (velocityTracker != null) {
                return velocityTracker.getXVelocity(id);
            }
            return 0.0f;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public float getYVelocity(int id) {
            if (this.f3051a != null) {
                return getYVelocity(id);
            }
            return 0.0f;
        }
    }

    public void transitionToEnd(Runnable onComplete) {
        S(1.0f);
        this.f2995r1 = onComplete;
    }

    public void transitionToState(int id, int duration) {
        if (!isAttachedToWindow()) {
            if (this.f2993q1 == null) {
                this.f2993q1 = new StateCache();
            }
            this.f2993q1.setEndState(id);
            return;
        }
        transitionToState(id, -1, -1, duration);
    }

    public void updateState() {
        this.D1.g(this.f3376c, this.G.h(this.K), this.G.h(this.f2988o0));
        rebuildScene();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    public void setState(int id, int screenWidth, int screenHeight) {
        setState(TransitionState.SETUP);
        this.f2986n0 = id;
        this.K = -1;
        this.f2988o0 = -1;
        ConstraintLayoutStates constraintLayoutStates = this.f3384k;
        if (constraintLayoutStates != null) {
            constraintLayoutStates.updateConstraints(id, screenWidth, screenHeight);
            return;
        }
        MotionScene motionScene = this.G;
        if (motionScene != null) {
            motionScene.h(id).applyTo(this);
        }
    }

    public void setProgress(float pos) {
        if (pos >= 0.0f) {
            int i2 = (pos > 1.0f ? 1 : (pos == 1.0f ? 0 : -1));
        }
        if (!isAttachedToWindow()) {
            if (this.f2993q1 == null) {
                this.f2993q1 = new StateCache();
            }
            this.f2993q1.setProgress(pos);
            return;
        }
        if (pos <= 0.0f) {
            if (this.f3004w0 == 1.0f && this.f2986n0 == this.f2988o0) {
                setState(TransitionState.MOVING);
            }
            this.f2986n0 = this.K;
            if (this.f3004w0 == 0.0f) {
                setState(TransitionState.FINISHED);
            }
        } else if (pos >= 1.0f) {
            if (this.f3004w0 == 0.0f && this.f2986n0 == this.K) {
                setState(TransitionState.MOVING);
            }
            this.f2986n0 = this.f2988o0;
            if (this.f3004w0 == 1.0f) {
                setState(TransitionState.FINISHED);
            }
        } else {
            this.f2986n0 = -1;
            setState(TransitionState.MOVING);
        }
        if (this.G == null) {
            return;
        }
        this.f3010z0 = true;
        this.f3008y0 = pos;
        this.f3002v0 = pos;
        this.f3006x0 = -1L;
        this.f2998t0 = -1L;
        this.H = null;
        this.A0 = true;
        invalidate();
    }

    public void transitionToState(int id, int screenWidth, int screenHeight) {
        transitionToState(id, screenWidth, screenHeight, -1);
    }

    public void transitionToState(int id, int screenWidth, int screenHeight, int duration) {
        StateSet stateSet;
        int convertToConstraintSet;
        MotionScene motionScene = this.G;
        if (motionScene != null && (stateSet = motionScene.f3093b) != null && (convertToConstraintSet = stateSet.convertToConstraintSet(this.f2986n0, id, screenWidth, screenHeight)) != -1) {
            id = convertToConstraintSet;
        }
        int i2 = this.f2986n0;
        if (i2 == id) {
            return;
        }
        if (this.K == id) {
            S(0.0f);
            if (duration > 0) {
                this.f3000u0 = duration / 1000.0f;
            }
        } else if (this.f2988o0 == id) {
            S(1.0f);
            if (duration > 0) {
                this.f3000u0 = duration / 1000.0f;
            }
        } else {
            this.f2988o0 = id;
            if (i2 != -1) {
                setTransition(i2, id);
                S(1.0f);
                this.f3004w0 = 0.0f;
                transitionToEnd();
                if (duration > 0) {
                    this.f3000u0 = duration / 1000.0f;
                    return;
                }
                return;
            }
            this.H0 = false;
            this.f3008y0 = 1.0f;
            this.f3002v0 = 0.0f;
            this.f3004w0 = 0.0f;
            this.f3006x0 = getNanoTime();
            this.f2998t0 = getNanoTime();
            this.f3010z0 = false;
            this.H = null;
            if (duration == -1) {
                this.f3000u0 = this.G.getDuration() / 1000.0f;
            }
            this.K = -1;
            this.G.O(-1, this.f2988o0);
            SparseArray sparseArray = new SparseArray();
            if (duration == 0) {
                this.f3000u0 = this.G.getDuration() / 1000.0f;
            } else if (duration > 0) {
                this.f3000u0 = duration / 1000.0f;
            }
            int childCount = getChildCount();
            this.f2996s0.clear();
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = getChildAt(i4);
                this.f2996s0.put(childAt, new MotionController(childAt));
                sparseArray.put(childAt.getId(), this.f2996s0.get(childAt));
            }
            this.A0 = true;
            this.D1.g(this.f3376c, null, this.G.h(id));
            rebuildScene();
            this.D1.build();
            X();
            int width = getWidth();
            int height = getHeight();
            if (this.Y0 != null) {
                for (int i5 = 0; i5 < childCount; i5++) {
                    MotionController motionController = this.f2996s0.get(getChildAt(i5));
                    if (motionController != null) {
                        this.G.getKeyFrames(motionController);
                    }
                }
                Iterator<MotionHelper> it2 = this.Y0.iterator();
                while (it2.hasNext()) {
                    it2.next().onPreSetup(this, this.f2996s0);
                }
                for (int i6 = 0; i6 < childCount; i6++) {
                    MotionController motionController2 = this.f2996s0.get(getChildAt(i6));
                    if (motionController2 != null) {
                        motionController2.setup(width, height, this.f3000u0, getNanoTime());
                    }
                }
            } else {
                for (int i7 = 0; i7 < childCount; i7++) {
                    MotionController motionController3 = this.f2996s0.get(getChildAt(i7));
                    if (motionController3 != null) {
                        this.G.getKeyFrames(motionController3);
                        motionController3.setup(width, height, this.f3000u0, getNanoTime());
                    }
                }
            }
            float staggered = this.G.getStaggered();
            if (staggered != 0.0f) {
                float f4 = Float.MAX_VALUE;
                float f5 = -3.4028235E38f;
                for (int i8 = 0; i8 < childCount; i8++) {
                    MotionController motionController4 = this.f2996s0.get(getChildAt(i8));
                    float finalY = motionController4.getFinalY() + motionController4.getFinalX();
                    f4 = Math.min(f4, finalY);
                    f5 = Math.max(f5, finalY);
                }
                for (int i9 = 0; i9 < childCount; i9++) {
                    MotionController motionController5 = this.f2996s0.get(getChildAt(i9));
                    float finalX = motionController5.getFinalX();
                    float finalY2 = motionController5.getFinalY();
                    motionController5.f2956o = 1.0f / (1.0f - staggered);
                    motionController5.f2955n = staggered - ((((finalX + finalY2) - f4) * staggered) / (f5 - f4));
                }
            }
            this.f3002v0 = 0.0f;
            this.f3004w0 = 0.0f;
            this.A0 = true;
            invalidate();
        }
    }

    public void setTransition(int transitionId) {
        if (this.G != null) {
            MotionScene.Transition transition = getTransition(transitionId);
            this.K = transition.getStartConstraintSetId();
            this.f2988o0 = transition.getEndConstraintSetId();
            if (!isAttachedToWindow()) {
                if (this.f2993q1 == null) {
                    this.f2993q1 = new StateCache();
                }
                this.f2993q1.setStartState(this.K);
                this.f2993q1.setEndState(this.f2988o0);
                return;
            }
            float f4 = Float.NaN;
            int i2 = this.f2986n0;
            if (i2 == this.K) {
                f4 = 0.0f;
            } else if (i2 == this.f2988o0) {
                f4 = 1.0f;
            }
            this.G.setTransition(transition);
            this.D1.g(this.f3376c, this.G.h(this.K), this.G.h(this.f2988o0));
            rebuildScene();
            if (this.f3004w0 != f4) {
                if (f4 == 0.0f) {
                    a0(true);
                    this.G.h(this.K).applyTo(this);
                } else if (f4 == 1.0f) {
                    a0(false);
                    this.G.h(this.f2988o0).applyTo(this);
                }
            }
            this.f3004w0 = Float.isNaN(f4) ? 0.0f : f4;
            if (Float.isNaN(f4)) {
                StringBuilder sb = new StringBuilder();
                sb.append(Debug.getLocation());
                sb.append(" transitionToStart ");
                transitionToStart();
                return;
            }
            setProgress(f4);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setTransition(MotionScene.Transition transition) {
        this.G.setTransition(transition);
        setState(TransitionState.SETUP);
        if (this.f2986n0 == this.G.j()) {
            this.f3004w0 = 1.0f;
            this.f3002v0 = 1.0f;
            this.f3008y0 = 1.0f;
        } else {
            this.f3004w0 = 0.0f;
            this.f3002v0 = 0.0f;
            this.f3008y0 = 0.0f;
        }
        this.f3006x0 = transition.isTransitionFlag(1) ? -1L : getNanoTime();
        int y3 = this.G.y();
        int j4 = this.G.j();
        if (y3 == this.K && j4 == this.f2988o0) {
            return;
        }
        this.K = y3;
        this.f2988o0 = j4;
        this.G.O(y3, j4);
        this.D1.g(this.f3376c, this.G.h(this.K), this.G.h(this.f2988o0));
        this.D1.setMeasuredId(this.K, this.f2988o0);
        this.D1.reEvaluateState();
        rebuildScene();
    }

    public MotionLayout(@NonNull Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        this.I = null;
        this.J = 0.0f;
        this.K = -1;
        this.f2986n0 = -1;
        this.f2988o0 = -1;
        this.f2990p0 = 0;
        this.f2992q0 = 0;
        this.f2994r0 = true;
        this.f2996s0 = new HashMap<>();
        this.f2998t0 = 0L;
        this.f3000u0 = 1.0f;
        this.f3002v0 = 0.0f;
        this.f3004w0 = 0.0f;
        this.f3008y0 = 0.0f;
        this.A0 = false;
        this.B0 = false;
        this.F0 = 0;
        this.H0 = false;
        this.I0 = new StopLogic();
        this.J0 = new DecelerateInterpolator();
        this.L0 = true;
        this.Q0 = false;
        this.V0 = false;
        this.W0 = null;
        this.X0 = null;
        this.Y0 = null;
        this.Z0 = null;
        this.f2973a1 = 0;
        this.f2974b1 = -1L;
        this.f2975c1 = 0.0f;
        this.f2976d1 = 0;
        this.f2977e1 = 0.0f;
        this.f2978f1 = false;
        this.f2979g1 = false;
        this.f2989o1 = new KeyCache();
        this.f2991p1 = false;
        this.f2995r1 = null;
        this.f2997s1 = null;
        this.f2999t1 = 0;
        this.f3001u1 = false;
        this.f3003v1 = 0;
        this.f3005w1 = new HashMap<>();
        this.A1 = new Rect();
        this.B1 = false;
        this.C1 = TransitionState.UNDEFINED;
        this.D1 = new Model();
        this.E1 = false;
        this.F1 = new RectF();
        this.G1 = null;
        this.H1 = null;
        this.I1 = new ArrayList<>();
        k0(attrs);
    }

    public MotionLayout(@NonNull Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.I = null;
        this.J = 0.0f;
        this.K = -1;
        this.f2986n0 = -1;
        this.f2988o0 = -1;
        this.f2990p0 = 0;
        this.f2992q0 = 0;
        this.f2994r0 = true;
        this.f2996s0 = new HashMap<>();
        this.f2998t0 = 0L;
        this.f3000u0 = 1.0f;
        this.f3002v0 = 0.0f;
        this.f3004w0 = 0.0f;
        this.f3008y0 = 0.0f;
        this.A0 = false;
        this.B0 = false;
        this.F0 = 0;
        this.H0 = false;
        this.I0 = new StopLogic();
        this.J0 = new DecelerateInterpolator();
        this.L0 = true;
        this.Q0 = false;
        this.V0 = false;
        this.W0 = null;
        this.X0 = null;
        this.Y0 = null;
        this.Z0 = null;
        this.f2973a1 = 0;
        this.f2974b1 = -1L;
        this.f2975c1 = 0.0f;
        this.f2976d1 = 0;
        this.f2977e1 = 0.0f;
        this.f2978f1 = false;
        this.f2979g1 = false;
        this.f2989o1 = new KeyCache();
        this.f2991p1 = false;
        this.f2995r1 = null;
        this.f2997s1 = null;
        this.f2999t1 = 0;
        this.f3001u1 = false;
        this.f3003v1 = 0;
        this.f3005w1 = new HashMap<>();
        this.A1 = new Rect();
        this.B1 = false;
        this.C1 = TransitionState.UNDEFINED;
        this.D1 = new Model();
        this.E1 = false;
        this.F1 = new RectF();
        this.G1 = null;
        this.H1 = null;
        this.I1 = new ArrayList<>();
        k0(attrs);
    }
}
