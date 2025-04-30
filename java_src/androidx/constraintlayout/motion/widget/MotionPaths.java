package androidx.constraintlayout.motion.widget;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintSet;
import java.util.Arrays;
import java.util.LinkedHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class MotionPaths implements Comparable<MotionPaths> {
    static final int A = 0;
    static final int B = 2;
    static String[] C = {"position", "x", "y", "width", "height", "pathRotate"};
    public static final boolean DEBUG = false;
    public static final boolean OLD_WAY = false;
    public static final String TAG = "MotionPaths";

    /* renamed from: t  reason: collision with root package name */
    static final int f3061t = 0;

    /* renamed from: u  reason: collision with root package name */
    static final int f3062u = 1;

    /* renamed from: v  reason: collision with root package name */
    static final int f3063v = 2;

    /* renamed from: w  reason: collision with root package name */
    static final int f3064w = 3;

    /* renamed from: x  reason: collision with root package name */
    static final int f3065x = 4;

    /* renamed from: y  reason: collision with root package name */
    static final int f3066y = 5;

    /* renamed from: z  reason: collision with root package name */
    static final int f3067z = 1;

    /* renamed from: a  reason: collision with root package name */
    Easing f3068a;

    /* renamed from: c  reason: collision with root package name */
    float f3070c;

    /* renamed from: d  reason: collision with root package name */
    float f3071d;

    /* renamed from: e  reason: collision with root package name */
    float f3072e;

    /* renamed from: f  reason: collision with root package name */
    float f3073f;

    /* renamed from: g  reason: collision with root package name */
    float f3074g;

    /* renamed from: h  reason: collision with root package name */
    float f3075h;

    /* renamed from: k  reason: collision with root package name */
    int f3078k;

    /* renamed from: l  reason: collision with root package name */
    int f3079l;

    /* renamed from: m  reason: collision with root package name */
    float f3080m;

    /* renamed from: n  reason: collision with root package name */
    MotionController f3081n;

    /* renamed from: o  reason: collision with root package name */
    LinkedHashMap<String, ConstraintAttribute> f3082o;

    /* renamed from: p  reason: collision with root package name */
    int f3083p;

    /* renamed from: q  reason: collision with root package name */
    int f3084q;

    /* renamed from: r  reason: collision with root package name */
    double[] f3085r;

    /* renamed from: s  reason: collision with root package name */
    double[] f3086s;

    /* renamed from: b  reason: collision with root package name */
    int f3069b = 0;

    /* renamed from: i  reason: collision with root package name */
    float f3076i = Float.NaN;

    /* renamed from: j  reason: collision with root package name */
    float f3077j = Float.NaN;

    public MotionPaths() {
        int i2 = Key.UNSET;
        this.f3078k = i2;
        this.f3079l = i2;
        this.f3080m = Float.NaN;
        this.f3081n = null;
        this.f3082o = new LinkedHashMap<>();
        this.f3083p = 0;
        this.f3085r = new double[18];
        this.f3086s = new double[18];
    }

    private static final float R0(float sin, float cos, float cx, float cy, float x3, float y3) {
        return (((x3 - cx) * cos) - ((y3 - cy) * sin)) + cx;
    }

    private static final float S0(float sin, float cos, float cx, float cy, float x3, float y3) {
        return ((x3 - cx) * sin) + ((y3 - cy) * cos) + cy;
    }

    private boolean m(float a4, float b4) {
        return (Float.isNaN(a4) || Float.isNaN(b4)) ? Float.isNaN(a4) != Float.isNaN(b4) : Math.abs(a4 - b4) > 1.0E-6f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void A(int[] toUse, double[] data, float[] point, int offset) {
        float f4 = this.f3074g;
        float f5 = this.f3075h;
        for (int i2 = 0; i2 < toUse.length; i2++) {
            float f6 = (float) data[i2];
            int i4 = toUse[i2];
            if (i4 == 3) {
                f4 = f6;
            } else if (i4 == 4) {
                f5 = f6;
            }
        }
        point[offset] = f4;
        point[offset + 1] = f5;
    }

    void L0(KeyPosition c4, MotionPaths startTimePoint, MotionPaths endTimePoint) {
        float f4;
        float f5;
        float f6 = c4.f2719a / 100.0f;
        this.f3070c = f6;
        this.f3069b = c4.f2816j;
        float f7 = Float.isNaN(c4.f2817k) ? f6 : c4.f2817k;
        float f8 = Float.isNaN(c4.f2818l) ? f6 : c4.f2818l;
        float f9 = endTimePoint.f3074g - startTimePoint.f3074g;
        float f10 = endTimePoint.f3075h - startTimePoint.f3075h;
        this.f3071d = this.f3070c;
        if (!Float.isNaN(c4.f2819m)) {
            f6 = c4.f2819m;
        }
        float f11 = startTimePoint.f3072e;
        float f12 = startTimePoint.f3074g;
        float f13 = startTimePoint.f3073f;
        float f14 = startTimePoint.f3075h;
        float f15 = (endTimePoint.f3072e + (endTimePoint.f3074g / 2.0f)) - ((f12 / 2.0f) + f11);
        float f16 = (endTimePoint.f3073f + (endTimePoint.f3075h / 2.0f)) - ((f14 / 2.0f) + f13);
        float f17 = f15 * f6;
        float f18 = (f9 * f7) / 2.0f;
        this.f3072e = (int) ((f11 + f17) - f18);
        float f19 = f6 * f16;
        float f20 = (f10 * f8) / 2.0f;
        this.f3073f = (int) ((f13 + f19) - f20);
        this.f3074g = (int) (f12 + f4);
        this.f3075h = (int) (f14 + f5);
        float f21 = Float.isNaN(c4.f2820n) ? 0.0f : c4.f2820n;
        this.f3083p = 1;
        float f22 = (int) ((startTimePoint.f3072e + f17) - f18);
        this.f3072e = f22;
        float f23 = (int) ((startTimePoint.f3073f + f19) - f20);
        this.f3073f = f23;
        this.f3072e = f22 + ((-f16) * f21);
        this.f3073f = f23 + (f15 * f21);
        this.f3079l = this.f3079l;
        this.f3068a = Easing.getInterpolator(c4.f2814h);
        this.f3078k = c4.f2815i;
    }

    void M0(int parentWidth, int parentHeight, KeyPosition c4, MotionPaths s3, MotionPaths e4) {
        float min;
        float f4;
        float f5 = c4.f2719a / 100.0f;
        this.f3070c = f5;
        this.f3069b = c4.f2816j;
        this.f3083p = c4.f2823q;
        float f6 = Float.isNaN(c4.f2817k) ? f5 : c4.f2817k;
        float f7 = Float.isNaN(c4.f2818l) ? f5 : c4.f2818l;
        float f8 = e4.f3074g;
        float f9 = s3.f3074g;
        float f10 = e4.f3075h;
        float f11 = s3.f3075h;
        this.f3071d = this.f3070c;
        this.f3074g = (int) (f9 + ((f8 - f9) * f6));
        this.f3075h = (int) (f11 + ((f10 - f11) * f7));
        int i2 = c4.f2823q;
        if (i2 == 1) {
            float f12 = Float.isNaN(c4.f2819m) ? f5 : c4.f2819m;
            float f13 = e4.f3072e;
            float f14 = s3.f3072e;
            this.f3072e = (f12 * (f13 - f14)) + f14;
            if (!Float.isNaN(c4.f2820n)) {
                f5 = c4.f2820n;
            }
            float f15 = e4.f3073f;
            float f16 = s3.f3073f;
            this.f3073f = (f5 * (f15 - f16)) + f16;
        } else if (i2 != 2) {
            float f17 = Float.isNaN(c4.f2819m) ? f5 : c4.f2819m;
            float f18 = e4.f3072e;
            float f19 = s3.f3072e;
            this.f3072e = (f17 * (f18 - f19)) + f19;
            if (!Float.isNaN(c4.f2820n)) {
                f5 = c4.f2820n;
            }
            float f20 = e4.f3073f;
            float f21 = s3.f3073f;
            this.f3073f = (f5 * (f20 - f21)) + f21;
        } else {
            if (Float.isNaN(c4.f2819m)) {
                float f22 = e4.f3072e;
                float f23 = s3.f3072e;
                min = ((f22 - f23) * f5) + f23;
            } else {
                min = Math.min(f7, f6) * c4.f2819m;
            }
            this.f3072e = min;
            if (Float.isNaN(c4.f2820n)) {
                float f24 = e4.f3073f;
                float f25 = s3.f3073f;
                f4 = (f5 * (f24 - f25)) + f25;
            } else {
                f4 = c4.f2820n;
            }
            this.f3073f = f4;
        }
        this.f3079l = s3.f3079l;
        this.f3068a = Easing.getInterpolator(c4.f2814h);
        this.f3078k = c4.f2815i;
    }

    void N0(int parentWidth, int parentHeight, KeyPosition c4, MotionPaths startTimePoint, MotionPaths endTimePoint) {
        float f4 = c4.f2719a / 100.0f;
        this.f3070c = f4;
        this.f3069b = c4.f2816j;
        float f5 = Float.isNaN(c4.f2817k) ? f4 : c4.f2817k;
        float f6 = Float.isNaN(c4.f2818l) ? f4 : c4.f2818l;
        float f7 = endTimePoint.f3074g;
        float f8 = startTimePoint.f3074g;
        float f9 = endTimePoint.f3075h;
        float f10 = startTimePoint.f3075h;
        this.f3071d = this.f3070c;
        float f11 = startTimePoint.f3072e;
        float f12 = startTimePoint.f3073f;
        float f13 = endTimePoint.f3072e + (f7 / 2.0f);
        float f14 = endTimePoint.f3073f + (f9 / 2.0f);
        float f15 = (f7 - f8) * f5;
        this.f3072e = (int) ((f11 + ((f13 - ((f8 / 2.0f) + f11)) * f4)) - (f15 / 2.0f));
        float f16 = (f9 - f10) * f6;
        this.f3073f = (int) ((f12 + ((f14 - (f12 + (f10 / 2.0f))) * f4)) - (f16 / 2.0f));
        this.f3074g = (int) (f8 + f15);
        this.f3075h = (int) (f10 + f16);
        this.f3083p = 2;
        if (!Float.isNaN(c4.f2819m)) {
            this.f3072e = (int) (c4.f2819m * ((int) (parentWidth - this.f3074g)));
        }
        if (!Float.isNaN(c4.f2820n)) {
            this.f3073f = (int) (c4.f2820n * ((int) (parentHeight - this.f3075h)));
        }
        this.f3079l = this.f3079l;
        this.f3068a = Easing.getInterpolator(c4.f2814h);
        this.f3078k = c4.f2815i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void O0(float x3, float y3, float w3, float h4) {
        this.f3072e = x3;
        this.f3073f = y3;
        this.f3074g = w3;
        this.f3075h = h4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void P0(float locationX, float locationY, float[] mAnchorDpDt, int[] toUse, double[] deltaData, double[] data) {
        float f4 = 0.0f;
        float f5 = 0.0f;
        float f6 = 0.0f;
        float f7 = 0.0f;
        for (int i2 = 0; i2 < toUse.length; i2++) {
            float f8 = (float) deltaData[i2];
            double d4 = data[i2];
            int i4 = toUse[i2];
            if (i4 == 1) {
                f4 = f8;
            } else if (i4 == 2) {
                f6 = f8;
            } else if (i4 == 3) {
                f5 = f8;
            } else if (i4 == 4) {
                f7 = f8;
            }
        }
        float f9 = f4 - ((0.0f * f5) / 2.0f);
        float f10 = f6 - ((0.0f * f7) / 2.0f);
        mAnchorDpDt[0] = (f9 * (1.0f - locationX)) + (((f5 * 1.0f) + f9) * locationX) + 0.0f;
        mAnchorDpDt[1] = (f10 * (1.0f - locationY)) + (((f7 * 1.0f) + f10) * locationY) + 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Q0(float position, View view, int[] toUse, double[] data, double[] slope, double[] cycle, boolean mForceMeasure) {
        float f4;
        boolean z3;
        float f5;
        float f6 = this.f3072e;
        float f7 = this.f3073f;
        float f8 = this.f3074g;
        float f9 = this.f3075h;
        if (toUse.length != 0 && this.f3085r.length <= toUse[toUse.length - 1]) {
            int i2 = toUse[toUse.length - 1] + 1;
            this.f3085r = new double[i2];
            this.f3086s = new double[i2];
        }
        Arrays.fill(this.f3085r, Double.NaN);
        for (int i4 = 0; i4 < toUse.length; i4++) {
            this.f3085r[toUse[i4]] = data[i4];
            this.f3086s[toUse[i4]] = slope[i4];
        }
        float f10 = Float.NaN;
        int i5 = 0;
        float f11 = 0.0f;
        float f12 = 0.0f;
        float f13 = 0.0f;
        float f14 = 0.0f;
        while (true) {
            double[] dArr = this.f3085r;
            if (i5 >= dArr.length) {
                break;
            }
            if (Double.isNaN(dArr[i5]) && (cycle == null || cycle[i5] == 0.0d)) {
                f5 = f10;
            } else {
                double d4 = cycle != null ? cycle[i5] : 0.0d;
                if (!Double.isNaN(this.f3085r[i5])) {
                    d4 = this.f3085r[i5] + d4;
                }
                f5 = f10;
                float f15 = (float) d4;
                float f16 = (float) this.f3086s[i5];
                if (i5 == 1) {
                    f10 = f5;
                    f11 = f16;
                    f6 = f15;
                } else if (i5 == 2) {
                    f10 = f5;
                    f12 = f16;
                    f7 = f15;
                } else if (i5 == 3) {
                    f10 = f5;
                    f13 = f16;
                    f8 = f15;
                } else if (i5 == 4) {
                    f10 = f5;
                    f14 = f16;
                    f9 = f15;
                } else if (i5 == 5) {
                    f10 = f15;
                }
                i5++;
            }
            f10 = f5;
            i5++;
        }
        float f17 = f10;
        MotionController motionController = this.f3081n;
        if (motionController != null) {
            float[] fArr = new float[2];
            float[] fArr2 = new float[2];
            motionController.getCenter(position, fArr, fArr2);
            float f18 = fArr[0];
            float f19 = fArr[1];
            float f20 = fArr2[0];
            float f21 = fArr2[1];
            double d5 = f18;
            double d6 = f6;
            double d7 = f7;
            double sin = Math.sin(d7);
            Double.isNaN(d6);
            Double.isNaN(d5);
            double d8 = f8 / 2.0f;
            Double.isNaN(d8);
            float f22 = (float) ((d5 + (sin * d6)) - d8);
            double d9 = f19;
            double cos = Math.cos(d7);
            Double.isNaN(d6);
            Double.isNaN(d9);
            double d10 = d9 - (cos * d6);
            f4 = f9;
            double d11 = f9 / 2.0f;
            Double.isNaN(d11);
            float f23 = (float) (d10 - d11);
            double d12 = f20;
            double d13 = f11;
            double sin2 = Math.sin(d7);
            Double.isNaN(d13);
            Double.isNaN(d12);
            double d14 = d12 + (sin2 * d13);
            double cos2 = Math.cos(d7);
            Double.isNaN(d6);
            double d15 = f12;
            Double.isNaN(d15);
            float f24 = (float) (d14 + (cos2 * d6 * d15));
            double d16 = f21;
            double cos3 = Math.cos(d7);
            Double.isNaN(d13);
            Double.isNaN(d16);
            double sin3 = Math.sin(d7);
            Double.isNaN(d6);
            Double.isNaN(d15);
            float f25 = (float) ((d16 - (d13 * cos3)) + (d6 * sin3 * d15));
            if (slope.length >= 2) {
                z3 = false;
                slope[0] = f24;
                slope[1] = f25;
            } else {
                z3 = false;
            }
            if (!Float.isNaN(f17)) {
                double d17 = f17;
                double degrees = Math.toDegrees(Math.atan2(f25, f24));
                Double.isNaN(d17);
                view.setRotation((float) (d17 + degrees));
            }
            f6 = f22;
            f7 = f23;
        } else {
            f4 = f9;
            z3 = false;
            if (!Float.isNaN(f17)) {
                double d18 = 0.0f;
                double d19 = f17;
                double degrees2 = Math.toDegrees(Math.atan2(f12 + (f14 / 2.0f), f11 + (f13 / 2.0f)));
                Double.isNaN(d19);
                Double.isNaN(d18);
                view.setRotation((float) (d18 + d19 + degrees2));
            }
        }
        if (view instanceof FloatLayout) {
            ((FloatLayout) view).layout(f6, f7, f8 + f6, f7 + f4);
            return;
        }
        float f26 = f6 + 0.5f;
        int i6 = (int) f26;
        float f27 = f7 + 0.5f;
        int i7 = (int) f27;
        int i8 = (int) (f26 + f8);
        int i9 = (int) (f27 + f4);
        int i10 = i8 - i6;
        int i11 = i9 - i7;
        if (((i10 == view.getMeasuredWidth() && i11 == view.getMeasuredHeight()) ? true : true) || mForceMeasure) {
            view.measure(View.MeasureSpec.makeMeasureSpec(i10, 1073741824), View.MeasureSpec.makeMeasureSpec(i11, 1073741824));
        }
        view.layout(i6, i7, i8, i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void U(double p3, int[] toUse, double[] data, float[] point, int offset) {
        float f4 = this.f3072e;
        float f5 = this.f3073f;
        float f6 = this.f3074g;
        float f7 = this.f3075h;
        for (int i2 = 0; i2 < toUse.length; i2++) {
            float f8 = (float) data[i2];
            int i4 = toUse[i2];
            if (i4 == 1) {
                f4 = f8;
            } else if (i4 == 2) {
                f5 = f8;
            } else if (i4 == 3) {
                f6 = f8;
            } else if (i4 == 4) {
                f7 = f8;
            }
        }
        MotionController motionController = this.f3081n;
        if (motionController != null) {
            float[] fArr = new float[2];
            motionController.getCenter(p3, fArr, new float[2]);
            float f9 = fArr[0];
            float f10 = fArr[1];
            double d4 = f9;
            double d5 = f4;
            double d6 = f5;
            double sin = Math.sin(d6);
            Double.isNaN(d5);
            Double.isNaN(d4);
            double d7 = d4 + (sin * d5);
            double d8 = f6 / 2.0f;
            Double.isNaN(d8);
            float f11 = (float) (d7 - d8);
            double d9 = f10;
            double cos = Math.cos(d6);
            Double.isNaN(d5);
            Double.isNaN(d9);
            double d10 = d9 - (d5 * cos);
            double d11 = f7 / 2.0f;
            Double.isNaN(d11);
            f4 = f11;
            f5 = (float) (d10 - d11);
        }
        point[offset] = f4 + (f6 / 2.0f) + 0.0f;
        point[offset + 1] = f5 + (f7 / 2.0f) + 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Y(double p3, int[] toUse, double[] data, float[] point, double[] vdata, float[] velocity) {
        float f4;
        float f5 = this.f3072e;
        float f6 = this.f3073f;
        float f7 = this.f3074g;
        float f8 = this.f3075h;
        float f9 = 0.0f;
        float f10 = 0.0f;
        float f11 = 0.0f;
        float f12 = 0.0f;
        for (int i2 = 0; i2 < toUse.length; i2++) {
            float f13 = (float) data[i2];
            float f14 = (float) vdata[i2];
            int i4 = toUse[i2];
            if (i4 == 1) {
                f5 = f13;
                f9 = f14;
            } else if (i4 == 2) {
                f6 = f13;
                f11 = f14;
            } else if (i4 == 3) {
                f7 = f13;
                f10 = f14;
            } else if (i4 == 4) {
                f8 = f13;
                f12 = f14;
            }
        }
        float f15 = 2.0f;
        float f16 = (f10 / 2.0f) + f9;
        float f17 = (f12 / 2.0f) + f11;
        MotionController motionController = this.f3081n;
        if (motionController != null) {
            float[] fArr = new float[2];
            float[] fArr2 = new float[2];
            motionController.getCenter(p3, fArr, fArr2);
            float f18 = fArr[0];
            float f19 = fArr[1];
            float f20 = fArr2[0];
            float f21 = fArr2[1];
            double d4 = f18;
            double d5 = f5;
            double d6 = f6;
            double sin = Math.sin(d6);
            Double.isNaN(d5);
            Double.isNaN(d4);
            double d7 = d4 + (sin * d5);
            f4 = f7;
            double d8 = f7 / 2.0f;
            Double.isNaN(d8);
            float f22 = (float) (d7 - d8);
            double d9 = f19;
            double cos = Math.cos(d6);
            Double.isNaN(d5);
            Double.isNaN(d9);
            double d10 = d9 - (d5 * cos);
            double d11 = f8 / 2.0f;
            Double.isNaN(d11);
            double d12 = f20;
            double d13 = f9;
            double sin2 = Math.sin(d6);
            Double.isNaN(d13);
            Double.isNaN(d12);
            double d14 = d12 + (sin2 * d13);
            double cos2 = Math.cos(d6);
            double d15 = f11;
            Double.isNaN(d15);
            float f23 = (float) (d14 + (cos2 * d15));
            double d16 = f21;
            double cos3 = Math.cos(d6);
            Double.isNaN(d13);
            Double.isNaN(d16);
            double sin3 = Math.sin(d6);
            Double.isNaN(d15);
            f17 = (float) ((d16 - (d13 * cos3)) + (sin3 * d15));
            f16 = f23;
            f5 = f22;
            f6 = (float) (d10 - d11);
            f15 = 2.0f;
        } else {
            f4 = f7;
        }
        point[0] = f5 + (f4 / f15) + 0.0f;
        point[1] = f6 + (f8 / f15) + 0.0f;
        velocity[0] = f16;
        velocity[1] = f17;
    }

    void a0(double p3, int[] toUse, double[] data, float[] point, int offset) {
        float f4 = this.f3072e;
        float f5 = this.f3073f;
        float f6 = this.f3074g;
        float f7 = this.f3075h;
        for (int i2 = 0; i2 < toUse.length; i2++) {
            float f8 = (float) data[i2];
            int i4 = toUse[i2];
            if (i4 == 1) {
                f4 = f8;
            } else if (i4 == 2) {
                f5 = f8;
            } else if (i4 == 3) {
                f6 = f8;
            } else if (i4 == 4) {
                f7 = f8;
            }
        }
        MotionController motionController = this.f3081n;
        if (motionController != null) {
            float[] fArr = new float[2];
            motionController.getCenter(p3, fArr, new float[2]);
            float f9 = fArr[0];
            float f10 = fArr[1];
            double d4 = f9;
            double d5 = f4;
            double d6 = f5;
            double sin = Math.sin(d6);
            Double.isNaN(d5);
            Double.isNaN(d4);
            double d7 = d4 + (sin * d5);
            double d8 = f6 / 2.0f;
            Double.isNaN(d8);
            float f11 = (float) (d7 - d8);
            double d9 = f10;
            double cos = Math.cos(d6);
            Double.isNaN(d5);
            Double.isNaN(d9);
            double d10 = d9 - (d5 * cos);
            double d11 = f7 / 2.0f;
            Double.isNaN(d11);
            f4 = f11;
            f5 = (float) (d10 - d11);
        }
        point[offset] = f4 + (f6 / 2.0f) + 0.0f;
        point[offset + 1] = f5 + (f7 / 2.0f) + 0.0f;
    }

    public void applyParameters(ConstraintSet.Constraint c4) {
        this.f3068a = Easing.getInterpolator(c4.motion.mTransitionEasing);
        ConstraintSet.Motion motion = c4.motion;
        this.f3078k = motion.mPathMotionArc;
        this.f3079l = motion.mAnimateRelativeTo;
        this.f3076i = motion.mPathRotate;
        this.f3069b = motion.mDrawPath;
        this.f3084q = motion.mAnimateCircleAngleTo;
        this.f3077j = c4.propertySet.mProgress;
        this.f3080m = c4.layout.circleAngle;
        for (String str : c4.mCustomConstraints.keySet()) {
            ConstraintAttribute constraintAttribute = c4.mCustomConstraints.get(str);
            if (constraintAttribute != null && constraintAttribute.isContinuous()) {
                this.f3082o.put(str, constraintAttribute);
            }
        }
    }

    public void configureRelativeTo(MotionController toOrbit) {
        toOrbit.o(this.f3077j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int e0(String name, double[] value, int offset) {
        ConstraintAttribute constraintAttribute = this.f3082o.get(name);
        int i2 = 0;
        if (constraintAttribute == null) {
            return 0;
        }
        if (constraintAttribute.numberOfInterpolatedValues() == 1) {
            value[offset] = constraintAttribute.getValueToInterpolate();
            return 1;
        }
        int numberOfInterpolatedValues = constraintAttribute.numberOfInterpolatedValues();
        float[] fArr = new float[numberOfInterpolatedValues];
        constraintAttribute.getValuesToInterpolate(fArr);
        while (i2 < numberOfInterpolatedValues) {
            value[offset] = fArr[i2];
            i2++;
            offset++;
        }
        return numberOfInterpolatedValues;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int k0(String name) {
        ConstraintAttribute constraintAttribute = this.f3082o.get(name);
        if (constraintAttribute == null) {
            return 0;
        }
        return constraintAttribute.numberOfInterpolatedValues();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m0(int[] toUse, double[] data, float[] path, int offset) {
        float f4 = this.f3072e;
        float f5 = this.f3073f;
        float f6 = this.f3074g;
        float f7 = this.f3075h;
        for (int i2 = 0; i2 < toUse.length; i2++) {
            float f8 = (float) data[i2];
            int i4 = toUse[i2];
            if (i4 == 1) {
                f4 = f8;
            } else if (i4 == 2) {
                f5 = f8;
            } else if (i4 == 3) {
                f6 = f8;
            } else if (i4 == 4) {
                f7 = f8;
            }
        }
        MotionController motionController = this.f3081n;
        if (motionController != null) {
            float centerX = motionController.getCenterX();
            float centerY = this.f3081n.getCenterY();
            double d4 = centerX;
            double d5 = f4;
            double d6 = f5;
            double sin = Math.sin(d6);
            Double.isNaN(d5);
            Double.isNaN(d4);
            double d7 = d4 + (sin * d5);
            double d8 = f6 / 2.0f;
            Double.isNaN(d8);
            double d9 = centerY;
            double cos = Math.cos(d6);
            Double.isNaN(d5);
            Double.isNaN(d9);
            double d10 = f7 / 2.0f;
            Double.isNaN(d10);
            f5 = (float) ((d9 - (d5 * cos)) - d10);
            f4 = (float) (d7 - d8);
        }
        float f9 = f6 + f4;
        float f10 = f7 + f5;
        Float.isNaN(Float.NaN);
        Float.isNaN(Float.NaN);
        int i5 = offset + 1;
        path[offset] = f4 + 0.0f;
        int i6 = i5 + 1;
        path[i5] = f5 + 0.0f;
        int i7 = i6 + 1;
        path[i6] = f9 + 0.0f;
        int i8 = i7 + 1;
        path[i7] = f5 + 0.0f;
        int i9 = i8 + 1;
        path[i8] = f9 + 0.0f;
        int i10 = i9 + 1;
        path[i9] = f10 + 0.0f;
        path[i10] = f4 + 0.0f;
        path[i10 + 1] = f10 + 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void s(MotionPaths points, boolean[] mask, String[] custom, boolean arcMode) {
        boolean m4 = m(this.f3072e, points.f3072e);
        boolean m5 = m(this.f3073f, points.f3073f);
        mask[0] = mask[0] | m(this.f3071d, points.f3071d);
        boolean z3 = m4 | m5 | arcMode;
        mask[1] = mask[1] | z3;
        mask[2] = z3 | mask[2];
        mask[3] = mask[3] | m(this.f3074g, points.f3074g);
        mask[4] = m(this.f3075h, points.f3075h) | mask[4];
    }

    public void setupRelative(MotionController mc, MotionPaths relative) {
        double d4 = ((this.f3072e + (this.f3074g / 2.0f)) - relative.f3072e) - (relative.f3074g / 2.0f);
        double d5 = ((this.f3073f + (this.f3075h / 2.0f)) - relative.f3073f) - (relative.f3075h / 2.0f);
        this.f3081n = mc;
        this.f3072e = (float) Math.hypot(d5, d4);
        if (Float.isNaN(this.f3080m)) {
            this.f3073f = (float) (Math.atan2(d5, d4) + 1.5707963267948966d);
        } else {
            this.f3073f = (float) Math.toRadians(this.f3080m);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean v0(String name) {
        return this.f3082o.containsKey(name);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void x(double[] data, int[] toUse) {
        float[] fArr = {this.f3071d, this.f3072e, this.f3073f, this.f3074g, this.f3075h, this.f3076i};
        int i2 = 0;
        for (int i4 = 0; i4 < toUse.length; i4++) {
            if (toUse[i4] < 6) {
                data[i2] = fArr[toUse[i4]];
                i2++;
            }
        }
    }

    void y0(KeyPosition c4, MotionPaths startTimePoint, MotionPaths endTimePoint) {
        float f4 = c4.f2719a / 100.0f;
        this.f3070c = f4;
        this.f3069b = c4.f2816j;
        float f5 = Float.isNaN(c4.f2817k) ? f4 : c4.f2817k;
        float f6 = Float.isNaN(c4.f2818l) ? f4 : c4.f2818l;
        float f7 = endTimePoint.f3074g;
        float f8 = startTimePoint.f3074g;
        float f9 = endTimePoint.f3075h;
        float f10 = startTimePoint.f3075h;
        this.f3071d = this.f3070c;
        float f11 = startTimePoint.f3072e;
        float f12 = startTimePoint.f3073f;
        float f13 = (endTimePoint.f3072e + (f7 / 2.0f)) - ((f8 / 2.0f) + f11);
        float f14 = (endTimePoint.f3073f + (f9 / 2.0f)) - (f12 + (f10 / 2.0f));
        float f15 = (f7 - f8) * f5;
        float f16 = f15 / 2.0f;
        this.f3072e = (int) ((f11 + (f13 * f4)) - f16);
        float f17 = (f9 - f10) * f6;
        float f18 = f17 / 2.0f;
        this.f3073f = (int) ((f12 + (f14 * f4)) - f18);
        this.f3074g = (int) (f8 + f15);
        this.f3075h = (int) (f10 + f17);
        float f19 = Float.isNaN(c4.f2819m) ? f4 : c4.f2819m;
        float f20 = Float.isNaN(c4.f2822p) ? 0.0f : c4.f2822p;
        if (!Float.isNaN(c4.f2820n)) {
            f4 = c4.f2820n;
        }
        float f21 = Float.isNaN(c4.f2821o) ? 0.0f : c4.f2821o;
        this.f3083p = 0;
        this.f3072e = (int) (((startTimePoint.f3072e + (f19 * f13)) + (f21 * f14)) - f16);
        this.f3073f = (int) (((startTimePoint.f3073f + (f13 * f20)) + (f14 * f4)) - f18);
        this.f3068a = Easing.getInterpolator(c4.f2814h);
        this.f3078k = c4.f2815i;
    }

    @Override // java.lang.Comparable
    public int compareTo(@NonNull MotionPaths o3) {
        return Float.compare(this.f3071d, o3.f3071d);
    }

    public MotionPaths(int parentWidth, int parentHeight, KeyPosition c4, MotionPaths startTimePoint, MotionPaths endTimePoint) {
        int i2 = Key.UNSET;
        this.f3078k = i2;
        this.f3079l = i2;
        this.f3080m = Float.NaN;
        this.f3081n = null;
        this.f3082o = new LinkedHashMap<>();
        this.f3083p = 0;
        this.f3085r = new double[18];
        this.f3086s = new double[18];
        if (startTimePoint.f3079l != Key.UNSET) {
            M0(parentWidth, parentHeight, c4, startTimePoint, endTimePoint);
            return;
        }
        int i4 = c4.f2823q;
        if (i4 == 1) {
            L0(c4, startTimePoint, endTimePoint);
        } else if (i4 != 2) {
            y0(c4, startTimePoint, endTimePoint);
        } else {
            N0(parentWidth, parentHeight, c4, startTimePoint, endTimePoint);
        }
    }
}
