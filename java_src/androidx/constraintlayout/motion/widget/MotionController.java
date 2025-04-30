package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.BounceInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import androidx.constraintlayout.core.motion.utils.CurveFit;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.core.motion.utils.VelocityMatrix;
import androidx.constraintlayout.motion.utils.CustomSupport;
import androidx.constraintlayout.motion.utils.ViewOscillator;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.motion.utils.ViewState;
import androidx.constraintlayout.motion.utils.ViewTimeCycle;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes.dex */
public class MotionController {
    public static final int DRAW_PATH_AS_CONFIGURED = 4;
    public static final int DRAW_PATH_BASIC = 1;
    public static final int DRAW_PATH_CARTESIAN = 3;
    public static final int DRAW_PATH_NONE = 0;
    public static final int DRAW_PATH_RECTANGLE = 5;
    public static final int DRAW_PATH_RELATIVE = 2;
    public static final int DRAW_PATH_SCREEN = 6;
    public static final int HORIZONTAL_PATH_X = 2;
    public static final int HORIZONTAL_PATH_Y = 3;
    private static final String N = "MotionController";
    private static final boolean O = false;
    private static final boolean P = false;
    public static final int PATH_PERCENT = 0;
    public static final int PATH_PERPENDICULAR = 1;
    static final int Q = 0;
    static final int R = 1;
    public static final int ROTATION_LEFT = 2;
    public static final int ROTATION_RIGHT = 1;
    static final int S = 2;
    static final int T = 3;
    static final int U = 4;
    static final int V = 5;
    public static final int VERTICAL_PATH_X = 4;
    public static final int VERTICAL_PATH_Y = 5;
    private static final int W = -1;
    private static final int X = -2;
    private static final int Y = -3;
    private HashMap<String, ViewTimeCycle> B;
    private HashMap<String, ViewSpline> C;
    private HashMap<String, ViewOscillator> D;
    private KeyTrigger[] E;
    private int F;
    private int G;
    private View H;
    private int I;
    private float J;
    private Interpolator K;
    private boolean L;
    String[] M;

    /* renamed from: b  reason: collision with root package name */
    View f2943b;

    /* renamed from: c  reason: collision with root package name */
    int f2944c;

    /* renamed from: e  reason: collision with root package name */
    String f2946e;

    /* renamed from: k  reason: collision with root package name */
    private CurveFit[] f2952k;

    /* renamed from: l  reason: collision with root package name */
    private CurveFit f2953l;

    /* renamed from: p  reason: collision with root package name */
    float f2957p;

    /* renamed from: q  reason: collision with root package name */
    float f2958q;

    /* renamed from: r  reason: collision with root package name */
    private int[] f2959r;

    /* renamed from: s  reason: collision with root package name */
    private double[] f2960s;

    /* renamed from: t  reason: collision with root package name */
    private double[] f2961t;

    /* renamed from: u  reason: collision with root package name */
    private String[] f2962u;

    /* renamed from: v  reason: collision with root package name */
    private int[] f2963v;

    /* renamed from: a  reason: collision with root package name */
    Rect f2942a = new Rect();

    /* renamed from: d  reason: collision with root package name */
    boolean f2945d = false;

    /* renamed from: f  reason: collision with root package name */
    private int f2947f = -1;

    /* renamed from: g  reason: collision with root package name */
    private MotionPaths f2948g = new MotionPaths();

    /* renamed from: h  reason: collision with root package name */
    private MotionPaths f2949h = new MotionPaths();

    /* renamed from: i  reason: collision with root package name */
    private MotionConstrainedPoint f2950i = new MotionConstrainedPoint();

    /* renamed from: j  reason: collision with root package name */
    private MotionConstrainedPoint f2951j = new MotionConstrainedPoint();

    /* renamed from: m  reason: collision with root package name */
    float f2954m = Float.NaN;

    /* renamed from: n  reason: collision with root package name */
    float f2955n = 0.0f;

    /* renamed from: o  reason: collision with root package name */
    float f2956o = 1.0f;

    /* renamed from: w  reason: collision with root package name */
    private int f2964w = 4;

    /* renamed from: x  reason: collision with root package name */
    private float[] f2965x = new float[4];

    /* renamed from: y  reason: collision with root package name */
    private ArrayList<MotionPaths> f2966y = new ArrayList<>();

    /* renamed from: z  reason: collision with root package name */
    private float[] f2967z = new float[1];
    private ArrayList<Key> A = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public MotionController(View view) {
        int i2 = Key.UNSET;
        this.F = i2;
        this.G = i2;
        this.H = null;
        this.I = i2;
        this.J = Float.NaN;
        this.K = null;
        this.L = false;
        setView(view);
    }

    private float i(float position, float[] velocity) {
        float f4 = 0.0f;
        if (velocity != null) {
            velocity[0] = 1.0f;
        } else {
            float f5 = this.f2956o;
            if (f5 != 1.0d) {
                float f6 = this.f2955n;
                if (position < f6) {
                    position = 0.0f;
                }
                if (position > f6 && position < 1.0d) {
                    position = Math.min((position - f6) * f5, 1.0f);
                }
            }
        }
        Easing easing = this.f2948g.f3068a;
        float f7 = Float.NaN;
        Iterator<MotionPaths> it2 = this.f2966y.iterator();
        while (it2.hasNext()) {
            MotionPaths next = it2.next();
            Easing easing2 = next.f3068a;
            if (easing2 != null) {
                float f8 = next.f3070c;
                if (f8 < position) {
                    easing = easing2;
                    f4 = f8;
                } else if (Float.isNaN(f7)) {
                    f7 = next.f3070c;
                }
            }
        }
        if (easing != null) {
            float f9 = (Float.isNaN(f7) ? 1.0f : f7) - f4;
            double d4 = (position - f4) / f9;
            position = (((float) easing.get(d4)) * f9) + f4;
            if (velocity != null) {
                velocity[0] = (float) easing.getDiff(d4);
            }
        }
        return position;
    }

    private static Interpolator l(Context context, int type, String interpolatorString, int id) {
        if (type != -2) {
            if (type == -1) {
                final Easing interpolator = Easing.getInterpolator(interpolatorString);
                return new Interpolator() { // from class: androidx.constraintlayout.motion.widget.MotionController.1
                    @Override // android.animation.TimeInterpolator
                    public float getInterpolation(float v3) {
                        return (float) Easing.this.get(v3);
                    }
                };
            } else if (type != 0) {
                if (type != 1) {
                    if (type != 2) {
                        if (type != 4) {
                            if (type != 5) {
                                return null;
                            }
                            return new OvershootInterpolator();
                        }
                        return new BounceInterpolator();
                    }
                    return new DecelerateInterpolator();
                }
                return new AccelerateInterpolator();
            } else {
                return new AccelerateDecelerateInterpolator();
            }
        }
        return AnimationUtils.loadInterpolator(context, id);
    }

