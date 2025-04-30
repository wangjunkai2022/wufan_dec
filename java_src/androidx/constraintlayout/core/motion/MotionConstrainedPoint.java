package androidx.constraintlayout.core.motion;

import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.motion.utils.Rect;
import androidx.constraintlayout.core.motion.utils.SplineSet;
import androidx.constraintlayout.core.motion.utils.Utils;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
/* loaded from: classes.dex */
class MotionConstrainedPoint implements Comparable<MotionConstrainedPoint> {
    static final int C = 1;
    static final int D = 2;
    public static final boolean DEBUG = false;
    static String[] E = {"position", "x", "y", "width", "height", "pathRotate"};
    public static final String TAG = "MotionPaths";

    /* renamed from: c  reason: collision with root package name */
    int f1900c;

    /* renamed from: o  reason: collision with root package name */
    private Easing f1912o;

    /* renamed from: q  reason: collision with root package name */
    private float f1914q;

    /* renamed from: r  reason: collision with root package name */
    private float f1915r;

    /* renamed from: s  reason: collision with root package name */
    private float f1916s;

    /* renamed from: t  reason: collision with root package name */
    private float f1917t;

    /* renamed from: u  reason: collision with root package name */
    private float f1918u;

    /* renamed from: a  reason: collision with root package name */
    private float f1898a = 1.0f;

    /* renamed from: b  reason: collision with root package name */
    int f1899b = 0;

    /* renamed from: d  reason: collision with root package name */
    private boolean f1901d = false;

    /* renamed from: e  reason: collision with root package name */
    private float f1902e = 0.0f;

    /* renamed from: f  reason: collision with root package name */
    private float f1903f = 0.0f;

    /* renamed from: g  reason: collision with root package name */
    private float f1904g = 0.0f;
    public float rotationY = 0.0f;

    /* renamed from: h  reason: collision with root package name */
    private float f1905h = 1.0f;

    /* renamed from: i  reason: collision with root package name */
    private float f1906i = 1.0f;

    /* renamed from: j  reason: collision with root package name */
    private float f1907j = Float.NaN;

    /* renamed from: k  reason: collision with root package name */
    private float f1908k = Float.NaN;

    /* renamed from: l  reason: collision with root package name */
    private float f1909l = 0.0f;

    /* renamed from: m  reason: collision with root package name */
    private float f1910m = 0.0f;

    /* renamed from: n  reason: collision with root package name */
    private float f1911n = 0.0f;

    /* renamed from: p  reason: collision with root package name */
    private int f1913p = 0;

    /* renamed from: v  reason: collision with root package name */
    private float f1919v = Float.NaN;

    /* renamed from: w  reason: collision with root package name */
    private float f1920w = Float.NaN;

    /* renamed from: x  reason: collision with root package name */
    private int f1921x = -1;

    /* renamed from: y  reason: collision with root package name */
    LinkedHashMap<String, CustomVariable> f1922y = new LinkedHashMap<>();

    /* renamed from: z  reason: collision with root package name */
    int f1923z = 0;
    double[] A = new double[18];
    double[] B = new double[18];

    private boolean m(float f4, float f5) {
        return (Float.isNaN(f4) || Float.isNaN(f5)) ? Float.isNaN(f4) != Float.isNaN(f5) : Math.abs(f4 - f5) > 1.0E-6f;
    }

    void A(double[] dArr, int[] iArr) {
        float[] fArr = {this.f1914q, this.f1915r, this.f1916s, this.f1917t, this.f1918u, this.f1898a, this.f1902e, this.f1903f, this.f1904g, this.rotationY, this.f1905h, this.f1906i, this.f1907j, this.f1908k, this.f1909l, this.f1910m, this.f1911n, this.f1919v};
        int i2 = 0;
        for (int i4 = 0; i4 < iArr.length; i4++) {
            if (iArr[i4] < 18) {
                dArr[i2] = fArr[iArr[i4]];
                i2++;
            }
        }
    }

    int U(String str, double[] dArr, int i2) {
        CustomVariable customVariable = this.f1922y.get(str);
        if (customVariable.numberOfInterpolatedValues() == 1) {
            dArr[i2] = customVariable.getValueToInterpolate();
            return 1;
        }
        int numberOfInterpolatedValues = customVariable.numberOfInterpolatedValues();
        float[] fArr = new float[numberOfInterpolatedValues];
        customVariable.getValuesToInterpolate(fArr);
        int i4 = 0;
        while (i4 < numberOfInterpolatedValues) {
            dArr[i2] = fArr[i4];
            i4++;
            i2++;
        }
        return numberOfInterpolatedValues;
    }

    int Y(String str) {
        return this.f1922y.get(str).numberOfInterpolatedValues();
    }

    boolean a0(String str) {
        return this.f1922y.containsKey(str);
    }

