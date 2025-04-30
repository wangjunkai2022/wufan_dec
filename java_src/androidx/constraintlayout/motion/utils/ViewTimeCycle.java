package androidx.constraintlayout.motion.utils;

import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.CurveFit;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet;
import androidx.constraintlayout.motion.widget.Key;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintAttribute;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public abstract class ViewTimeCycle extends TimeCycleSplineSet {

    /* renamed from: p  reason: collision with root package name */
    private static final String f2702p = "ViewTimeCycle";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class AlphaSet extends ViewTimeCycle {
        AlphaSet() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float t3, long time, KeyCache cache) {
            view.setAlpha(get(t3, time, view, cache));
            return this.f2245h;
        }
    }

    /* loaded from: classes.dex */
    public static class CustomSet extends ViewTimeCycle {

        /* renamed from: q  reason: collision with root package name */
        String f2703q;

        /* renamed from: r  reason: collision with root package name */
        SparseArray<ConstraintAttribute> f2704r;

        /* renamed from: s  reason: collision with root package name */
        SparseArray<float[]> f2705s = new SparseArray<>();

        /* renamed from: t  reason: collision with root package name */
        float[] f2706t;

        /* renamed from: u  reason: collision with root package name */
        float[] f2707u;

        public CustomSet(String attribute, SparseArray<ConstraintAttribute> attrList) {
            this.f2703q = attribute.split(",")[1];
            this.f2704r = attrList;
        }

        @Override // androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet
        public void setPoint(int position, float value, float period, int shape, float offset) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute,...)");
        }

        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float t3, long time, KeyCache cache) {
            this.f2238a.getPos(t3, this.f2706t);
            float[] fArr = this.f2706t;
            float f4 = fArr[fArr.length - 2];
            float f5 = fArr[fArr.length - 1];
            long j4 = time - this.f2246i;
            if (Float.isNaN(this.f2247j)) {
                float floatValue = cache.getFloatValue(view, this.f2703q, 0);
                this.f2247j = floatValue;
                if (Float.isNaN(floatValue)) {
                    this.f2247j = 0.0f;
                }
            }
            double d4 = this.f2247j;
            double d5 = j4;
            Double.isNaN(d5);
            double d6 = f4;
            Double.isNaN(d6);
            Double.isNaN(d4);
            float f6 = (float) ((d4 + ((d5 * 1.0E-9d) * d6)) % 1.0d);
            this.f2247j = f6;
            this.f2246i = time;
            float a4 = a(f6);
            this.f2245h = false;
            int i2 = 0;
            while (true) {
                float[] fArr2 = this.f2707u;
                if (i2 >= fArr2.length) {
                    break;
                }
                boolean z3 = this.f2245h;
                float[] fArr3 = this.f2706t;
                this.f2245h = z3 | (((double) fArr3[i2]) != 0.0d);
                fArr2[i2] = (fArr3[i2] * a4) + f5;
                i2++;
            }
            CustomSupport.setInterpolatedValue(this.f2704r.valueAt(0), view, this.f2707u);
            if (f4 != 0.0f) {
                this.f2245h = true;
            }
            return this.f2245h;
        }

        @Override // androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet
        public void setup(int curveType) {
            float[] fArr;
            int size = this.f2704r.size();
            int numberOfInterpolatedValues = this.f2704r.valueAt(0).numberOfInterpolatedValues();
            double[] dArr = new double[size];
            int i2 = numberOfInterpolatedValues + 2;
            this.f2706t = new float[i2];
            this.f2707u = new float[numberOfInterpolatedValues];
            double[][] dArr2 = (double[][]) Array.newInstance(double.class, size, i2);
            for (int i4 = 0; i4 < size; i4++) {
                int keyAt = this.f2704r.keyAt(i4);
                float[] valueAt = this.f2705s.valueAt(i4);
                double d4 = keyAt;
                Double.isNaN(d4);
                dArr[i4] = d4 * 0.01d;
                this.f2704r.valueAt(i4).getValuesToInterpolate(this.f2706t);
                int i5 = 0;
                while (true) {
                    if (i5 < this.f2706t.length) {
                        dArr2[i4][i5] = fArr[i5];
                        i5++;
                    }
                }
                dArr2[i4][numberOfInterpolatedValues] = valueAt[0];
                dArr2[i4][numberOfInterpolatedValues + 1] = valueAt[1];
            }
            this.f2238a = CurveFit.get(curveType, dArr, dArr2);
        }

        public void setPoint(int position, ConstraintAttribute value, float period, int shape, float offset) {
            this.f2704r.append(position, value);
            this.f2705s.append(position, new float[]{period, offset});
            this.f2239b = Math.max(this.f2239b, shape);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class ElevationSet extends ViewTimeCycle {
        ElevationSet() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float t3, long time, KeyCache cache) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setElevation(get(t3, time, view, cache));
            }
            return this.f2245h;
        }
    }

    /* loaded from: classes.dex */
    public static class PathRotate extends ViewTimeCycle {
        public boolean setPathRotate(View view, KeyCache cache, float t3, long time, double dx, double dy) {
            view.setRotation(get(t3, time, view, cache) + ((float) Math.toDegrees(Math.atan2(dy, dx))));
            return this.f2245h;
        }

        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float t3, long time, KeyCache cache) {
            return this.f2245h;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class ProgressSet extends ViewTimeCycle {

        /* renamed from: q  reason: collision with root package name */
        boolean f2708q = false;

        ProgressSet() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float t3, long time, KeyCache cache) {
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(get(t3, time, view, cache));
            } else if (this.f2708q) {
                return false;
            } else {
                Method method = null;
                try {
                    method = view.getClass().getMethod("setProgress", Float.TYPE);
                } catch (NoSuchMethodException unused) {
                    this.f2708q = true;
                }
                if (method != null) {
                    try {
                        method.invoke(view, Float.valueOf(get(t3, time, view, cache)));
                    } catch (IllegalAccessException | InvocationTargetException unused2) {
                    }
                }
            }
            return this.f2245h;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class RotationSet extends ViewTimeCycle {
        RotationSet() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float t3, long time, KeyCache cache) {
            view.setRotation(get(t3, time, view, cache));
            return this.f2245h;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class RotationXset extends ViewTimeCycle {
        RotationXset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float t3, long time, KeyCache cache) {
            view.setRotationX(get(t3, time, view, cache));
            return this.f2245h;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class RotationYset extends ViewTimeCycle {
        RotationYset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float t3, long time, KeyCache cache) {
            view.setRotationY(get(t3, time, view, cache));
            return this.f2245h;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class ScaleXset extends ViewTimeCycle {
        ScaleXset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float t3, long time, KeyCache cache) {
            view.setScaleX(get(t3, time, view, cache));
            return this.f2245h;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class ScaleYset extends ViewTimeCycle {
        ScaleYset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float t3, long time, KeyCache cache) {
            view.setScaleY(get(t3, time, view, cache));
            return this.f2245h;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class TranslationXset extends ViewTimeCycle {
        TranslationXset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float t3, long time, KeyCache cache) {
            view.setTranslationX(get(t3, time, view, cache));
            return this.f2245h;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class TranslationYset extends ViewTimeCycle {
        TranslationYset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float t3, long time, KeyCache cache) {
            view.setTranslationY(get(t3, time, view, cache));
            return this.f2245h;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class TranslationZset extends ViewTimeCycle {
        TranslationZset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float t3, long time, KeyCache cache) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setTranslationZ(get(t3, time, view, cache));
            }
            return this.f2245h;
        }
    }

    public static ViewTimeCycle makeCustomSpline(String str, SparseArray<ConstraintAttribute> attrList) {
        return new CustomSet(str, attrList);
    }

    public static ViewTimeCycle makeSpline(String str, long currentTime) {
        ViewTimeCycle rotationXset;
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
            case -40300674:
                if (str.equals(Key.ROTATION)) {
                    c4 = '\b';
                    break;
                }
                break;
            case -4379043:
                if (str.equals("elevation")) {
                    c4 = '\t';
                    break;
                }
                break;
            case 37232917:
                if (str.equals("transitionPathRotate")) {
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
        }
        switch (c4) {
            case 0:
                rotationXset = new RotationXset();
                break;
            case 1:
                rotationXset = new RotationYset();
                break;
            case 2:
                rotationXset = new TranslationXset();
                break;
            case 3:
                rotationXset = new TranslationYset();
                break;
            case 4:
                rotationXset = new TranslationZset();
                break;
            case 5:
                rotationXset = new ProgressSet();
                break;
            case 6:
                rotationXset = new ScaleXset();
                break;
            case 7:
                rotationXset = new ScaleYset();
                break;
            case '\b':
                rotationXset = new RotationSet();
                break;
            case '\t':
                rotationXset = new ElevationSet();
                break;
            case '\n':
                rotationXset = new PathRotate();
                break;
            case 11:
                rotationXset = new AlphaSet();
                break;
            default:
                return null;
        }
        rotationXset.b(currentTime);
        return rotationXset;
    }

    public float get(float pos, long time, View view, KeyCache cache) {
        this.f2238a.getPos(pos, this.f2244g);
        float[] fArr = this.f2244g;
        boolean z3 = true;
        float f4 = fArr[1];
        if (f4 == 0.0f) {
            this.f2245h = false;
            return fArr[2];
        }
        if (Float.isNaN(this.f2247j)) {
            float floatValue = cache.getFloatValue(view, this.f2243f, 0);
            this.f2247j = floatValue;
            if (Float.isNaN(floatValue)) {
                this.f2247j = 0.0f;
            }
        }
        double d4 = this.f2247j;
        double d5 = time - this.f2246i;
        Double.isNaN(d5);
        double d6 = f4;
        Double.isNaN(d6);
        Double.isNaN(d4);
        float f5 = (float) ((d4 + ((d5 * 1.0E-9d) * d6)) % 1.0d);
        this.f2247j = f5;
        cache.setFloatValue(view, this.f2243f, 0, f5);
        this.f2246i = time;
        float f6 = this.f2244g[0];
        float a4 = (a(this.f2247j) * f6) + this.f2244g[2];
        if (f6 == 0.0f && f4 == 0.0f) {
            z3 = false;
        }
        this.f2245h = z3;
        return a4;
    }

    public abstract boolean setProperty(View view, float t3, long time, KeyCache cache);
}