    private float r() {
        char c4;
        float f4;
        float f5;
        float[] fArr = new float[2];
        float f6 = 1.0f / 99;
        double d4 = 0.0d;
        double d5 = 0.0d;
        float f7 = 0.0f;
        int i2 = 0;
        while (i2 < 100) {
            float f8 = i2 * f6;
            double d6 = f8;
            Easing easing = this.f2948g.f3068a;
            Iterator<MotionPaths> it2 = this.f2966y.iterator();
            float f9 = Float.NaN;
            float f10 = 0.0f;
            while (it2.hasNext()) {
                MotionPaths next = it2.next();
                Easing easing2 = next.f3068a;
                if (easing2 != null) {
                    float f11 = next.f3070c;
                    if (f11 < f8) {
                        easing = easing2;
                        f10 = f11;
                    } else if (Float.isNaN(f9)) {
                        f9 = next.f3070c;
                    }
                }
            }
            if (easing != null) {
                if (Float.isNaN(f9)) {
                    f9 = 1.0f;
                }
                d6 = (((float) easing.get((f8 - f10) / f5)) * (f9 - f10)) + f10;
            }
            this.f2952k[0].getPos(d6, this.f2960s);
            float f12 = f7;
            int i4 = i2;
            this.f2948g.U(d6, this.f2959r, this.f2960s, fArr, 0);
            if (i4 > 0) {
                double d7 = f12;
                double d8 = fArr[1];
                Double.isNaN(d8);
                c4 = 0;
                double d9 = fArr[0];
                Double.isNaN(d9);
                double hypot = Math.hypot(d5 - d8, d4 - d9);
                Double.isNaN(d7);
                f4 = (float) (d7 + hypot);
            } else {
                c4 = 0;
                f4 = f12;
            }
            d4 = fArr[c4];
            i2 = i4 + 1;
            f7 = f4;
            d5 = fArr[1];
        }
        return f7;
    }

    private void s(MotionPaths point) {
        int binarySearch = Collections.binarySearch(this.f2966y, point);
        if (binarySearch == 0) {
            StringBuilder sb = new StringBuilder();
            sb.append(" KeyPath position \"");
            sb.append(point.f3071d);
            sb.append("\" outside of range");
        }
        this.f2966y.add((-binarySearch) - 1, point);
    }

