package androidx.constraintlayout.motion.widget;

import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class MotionConstrainedPoint implements Comparable<MotionConstrainedPoint> {
    static final int C = 1;
    static final int D = 2;
    public static final boolean DEBUG = false;
    static String[] E = {"position", "x", "y", "width", "height", "pathRotate"};
    public static final String TAG = "MotionPaths";

    /* renamed from: c  reason: collision with root package name */
    int f2918c;

    /* renamed from: o  reason: collision with root package name */
    private Easing f2930o;

    /* renamed from: q  reason: collision with root package name */
    private float f2932q;

    /* renamed from: r  reason: collision with root package name */
    private float f2933r;

    /* renamed from: s  reason: collision with root package name */
    private float f2934s;

    /* renamed from: t  reason: collision with root package name */
    private float f2935t;

    /* renamed from: u  reason: collision with root package name */
    private float f2936u;

    /* renamed from: a  reason: collision with root package name */
    private float f2916a = 1.0f;

    /* renamed from: b  reason: collision with root package name */
    int f2917b = 0;

    /* renamed from: d  reason: collision with root package name */
    private boolean f2919d = false;

    /* renamed from: e  reason: collision with root package name */
    private float f2920e = 0.0f;

    /* renamed from: f  reason: collision with root package name */
    private float f2921f = 0.0f;

    /* renamed from: g  reason: collision with root package name */
    private float f2922g = 0.0f;
    public float rotationY = 0.0f;

    /* renamed from: h  reason: collision with root package name */
    private float f2923h = 1.0f;

    /* renamed from: i  reason: collision with root package name */
    private float f2924i = 1.0f;

    /* renamed from: j  reason: collision with root package name */
    private float f2925j = Float.NaN;

    /* renamed from: k  reason: collision with root package name */
    private float f2926k = Float.NaN;

    /* renamed from: l  reason: collision with root package name */
    private float f2927l = 0.0f;

    /* renamed from: m  reason: collision with root package name */
    private float f2928m = 0.0f;

    /* renamed from: n  reason: collision with root package name */
    private float f2929n = 0.0f;

    /* renamed from: p  reason: collision with root package name */
    private int f2931p = 0;

    /* renamed from: v  reason: collision with root package name */
    private float f2937v = Float.NaN;

    /* renamed from: w  reason: collision with root package name */
    private float f2938w = Float.NaN;

    /* renamed from: x  reason: collision with root package name */
    private int f2939x = -1;

    /* renamed from: y  reason: collision with root package name */
    LinkedHashMap<String, ConstraintAttribute> f2940y = new LinkedHashMap<>();

    /* renamed from: z  reason: collision with root package name */
    int f2941z = 0;
    double[] A = new double[18];
    double[] B = new double[18];

    private boolean m(float a4, float b4) {
        return (Float.isNaN(a4) || Float.isNaN(b4)) ? Float.isNaN(a4) != Float.isNaN(b4) : Math.abs(a4 - b4) > 1.0E-6f;
    }

    void A(double[] data, int[] toUse) {
        float[] fArr = {this.f2932q, this.f2933r, this.f2934s, this.f2935t, this.f2936u, this.f2916a, this.f2920e, this.f2921f, this.f2922g, this.rotationY, this.f2923h, this.f2924i, this.f2925j, this.f2926k, this.f2927l, this.f2928m, this.f2929n, this.f2937v};
        int i2 = 0;
        for (int i4 = 0; i4 < toUse.length; i4++) {
            if (toUse[i4] < 18) {
                data[i2] = fArr[toUse[i4]];
                i2++;
            }
        }
    }

    int U(String name, double[] value, int offset) {
        ConstraintAttribute constraintAttribute = this.f2940y.get(name);
        if (constraintAttribute.numberOfInterpolatedValues() == 1) {
            value[offset] = constraintAttribute.getValueToInterpolate();
            return 1;
        }
        int numberOfInterpolatedValues = constraintAttribute.numberOfInterpolatedValues();
        float[] fArr = new float[numberOfInterpolatedValues];
        constraintAttribute.getValuesToInterpolate(fArr);
        int i2 = 0;
        while (i2 < numberOfInterpolatedValues) {
            value[offset] = fArr[i2];
            i2++;
            offset++;
        }
        return numberOfInterpolatedValues;
    }

    int Y(String name) {
        return this.f2940y.get(name).numberOfInterpolatedValues();
    }

    boolean a0(String name) {
        return this.f2940y.containsKey(name);
    }

    public void addValues(HashMap<String, ViewSpline> splines, int mFramePosition) {
        for (String str : splines.keySet()) {
            ViewSpline viewSpline = splines.get(str);
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
                case -1225497657:
                    if (str.equals("translationX")) {
                        c4 = 2;
                        break;
                    }
                    break;
                case -1225497656:
                    if (str.equals("translationY")) {
                        c4 = 3;
                        break;
                    }
                    break;
                case -1225497655:
                    if (str.equals("translationZ")) {
                        c4 = 4;
                        break;
                    }
                    break;
                case -1001078227:
                    if (str.equals("progress")) {
                        c4 = 5;
                        break;
                    }
                    break;
                case -908189618:
                    if (str.equals("scaleX")) {
                        c4 = 6;
                        break;
                    }
                    break;
                case -908189617:
                    if (str.equals("scaleY")) {
                        c4 = 7;
                        break;
                    }
                    break;
                case -760884510:
                    if (str.equals(Key.PIVOT_X)) {
                        c4 = '\b';
                        break;
                    }
                    break;
                case -760884509:
                    if (str.equals(Key.PIVOT_Y)) {
                        c4 = '\t';
                        break;
                    }
                    break;
                case -40300674:
                    if (str.equals(Key.ROTATION)) {
                        c4 = '\n';
                        break;
                    }
                    break;
                case -4379043:
                    if (str.equals("elevation")) {
                        c4 = 11;
                        break;
                    }
                    break;
                case 37232917:
                    if (str.equals("transitionPathRotate")) {
                        c4 = '\f';
                        break;
                    }
                    break;
                case 92909918:
                    if (str.equals("alpha")) {
                        c4 = '\r';
                        break;
                    }
                    break;
            }
            switch (c4) {
                case 0:
                    viewSpline.setPoint(mFramePosition, Float.isNaN(this.f2922g) ? 0.0f : this.f2922g);
                    break;
                case 1:
                    viewSpline.setPoint(mFramePosition, Float.isNaN(this.rotationY) ? 0.0f : this.rotationY);
                    break;
                case 2:
                    viewSpline.setPoint(mFramePosition, Float.isNaN(this.f2927l) ? 0.0f : this.f2927l);
                    break;
                case 3:
                    viewSpline.setPoint(mFramePosition, Float.isNaN(this.f2928m) ? 0.0f : this.f2928m);
                    break;
                case 4:
                    viewSpline.setPoint(mFramePosition, Float.isNaN(this.f2929n) ? 0.0f : this.f2929n);
                    break;
                case 5:
                    viewSpline.setPoint(mFramePosition, Float.isNaN(this.f2938w) ? 0.0f : this.f2938w);
                    break;
                case 6:
                    viewSpline.setPoint(mFramePosition, Float.isNaN(this.f2923h) ? 1.0f : this.f2923h);
                    break;
                case 7:
                    viewSpline.setPoint(mFramePosition, Float.isNaN(this.f2924i) ? 1.0f : this.f2924i);
                    break;
                case '\b':
                    viewSpline.setPoint(mFramePosition, Float.isNaN(this.f2925j) ? 0.0f : this.f2925j);
                    break;
                case '\t':
                    viewSpline.setPoint(mFramePosition, Float.isNaN(this.f2926k) ? 0.0f : this.f2926k);
                    break;
                case '\n':
                    viewSpline.setPoint(mFramePosition, Float.isNaN(this.f2921f) ? 0.0f : this.f2921f);
                    break;
                case 11:
                    viewSpline.setPoint(mFramePosition, Float.isNaN(this.f2920e) ? 0.0f : this.f2920e);
                    break;
                case '\f':
                    viewSpline.setPoint(mFramePosition, Float.isNaN(this.f2937v) ? 0.0f : this.f2937v);
                    break;
                case '\r':
                    viewSpline.setPoint(mFramePosition, Float.isNaN(this.f2916a) ? 1.0f : this.f2916a);
                    break;
                default:
                    if (str.startsWith("CUSTOM")) {
                        String str2 = str.split(",")[1];
                        if (this.f2940y.containsKey(str2)) {
                            ConstraintAttribute constraintAttribute = this.f2940y.get(str2);
                            if (viewSpline instanceof ViewSpline.CustomSet) {
                                ((ViewSpline.CustomSet) viewSpline).setPoint(mFramePosition, constraintAttribute);
                                break;
                            } else {
                                StringBuilder sb = new StringBuilder();
                                sb.append(str);
                                sb.append(" ViewSpline not a CustomSet frame = ");
                                sb.append(mFramePosition);
                                sb.append(", value");
                                sb.append(constraintAttribute.getValueToInterpolate());
                                sb.append(viewSpline);
                                break;
                            }
                        } else {
                            break;
                        }
                    } else {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("UNKNOWN spline ");
                        sb2.append(str);
                        break;
                    }
            }
        }
    }

    public void applyParameters(View view) {
        this.f2918c = view.getVisibility();
        this.f2916a = view.getVisibility() != 0 ? 0.0f : view.getAlpha();
        this.f2919d = false;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 21) {
            this.f2920e = view.getElevation();
        }
        this.f2921f = view.getRotation();
        this.f2922g = view.getRotationX();
        this.rotationY = view.getRotationY();
        this.f2923h = view.getScaleX();
        this.f2924i = view.getScaleY();
        this.f2925j = view.getPivotX();
        this.f2926k = view.getPivotY();
        this.f2927l = view.getTranslationX();
        this.f2928m = view.getTranslationY();
        if (i2 >= 21) {
            this.f2929n = view.getTranslationZ();
        }
    }

    void e0(float x3, float y3, float w3, float h4) {
        this.f2933r = x3;
        this.f2934s = y3;
        this.f2935t = w3;
        this.f2936u = h4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void s(MotionConstrainedPoint points, HashSet<String> keySet) {
        if (m(this.f2916a, points.f2916a)) {
            keySet.add("alpha");
        }
        if (m(this.f2920e, points.f2920e)) {
            keySet.add("elevation");
        }
        int i2 = this.f2918c;
        int i4 = points.f2918c;
        if (i2 != i4 && this.f2917b == 0 && (i2 == 0 || i4 == 0)) {
            keySet.add("alpha");
        }
        if (m(this.f2921f, points.f2921f)) {
            keySet.add(Key.ROTATION);
        }
        if (!Float.isNaN(this.f2937v) || !Float.isNaN(points.f2937v)) {
            keySet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.f2938w) || !Float.isNaN(points.f2938w)) {
            keySet.add("progress");
        }
        if (m(this.f2922g, points.f2922g)) {
            keySet.add("rotationX");
        }
        if (m(this.rotationY, points.rotationY)) {
            keySet.add("rotationY");
        }
        if (m(this.f2925j, points.f2925j)) {
            keySet.add(Key.PIVOT_X);
        }
        if (m(this.f2926k, points.f2926k)) {
            keySet.add(Key.PIVOT_Y);
        }
        if (m(this.f2923h, points.f2923h)) {
            keySet.add("scaleX");
        }
        if (m(this.f2924i, points.f2924i)) {
            keySet.add("scaleY");
        }
        if (m(this.f2927l, points.f2927l)) {
            keySet.add("translationX");
        }
        if (m(this.f2928m, points.f2928m)) {
            keySet.add("translationY");
        }
        if (m(this.f2929n, points.f2929n)) {
            keySet.add("translationZ");
        }
    }

    public void setState(View view) {
        e0(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        applyParameters(view);
    }

    void x(MotionConstrainedPoint points, boolean[] mask, String[] custom) {
        mask[0] = mask[0] | m(this.f2932q, points.f2932q);
        mask[1] = mask[1] | m(this.f2933r, points.f2933r);
        mask[2] = mask[2] | m(this.f2934s, points.f2934s);
        mask[3] = mask[3] | m(this.f2935t, points.f2935t);
        mask[4] = m(this.f2936u, points.f2936u) | mask[4];
    }

    @Override // java.lang.Comparable
    public int compareTo(MotionConstrainedPoint o3) {
        return Float.compare(this.f2932q, o3.f2932q);
    }

    public void setState(Rect rect, View view, int rotation, float prevous) {
        e0(rect.left, rect.top, rect.width(), rect.height());
        applyParameters(view);
        this.f2925j = Float.NaN;
        this.f2926k = Float.NaN;
        if (rotation == 1) {
            this.f2921f = prevous - 90.0f;
        } else if (rotation != 2) {
        } else {
            this.f2921f = prevous + 90.0f;
        }
    }

    public void setState(Rect cw, ConstraintSet constraintSet, int rotation, int viewId) {
        e0(cw.left, cw.top, cw.width(), cw.height());
        applyParameters(constraintSet.getParameters(viewId));
        if (rotation != 1) {
            if (rotation != 2) {
                if (rotation != 3) {
                    if (rotation != 4) {
                        return;
                    }
                }
            }
            float f4 = this.f2921f + 90.0f;
            this.f2921f = f4;
            if (f4 > 180.0f) {
                this.f2921f = f4 - 360.0f;
                return;
            }
            return;
        }
        this.f2921f -= 90.0f;
    }

    public void applyParameters(ConstraintSet.Constraint c4) {
        ConstraintSet.PropertySet propertySet = c4.propertySet;
        int i2 = propertySet.mVisibilityMode;
        this.f2917b = i2;
        int i4 = propertySet.visibility;
        this.f2918c = i4;
        this.f2916a = (i4 == 0 || i2 != 0) ? propertySet.alpha : 0.0f;
        ConstraintSet.Transform transform = c4.transform;
        this.f2919d = transform.applyElevation;
        this.f2920e = transform.elevation;
        this.f2921f = transform.rotation;
        this.f2922g = transform.rotationX;
        this.rotationY = transform.rotationY;
        this.f2923h = transform.scaleX;
        this.f2924i = transform.scaleY;
        this.f2925j = transform.transformPivotX;
        this.f2926k = transform.transformPivotY;
        this.f2927l = transform.translationX;
        this.f2928m = transform.translationY;
        this.f2929n = transform.translationZ;
        this.f2930o = Easing.getInterpolator(c4.motion.mTransitionEasing);
        ConstraintSet.Motion motion = c4.motion;
        this.f2937v = motion.mPathRotate;
        this.f2931p = motion.mDrawPath;
        this.f2939x = motion.mAnimateRelativeTo;
        this.f2938w = c4.propertySet.mProgress;
        for (String str : c4.mCustomConstraints.keySet()) {
            ConstraintAttribute constraintAttribute = c4.mCustomConstraints.get(str);
            if (constraintAttribute.isContinuous()) {
                this.f2940y.put(str, constraintAttribute);
            }
        }
    }
}