    public void addValues(HashMap<String, SplineSet> hashMap, int i2) {
        for (String str : hashMap.keySet()) {
            SplineSet splineSet = hashMap.get(str);
            str.hashCode();
            char c4 = 65535;
            switch (str.hashCode()) {
                case -1249320806:
                    if (str.equals("rotationX")) {
                        c4 = 0;
                        break;
                    }
                    break;
                case -1249320805:
                    if (str.equals("rotationY")) {
                        c4 = 1;
                        break;
                    }
                    break;
                case -1249320804:
                    if (str.equals("rotationZ")) {
                        c4 = 2;
                        break;
                    }
                    break;
                case -1225497657:
                    if (str.equals("translationX")) {
                        c4 = 3;
                        break;
                    }
                    break;
                case -1225497656:
                    if (str.equals("translationY")) {
                        c4 = 4;
                        break;
                    }
                    break;
                case -1225497655:
                    if (str.equals("translationZ")) {
                        c4 = 5;
                        break;
                    }
                    break;
                case -1001078227:
                    if (str.equals("progress")) {
                        c4 = 6;
                        break;
                    }
                    break;
                case -987906986:
                    if (str.equals("pivotX")) {
                        c4 = 7;
                        break;
                    }
                    break;
                case -987906985:
                    if (str.equals("pivotY")) {
                        c4 = '\b';
                        break;
                    }
                    break;
                case -908189618:
                    if (str.equals("scaleX")) {
                        c4 = '\t';
                        break;
                    }
                    break;
                case -908189617:
                    if (str.equals("scaleY")) {
                        c4 = '\n';
                        break;
                    }
                    break;
                case 92909918:
                    if (str.equals("alpha")) {
                        c4 = 11;
                        break;
                    }
                    break;
                case 803192288:
                    if (str.equals("pathRotate")) {
                        c4 = '\f';
                        break;
                    }
                    break;
            }
            switch (c4) {
                case 0:
                    splineSet.setPoint(i2, Float.isNaN(this.f1904g) ? 0.0f : this.f1904g);
                    break;
                case 1:
                    splineSet.setPoint(i2, Float.isNaN(this.rotationY) ? 0.0f : this.rotationY);
                    break;
                case 2:
                    splineSet.setPoint(i2, Float.isNaN(this.f1903f) ? 0.0f : this.f1903f);
                    break;
                case 3:
                    splineSet.setPoint(i2, Float.isNaN(this.f1909l) ? 0.0f : this.f1909l);
                    break;
                case 4:
                    splineSet.setPoint(i2, Float.isNaN(this.f1910m) ? 0.0f : this.f1910m);
                    break;
                case 5:
                    splineSet.setPoint(i2, Float.isNaN(this.f1911n) ? 0.0f : this.f1911n);
                    break;
                case 6:
                    splineSet.setPoint(i2, Float.isNaN(this.f1920w) ? 0.0f : this.f1920w);
                    break;
                case 7:
                    splineSet.setPoint(i2, Float.isNaN(this.f1907j) ? 0.0f : this.f1907j);
                    break;
                case '\b':
                    splineSet.setPoint(i2, Float.isNaN(this.f1908k) ? 0.0f : this.f1908k);
                    break;
                case '\t':
                    splineSet.setPoint(i2, Float.isNaN(this.f1905h) ? 1.0f : this.f1905h);
                    break;
                case '\n':
                    splineSet.setPoint(i2, Float.isNaN(this.f1906i) ? 1.0f : this.f1906i);
                    break;
                case 11:
                    splineSet.setPoint(i2, Float.isNaN(this.f1898a) ? 1.0f : this.f1898a);
                    break;
                case '\f':
                    splineSet.setPoint(i2, Float.isNaN(this.f1919v) ? 0.0f : this.f1919v);
                    break;
                default:
                    if (!str.startsWith("CUSTOM")) {
                        Utils.loge("MotionPaths", "UNKNOWN spline " + str);
                        break;
                    } else {
                        String str2 = str.split(",")[1];
                        if (this.f1922y.containsKey(str2)) {
                            CustomVariable customVariable = this.f1922y.get(str2);
                            if (splineSet instanceof SplineSet.CustomSpline) {
                                ((SplineSet.CustomSpline) splineSet).setPoint(i2, customVariable);
                                break;
                            } else {
                                Utils.loge("MotionPaths", str + " ViewSpline not a CustomSet frame = " + i2 + ", value" + customVariable.getValueToInterpolate() + splineSet);
                                break;
                            }
                        } else {
                            break;
                        }
                    }
            }
        }
    }

