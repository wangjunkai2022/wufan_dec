package androidx.constraintlayout.core.motion;

import androidx.constraintlayout.core.motion.key.MotionKey;
import androidx.constraintlayout.core.motion.key.MotionKeyAttributes;
import androidx.constraintlayout.core.motion.key.MotionKeyCycle;
import androidx.constraintlayout.core.motion.key.MotionKeyPosition;
import androidx.constraintlayout.core.motion.key.MotionKeyTimeCycle;
import androidx.constraintlayout.core.motion.key.MotionKeyTrigger;
import androidx.constraintlayout.core.motion.utils.CurveFit;
import androidx.constraintlayout.core.motion.utils.DifferentialInterpolator;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.motion.utils.FloatRect;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.core.motion.utils.KeyCycleOscillator;
import androidx.constraintlayout.core.motion.utils.KeyFrameArray;
import androidx.constraintlayout.core.motion.utils.Rect;
import androidx.constraintlayout.core.motion.utils.SplineSet;
import androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.core.motion.utils.Utils;
import androidx.constraintlayout.core.motion.utils.VelocityMatrix;
import androidx.constraintlayout.core.motion.utils.ViewState;
import java.io.PrintStream;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes.dex */
public class Motion implements TypedValues {
    public static final int DRAW_PATH_AS_CONFIGURED = 4;
    public static final int DRAW_PATH_BASIC = 1;
    public static final int DRAW_PATH_CARTESIAN = 3;
    public static final int DRAW_PATH_NONE = 0;
    public static final int DRAW_PATH_RECTANGLE = 5;
    public static final int DRAW_PATH_RELATIVE = 2;
    public static final int DRAW_PATH_SCREEN = 6;
    public static final int HORIZONTAL_PATH_X = 2;
    public static final int HORIZONTAL_PATH_Y = 3;
    private static final String M = "MotionController";
    private static final boolean N = false;
    private static final boolean O = false;
    static final int P = 0;
    public static final int PATH_PERCENT = 0;
    public static final int PATH_PERPENDICULAR = 1;
    static final int Q = 1;
    static final int R = 2;
    public static final int ROTATION_LEFT = 2;
    public static final int ROTATION_RIGHT = 1;
    static final int S = 3;
    static final int T = 4;
    static final int U = 5;
    private static final int V = -1;
    public static final int VERTICAL_PATH_X = 4;
    public static final int VERTICAL_PATH_Y = 5;
    private static final int W = -2;
    private static final int X = -3;
    private HashMap<String, TimeCycleSplineSet> A;
    private HashMap<String, SplineSet> B;
    private HashMap<String, KeyCycleOscillator> C;
    private MotionKeyTrigger[] D;
    String[] L;

    /* renamed from: b  reason: collision with root package name */
    MotionWidget f1871b;

    /* renamed from: c  reason: collision with root package name */
    int f1872c;

    /* renamed from: d  reason: collision with root package name */
    String f1873d;

    /* renamed from: j  reason: collision with root package name */
    private CurveFit[] f1879j;

    /* renamed from: k  reason: collision with root package name */
    private CurveFit f1880k;

    /* renamed from: o  reason: collision with root package name */
    float f1884o;

    /* renamed from: p  reason: collision with root package name */
    float f1885p;

    /* renamed from: q  reason: collision with root package name */
    private int[] f1886q;

    /* renamed from: r  reason: collision with root package name */
    private double[] f1887r;

    /* renamed from: s  reason: collision with root package name */
    private double[] f1888s;

    /* renamed from: t  reason: collision with root package name */
    private String[] f1889t;

    /* renamed from: u  reason: collision with root package name */
    private int[] f1890u;

    /* renamed from: a  reason: collision with root package name */
    Rect f1870a = new Rect();

    /* renamed from: e  reason: collision with root package name */
    private int f1874e = -1;

    /* renamed from: f  reason: collision with root package name */
    private MotionPaths f1875f = new MotionPaths();

    /* renamed from: g  reason: collision with root package name */
    private MotionPaths f1876g = new MotionPaths();

    /* renamed from: h  reason: collision with root package name */
    private MotionConstrainedPoint f1877h = new MotionConstrainedPoint();

    /* renamed from: i  reason: collision with root package name */
    private MotionConstrainedPoint f1878i = new MotionConstrainedPoint();

    /* renamed from: l  reason: collision with root package name */
    float f1881l = Float.NaN;

    /* renamed from: m  reason: collision with root package name */
    float f1882m = 0.0f;

    /* renamed from: n  reason: collision with root package name */
    float f1883n = 1.0f;

    /* renamed from: v  reason: collision with root package name */
    private int f1891v = 4;

    /* renamed from: w  reason: collision with root package name */
    private float[] f1892w = new float[4];

    /* renamed from: x  reason: collision with root package name */
    private ArrayList<MotionPaths> f1893x = new ArrayList<>();

    /* renamed from: y  reason: collision with root package name */
    private float[] f1894y = new float[1];

    /* renamed from: z  reason: collision with root package name */
    private ArrayList<MotionKey> f1895z = new ArrayList<>();
    private int E = -1;
    private int F = -1;
    private MotionWidget G = null;
    private int H = -1;
    private float I = Float.NaN;
    private DifferentialInterpolator J = null;
    private boolean K = false;

    public Motion(MotionWidget motionWidget) {
        setView(motionWidget);
    }

    private float f(float f4, float[] fArr) {
        float f5 = 0.0f;
        if (fArr != null) {
            fArr[0] = 1.0f;
        } else {
            float f6 = this.f1883n;
            if (f6 != 1.0d) {
                float f7 = this.f1882m;
                if (f4 < f7) {
                    f4 = 0.0f;
                }
                if (f4 > f7 && f4 < 1.0d) {
                    f4 = Math.min((f4 - f7) * f6, 1.0f);
                }
            }
        }
        Easing easing = this.f1875f.f1931a;
        float f8 = Float.NaN;
        Iterator<MotionPaths> it2 = this.f1893x.iterator();
        while (it2.hasNext()) {
            MotionPaths next = it2.next();
            Easing easing2 = next.f1931a;
            if (easing2 != null) {
                float f9 = next.f1933c;
                if (f9 < f4) {
                    easing = easing2;
                    f5 = f9;
                } else if (Float.isNaN(f8)) {
                    f8 = next.f1933c;
                }
            }
        }
        if (easing != null) {
            float f10 = (Float.isNaN(f8) ? 1.0f : f8) - f5;
            double d4 = (f4 - f5) / f10;
            f4 = (((float) easing.get(d4)) * f10) + f5;
            if (fArr != null) {
                fArr[0] = (float) easing.getDiff(d4);
            }
        }
        return f4;
    }