    private void w(MotionPaths motionPaths) {
        motionPaths.O0((int) this.f2943b.getX(), (int) this.f2943b.getY(), this.f2943b.getWidth(), this.f2943b.getHeight());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void A(View v3) {
        MotionPaths motionPaths = this.f2948g;
        motionPaths.f3070c = 0.0f;
        motionPaths.f3071d = 0.0f;
        motionPaths.O0(v3.getX(), v3.getY(), v3.getWidth(), v3.getHeight());
        this.f2950i.setState(v3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void B(Rect cw, ConstraintSet constraintSet, int parentWidth, int parentHeight) {
        int i2 = constraintSet.mRotate;
        if (i2 != 0) {
            x(cw, this.f2942a, i2, parentWidth, parentHeight);
        }
        MotionPaths motionPaths = this.f2948g;
        motionPaths.f3070c = 0.0f;
        motionPaths.f3071d = 0.0f;
        w(motionPaths);
        this.f2948g.O0(cw.left, cw.top, cw.width(), cw.height());
        ConstraintSet.Constraint parameters = constraintSet.getParameters(this.f2944c);
        this.f2948g.applyParameters(parameters);
        this.f2954m = parameters.motion.mMotionStagger;
        this.f2950i.setState(cw, constraintSet, i2, this.f2944c);
        this.G = parameters.transform.transformPivotTarget;
        ConstraintSet.Motion motion = parameters.motion;
        this.I = motion.mQuantizeMotionSteps;
        this.J = motion.mQuantizeMotionPhase;
        Context context = this.f2943b.getContext();
        ConstraintSet.Motion motion2 = parameters.motion;
        this.K = l(context, motion2.mQuantizeInterpolatorType, motion2.mQuantizeInterpolatorString, motion2.mQuantizeInterpolatorID);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(ArrayList<Key> list) {
        this.A.addAll(list);
    }

    public void addKey(Key key) {
        this.A.add(key);
    }

    void b(float[] bounds, int pointCount) {
        float f4;
        float f5 = 1.0f / (pointCount - 1);
        HashMap<String, ViewSpline> hashMap = this.C;
        if (hashMap != null) {
            hashMap.get("translationX");
        }
        HashMap<String, ViewSpline> hashMap2 = this.C;
        if (hashMap2 != null) {
            hashMap2.get("translationY");
        }
        HashMap<String, ViewOscillator> hashMap3 = this.D;
        if (hashMap3 != null) {
            hashMap3.get("translationX");
        }
        HashMap<String, ViewOscillator> hashMap4 = this.D;
        if (hashMap4 != null) {
            hashMap4.get("translationY");
        }
        for (int i2 = 0; i2 < pointCount; i2++) {
            float f6 = i2 * f5;
            float f7 = this.f2956o;
            float f8 = 0.0f;
            if (f7 != 1.0f) {
                float f9 = this.f2955n;
                if (f6 < f9) {
                    f6 = 0.0f;
                }
                if (f6 > f9 && f6 < 1.0d) {
                    f6 = Math.min((f6 - f9) * f7, 1.0f);
                }
            }
            double d4 = f6;
            Easing easing = this.f2948g.f3068a;
            float f10 = Float.NaN;
            Iterator<MotionPaths> it2 = this.f2966y.iterator();
            while (it2.hasNext()) {
                MotionPaths next = it2.next();
                Easing easing2 = next.f3068a;
                if (easing2 != null) {
                    float f11 = next.f3070c;
                    if (f11 < f6) {
                        easing = easing2;
                        f8 = f11;
                    } else if (Float.isNaN(f10)) {
                        f10 = next.f3070c;
                    }
                }
            }
            if (easing != null) {
                if (Float.isNaN(f10)) {
                    f10 = 1.0f;
                }
                d4 = (((float) easing.get((f6 - f8) / f4)) * (f10 - f8)) + f8;
            }
            this.f2952k[0].getPos(d4, this.f2960s);
            CurveFit curveFit = this.f2953l;
            if (curveFit != null) {
                double[] dArr = this.f2960s;
                if (dArr.length > 0) {
                    curveFit.getPos(d4, dArr);
                }
            }
            this.f2948g.A(this.f2959r, this.f2960s, bounds, i2 * 2);
        }
    }

    int c(float[] keyBounds, int[] mode) {
        if (keyBounds != null) {
            double[] timePoints = this.f2952k[0].getTimePoints();
            if (mode != null) {
                Iterator<MotionPaths> it2 = this.f2966y.iterator();
                int i2 = 0;
                while (it2.hasNext()) {
                    mode[i2] = it2.next().f3083p;
                    i2++;
                }
            }
            int i4 = 0;
            for (double d4 : timePoints) {
                this.f2952k[0].getPos(d4, this.f2960s);
                this.f2948g.A(this.f2959r, this.f2960s, keyBounds, i4);
                i4 += 2;
            }
            return i4 / 2;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int d(float[] keyFrames, int[] mode) {
        if (keyFrames != null) {
            double[] timePoints = this.f2952k[0].getTimePoints();
            if (mode != null) {
                Iterator<MotionPaths> it2 = this.f2966y.iterator();
                int i2 = 0;
                while (it2.hasNext()) {
                    mode[i2] = it2.next().f3083p;
                    i2++;
                }
            }
            int i4 = 0;
            for (int i5 = 0; i5 < timePoints.length; i5++) {
                this.f2952k[0].getPos(timePoints[i5], this.f2960s);
                this.f2948g.U(timePoints[i5], this.f2959r, this.f2960s, keyFrames, i4);
                i4 += 2;
            }
            return i4 / 2;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(float[] points, int pointCount) {
        double d4;
        float f4;
        float f5 = 1.0f;
        float f6 = 1.0f / (pointCount - 1);
        HashMap<String, ViewSpline> hashMap = this.C;
        ViewSpline viewSpline = hashMap == null ? null : hashMap.get("translationX");
        HashMap<String, ViewSpline> hashMap2 = this.C;
        ViewSpline viewSpline2 = hashMap2 == null ? null : hashMap2.get("translationY");
        HashMap<String, ViewOscillator> hashMap3 = this.D;
        ViewOscillator viewOscillator = hashMap3 == null ? null : hashMap3.get("translationX");
        HashMap<String, ViewOscillator> hashMap4 = this.D;
        ViewOscillator viewOscillator2 = hashMap4 != null ? hashMap4.get("translationY") : null;
        int i2 = 0;
        while (i2 < pointCount) {
            float f7 = i2 * f6;
            float f8 = this.f2956o;
            if (f8 != f5) {
                float f9 = this.f2955n;
                if (f7 < f9) {
                    f7 = 0.0f;
                }
                if (f7 > f9 && f7 < 1.0d) {
                    f7 = Math.min((f7 - f9) * f8, f5);
                }
            }
            float f10 = f7;
            double d5 = f10;
            Easing easing = this.f2948g.f3068a;
            float f11 = Float.NaN;
            Iterator<MotionPaths> it2 = this.f2966y.iterator();
            float f12 = 0.0f;
            while (it2.hasNext()) {
                MotionPaths next = it2.next();
                Easing easing2 = next.f3068a;
                double d6 = d5;
                if (easing2 != null) {
                    float f13 = next.f3070c;
                    if (f13 < f10) {
                        f12 = f13;
                        easing = easing2;
                    } else if (Float.isNaN(f11)) {
                        f11 = next.f3070c;
                    }
                }
                d5 = d6;
            }
            double d7 = d5;
            if (easing != null) {
                if (Float.isNaN(f11)) {
                    f11 = 1.0f;
                }
                d4 = (((float) easing.get((f10 - f12) / f4)) * (f11 - f12)) + f12;
            } else {
                d4 = d7;
            }
            this.f2952k[0].getPos(d4, this.f2960s);
            CurveFit curveFit = this.f2953l;
            if (curveFit != null) {
                double[] dArr = this.f2960s;
                if (dArr.length > 0) {
                    curveFit.getPos(d4, dArr);
                }
            }
            int i4 = i2 * 2;
            int i5 = i2;
            this.f2948g.U(d4, this.f2959r, this.f2960s, points, i4);
            if (viewOscillator != null) {
                points[i4] = points[i4] + viewOscillator.get(f10);
            } else if (viewSpline != null) {
                points[i4] = points[i4] + viewSpline.get(f10);
            }
            if (viewOscillator2 != null) {
                int i6 = i4 + 1;
                points[i6] = points[i6] + viewOscillator2.get(f10);
            } else if (viewSpline2 != null) {
                int i7 = i4 + 1;
                points[i7] = points[i7] + viewSpline2.get(f10);
            }
            i2 = i5 + 1;
            f5 = 1.0f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(float p3, float[] path, int offset) {
        this.f2952k[0].getPos(i(p3, null), this.f2960s);
        this.f2948g.m0(this.f2959r, this.f2960s, path, offset);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(float[] path, int pointCount) {
        float f4 = 1.0f / (pointCount - 1);
        for (int i2 = 0; i2 < pointCount; i2++) {
            this.f2952k[0].getPos(i(i2 * f4, null), this.f2960s);
            this.f2948g.m0(this.f2959r, this.f2960s, path, i2 * 8);
        }
    }

    public int getAnimateRelativeTo() {
        return this.f2948g.f3079l;
    }

    public void getCenter(double p3, float[] pos, float[] vel) {
        double[] dArr = new double[4];
        double[] dArr2 = new double[4];
        this.f2952k[0].getPos(p3, dArr);
        this.f2952k[0].getSlope(p3, dArr2);
        Arrays.fill(vel, 0.0f);
        this.f2948g.Y(p3, this.f2959r, dArr, pos, dArr2, vel);
    }

    public float getCenterX() {
        return this.f2957p;
    }

    public float getCenterY() {
        return this.f2958q;
    }

    public int getDrawPath() {
        int i2 = this.f2948g.f3069b;
        Iterator<MotionPaths> it2 = this.f2966y.iterator();
        while (it2.hasNext()) {
            i2 = Math.max(i2, it2.next().f3069b);
        }
        return Math.max(i2, this.f2949h.f3069b);
    }

    public float getFinalHeight() {
        return this.f2949h.f3075h;
    }

    public float getFinalWidth() {
        return this.f2949h.f3074g;
    }

    public float getFinalX() {
        return this.f2949h.f3072e;
    }

    public float getFinalY() {
        return this.f2949h.f3073f;
    }

    public int getKeyFrameInfo(int type, int[] info) {
        float[] fArr = new float[2];
        Iterator<Key> it2 = this.A.iterator();
        int i2 = 0;
        int i4 = 0;
        while (it2.hasNext()) {
            Key next = it2.next();
            int i5 = next.f2722d;
            if (i5 == type || type != -1) {
                info[i4] = 0;
                int i6 = i4 + 1;
                info[i6] = i5;
                int i7 = i6 + 1;
                int i8 = next.f2719a;
                info[i7] = i8;
                double d4 = i8 / 100.0f;
                this.f2952k[0].getPos(d4, this.f2960s);
                this.f2948g.U(d4, this.f2959r, this.f2960s, fArr, 0);
                int i9 = i7 + 1;
                info[i9] = Float.floatToIntBits(fArr[0]);
                int i10 = i9 + 1;
                info[i10] = Float.floatToIntBits(fArr[1]);
                if (next instanceof KeyPosition) {
                    KeyPosition keyPosition = (KeyPosition) next;
                    int i11 = i10 + 1;
                    info[i11] = keyPosition.f2823q;
                    int i12 = i11 + 1;
                    info[i12] = Float.floatToIntBits(keyPosition.f2819m);
                    i10 = i12 + 1;
                    info[i10] = Float.floatToIntBits(keyPosition.f2820n);
                }
                int i13 = i10 + 1;
                info[i4] = i13 - i4;
                i2++;
                i4 = i13;
            }
        }
        return i2;
    }

    public int getKeyFramePositions(int[] type, float[] pos) {
        Iterator<Key> it2 = this.A.iterator();
        int i2 = 0;
        int i4 = 0;
        while (it2.hasNext()) {
            Key next = it2.next();
            int i5 = next.f2719a;
            type[i2] = (next.f2722d * 1000) + i5;
            double d4 = i5 / 100.0f;
            this.f2952k[0].getPos(d4, this.f2960s);
            this.f2948g.U(d4, this.f2959r, this.f2960s, pos, i4);
            i4 += 2;
            i2++;
        }
        return i2;
    }

    public float getStartHeight() {
        return this.f2948g.f3075h;
    }

    public float getStartWidth() {
        return this.f2948g.f3074g;
    }

    public float getStartX() {
        return this.f2948g.f3072e;
    }

    public float getStartY() {
        return this.f2948g.f3073f;
    }

    public int getTransformPivotTarget() {
        return this.G;
    }

    public View getView() {
        return this.f2943b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h(boolean start) {
        if (!"button".equals(Debug.getName(this.f2943b)) || this.E == null) {
            return;
        }
        int i2 = 0;
        while (true) {
            KeyTrigger[] keyTriggerArr = this.E;
            if (i2 >= keyTriggerArr.length) {
                return;
            }
            keyTriggerArr[i2].conditionallyFire(start ? -100.0f : 100.0f, this.f2943b);
            i2++;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int j(String attributeType, float[] points, int pointCount) {
        ViewSpline viewSpline = this.C.get(attributeType);
        if (viewSpline == null) {
            return -1;
        }
        for (int i2 = 0; i2 < points.length; i2++) {
            points[i2] = viewSpline.get(i2 / (points.length - 1));
        }
        return points.length;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k(float position, float locationX, float locationY, float[] mAnchorDpDt) {
        double[] dArr;
        float i2 = i(position, this.f2967z);
        CurveFit[] curveFitArr = this.f2952k;
        int i4 = 0;
        if (curveFitArr != null) {
            double d4 = i2;
            curveFitArr[0].getSlope(d4, this.f2961t);
            this.f2952k[0].getPos(d4, this.f2960s);
            float f4 = this.f2967z[0];
            while (true) {
                dArr = this.f2961t;
                if (i4 >= dArr.length) {
                    break;
                }
                double d5 = dArr[i4];
                double d6 = f4;
                Double.isNaN(d6);
                dArr[i4] = d5 * d6;
                i4++;
            }
            CurveFit curveFit = this.f2953l;
            if (curveFit != null) {
                double[] dArr2 = this.f2960s;
                if (dArr2.length > 0) {
                    curveFit.getPos(d4, dArr2);
                    this.f2953l.getSlope(d4, this.f2961t);
                    this.f2948g.P0(locationX, locationY, mAnchorDpDt, this.f2959r, this.f2961t, this.f2960s);
                    return;
                }
                return;
            }
            this.f2948g.P0(locationX, locationY, mAnchorDpDt, this.f2959r, dArr, this.f2960s);
            return;
        }
        MotionPaths motionPaths = this.f2949h;
        float f5 = motionPaths.f3072e;
        MotionPaths motionPaths2 = this.f2948g;
        float f6 = f5 - motionPaths2.f3072e;
        float f7 = motionPaths.f3073f - motionPaths2.f3073f;
        float f8 = (motionPaths.f3074g - motionPaths2.f3074g) + f6;
        float f9 = (motionPaths.f3075h - motionPaths2.f3075h) + f7;
        mAnchorDpDt[0] = (f6 * (1.0f - locationX)) + (f8 * locationX);
        mAnchorDpDt[1] = (f7 * (1.0f - locationY)) + (f9 * locationY);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MotionPaths m(int i2) {
        return this.f2966y.get(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float n(int type, float x3, float y3) {
        MotionPaths motionPaths = this.f2949h;
        float f4 = motionPaths.f3072e;
        MotionPaths motionPaths2 = this.f2948g;
        float f5 = motionPaths2.f3072e;
        float f6 = f4 - f5;
        float f7 = motionPaths.f3073f;
        float f8 = motionPaths2.f3073f;
        float f9 = f7 - f8;
        float f10 = f5 + (motionPaths2.f3074g / 2.0f);
        float f11 = f8 + (motionPaths2.f3075h / 2.0f);
        float hypot = (float) Math.hypot(f6, f9);
        if (hypot < 1.0E-7d) {
            return Float.NaN;
        }
        float f12 = x3 - f10;
        float f13 = y3 - f11;
        if (((float) Math.hypot(f12, f13)) == 0.0f) {
            return 0.0f;
        }
        float f14 = (f12 * f6) + (f13 * f9);
        if (type != 0) {
            if (type != 1) {
                if (type != 2) {
                    if (type != 3) {
                        if (type != 4) {
                            if (type != 5) {
                                return 0.0f;
                            }
                            return f13 / f9;
                        }
                        return f12 / f9;
                    }
                    return f13 / f6;
                }
                return f12 / f6;
            }
            return (float) Math.sqrt((hypot * hypot) - (f14 * f14));
        }
        return f14 / hypot;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public double[] o(double position) {
        this.f2952k[0].getPos(position, this.f2960s);
        CurveFit curveFit = this.f2953l;
        if (curveFit != null) {
            double[] dArr = this.f2960s;
            if (dArr.length > 0) {
                curveFit.getPos(position, dArr);
            }
        }
        return this.f2960s;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public KeyPositionBase p(int layoutWidth, int layoutHeight, float x3, float y3) {
        RectF rectF = new RectF();
        MotionPaths motionPaths = this.f2948g;
        float f4 = motionPaths.f3072e;
        rectF.left = f4;
        float f5 = motionPaths.f3073f;
        rectF.top = f5;
        rectF.right = f4 + motionPaths.f3074g;
        rectF.bottom = f5 + motionPaths.f3075h;
        RectF rectF2 = new RectF();
        MotionPaths motionPaths2 = this.f2949h;
        float f6 = motionPaths2.f3072e;
        rectF2.left = f6;
        float f7 = motionPaths2.f3073f;
        rectF2.top = f7;
        rectF2.right = f6 + motionPaths2.f3074g;
        rectF2.bottom = f7 + motionPaths2.f3075h;
        Iterator<Key> it2 = this.A.iterator();
        while (it2.hasNext()) {
            Key next = it2.next();
            if (next instanceof KeyPositionBase) {
                KeyPositionBase keyPositionBase = (KeyPositionBase) next;
                if (keyPositionBase.intersects(layoutWidth, layoutHeight, rectF, rectF2, x3, y3)) {
                    return keyPositionBase;
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void q(float position, int width, int height, float locationX, float locationY, float[] mAnchorDpDt) {
        float i2 = i(position, this.f2967z);
        HashMap<String, ViewSpline> hashMap = this.C;
        ViewSpline viewSpline = hashMap == null ? null : hashMap.get("translationX");
        HashMap<String, ViewSpline> hashMap2 = this.C;
        ViewSpline viewSpline2 = hashMap2 == null ? null : hashMap2.get("translationY");
        HashMap<String, ViewSpline> hashMap3 = this.C;
        ViewSpline viewSpline3 = hashMap3 == null ? null : hashMap3.get(Key.ROTATION);
        HashMap<String, ViewSpline> hashMap4 = this.C;
        ViewSpline viewSpline4 = hashMap4 == null ? null : hashMap4.get("scaleX");
        HashMap<String, ViewSpline> hashMap5 = this.C;
        ViewSpline viewSpline5 = hashMap5 == null ? null : hashMap5.get("scaleY");
        HashMap<String, ViewOscillator> hashMap6 = this.D;
        ViewOscillator viewOscillator = hashMap6 == null ? null : hashMap6.get("translationX");
        HashMap<String, ViewOscillator> hashMap7 = this.D;
        ViewOscillator viewOscillator2 = hashMap7 == null ? null : hashMap7.get("translationY");
        HashMap<String, ViewOscillator> hashMap8 = this.D;
        ViewOscillator viewOscillator3 = hashMap8 == null ? null : hashMap8.get(Key.ROTATION);
        HashMap<String, ViewOscillator> hashMap9 = this.D;
        ViewOscillator viewOscillator4 = hashMap9 == null ? null : hashMap9.get("scaleX");
        HashMap<String, ViewOscillator> hashMap10 = this.D;
        ViewOscillator viewOscillator5 = hashMap10 != null ? hashMap10.get("scaleY") : null;
        VelocityMatrix velocityMatrix = new VelocityMatrix();
        velocityMatrix.clear();
        velocityMatrix.setRotationVelocity(viewSpline3, i2);
        velocityMatrix.setTranslationVelocity(viewSpline, viewSpline2, i2);
        velocityMatrix.setScaleVelocity(viewSpline4, viewSpline5, i2);
        velocityMatrix.setRotationVelocity(viewOscillator3, i2);
        velocityMatrix.setTranslationVelocity(viewOscillator, viewOscillator2, i2);
        velocityMatrix.setScaleVelocity(viewOscillator4, viewOscillator5, i2);
        CurveFit curveFit = this.f2953l;
        if (curveFit != null) {
            double[] dArr = this.f2960s;
            if (dArr.length > 0) {
                double d4 = i2;
                curveFit.getPos(d4, dArr);
                this.f2953l.getSlope(d4, this.f2961t);
                this.f2948g.P0(locationX, locationY, mAnchorDpDt, this.f2959r, this.f2961t, this.f2960s);
            }
            velocityMatrix.applyTransform(locationX, locationY, width, height, mAnchorDpDt);
            return;
        }
        int i4 = 0;
        if (this.f2952k != null) {
            double i5 = i(i2, this.f2967z);
            this.f2952k[0].getSlope(i5, this.f2961t);
            this.f2952k[0].getPos(i5, this.f2960s);
            float f4 = this.f2967z[0];
            while (true) {
                double[] dArr2 = this.f2961t;
                if (i4 < dArr2.length) {
                    double d5 = dArr2[i4];
                    double d6 = f4;
                    Double.isNaN(d6);
                    dArr2[i4] = d5 * d6;
                    i4++;
                } else {
                    this.f2948g.P0(locationX, locationY, mAnchorDpDt, this.f2959r, dArr2, this.f2960s);
                    velocityMatrix.applyTransform(locationX, locationY, width, height, mAnchorDpDt);
                    return;
                }
            }
        } else {
            MotionPaths motionPaths = this.f2949h;
            float f5 = motionPaths.f3072e;
            MotionPaths motionPaths2 = this.f2948g;
            float f6 = f5 - motionPaths2.f3072e;
            float f7 = motionPaths.f3073f - motionPaths2.f3073f;
            ViewOscillator viewOscillator6 = viewOscillator4;
            float f8 = (motionPaths.f3075h - motionPaths2.f3075h) + f7;
            mAnchorDpDt[0] = (f6 * (1.0f - locationX)) + (((motionPaths.f3074g - motionPaths2.f3074g) + f6) * locationX);
            mAnchorDpDt[1] = (f7 * (1.0f - locationY)) + (f8 * locationY);
            velocityMatrix.clear();
            velocityMatrix.setRotationVelocity(viewSpline3, i2);
            velocityMatrix.setTranslationVelocity(viewSpline, viewSpline2, i2);
            velocityMatrix.setScaleVelocity(viewSpline4, viewSpline5, i2);
            velocityMatrix.setRotationVelocity(viewOscillator3, i2);
            velocityMatrix.setTranslationVelocity(viewOscillator, viewOscillator2, i2);
            velocityMatrix.setScaleVelocity(viewOscillator6, viewOscillator5, i2);
            velocityMatrix.applyTransform(locationX, locationY, width, height, mAnchorDpDt);
        }
    }

    public void remeasure() {
        this.f2945d = true;
    }

    public void setDrawPath(int debugMode) {
        this.f2948g.f3069b = debugMode;
    }

    public void setPathMotionArc(int arc) {
        this.F = arc;
    }

    public void setStartState(ViewState rect, View v3, int rotation, int preWidth, int preHeight) {
        MotionPaths motionPaths = this.f2948g;
        motionPaths.f3070c = 0.0f;
        motionPaths.f3071d = 0.0f;
        Rect rect2 = new Rect();
        if (rotation == 1) {
            int i2 = rect.left + rect.right;
            rect2.left = ((rect.top + rect.bottom) - rect.width()) / 2;
            rect2.top = preWidth - ((i2 + rect.height()) / 2);
            rect2.right = rect2.left + rect.width();
            rect2.bottom = rect2.top + rect.height();
        } else if (rotation == 2) {
            int i4 = rect.left + rect.right;
            rect2.left = preHeight - (((rect.top + rect.bottom) + rect.width()) / 2);
            rect2.top = (i4 - rect.height()) / 2;
            rect2.right = rect2.left + rect.width();
            rect2.bottom = rect2.top + rect.height();
        }
        this.f2948g.O0(rect2.left, rect2.top, rect2.width(), rect2.height());
        this.f2950i.setState(rect2, v3, rotation, rect.rotation);
    }

    public void setTransformPivotTarget(int transformPivotTarget) {
        this.G = transformPivotTarget;
        this.H = null;
    }

    public void setView(View view) {
        this.f2943b = view;
        this.f2944c = view.getId();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.LayoutParams) {
            this.f2946e = ((ConstraintLayout.LayoutParams) layoutParams).getConstraintTag();
        }
    }

    public void setup(int parentWidth, int parentHeight, float transitionDuration, long currentTime) {
        ArrayList arrayList;
        String[] strArr;
        ConstraintAttribute constraintAttribute;
        ViewTimeCycle makeSpline;
        ConstraintAttribute constraintAttribute2;
        Integer num;
        ViewSpline makeSpline2;
        ConstraintAttribute constraintAttribute3;
        new HashSet();
        HashSet<String> hashSet = new HashSet<>();
        HashSet<String> hashSet2 = new HashSet<>();
        HashSet<String> hashSet3 = new HashSet<>();
        HashMap<String, Integer> hashMap = new HashMap<>();
        int i2 = this.F;
        if (i2 != Key.UNSET) {
            this.f2948g.f3078k = i2;
        }
        this.f2950i.s(this.f2951j, hashSet2);
        ArrayList<Key> arrayList2 = this.A;
        if (arrayList2 != null) {
            Iterator<Key> it2 = arrayList2.iterator();
            arrayList = null;
            while (it2.hasNext()) {
                Key next = it2.next();
                if (next instanceof KeyPosition) {
                    KeyPosition keyPosition = (KeyPosition) next;
                    s(new MotionPaths(parentWidth, parentHeight, keyPosition, this.f2948g, this.f2949h));
                    int i4 = keyPosition.f2840f;
                    if (i4 != Key.UNSET) {
                        this.f2947f = i4;
                    }
                } else if (next instanceof KeyCycle) {
                    next.getAttributeNames(hashSet3);
                } else if (next instanceof KeyTimeCycle) {
                    next.getAttributeNames(hashSet);
                } else if (next instanceof KeyTrigger) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add((KeyTrigger) next);
                } else {
                    next.setInterpolation(hashMap);
                    next.getAttributeNames(hashSet2);
                }
            }
        } else {
            arrayList = null;
        }
        char c4 = 0;
        if (arrayList != null) {
            this.E = (KeyTrigger[]) arrayList.toArray(new KeyTrigger[0]);
        }
        char c5 = 1;
        if (!hashSet2.isEmpty()) {
            this.C = new HashMap<>();
            Iterator<String> it3 = hashSet2.iterator();
            while (it3.hasNext()) {
                String next2 = it3.next();
                if (next2.startsWith("CUSTOM,")) {
                    SparseArray sparseArray = new SparseArray();
                    String str = next2.split(",")[c5];
                    Iterator<Key> it4 = this.A.iterator();
                    while (it4.hasNext()) {
                        Key next3 = it4.next();
                        HashMap<String, ConstraintAttribute> hashMap2 = next3.f2723e;
                        if (hashMap2 != null && (constraintAttribute3 = hashMap2.get(str)) != null) {
                            sparseArray.append(next3.f2719a, constraintAttribute3);
                        }
                    }
                    makeSpline2 = ViewSpline.makeCustomSpline(next2, sparseArray);
                } else {
                    makeSpline2 = ViewSpline.makeSpline(next2);
                }
                if (makeSpline2 != null) {
                    makeSpline2.setType(next2);
                    this.C.put(next2, makeSpline2);
                }
                c5 = 1;
            }
            ArrayList<Key> arrayList3 = this.A;
            if (arrayList3 != null) {
                Iterator<Key> it5 = arrayList3.iterator();
                while (it5.hasNext()) {
                    Key next4 = it5.next();
                    if (next4 instanceof KeyAttributes) {
                        next4.addValues(this.C);
                    }
                }
            }
            this.f2950i.addValues(this.C, 0);
            this.f2951j.addValues(this.C, 100);
            for (String str2 : this.C.keySet()) {
                int intValue = (!hashMap.containsKey(str2) || (num = hashMap.get(str2)) == null) ? 0 : num.intValue();
                ViewSpline viewSpline = this.C.get(str2);
                if (viewSpline != null) {
                    viewSpline.setup(intValue);
                }
            }
        }
        if (!hashSet.isEmpty()) {
            if (this.B == null) {
                this.B = new HashMap<>();
            }
            Iterator<String> it6 = hashSet.iterator();
            while (it6.hasNext()) {
                String next5 = it6.next();
                if (!this.B.containsKey(next5)) {
                    if (next5.startsWith("CUSTOM,")) {
                        SparseArray sparseArray2 = new SparseArray();
                        String str3 = next5.split(",")[1];
                        Iterator<Key> it7 = this.A.iterator();
                        while (it7.hasNext()) {
                            Key next6 = it7.next();
                            HashMap<String, ConstraintAttribute> hashMap3 = next6.f2723e;
                            if (hashMap3 != null && (constraintAttribute2 = hashMap3.get(str3)) != null) {
                                sparseArray2.append(next6.f2719a, constraintAttribute2);
                            }
                        }
                        makeSpline = ViewTimeCycle.makeCustomSpline(next5, sparseArray2);
                    } else {
                        makeSpline = ViewTimeCycle.makeSpline(next5, currentTime);
                    }
                    if (makeSpline != null) {
                        makeSpline.setType(next5);
                        this.B.put(next5, makeSpline);
                    }
                }
            }
            ArrayList<Key> arrayList4 = this.A;
            if (arrayList4 != null) {
                Iterator<Key> it8 = arrayList4.iterator();
                while (it8.hasNext()) {
                    Key next7 = it8.next();
                    if (next7 instanceof KeyTimeCycle) {
                        ((KeyTimeCycle) next7).addTimeValues(this.B);
                    }
                }
            }
            for (String str4 : this.B.keySet()) {
                this.B.get(str4).setup(hashMap.containsKey(str4) ? hashMap.get(str4).intValue() : 0);
            }
        }
        int i5 = 2;
        int size = this.f2966y.size() + 2;
        MotionPaths[] motionPathsArr = new MotionPaths[size];
        motionPathsArr[0] = this.f2948g;
        motionPathsArr[size - 1] = this.f2949h;
        if (this.f2966y.size() > 0 && this.f2947f == -1) {
            this.f2947f = 0;
        }
        Iterator<MotionPaths> it9 = this.f2966y.iterator();
        int i6 = 1;
        while (it9.hasNext()) {
            motionPathsArr[i6] = it9.next();
            i6++;
        }
        HashSet hashSet4 = new HashSet();
        for (String str5 : this.f2949h.f3082o.keySet()) {
            if (this.f2948g.f3082o.containsKey(str5)) {
                if (!hashSet2.contains("CUSTOM," + str5)) {
                    hashSet4.add(str5);
                }
            }
        }
        String[] strArr2 = (String[]) hashSet4.toArray(new String[0]);
        this.f2962u = strArr2;
        this.f2963v = new int[strArr2.length];
        int i7 = 0;
        while (true) {
            strArr = this.f2962u;
            if (i7 >= strArr.length) {
                break;
            }
            String str6 = strArr[i7];
            this.f2963v[i7] = 0;
            int i8 = 0;
            while (true) {
                if (i8 >= size) {
                    break;
                }
                if (motionPathsArr[i8].f3082o.containsKey(str6) && (constraintAttribute = motionPathsArr[i8].f3082o.get(str6)) != null) {
                    int[] iArr = this.f2963v;
                    iArr[i7] = iArr[i7] + constraintAttribute.numberOfInterpolatedValues();
                    break;
                }
                i8++;
            }
            i7++;
        }
        boolean z3 = motionPathsArr[0].f3078k != Key.UNSET;
        int length = 18 + strArr.length;
        boolean[] zArr = new boolean[length];
        for (int i9 = 1; i9 < size; i9++) {
            motionPathsArr[i9].s(motionPathsArr[i9 - 1], zArr, this.f2962u, z3);
        }
        int i10 = 0;
        for (int i11 = 1; i11 < length; i11++) {
            if (zArr[i11]) {
                i10++;
            }
        }
        this.f2959r = new int[i10];
        int max = Math.max(2, i10);
        this.f2960s = new double[max];
        this.f2961t = new double[max];
        int i12 = 0;
        for (int i13 = 1; i13 < length; i13++) {
            if (zArr[i13]) {
                this.f2959r[i12] = i13;
                i12++;
            }
        }
        double[][] dArr = (double[][]) Array.newInstance(double.class, size, this.f2959r.length);
        double[] dArr2 = new double[size];
        for (int i14 = 0; i14 < size; i14++) {
            motionPathsArr[i14].x(dArr[i14], this.f2959r);
            dArr2[i14] = motionPathsArr[i14].f3070c;
        }
        int i15 = 0;
        while (true) {
            int[] iArr2 = this.f2959r;
            if (i15 >= iArr2.length) {
                break;
            }
            if (iArr2[i15] < MotionPaths.C.length) {
                String str7 = MotionPaths.C[this.f2959r[i15]] + " [";
                for (int i16 = 0; i16 < size; i16++) {
                    str7 = str7 + dArr[i16][i15];
                }
            }
            i15++;
        }
        this.f2952k = new CurveFit[this.f2962u.length + 1];
        int i17 = 0;
        while (true) {
            String[] strArr3 = this.f2962u;
            if (i17 >= strArr3.length) {
                break;
            }
            String str8 = strArr3[i17];
            int i18 = 0;
            double[] dArr3 = null;
            int i19 = 0;
            double[][] dArr4 = null;
            while (i18 < size) {
                if (motionPathsArr[i18].v0(str8)) {
                    if (dArr4 == null) {
                        dArr3 = new double[size];
                        int[] iArr3 = new int[i5];
                        iArr3[1] = motionPathsArr[i18].k0(str8);
                        iArr3[c4] = size;
                        dArr4 = (double[][]) Array.newInstance(double.class, iArr3);
                    }
                    dArr3[i19] = motionPathsArr[i18].f3070c;
                    motionPathsArr[i18].e0(str8, dArr4[i19], 0);
                    i19++;
                }
                i18++;
                i5 = 2;
                c4 = 0;
            }
            i17++;
            this.f2952k[i17] = CurveFit.get(this.f2947f, Arrays.copyOf(dArr3, i19), (double[][]) Arrays.copyOf(dArr4, i19));
            i5 = 2;
            c4 = 0;
        }
        this.f2952k[0] = CurveFit.get(this.f2947f, dArr2, dArr);
        if (motionPathsArr[0].f3078k != Key.UNSET) {
            int[] iArr4 = new int[size];
            double[] dArr5 = new double[size];
            double[][] dArr6 = (double[][]) Array.newInstance(double.class, size, 2);
            for (int i20 = 0; i20 < size; i20++) {
                iArr4[i20] = motionPathsArr[i20].f3078k;
                dArr5[i20] = motionPathsArr[i20].f3070c;
                dArr6[i20][0] = motionPathsArr[i20].f3072e;
                dArr6[i20][1] = motionPathsArr[i20].f3073f;
            }
            this.f2953l = CurveFit.getArc(iArr4, dArr5, dArr6);
        }
        float f4 = Float.NaN;
        this.D = new HashMap<>();
        if (this.A != null) {
            Iterator<String> it10 = hashSet3.iterator();
            while (it10.hasNext()) {
                String next8 = it10.next();
                ViewOscillator makeSpline3 = ViewOscillator.makeSpline(next8);
                if (makeSpline3 != null) {
                    if (makeSpline3.variesByPath() && Float.isNaN(f4)) {
                        f4 = r();
                    }
                    makeSpline3.setType(next8);
                    this.D.put(next8, makeSpline3);
                }
            }
            Iterator<Key> it11 = this.A.iterator();
            while (it11.hasNext()) {
                Key next9 = it11.next();
                if (next9 instanceof KeyCycle) {
                    ((KeyCycle) next9).addCycleValues(this.D);
                }
            }
            for (ViewOscillator viewOscillator : this.D.values()) {
                viewOscillator.setup(f4);
            }
        }
    }

    public void setupRelative(MotionController motionController) {
        this.f2948g.setupRelative(motionController, motionController.f2948g);
        this.f2949h.setupRelative(motionController, motionController.f2949h);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean t(View child, float global_position, long time, KeyCache keyCache) {
        ViewTimeCycle.PathRotate pathRotate;
        boolean z3;
        char c4;
        double d4;
        View view;
        float f4;
        float i2 = i(global_position, null);
        int i4 = this.I;
        if (i4 != Key.UNSET) {
            float f5 = 1.0f / i4;
            float floor = ((float) Math.floor(i2 / f5)) * f5;
            float f6 = (i2 % f5) / f5;
            if (!Float.isNaN(this.J)) {
                f6 = (f6 + this.J) % 1.0f;
            }
            Interpolator interpolator = this.K;
            if (interpolator != null) {
                f4 = interpolator.getInterpolation(f6);
            } else {
                f4 = ((double) f6) > 0.5d ? 1.0f : 0.0f;
            }
            i2 = (f4 * f5) + floor;
        }
        float f7 = i2;
        HashMap<String, ViewSpline> hashMap = this.C;
        if (hashMap != null) {
            for (ViewSpline viewSpline : hashMap.values()) {
                viewSpline.setProperty(child, f7);
            }
        }
        HashMap<String, ViewTimeCycle> hashMap2 = this.B;
        if (hashMap2 != null) {
            ViewTimeCycle.PathRotate pathRotate2 = null;
            boolean z4 = false;
            for (ViewTimeCycle viewTimeCycle : hashMap2.values()) {
                if (viewTimeCycle instanceof ViewTimeCycle.PathRotate) {
                    pathRotate2 = (ViewTimeCycle.PathRotate) viewTimeCycle;
                } else {
                    z4 |= viewTimeCycle.setProperty(child, f7, time, keyCache);
                }
            }
            z3 = z4;
            pathRotate = pathRotate2;
        } else {
            pathRotate = null;
            z3 = false;
        }
        CurveFit[] curveFitArr = this.f2952k;
        if (curveFitArr != null) {
            double d5 = f7;
            curveFitArr[0].getPos(d5, this.f2960s);
            this.f2952k[0].getSlope(d5, this.f2961t);
            CurveFit curveFit = this.f2953l;
            if (curveFit != null) {
                double[] dArr = this.f2960s;
                if (dArr.length > 0) {
                    curveFit.getPos(d5, dArr);
                    this.f2953l.getSlope(d5, this.f2961t);
                }
            }
            if (this.L) {
                d4 = d5;
            } else {
                d4 = d5;
                this.f2948g.Q0(f7, child, this.f2959r, this.f2960s, this.f2961t, null, this.f2945d);
                this.f2945d = false;
            }
            if (this.G != Key.UNSET) {
                if (this.H == null) {
                    this.H = ((View) child.getParent()).findViewById(this.G);
                }
                if (this.H != null) {
                    float top = (view.getTop() + this.H.getBottom()) / 2.0f;
                    float left = (this.H.getLeft() + this.H.getRight()) / 2.0f;
                    if (child.getRight() - child.getLeft() > 0 && child.getBottom() - child.getTop() > 0) {
                        child.setPivotX(left - child.getLeft());
                        child.setPivotY(top - child.getTop());
                    }
                }
            }
            HashMap<String, ViewSpline> hashMap3 = this.C;
            if (hashMap3 != null) {
                for (ViewSpline viewSpline2 : hashMap3.values()) {
                    if (viewSpline2 instanceof ViewSpline.PathRotate) {
                        double[] dArr2 = this.f2961t;
                        if (dArr2.length > 1) {
                            ((ViewSpline.PathRotate) viewSpline2).setPathRotate(child, f7, dArr2[0], dArr2[1]);
                        }
                    }
                }
            }
            if (pathRotate != null) {
                double[] dArr3 = this.f2961t;
                c4 = 1;
                z3 |= pathRotate.setPathRotate(child, keyCache, f7, time, dArr3[0], dArr3[1]);
            } else {
                c4 = 1;
            }
            int i5 = 1;
            while (true) {
                CurveFit[] curveFitArr2 = this.f2952k;
                if (i5 >= curveFitArr2.length) {
                    break;
                }
                curveFitArr2[i5].getPos(d4, this.f2965x);
                CustomSupport.setInterpolatedValue(this.f2948g.f3082o.get(this.f2962u[i5 - 1]), child, this.f2965x);
                i5++;
            }
            MotionConstrainedPoint motionConstrainedPoint = this.f2950i;
            if (motionConstrainedPoint.f2917b == 0) {
                if (f7 <= 0.0f) {
                    child.setVisibility(motionConstrainedPoint.f2918c);
                } else if (f7 >= 1.0f) {
                    child.setVisibility(this.f2951j.f2918c);
                } else if (this.f2951j.f2918c != motionConstrainedPoint.f2918c) {
                    child.setVisibility(0);
                }
            }
            if (this.E != null) {
                int i6 = 0;
                while (true) {
                    KeyTrigger[] keyTriggerArr = this.E;
                    if (i6 >= keyTriggerArr.length) {
                        break;
                    }
                    keyTriggerArr[i6].conditionallyFire(f7, child);
                    i6++;
                }
            }
        } else {
            c4 = 1;
            MotionPaths motionPaths = this.f2948g;
            float f8 = motionPaths.f3072e;
            MotionPaths motionPaths2 = this.f2949h;
            float f9 = f8 + ((motionPaths2.f3072e - f8) * f7);
            float f10 = motionPaths.f3073f;
            float f11 = f10 + ((motionPaths2.f3073f - f10) * f7);
            float f12 = motionPaths.f3074g;
            float f13 = motionPaths2.f3074g;
            float f14 = motionPaths.f3075h;
            float f15 = motionPaths2.f3075h;
            float f16 = f9 + 0.5f;
            int i7 = (int) f16;
            float f17 = f11 + 0.5f;
            int i8 = (int) f17;
            int i9 = (int) (f16 + ((f13 - f12) * f7) + f12);
            int i10 = (int) (f17 + ((f15 - f14) * f7) + f14);
            int i11 = i9 - i7;
            int i12 = i10 - i8;
            if (f13 != f12 || f15 != f14 || this.f2945d) {
                child.measure(View.MeasureSpec.makeMeasureSpec(i11, 1073741824), View.MeasureSpec.makeMeasureSpec(i12, 1073741824));
                this.f2945d = false;
            }
            child.layout(i7, i8, i9, i10);
        }
        HashMap<String, ViewOscillator> hashMap4 = this.D;
        if (hashMap4 != null) {
            for (ViewOscillator viewOscillator : hashMap4.values()) {
                if (viewOscillator instanceof ViewOscillator.PathRotateSet) {
                    double[] dArr4 = this.f2961t;
                    ((ViewOscillator.PathRotateSet) viewOscillator).setPathRotate(child, f7, dArr4[0], dArr4[c4]);
                } else {
                    viewOscillator.setProperty(child, f7);
                }
            }
        }
        return z3;
    }

    public String toString() {
        return " start: x: " + this.f2948g.f3072e + " y: " + this.f2948g.f3073f + " end: x: " + this.f2949h.f3072e + " y: " + this.f2949h.f3073f;
    }

    String u() {
        return this.f2943b.getContext().getResources().getResourceEntryName(this.f2943b.getId());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void v(View view, KeyPositionBase key, float x3, float y3, String[] attribute, float[] value) {
        RectF rectF = new RectF();
        MotionPaths motionPaths = this.f2948g;
        float f4 = motionPaths.f3072e;
        rectF.left = f4;
        float f5 = motionPaths.f3073f;
        rectF.top = f5;
        rectF.right = f4 + motionPaths.f3074g;
        rectF.bottom = f5 + motionPaths.f3075h;
        RectF rectF2 = new RectF();
        MotionPaths motionPaths2 = this.f2949h;
        float f6 = motionPaths2.f3072e;
        rectF2.left = f6;
        float f7 = motionPaths2.f3073f;
        rectF2.top = f7;
        rectF2.right = f6 + motionPaths2.f3074g;
        rectF2.bottom = f7 + motionPaths2.f3075h;
        key.positionAttributes(view, rectF, rectF2, x3, y3, attribute, value);
    }

    void x(Rect rect, Rect out, int rotation, int preHeight, int preWidth) {
        if (rotation == 1) {
            int i2 = rect.left + rect.right;
            out.left = ((rect.top + rect.bottom) - rect.width()) / 2;
            out.top = preWidth - ((i2 + rect.height()) / 2);
            out.right = out.left + rect.width();
            out.bottom = out.top + rect.height();
        } else if (rotation == 2) {
            int i4 = rect.left + rect.right;
            out.left = preHeight - (((rect.top + rect.bottom) + rect.width()) / 2);
            out.top = (i4 - rect.height()) / 2;
            out.right = out.left + rect.width();
            out.bottom = out.top + rect.height();
        } else if (rotation == 3) {
            int i5 = rect.left + rect.right;
            out.left = ((rect.height() / 2) + rect.top) - (i5 / 2);
            out.top = preWidth - ((i5 + rect.height()) / 2);
            out.right = out.left + rect.width();
            out.bottom = out.top + rect.height();
        } else if (rotation != 4) {
        } else {
            int i6 = rect.left + rect.right;
            out.left = preHeight - (((rect.bottom + rect.top) + rect.width()) / 2);
            out.top = (i6 - rect.height()) / 2;
            out.right = out.left + rect.width();
            out.bottom = out.top + rect.height();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void y(View v3) {
        MotionPaths motionPaths = this.f2948g;
        motionPaths.f3070c = 0.0f;
        motionPaths.f3071d = 0.0f;
        this.L = true;
        motionPaths.O0(v3.getX(), v3.getY(), v3.getWidth(), v3.getHeight());
        this.f2949h.O0(v3.getX(), v3.getY(), v3.getWidth(), v3.getHeight());
        this.f2950i.setState(v3);
        this.f2951j.setState(v3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void z(Rect cw, ConstraintSet constraintSet, int parentWidth, int parentHeight) {
        int i2 = constraintSet.mRotate;
        if (i2 != 0) {
            x(cw, this.f2942a, i2, parentWidth, parentHeight);
            cw = this.f2942a;
        }
        MotionPaths motionPaths = this.f2949h;
        motionPaths.f3070c = 1.0f;
        motionPaths.f3071d = 1.0f;
        w(motionPaths);
        this.f2949h.O0(cw.left, cw.top, cw.width(), cw.height());
        this.f2949h.applyParameters(constraintSet.getParameters(this.f2944c));
        this.f2951j.setState(cw, constraintSet, i2, this.f2944c);
    }
}