    public void applyParameters(MotionWidget motionWidget) {
        this.f1900c = motionWidget.getVisibility();
        this.f1898a = motionWidget.getVisibility() != 4 ? 0.0f : motionWidget.getAlpha();
        this.f1901d = false;
        this.f1903f = motionWidget.getRotationZ();
        this.f1904g = motionWidget.getRotationX();
        this.rotationY = motionWidget.getRotationY();
        this.f1905h = motionWidget.getScaleX();
        this.f1906i = motionWidget.getScaleY();
        this.f1907j = motionWidget.getPivotX();
        this.f1908k = motionWidget.getPivotY();
        this.f1909l = motionWidget.getTranslationX();
        this.f1910m = motionWidget.getTranslationY();
        this.f1911n = motionWidget.getTranslationZ();
        for (String str : motionWidget.getCustomAttributeNames()) {
            CustomVariable customAttribute = motionWidget.getCustomAttribute(str);
            if (customAttribute != null && customAttribute.isContinuous()) {
                this.f1922y.put(str, customAttribute);
            }
        }
    }

    void e0(float f4, float f5, float f6, float f7) {
        this.f1915r = f4;
        this.f1916s = f5;
        this.f1917t = f6;
        this.f1918u = f7;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void s(MotionConstrainedPoint motionConstrainedPoint, HashSet<String> hashSet) {
        if (m(this.f1898a, motionConstrainedPoint.f1898a)) {
            hashSet.add("alpha");
        }
        if (m(this.f1902e, motionConstrainedPoint.f1902e)) {
            hashSet.add("translationZ");
        }
        int i2 = this.f1900c;
        int i4 = motionConstrainedPoint.f1900c;
        if (i2 != i4 && this.f1899b == 0 && (i2 == 4 || i4 == 4)) {
            hashSet.add("alpha");
        }
        if (m(this.f1903f, motionConstrainedPoint.f1903f)) {
            hashSet.add("rotationZ");
        }
        if (!Float.isNaN(this.f1919v) || !Float.isNaN(motionConstrainedPoint.f1919v)) {
            hashSet.add("pathRotate");
        }
        if (!Float.isNaN(this.f1920w) || !Float.isNaN(motionConstrainedPoint.f1920w)) {
            hashSet.add("progress");
        }
        if (m(this.f1904g, motionConstrainedPoint.f1904g)) {
            hashSet.add("rotationX");
        }
        if (m(this.rotationY, motionConstrainedPoint.rotationY)) {
            hashSet.add("rotationY");
        }
        if (m(this.f1907j, motionConstrainedPoint.f1907j)) {
            hashSet.add("pivotX");
        }
        if (m(this.f1908k, motionConstrainedPoint.f1908k)) {
            hashSet.add("pivotY");
        }
        if (m(this.f1905h, motionConstrainedPoint.f1905h)) {
            hashSet.add("scaleX");
        }
        if (m(this.f1906i, motionConstrainedPoint.f1906i)) {
            hashSet.add("scaleY");
        }
        if (m(this.f1909l, motionConstrainedPoint.f1909l)) {
            hashSet.add("translationX");
        }
        if (m(this.f1910m, motionConstrainedPoint.f1910m)) {
            hashSet.add("translationY");
        }
        if (m(this.f1911n, motionConstrainedPoint.f1911n)) {
            hashSet.add("translationZ");
        }
        if (m(this.f1902e, motionConstrainedPoint.f1902e)) {
            hashSet.add("elevation");
        }
    }

    public void setState(MotionWidget motionWidget) {
        e0(motionWidget.getX(), motionWidget.getY(), motionWidget.getWidth(), motionWidget.getHeight());
        applyParameters(motionWidget);
    }

    void x(MotionConstrainedPoint motionConstrainedPoint, boolean[] zArr, String[] strArr) {
        zArr[0] = zArr[0] | m(this.f1914q, motionConstrainedPoint.f1914q);
        zArr[1] = zArr[1] | m(this.f1915r, motionConstrainedPoint.f1915r);
        zArr[2] = zArr[2] | m(this.f1916s, motionConstrainedPoint.f1916s);
        zArr[3] = zArr[3] | m(this.f1917t, motionConstrainedPoint.f1917t);
        zArr[4] = m(this.f1918u, motionConstrainedPoint.f1918u) | zArr[4];
    }

    @Override // java.lang.Comparable
    public int compareTo(MotionConstrainedPoint motionConstrainedPoint) {
        return Float.compare(this.f1914q, motionConstrainedPoint.f1914q);
    }

    public void setState(Rect rect, MotionWidget motionWidget, int i2, float f4) {
        e0(rect.left, rect.top, rect.width(), rect.height());
        applyParameters(motionWidget);
        this.f1907j = Float.NaN;
        this.f1908k = Float.NaN;
        if (i2 == 1) {
            this.f1903f = f4 - 90.0f;
        } else if (i2 != 2) {
        } else {
            this.f1903f = f4 + 90.0f;
        }
    }
}