    private static DifferentialInterpolator i(int i2, String str, int i4) {
        if (i2 != -1) {
            return null;
        }
        final Easing interpolator = Easing.getInterpolator(str);
        return new DifferentialInterpolator() { // from class: androidx.constraintlayout.core.motion.Motion.1

            /* renamed from: a  reason: collision with root package name */
            float f1896a;

            @Override // androidx.constraintlayout.core.motion.utils.DifferentialInterpolator
            public float getInterpolation(float f4) {
                this.f1896a = f4;
                return (float) Easing.this.get(f4);
            }

            @Override // androidx.constraintlayout.core.motion.utils.DifferentialInterpolator
            public float getVelocity() {
                return (float) Easing.this.getDiff(this.f1896a);
            }
        };
    }

    private float n() {
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
            Easing easing = this.f1875f.f1931a;
            Iterator<MotionPaths> it2 = this.f1893x.iterator();
            float f9 = Float.NaN;
            float f10 = 0.0f;
            while (it2.hasNext()) {
                MotionPaths next = it2.next();
                Easing easing2 = next.f1931a;
                if (easing2 != null) {
                    float f11 = next.f1933c;
                    if (f11 < f8) {
                        easing = easing2;
                        f10 = f11;
                    } else if (Float.isNaN(f9)) {
                        f9 = next.f1933c;
                    }
                }
            }
            if (easing != null) {
                if (Float.isNaN(f9)) {
                    f9 = 1.0f;
                }
                d6 = (((float) easing.get((f8 - f10) / f5)) * (f9 - f10)) + f10;
            }
            this.f1879j[0].getPos(d6, this.f1887r);
            float f12 = f7;
            int i4 = i2;
            this.f1875f.U(d6, this.f1886q, this.f1887r, fArr, 0);
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

    private void o(MotionPaths motionPaths) {
        Iterator<MotionPaths> it2 = this.f1893x.iterator();
        MotionPaths motionPaths2 = null;
        while (it2.hasNext()) {
            MotionPaths next = it2.next();
            if (motionPaths.f1934d == next.f1934d) {
                motionPaths2 = next;
            }
        }
        if (motionPaths2 != null) {
            this.f1893x.remove(motionPaths2);
        }
        int binarySearch = Collections.binarySearch(this.f1893x, motionPaths);
        if (binarySearch == 0) {
            Utils.loge(M, " KeyPath position \"" + motionPaths.f1934d + "\" outside of range");
        }
        this.f1893x.add((-binarySearch) - 1, motionPaths);
    }

    private void r(MotionPaths motionPaths) {
        motionPaths.O0(this.f1871b.getX(), this.f1871b.getY(), this.f1871b.getWidth(), this.f1871b.getHeight());
    }

    void a(ArrayList<MotionKey> arrayList) {
        this.f1895z.addAll(arrayList);
    }

    public void addKey(MotionKey motionKey) {
        this.f1895z.add(motionKey);
    }

    void b(float[] fArr, int i2) {
        float f4;
        float f5 = 1.0f / (i2 - 1);
        HashMap<String, SplineSet> hashMap = this.B;
        if (hashMap != null) {
            hashMap.get("translationX");
        }
        HashMap<String, SplineSet> hashMap2 = this.B;
        if (hashMap2 != null) {
            hashMap2.get("translationY");
        }
        HashMap<String, KeyCycleOscillator> hashMap3 = this.C;
        if (hashMap3 != null) {
            hashMap3.get("translationX");
        }
        HashMap<String, KeyCycleOscillator> hashMap4 = this.C;
        if (hashMap4 != null) {
            hashMap4.get("translationY");
        }
        for (int i4 = 0; i4 < i2; i4++) {
            float f6 = i4 * f5;
            float f7 = this.f1883n;
            float f8 = 0.0f;
            if (f7 != 1.0f) {
                float f9 = this.f1882m;
                if (f6 < f9) {
                    f6 = 0.0f;
                }
                if (f6 > f9 && f6 < 1.0d) {
                    f6 = Math.min((f6 - f9) * f7, 1.0f);
                }
            }
            double d4 = f6;
            Easing easing = this.f1875f.f1931a;
            float f10 = Float.NaN;
            Iterator<MotionPaths> it2 = this.f1893x.iterator();
            while (it2.hasNext()) {
                MotionPaths next = it2.next();
                Easing easing2 = next.f1931a;
                if (easing2 != null) {
                    float f11 = next.f1933c;
                    if (f11 < f6) {
                        easing = easing2;
                        f8 = f11;
                    } else if (Float.isNaN(f10)) {
                        f10 = next.f1933c;
                    }
                }
            }
            if (easing != null) {
                if (Float.isNaN(f10)) {
                    f10 = 1.0f;
                }
                d4 = (((float) easing.get((f6 - f8) / f4)) * (f10 - f8)) + f8;
            }
            this.f1879j[0].getPos(d4, this.f1887r);
            CurveFit curveFit = this.f1880k;
            if (curveFit != null) {
                double[] dArr = this.f1887r;
                if (dArr.length > 0) {
                    curveFit.getPos(d4, dArr);
                }
            }
            this.f1875f.A(this.f1886q, this.f1887r, fArr, i4 * 2);
        }
    }

    public int buildKeyFrames(float[] fArr, int[] iArr, int[] iArr2) {
        if (fArr != null) {
            double[] timePoints = this.f1879j[0].getTimePoints();
            if (iArr != null) {
                Iterator<MotionPaths> it2 = this.f1893x.iterator();
                int i2 = 0;
                while (it2.hasNext()) {
                    iArr[i2] = it2.next().f1946p;
                    i2++;
                }
            }
            if (iArr2 != null) {
                Iterator<MotionPaths> it3 = this.f1893x.iterator();
                int i4 = 0;
                while (it3.hasNext()) {
                    iArr2[i4] = (int) (it3.next().f1934d * 100.0f);
                    i4++;
                }
            }
            int i5 = 0;
            for (int i6 = 0; i6 < timePoints.length; i6++) {
                this.f1879j[0].getPos(timePoints[i6], this.f1887r);
                this.f1875f.U(timePoints[i6], this.f1886q, this.f1887r, fArr, i5);
                i5 += 2;
            }
            return i5 / 2;
        }
        return 0;
    }

    public void buildPath(float[] fArr, int i2) {
        double d4;
        float f4;
        float f5 = 1.0f;
        float f6 = 1.0f / (i2 - 1);
        HashMap<String, SplineSet> hashMap = this.B;
        SplineSet splineSet = hashMap == null ? null : hashMap.get("translationX");
        HashMap<String, SplineSet> hashMap2 = this.B;
        SplineSet splineSet2 = hashMap2 == null ? null : hashMap2.get("translationY");
        HashMap<String, KeyCycleOscillator> hashMap3 = this.C;
        KeyCycleOscillator keyCycleOscillator = hashMap3 == null ? null : hashMap3.get("translationX");
        HashMap<String, KeyCycleOscillator> hashMap4 = this.C;
        KeyCycleOscillator keyCycleOscillator2 = hashMap4 != null ? hashMap4.get("translationY") : null;
        int i4 = 0;
        while (i4 < i2) {
            float f7 = i4 * f6;
            float f8 = this.f1883n;
            if (f8 != f5) {
                float f9 = this.f1882m;
                if (f7 < f9) {
                    f7 = 0.0f;
                }
                if (f7 > f9 && f7 < 1.0d) {
                    f7 = Math.min((f7 - f9) * f8, f5);
                }
            }
            float f10 = f7;
            double d5 = f10;
            Easing easing = this.f1875f.f1931a;
            float f11 = Float.NaN;
            Iterator<MotionPaths> it2 = this.f1893x.iterator();
            float f12 = 0.0f;
            while (it2.hasNext()) {
                MotionPaths next = it2.next();
                Easing easing2 = next.f1931a;
                double d6 = d5;
                if (easing2 != null) {
                    float f13 = next.f1933c;
                    if (f13 < f10) {
                        f12 = f13;
                        easing = easing2;
                    } else if (Float.isNaN(f11)) {
                        f11 = next.f1933c;
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
            this.f1879j[0].getPos(d4, this.f1887r);
            CurveFit curveFit = this.f1880k;
            if (curveFit != null) {
                double[] dArr = this.f1887r;
                if (dArr.length > 0) {
                    curveFit.getPos(d4, dArr);
                }
            }
            int i5 = i4 * 2;
            int i6 = i4;
            this.f1875f.U(d4, this.f1886q, this.f1887r, fArr, i5);
            if (keyCycleOscillator != null) {
                fArr[i5] = fArr[i5] + keyCycleOscillator.get(f10);
            } else if (splineSet != null) {
                fArr[i5] = fArr[i5] + splineSet.get(f10);
            }
            if (keyCycleOscillator2 != null) {
                int i7 = i5 + 1;
                fArr[i7] = fArr[i7] + keyCycleOscillator2.get(f10);
            } else if (splineSet2 != null) {
                int i8 = i5 + 1;
                fArr[i8] = fArr[i8] + splineSet2.get(f10);
            }
            i4 = i6 + 1;
            f5 = 1.0f;
        }
    }

    public void buildRect(float f4, float[] fArr, int i2) {
        this.f1879j[0].getPos(f(f4, null), this.f1887r);
        this.f1875f.m0(this.f1886q, this.f1887r, fArr, i2);
    }

    int c(float[] fArr, int[] iArr) {
        if (fArr != null) {
            double[] timePoints = this.f1879j[0].getTimePoints();
            if (iArr != null) {
                Iterator<MotionPaths> it2 = this.f1893x.iterator();
                int i2 = 0;
                while (it2.hasNext()) {
                    iArr[i2] = it2.next().f1946p;
                    i2++;
                }
            }
            int i4 = 0;
            for (double d4 : timePoints) {
                this.f1879j[0].getPos(d4, this.f1887r);
                this.f1875f.A(this.f1886q, this.f1887r, fArr, i4);
                i4 += 2;
            }
            return i4 / 2;
        }
        return 0;
    }

    void d(float[] fArr, int i2) {
        float f4 = 1.0f / (i2 - 1);
        for (int i4 = 0; i4 < i2; i4++) {
            this.f1879j[0].getPos(f(i4 * f4, null), this.f1887r);
            this.f1875f.m0(this.f1886q, this.f1887r, fArr, i4 * 8);
        }
    }

    void e(boolean z3) {
    }

    int g(String str, float[] fArr, int i2) {
        SplineSet splineSet = this.B.get(str);
        if (splineSet == null) {
            return -1;
        }
        for (int i4 = 0; i4 < fArr.length; i4++) {
            fArr[i4] = splineSet.get(i4 / (fArr.length - 1));
        }
        return fArr.length;
    }

    public int getAnimateRelativeTo() {
        return this.f1875f.f1942l;
    }

    public void getCenter(double d4, float[] fArr, float[] fArr2) {
        double[] dArr = new double[4];
        double[] dArr2 = new double[4];
        this.f1879j[0].getPos(d4, dArr);
        this.f1879j[0].getSlope(d4, dArr2);
        Arrays.fill(fArr2, 0.0f);
        this.f1875f.Y(d4, this.f1886q, dArr, fArr, dArr2, fArr2);
    }

    public float getCenterX() {
        return this.f1884o;
    }

    public float getCenterY() {
        return this.f1885p;
    }

    public int getDrawPath() {
        int i2 = this.f1875f.f1932b;
        Iterator<MotionPaths> it2 = this.f1893x.iterator();
        while (it2.hasNext()) {
            i2 = Math.max(i2, it2.next().f1932b);
        }
        return Math.max(i2, this.f1876g.f1932b);
    }

    public float getFinalHeight() {
        return this.f1876g.f1938h;
    }

    public float getFinalWidth() {
        return this.f1876g.f1937g;
    }

    public float getFinalX() {
        return this.f1876g.f1935e;
    }

    public float getFinalY() {
        return this.f1876g.f1936f;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public int getId(String str) {
        return 0;
    }

    public MotionPaths getKeyFrame(int i2) {
        return this.f1893x.get(i2);
    }

    public int getKeyFrameInfo(int i2, int[] iArr) {
        float[] fArr = new float[2];
        Iterator<MotionKey> it2 = this.f1895z.iterator();
        int i4 = 0;
        int i5 = 0;
        while (it2.hasNext()) {
            MotionKey next = it2.next();
            int i6 = next.mType;
            if (i6 == i2 || i2 != -1) {
                iArr[i5] = 0;
                int i7 = i5 + 1;
                iArr[i7] = i6;
                int i8 = i7 + 1;
                int i9 = next.mFramePosition;
                iArr[i8] = i9;
                double d4 = i9 / 100.0f;
                this.f1879j[0].getPos(d4, this.f1887r);
                this.f1875f.U(d4, this.f1886q, this.f1887r, fArr, 0);
                int i10 = i8 + 1;
                iArr[i10] = Float.floatToIntBits(fArr[0]);
                int i11 = i10 + 1;
                iArr[i11] = Float.floatToIntBits(fArr[1]);
                if (next instanceof MotionKeyPosition) {
                    MotionKeyPosition motionKeyPosition = (MotionKeyPosition) next;
                    int i12 = i11 + 1;
                    iArr[i12] = motionKeyPosition.mPositionType;
                    int i13 = i12 + 1;
                    iArr[i13] = Float.floatToIntBits(motionKeyPosition.mPercentX);
                    i11 = i13 + 1;
                    iArr[i11] = Float.floatToIntBits(motionKeyPosition.mPercentY);
                }
                int i14 = i11 + 1;
                iArr[i5] = i14 - i5;
                i4++;
                i5 = i14;
            }
        }
        return i4;
    }

    public int getKeyFramePositions(int[] iArr, float[] fArr) {
        Iterator<MotionKey> it2 = this.f1895z.iterator();
        int i2 = 0;
        int i4 = 0;
        while (it2.hasNext()) {
            MotionKey next = it2.next();
            int i5 = next.mFramePosition;
            iArr[i2] = (next.mType * 1000) + i5;
            double d4 = i5 / 100.0f;
            this.f1879j[0].getPos(d4, this.f1887r);
            this.f1875f.U(d4, this.f1886q, this.f1887r, fArr, i4);
            i4 += 2;
            i2++;
        }
        return i2;
    }

    public float getStartHeight() {
        return this.f1875f.f1938h;
    }

    public float getStartWidth() {
        return this.f1875f.f1937g;
    }

    public float getStartX() {
        return this.f1875f.f1935e;
    }

    public float getStartY() {
        return this.f1875f.f1936f;
    }

    public int getTransformPivotTarget() {
        return this.F;
    }

    public MotionWidget getView() {
        return this.f1871b;
    }

    void h(float f4, float f5, float f6, float[] fArr) {
        double[] dArr;
        float f7 = f(f4, this.f1894y);
        CurveFit[] curveFitArr = this.f1879j;
        int i2 = 0;
        if (curveFitArr != null) {
            double d4 = f7;
            curveFitArr[0].getSlope(d4, this.f1888s);
            this.f1879j[0].getPos(d4, this.f1887r);
            float f8 = this.f1894y[0];
            while (true) {
                dArr = this.f1888s;
                if (i2 >= dArr.length) {
                    break;
                }
                double d5 = dArr[i2];
                double d6 = f8;
                Double.isNaN(d6);
                dArr[i2] = d5 * d6;
                i2++;
            }
            CurveFit curveFit = this.f1880k;
            if (curveFit != null) {
                double[] dArr2 = this.f1887r;
                if (dArr2.length > 0) {
                    curveFit.getPos(d4, dArr2);
                    this.f1880k.getSlope(d4, this.f1888s);
                    this.f1875f.P0(f5, f6, fArr, this.f1886q, this.f1888s, this.f1887r);
                    return;
                }
                return;
            }
            this.f1875f.P0(f5, f6, fArr, this.f1886q, dArr, this.f1887r);
            return;
        }
        MotionPaths motionPaths = this.f1876g;
        float f9 = motionPaths.f1935e;
        MotionPaths motionPaths2 = this.f1875f;
        float f10 = f9 - motionPaths2.f1935e;
        float f11 = motionPaths.f1936f - motionPaths2.f1936f;
        float f12 = (motionPaths.f1937g - motionPaths2.f1937g) + f10;
        float f13 = (motionPaths.f1938h - motionPaths2.f1938h) + f11;
        fArr[0] = (f10 * (1.0f - f5)) + (f12 * f5);
        fArr[1] = (f11 * (1.0f - f6)) + (f13 * f6);
    }

    public boolean interpolate(MotionWidget motionWidget, float f4, long j4, KeyCache keyCache) {
        double d4;
        MotionWidget motionWidget2;
        float f5;
        float f6 = f(f4, null);
        int i2 = this.H;
        if (i2 != -1) {
            float f7 = 1.0f / i2;
            float floor = ((float) Math.floor(f6 / f7)) * f7;
            float f8 = (f6 % f7) / f7;
            if (!Float.isNaN(this.I)) {
                f8 = (f8 + this.I) % 1.0f;
            }
            DifferentialInterpolator differentialInterpolator = this.J;
            if (differentialInterpolator != null) {
                f5 = differentialInterpolator.getInterpolation(f8);
            } else {
                f5 = ((double) f8) > 0.5d ? 1.0f : 0.0f;
            }
            f6 = (f5 * f7) + floor;
        }
        float f9 = f6;
        HashMap<String, SplineSet> hashMap = this.B;
        if (hashMap != null) {
            for (SplineSet splineSet : hashMap.values()) {
                splineSet.setProperty(motionWidget, f9);
            }
        }
        CurveFit[] curveFitArr = this.f1879j;
        if (curveFitArr != null) {
            double d5 = f9;
            curveFitArr[0].getPos(d5, this.f1887r);
            this.f1879j[0].getSlope(d5, this.f1888s);
            CurveFit curveFit = this.f1880k;
            if (curveFit != null) {
                double[] dArr = this.f1887r;
                if (dArr.length > 0) {
                    curveFit.getPos(d5, dArr);
                    this.f1880k.getSlope(d5, this.f1888s);
                }
            }
            if (this.K) {
                d4 = d5;
            } else {
                d4 = d5;
                this.f1875f.Q0(f9, motionWidget, this.f1886q, this.f1887r, this.f1888s, null);
            }
            if (this.F != -1) {
                if (this.G == null) {
                    this.G = motionWidget.getParent().findViewById(this.F);
                }
                if (this.G != null) {
                    float top = (motionWidget2.getTop() + this.G.getBottom()) / 2.0f;
                    float left = (this.G.getLeft() + this.G.getRight()) / 2.0f;
                    if (motionWidget.getRight() - motionWidget.getLeft() > 0 && motionWidget.getBottom() - motionWidget.getTop() > 0) {
                        motionWidget.setPivotX(left - motionWidget.getLeft());
                        motionWidget.setPivotY(top - motionWidget.getTop());
                    }
                }
            }
            int i4 = 1;
            while (true) {
                CurveFit[] curveFitArr2 = this.f1879j;
                if (i4 >= curveFitArr2.length) {
                    break;
                }
                curveFitArr2[i4].getPos(d4, this.f1892w);
                this.f1875f.f1945o.get(this.f1889t[i4 - 1]).setInterpolatedValue(motionWidget, this.f1892w);
                i4++;
            }
            MotionConstrainedPoint motionConstrainedPoint = this.f1877h;
            if (motionConstrainedPoint.f1899b == 0) {
                if (f9 <= 0.0f) {
                    motionWidget.setVisibility(motionConstrainedPoint.f1900c);
                } else if (f9 >= 1.0f) {
                    motionWidget.setVisibility(this.f1878i.f1900c);
                } else if (this.f1878i.f1900c != motionConstrainedPoint.f1900c) {
                    motionWidget.setVisibility(4);
                }
            }
            if (this.D != null) {
                int i5 = 0;
                while (true) {
                    MotionKeyTrigger[] motionKeyTriggerArr = this.D;
                    if (i5 >= motionKeyTriggerArr.length) {
                        break;
                    }
                    motionKeyTriggerArr[i5].conditionallyFire(f9, motionWidget);
                    i5++;
                }
            }
        } else {
            MotionPaths motionPaths = this.f1875f;
            float f10 = motionPaths.f1935e;
            MotionPaths motionPaths2 = this.f1876g;
            float f11 = f10 + ((motionPaths2.f1935e - f10) * f9);
            float f12 = motionPaths.f1936f;
            float f13 = f12 + ((motionPaths2.f1936f - f12) * f9);
            float f14 = motionPaths.f1937g;
            float f15 = f14 + ((motionPaths2.f1937g - f14) * f9);
            float f16 = motionPaths.f1938h;
            float f17 = f11 + 0.5f;
            float f18 = f13 + 0.5f;
            motionWidget.layout((int) f17, (int) f18, (int) (f17 + f15), (int) (f18 + f16 + ((motionPaths2.f1938h - f16) * f9)));
        }
        HashMap<String, KeyCycleOscillator> hashMap2 = this.C;
        if (hashMap2 != null) {
            for (KeyCycleOscillator keyCycleOscillator : hashMap2.values()) {
                if (keyCycleOscillator instanceof KeyCycleOscillator.PathRotateSet) {
                    double[] dArr2 = this.f1888s;
                    ((KeyCycleOscillator.PathRotateSet) keyCycleOscillator).setPathRotate(motionWidget, f9, dArr2[0], dArr2[1]);
                } else {
                    keyCycleOscillator.setProperty(motionWidget, f9);
                }
            }
            return false;
        }
        return false;
    }

    float j(int i2, float f4, float f5) {
        MotionPaths motionPaths = this.f1876g;
        float f6 = motionPaths.f1935e;
        MotionPaths motionPaths2 = this.f1875f;
        float f7 = motionPaths2.f1935e;
        float f8 = f6 - f7;
        float f9 = motionPaths.f1936f;
        float f10 = motionPaths2.f1936f;
        float f11 = f9 - f10;
        float f12 = f7 + (motionPaths2.f1937g / 2.0f);
        float f13 = f10 + (motionPaths2.f1938h / 2.0f);
        float hypot = (float) Math.hypot(f8, f11);
        if (hypot < 1.0E-7d) {
            return Float.NaN;
        }
        float f14 = f4 - f12;
        float f15 = f5 - f13;
        if (((float) Math.hypot(f14, f15)) == 0.0f) {
            return 0.0f;
        }
        float f16 = (f14 * f8) + (f15 * f11);
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        if (i2 != 4) {
                            if (i2 != 5) {
                                return 0.0f;
                            }
                            return f15 / f11;
                        }
                        return f14 / f11;
                    }
                    return f15 / f8;
                }
                return f14 / f8;
            }
            return (float) Math.sqrt((hypot * hypot) - (f16 * f16));
        }
        return f16 / hypot;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public double[] k(double d4) {
        this.f1879j[0].getPos(d4, this.f1887r);
        CurveFit curveFit = this.f1880k;
        if (curveFit != null) {
            double[] dArr = this.f1887r;
            if (dArr.length > 0) {
                curveFit.getPos(d4, dArr);
            }
        }
        return this.f1887r;
    }

    MotionKeyPosition l(int i2, int i4, float f4, float f5) {
        FloatRect floatRect = new FloatRect();
        MotionPaths motionPaths = this.f1875f;
        float f6 = motionPaths.f1935e;
        floatRect.left = f6;
        float f7 = motionPaths.f1936f;
        floatRect.top = f7;
        floatRect.right = f6 + motionPaths.f1937g;
        floatRect.bottom = f7 + motionPaths.f1938h;
        FloatRect floatRect2 = new FloatRect();
        MotionPaths motionPaths2 = this.f1876g;
        float f8 = motionPaths2.f1935e;
        floatRect2.left = f8;
        float f9 = motionPaths2.f1936f;
        floatRect2.top = f9;
        floatRect2.right = f8 + motionPaths2.f1937g;
        floatRect2.bottom = f9 + motionPaths2.f1938h;
        Iterator<MotionKey> it2 = this.f1895z.iterator();
        while (it2.hasNext()) {
            MotionKey next = it2.next();
            if (next instanceof MotionKeyPosition) {
                MotionKeyPosition motionKeyPosition = (MotionKeyPosition) next;
                if (motionKeyPosition.intersects(i2, i4, floatRect, floatRect2, f4, f5)) {
                    return motionKeyPosition;
                }
            }
        }
        return null;
    }

    void m(float f4, int i2, int i4, float f5, float f6, float[] fArr) {
        float f7 = f(f4, this.f1894y);
        HashMap<String, SplineSet> hashMap = this.B;
        SplineSet splineSet = hashMap == null ? null : hashMap.get("translationX");
        HashMap<String, SplineSet> hashMap2 = this.B;
        SplineSet splineSet2 = hashMap2 == null ? null : hashMap2.get("translationY");
        HashMap<String, SplineSet> hashMap3 = this.B;
        SplineSet splineSet3 = hashMap3 == null ? null : hashMap3.get("rotationZ");
        HashMap<String, SplineSet> hashMap4 = this.B;
        SplineSet splineSet4 = hashMap4 == null ? null : hashMap4.get("scaleX");
        HashMap<String, SplineSet> hashMap5 = this.B;
        SplineSet splineSet5 = hashMap5 == null ? null : hashMap5.get("scaleY");
        HashMap<String, KeyCycleOscillator> hashMap6 = this.C;
        KeyCycleOscillator keyCycleOscillator = hashMap6 == null ? null : hashMap6.get("translationX");
        HashMap<String, KeyCycleOscillator> hashMap7 = this.C;
        KeyCycleOscillator keyCycleOscillator2 = hashMap7 == null ? null : hashMap7.get("translationY");
        HashMap<String, KeyCycleOscillator> hashMap8 = this.C;
        KeyCycleOscillator keyCycleOscillator3 = hashMap8 == null ? null : hashMap8.get("rotationZ");
        HashMap<String, KeyCycleOscillator> hashMap9 = this.C;
        KeyCycleOscillator keyCycleOscillator4 = hashMap9 == null ? null : hashMap9.get("scaleX");
        HashMap<String, KeyCycleOscillator> hashMap10 = this.C;
        KeyCycleOscillator keyCycleOscillator5 = hashMap10 != null ? hashMap10.get("scaleY") : null;
        VelocityMatrix velocityMatrix = new VelocityMatrix();
        velocityMatrix.clear();
        velocityMatrix.setRotationVelocity(splineSet3, f7);
        velocityMatrix.setTranslationVelocity(splineSet, splineSet2, f7);
        velocityMatrix.setScaleVelocity(splineSet4, splineSet5, f7);
        velocityMatrix.setRotationVelocity(keyCycleOscillator3, f7);
        velocityMatrix.setTranslationVelocity(keyCycleOscillator, keyCycleOscillator2, f7);
        velocityMatrix.setScaleVelocity(keyCycleOscillator4, keyCycleOscillator5, f7);
        CurveFit curveFit = this.f1880k;
        if (curveFit != null) {
            double[] dArr = this.f1887r;
            if (dArr.length > 0) {
                double d4 = f7;
                curveFit.getPos(d4, dArr);
                this.f1880k.getSlope(d4, this.f1888s);
                this.f1875f.P0(f5, f6, fArr, this.f1886q, this.f1888s, this.f1887r);
            }
            velocityMatrix.applyTransform(f5, f6, i2, i4, fArr);
            return;
        }
        int i5 = 0;
        if (this.f1879j != null) {
            double f8 = f(f7, this.f1894y);
            this.f1879j[0].getSlope(f8, this.f1888s);
            this.f1879j[0].getPos(f8, this.f1887r);
            float f9 = this.f1894y[0];
            while (true) {
                double[] dArr2 = this.f1888s;
                if (i5 < dArr2.length) {
                    double d5 = dArr2[i5];
                    double d6 = f9;
                    Double.isNaN(d6);
                    dArr2[i5] = d5 * d6;
                    i5++;
                } else {
                    this.f1875f.P0(f5, f6, fArr, this.f1886q, dArr2, this.f1887r);
                    velocityMatrix.applyTransform(f5, f6, i2, i4, fArr);
                    return;
                }
            }
        } else {
            MotionPaths motionPaths = this.f1876g;
            float f10 = motionPaths.f1935e;
            MotionPaths motionPaths2 = this.f1875f;
            float f11 = f10 - motionPaths2.f1935e;
            float f12 = motionPaths.f1936f - motionPaths2.f1936f;
            KeyCycleOscillator keyCycleOscillator6 = keyCycleOscillator4;
            float f13 = (motionPaths.f1938h - motionPaths2.f1938h) + f12;
            fArr[0] = (f11 * (1.0f - f5)) + (((motionPaths.f1937g - motionPaths2.f1937g) + f11) * f5);
            fArr[1] = (f12 * (1.0f - f6)) + (f13 * f6);
            velocityMatrix.clear();
            velocityMatrix.setRotationVelocity(splineSet3, f7);
            velocityMatrix.setTranslationVelocity(splineSet, splineSet2, f7);
            velocityMatrix.setScaleVelocity(splineSet4, splineSet5, f7);
            velocityMatrix.setRotationVelocity(keyCycleOscillator3, f7);
            velocityMatrix.setTranslationVelocity(keyCycleOscillator, keyCycleOscillator2, f7);
            velocityMatrix.setScaleVelocity(keyCycleOscillator6, keyCycleOscillator5, f7);
            velocityMatrix.applyTransform(f5, f6, i2, i4, fArr);
        }
    }

    String p() {
        return this.f1871b.getName();
    }

    void q(MotionWidget motionWidget, MotionKeyPosition motionKeyPosition, float f4, float f5, String[] strArr, float[] fArr) {
        FloatRect floatRect = new FloatRect();
        MotionPaths motionPaths = this.f1875f;
        float f6 = motionPaths.f1935e;
        floatRect.left = f6;
        float f7 = motionPaths.f1936f;
        floatRect.top = f7;
        floatRect.right = f6 + motionPaths.f1937g;
        floatRect.bottom = f7 + motionPaths.f1938h;
        FloatRect floatRect2 = new FloatRect();
        MotionPaths motionPaths2 = this.f1876g;
        float f8 = motionPaths2.f1935e;
        floatRect2.left = f8;
        float f9 = motionPaths2.f1936f;
        floatRect2.top = f9;
        floatRect2.right = f8 + motionPaths2.f1937g;
        floatRect2.bottom = f9 + motionPaths2.f1938h;
        motionKeyPosition.positionAttributes(motionWidget, floatRect, floatRect2, f4, f5, strArr, fArr);
    }

    void s(Rect rect, Rect rect2, int i2, int i4, int i5) {
        if (i2 == 1) {
            int i6 = rect.left + rect.right;
            rect2.left = ((rect.top + rect.bottom) - rect.width()) / 2;
            rect2.top = i5 - ((i6 + rect.height()) / 2);
            rect2.right = rect2.left + rect.width();
            rect2.bottom = rect2.top + rect.height();
        } else if (i2 == 2) {
            int i7 = rect.left + rect.right;
            rect2.left = i4 - (((rect.top + rect.bottom) + rect.width()) / 2);
            rect2.top = (i7 - rect.height()) / 2;
            rect2.right = rect2.left + rect.width();
            rect2.bottom = rect2.top + rect.height();
        } else if (i2 == 3) {
            int i8 = rect.left + rect.right;
            rect2.left = ((rect.height() / 2) + rect.top) - (i8 / 2);
            rect2.top = i5 - ((i8 + rect.height()) / 2);
            rect2.right = rect2.left + rect.width();
            rect2.bottom = rect2.top + rect.height();
        } else if (i2 != 4) {
        } else {
            int i9 = rect.left + rect.right;
            rect2.left = i4 - (((rect.bottom + rect.top) + rect.width()) / 2);
            rect2.top = (i9 - rect.height()) / 2;
            rect2.right = rect2.left + rect.width();
            rect2.bottom = rect2.top + rect.height();
        }
    }

    public void setDrawPath(int i2) {
        this.f1875f.f1932b = i2;
    }

    public void setEnd(MotionWidget motionWidget) {
        MotionPaths motionPaths = this.f1876g;
        motionPaths.f1933c = 1.0f;
        motionPaths.f1934d = 1.0f;
        r(motionPaths);
        this.f1876g.O0(motionWidget.getLeft(), motionWidget.getTop(), motionWidget.getWidth(), motionWidget.getHeight());
        this.f1876g.applyParameters(motionWidget);
        this.f1878i.setState(motionWidget);
    }

    public void setPathMotionArc(int i2) {
        this.E = i2;
    }

    public void setStart(MotionWidget motionWidget) {
        MotionPaths motionPaths = this.f1875f;
        motionPaths.f1933c = 0.0f;
        motionPaths.f1934d = 0.0f;
        motionPaths.O0(motionWidget.getX(), motionWidget.getY(), motionWidget.getWidth(), motionWidget.getHeight());
        this.f1875f.applyParameters(motionWidget);
        this.f1877h.setState(motionWidget);
    }

    public void setStartState(ViewState viewState, MotionWidget motionWidget, int i2, int i4, int i5) {
        MotionPaths motionPaths = this.f1875f;
        motionPaths.f1933c = 0.0f;
        motionPaths.f1934d = 0.0f;
        Rect rect = new Rect();
        if (i2 == 1) {
            int i6 = viewState.left + viewState.right;
            rect.left = ((viewState.top + viewState.bottom) - viewState.width()) / 2;
            rect.top = i4 - ((i6 + viewState.height()) / 2);
            rect.right = rect.left + viewState.width();
            rect.bottom = rect.top + viewState.height();
        } else if (i2 == 2) {
            int i7 = viewState.left + viewState.right;
            rect.left = i5 - (((viewState.top + viewState.bottom) + viewState.width()) / 2);
            rect.top = (i7 - viewState.height()) / 2;
            rect.right = rect.left + viewState.width();
            rect.bottom = rect.top + viewState.height();
        }
        this.f1875f.O0(rect.left, rect.top, rect.width(), rect.height());
        this.f1877h.setState(rect, motionWidget, i2, viewState.rotation);
    }

    public void setTransformPivotTarget(int i2) {
        this.F = i2;
        this.G = null;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i2, float f4) {
        return false;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i2, int i4) {
        if (i2 != 509) {
            return i2 == 704;
        }
        setPathMotionArc(i4);
        return true;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i2, boolean z3) {
        return false;
    }

    public void setView(MotionWidget motionWidget) {
        this.f1871b = motionWidget;
    }

    public void setup(int i2, int i4, float f4, long j4) {
        ArrayList arrayList;
        String[] strArr;
        Class<double> cls;
        int i5;
        CustomVariable customVariable;
        SplineSet makeSpline;
        CustomVariable customVariable2;
        Integer num;
        Iterator<String> it2;
        SplineSet makeSpline2;
        CustomVariable customVariable3;
        Class<double> cls2 = double.class;
        new HashSet();
        HashSet<String> hashSet = new HashSet<>();
        HashSet<String> hashSet2 = new HashSet<>();
        HashSet<String> hashSet3 = new HashSet<>();
        HashMap<String, Integer> hashMap = new HashMap<>();
        int i6 = this.E;
        if (i6 != -1) {
            this.f1875f.f1941k = i6;
        }
        this.f1877h.s(this.f1878i, hashSet2);
        ArrayList<MotionKey> arrayList2 = this.f1895z;
        if (arrayList2 != null) {
            Iterator<MotionKey> it3 = arrayList2.iterator();
            arrayList = null;
            while (it3.hasNext()) {
                MotionKey next = it3.next();
                if (next instanceof MotionKeyPosition) {
                    MotionKeyPosition motionKeyPosition = (MotionKeyPosition) next;
                    o(new MotionPaths(i2, i4, motionKeyPosition, this.f1875f, this.f1876g));
                    int i7 = motionKeyPosition.mCurveFit;
                    if (i7 != -1) {
                        this.f1874e = i7;
                    }
                } else if (next instanceof MotionKeyCycle) {
                    next.getAttributeNames(hashSet3);
                } else if (next instanceof MotionKeyTimeCycle) {
                    next.getAttributeNames(hashSet);
                } else if (next instanceof MotionKeyTrigger) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add((MotionKeyTrigger) next);
                } else {
                    next.setInterpolation(hashMap);
                    next.getAttributeNames(hashSet2);
                }
            }
        } else {
            arrayList = null;
        }
        if (arrayList != null) {
            this.D = (MotionKeyTrigger[]) arrayList.toArray(new MotionKeyTrigger[0]);
        }
        char c4 = 1;
        if (!hashSet2.isEmpty()) {
            this.B = new HashMap<>();
            Iterator<String> it4 = hashSet2.iterator();
            while (it4.hasNext()) {
                String next2 = it4.next();
                if (next2.startsWith("CUSTOM,")) {
                    KeyFrameArray.CustomVar customVar = new KeyFrameArray.CustomVar();
                    String str = next2.split(",")[c4];
                    Iterator<MotionKey> it5 = this.f1895z.iterator();
                    while (it5.hasNext()) {
                        MotionKey next3 = it5.next();
                        Iterator<String> it6 = it4;
                        HashMap<String, CustomVariable> hashMap2 = next3.mCustom;
                        if (hashMap2 != null && (customVariable3 = hashMap2.get(str)) != null) {
                            customVar.append(next3.mFramePosition, customVariable3);
                        }
                        it4 = it6;
                    }
                    it2 = it4;
                    makeSpline2 = SplineSet.makeCustomSplineSet(next2, customVar);
                } else {
                    it2 = it4;
                    makeSpline2 = SplineSet.makeSpline(next2, j4);
                }
                if (makeSpline2 != null) {
                    makeSpline2.setType(next2);
                    this.B.put(next2, makeSpline2);
                }
                it4 = it2;
                c4 = 1;
            }
            ArrayList<MotionKey> arrayList3 = this.f1895z;
            if (arrayList3 != null) {
                Iterator<MotionKey> it7 = arrayList3.iterator();
                while (it7.hasNext()) {
                    MotionKey next4 = it7.next();
                    if (next4 instanceof MotionKeyAttributes) {
                        next4.addValues(this.B);
                    }
                }
            }
            this.f1877h.addValues(this.B, 0);
            this.f1878i.addValues(this.B, 100);
            for (String str2 : this.B.keySet()) {
                int intValue = (!hashMap.containsKey(str2) || (num = hashMap.get(str2)) == null) ? 0 : num.intValue();
                SplineSet splineSet = this.B.get(str2);
                if (splineSet != null) {
                    splineSet.setup(intValue);
                }
            }
        }
        if (!hashSet.isEmpty()) {
            if (this.A == null) {
                this.A = new HashMap<>();
            }
            Iterator<String> it8 = hashSet.iterator();
            while (it8.hasNext()) {
                String next5 = it8.next();
                if (!this.A.containsKey(next5)) {
                    if (next5.startsWith("CUSTOM,")) {
                        KeyFrameArray.CustomVar customVar2 = new KeyFrameArray.CustomVar();
                        String str3 = next5.split(",")[1];
                        Iterator<MotionKey> it9 = this.f1895z.iterator();
                        while (it9.hasNext()) {
                            MotionKey next6 = it9.next();
                            HashMap<String, CustomVariable> hashMap3 = next6.mCustom;
                            if (hashMap3 != null && (customVariable2 = hashMap3.get(str3)) != null) {
                                customVar2.append(next6.mFramePosition, customVariable2);
                            }
                        }
                        makeSpline = SplineSet.makeCustomSplineSet(next5, customVar2);
                    } else {
                        makeSpline = SplineSet.makeSpline(next5, j4);
                    }
                    if (makeSpline != null) {
                        makeSpline.setType(next5);
                    }
                }
            }
            ArrayList<MotionKey> arrayList4 = this.f1895z;
            if (arrayList4 != null) {
                Iterator<MotionKey> it10 = arrayList4.iterator();
                while (it10.hasNext()) {
                    MotionKey next7 = it10.next();
                    if (next7 instanceof MotionKeyTimeCycle) {
                        ((MotionKeyTimeCycle) next7).addTimeValues(this.A);
                    }
                }
            }
            for (String str4 : this.A.keySet()) {
                this.A.get(str4).setup(hashMap.containsKey(str4) ? hashMap.get(str4).intValue() : 0);
            }
        }
        int i8 = 2;
        int size = this.f1893x.size() + 2;
        MotionPaths[] motionPathsArr = new MotionPaths[size];
        motionPathsArr[0] = this.f1875f;
        motionPathsArr[size - 1] = this.f1876g;
        if (this.f1893x.size() > 0 && this.f1874e == MotionKey.UNSET) {
            this.f1874e = 0;
        }
        Iterator<MotionPaths> it11 = this.f1893x.iterator();
        int i9 = 1;
        while (it11.hasNext()) {
            motionPathsArr[i9] = it11.next();
            i9++;
        }
        HashSet hashSet4 = new HashSet();
        for (String str5 : this.f1876g.f1945o.keySet()) {
            if (this.f1875f.f1945o.containsKey(str5)) {
                if (!hashSet2.contains("CUSTOM," + str5)) {
                    hashSet4.add(str5);
                }
            }
        }
        String[] strArr2 = (String[]) hashSet4.toArray(new String[0]);
        this.f1889t = strArr2;
        this.f1890u = new int[strArr2.length];
        int i10 = 0;
        while (true) {
            strArr = this.f1889t;
            if (i10 >= strArr.length) {
                break;
            }
            String str6 = strArr[i10];
            this.f1890u[i10] = 0;
            int i11 = 0;
            while (true) {
                if (i11 >= size) {
                    break;
                }
                if (motionPathsArr[i11].f1945o.containsKey(str6) && (customVariable = motionPathsArr[i11].f1945o.get(str6)) != null) {
                    int[] iArr = this.f1890u;
                    iArr[i10] = iArr[i10] + customVariable.numberOfInterpolatedValues();
                    break;
                }
                i11++;
            }
            i10++;
        }
        boolean z3 = motionPathsArr[0].f1941k != -1;
        int length = 18 + strArr.length;
        boolean[] zArr = new boolean[length];
        for (int i12 = 1; i12 < size; i12++) {
            motionPathsArr[i12].s(motionPathsArr[i12 - 1], zArr, this.f1889t, z3);
        }
        int i13 = 0;
        for (int i14 = 1; i14 < length; i14++) {
            if (zArr[i14]) {
                i13++;
            }
        }
        this.f1886q = new int[i13];
        int max = Math.max(2, i13);
        this.f1887r = new double[max];
        this.f1888s = new double[max];
        int i15 = 0;
        for (int i16 = 1; i16 < length; i16++) {
            if (zArr[i16]) {
                this.f1886q[i15] = i16;
                i15++;
            }
        }
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) cls2, size, this.f1886q.length);
        double[] dArr2 = new double[size];
        for (int i17 = 0; i17 < size; i17++) {
            motionPathsArr[i17].x(dArr[i17], this.f1886q);
            dArr2[i17] = motionPathsArr[i17].f1933c;
        }
        int i18 = 0;
        while (true) {
            int[] iArr2 = this.f1886q;
            if (i18 >= iArr2.length) {
                break;
            }
            if (iArr2[i18] < MotionPaths.f1930z.length) {
                String str7 = MotionPaths.f1930z[this.f1886q[i18]] + " [";
                for (int i19 = 0; i19 < size; i19++) {
                    str7 = str7 + dArr[i19][i18];
                }
            }
            i18++;
        }
        this.f1879j = new CurveFit[this.f1889t.length + 1];
        int i20 = 0;
        while (true) {
            String[] strArr3 = this.f1889t;
            if (i20 >= strArr3.length) {
                break;
            }
            String str8 = strArr3[i20];
            int i21 = 0;
            int i22 = 0;
            double[] dArr3 = null;
            double[][] dArr4 = null;
            while (i21 < size) {
                if (motionPathsArr[i21].v0(str8)) {
                    if (dArr4 == null) {
                        dArr3 = new double[size];
                        int[] iArr3 = new int[i8];
                        iArr3[1] = motionPathsArr[i21].k0(str8);
                        i5 = 0;
                        iArr3[0] = size;
                        dArr4 = (double[][]) Array.newInstance((Class<?>) cls2, iArr3);
                    } else {
                        i5 = 0;
                    }
                    cls = cls2;
                    dArr3[i22] = motionPathsArr[i21].f1933c;
                    motionPathsArr[i21].e0(str8, dArr4[i22], i5);
                    i22++;
                } else {
                    cls = cls2;
                }
                i21++;
                cls2 = cls;
                i8 = 2;
            }
            i20++;
            this.f1879j[i20] = CurveFit.get(this.f1874e, Arrays.copyOf(dArr3, i22), (double[][]) Arrays.copyOf(dArr4, i22));
            cls2 = cls2;
            i8 = 2;
        }
        Class<double> cls3 = cls2;
        this.f1879j[0] = CurveFit.get(this.f1874e, dArr2, dArr);
        if (motionPathsArr[0].f1941k != -1) {
            int[] iArr4 = new int[size];
            double[] dArr5 = new double[size];
            double[][] dArr6 = (double[][]) Array.newInstance((Class<?>) cls3, size, 2);
            for (int i23 = 0; i23 < size; i23++) {
                iArr4[i23] = motionPathsArr[i23].f1941k;
                dArr5[i23] = motionPathsArr[i23].f1933c;
                dArr6[i23][0] = motionPathsArr[i23].f1935e;
                dArr6[i23][1] = motionPathsArr[i23].f1936f;
            }
            this.f1880k = CurveFit.getArc(iArr4, dArr5, dArr6);
        }
        float f5 = Float.NaN;
        this.C = new HashMap<>();
        if (this.f1895z != null) {
            Iterator<String> it12 = hashSet3.iterator();
            while (it12.hasNext()) {
                String next8 = it12.next();
                KeyCycleOscillator makeWidgetCycle = KeyCycleOscillator.makeWidgetCycle(next8);
                if (makeWidgetCycle != null) {
                    if (makeWidgetCycle.variesByPath() && Float.isNaN(f5)) {
                        f5 = n();
                    }
                    makeWidgetCycle.setType(next8);
                    this.C.put(next8, makeWidgetCycle);
                }
            }
            Iterator<MotionKey> it13 = this.f1895z.iterator();
            while (it13.hasNext()) {
                MotionKey next9 = it13.next();
                if (next9 instanceof MotionKeyCycle) {
                    ((MotionKeyCycle) next9).addCycleValues(this.C);
                }
            }
            for (KeyCycleOscillator keyCycleOscillator : this.C.values()) {
                keyCycleOscillator.setup(f5);
            }
        }
    }

    public void setupRelative(Motion motion) {
        this.f1875f.setupRelative(motion, motion.f1875f);
        this.f1876g.setupRelative(motion, motion.f1876g);
    }

    void t(MotionWidget motionWidget) {
        MotionPaths motionPaths = this.f1875f;
        motionPaths.f1933c = 0.0f;
        motionPaths.f1934d = 0.0f;
        this.K = true;
        motionPaths.O0(motionWidget.getX(), motionWidget.getY(), motionWidget.getWidth(), motionWidget.getHeight());
        this.f1876g.O0(motionWidget.getX(), motionWidget.getY(), motionWidget.getWidth(), motionWidget.getHeight());
        this.f1877h.setState(motionWidget);
        this.f1878i.setState(motionWidget);
    }

    public String toString() {
        return " start: x: " + this.f1875f.f1935e + " y: " + this.f1875f.f1936f + " end: x: " + this.f1876g.f1935e + " y: " + this.f1876g.f1936f;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i2, String str) {
        if (705 == i2) {
            PrintStream printStream = System.out;
            printStream.println("TYPE_INTERPOLATOR  " + str);
            this.J = i(-1, str, 0);
        }
        return false;
    }
}
