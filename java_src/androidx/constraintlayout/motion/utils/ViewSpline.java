package androidx.constraintlayout.motion.utils;

import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.CurveFit;
import androidx.constraintlayout.core.motion.utils.SplineSet;
import androidx.constraintlayout.motion.widget.Key;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintAttribute;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public abstract class ViewSpline extends SplineSet {

    /* renamed from: g  reason: collision with root package name */
    private static final String f2697g = "ViewSpline";

    /* loaded from: classes.dex */
    static class AlphaSet extends ViewSpline {
        AlphaSet() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float t3) {
            view.setAlpha(get(t3));
        }
    }

    /* loaded from: classes.dex */
    public static class CustomSet extends ViewSpline {

        /* renamed from: h  reason: collision with root package name */
        String f2698h;

        /* renamed from: i  reason: collision with root package name */
        SparseArray<ConstraintAttribute> f2699i;

        /* renamed from: j  reason: collision with root package name */
        float[] f2700j;

        public CustomSet(String attribute, SparseArray<ConstraintAttribute> attrList) {
            this.f2698h = attribute.split(",")[1];
            this.f2699i = attrList;
        }

        @Override // androidx.constraintlayout.core.motion.utils.SplineSet
        public void setPoint(int position, float value) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute)");
        }

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float t3) {
            this.f2190a.getPos(t3, this.f2700j);
            CustomSupport.setInterpolatedValue(this.f2699i.valueAt(0), view, this.f2700j);
        }

        @Override // androidx.constraintlayout.core.motion.utils.SplineSet
        public void setup(int curveType) {
            float[] fArr;
            int size = this.f2699i.size();
            int numberOfInterpolatedValues = this.f2699i.valueAt(0).numberOfInterpolatedValues();
            double[] dArr = new double[size];
            this.f2700j = new float[numberOfInterpolatedValues];
            double[][] dArr2 = (double[][]) Array.newInstance(double.class, size, numberOfInterpolatedValues);
            for (int i2 = 0; i2 < size; i2++) {
                double keyAt = this.f2699i.keyAt(i2);
                Double.isNaN(keyAt);
                dArr[i2] = keyAt * 0.01d;
                this.f2699i.valueAt(i2).getValuesToInterpolate(this.f2700j);
                int i4 = 0;
                while (true) {
                    if (i4 < this.f2700j.length) {
                        dArr2[i2][i4] = fArr[i4];
                        i4++;
                    }
                }
            }
            this.f2190a = CurveFit.get(curveType, dArr, dArr2);
        }

        public void setPoint(int position, ConstraintAttribute value) {
            this.f2699i.append(position, value);
        }
    }

    /* loaded from: classes.dex */
    static class ElevationSet extends ViewSpline {
        ElevationSet() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float t3) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setElevation(get(t3));
            }
        }
    }

    /* loaded from: classes.dex */
    public static class PathRotate extends ViewSpline {
        public void setPathRotate(View view, float t3, double dx, double dy) {
            view.setRotation(get(t3) + ((float) Math.toDegrees(Math.atan2(dy, dx))));
        }

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float t3) {
        }
    }

    /* loaded from: classes.dex */
    static class PivotXset extends ViewSpline {
        PivotXset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float t3) {
            view.setPivotX(get(t3));
        }
    }

    /* loaded from: classes.dex */
    static class PivotYset extends ViewSpline {
        PivotYset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float t3) {
            view.setPivotY(get(t3));
        }
    }

    /* loaded from: classes.dex */
    static class ProgressSet extends ViewSpline {

        /* renamed from: h  reason: collision with root package name */
        boolean f2701h = false;

        ProgressSet() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float t3) {
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(get(t3));
            } else if (this.f2701h) {
            } else {
                Method method = null;
                try {
                    method = view.getClass().getMethod("setProgress", Float.TYPE);
                } catch (NoSuchMethodException unused) {
                    this.f2701h = true;
                }
                if (method != null) {
                    try {
                        method.invoke(view, Float.valueOf(get(t3)));
                    } catch (IllegalAccessException | InvocationTargetException unused2) {
                    }
                }
            }
        }
    }

    /* loaded from: classes.dex */
    static class RotationSet extends ViewSpline {
        RotationSet() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float t3) {
            view.setRotation(get(t3));
        }
    }

    /* loaded from: classes.dex */
    static class RotationXset extends ViewSpline {
        RotationXset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float t3) {
            view.setRotationX(get(t3));
        }
    }

    /* loaded from: classes.dex */
    static class RotationYset extends ViewSpline {
        RotationYset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float t3) {
            view.setRotationY(get(t3));
        }
    }

    /* loaded from: classes.dex */
    static class ScaleXset extends ViewSpline {
        ScaleXset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float t3) {
            view.setScaleX(get(t3));
        }
    }

    /* loaded from: classes.dex */
    static class ScaleYset extends ViewSpline {
        ScaleYset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float t3) {
            view.setScaleY(get(t3));
        }
    }

    /* loaded from: classes.dex */
    static class TranslationXset extends ViewSpline {
        TranslationXset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float t3) {
            view.setTranslationX(get(t3));
        }
    }

    /* loaded from: classes.dex */
    static class TranslationYset extends ViewSpline {
        TranslationYset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float t3) {
            view.setTranslationY(get(t3));
        }
    }

    /* loaded from: classes.dex */
    static class TranslationZset extends ViewSpline {
        TranslationZset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float t3) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setTranslationZ(get(t3));
            }
        }
    }

    public static ViewSpline makeCustomSpline(String str, SparseArray<ConstraintAttribute> attrList) {
        return new CustomSet(str, attrList);
    }

    public static ViewSpline makeSpline(String str) {
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
            case -797520672:
                if (str.equals(Key.WAVE_VARIES_BY)) {
                    c4 = '\b';
                    break;
                }
                break;
            case -760884510:
                if (str.equals(Key.PIVOT_X)) {
                    c4 = '\t';
                    break;
                }
                break;
            case -760884509:
                if (str.equals(Key.PIVOT_Y)) {
                    c4 = '\n';
                    break;
                }
                break;
            case -40300674:
                if (str.equals(Key.ROTATION)) {
                    c4 = 11;
                    break;
                }
                break;
            case -4379043:
                if (str.equals("elevation")) {
                    c4 = '\f';
                    break;
                }
                break;
            case 37232917:
                if (str.equals("transitionPathRotate")) {
                    c4 = '\r';
                    break;
                }
                break;
            case 92909918:
                if (str.equals("alpha")) {
                    c4 = 14;
                    break;
                }
                break;
            case 156108012:
                if (str.equals("waveOffset")) {
                    c4 = 15;
                    break;
                }
                break;
        }
        switch (c4) {
            case 0:
                return new RotationXset();
            case 1:
                return new RotationYset();
            case 2:
                return new TranslationXset();
            case 3:
                return new TranslationYset();
            case 4:
                return new TranslationZset();
            case 5:
                return new ProgressSet();
            case 6:
                return new ScaleXset();
            case 7:
                return new ScaleYset();
            case '\b':
                return new AlphaSet();
            case '\t':
                return new PivotXset();
            case '\n':
                return new PivotYset();
            case 11:
                return new RotationSet();
            case '\f':
                return new ElevationSet();
            case '\r':
                return new PathRotate();
            case 14:
                return new AlphaSet();
            case 15:
                return new AlphaSet();
            default:
                return null;
        }
    }

    public abstract void setProperty(View view, float t3);
}
