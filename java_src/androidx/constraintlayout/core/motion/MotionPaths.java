package androidx.constraintlayout.core.motion;

import androidx.constraintlayout.core.motion.MotionWidget;
import androidx.constraintlayout.core.motion.key.MotionKeyPosition;
import androidx.constraintlayout.core.motion.utils.Easing;
import java.util.Arrays;
import java.util.HashMap;
/* loaded from: classes.dex */
public class MotionPaths implements Comparable<MotionPaths> {
    public static final int CARTESIAN = 0;
    public static final boolean DEBUG = false;
    public static final boolean OLD_WAY = false;
    public static final int PERPENDICULAR = 1;
    public static final int SCREEN = 2;
    public static final String TAG = "MotionPaths";

    /* renamed from: t  reason: collision with root package name */
    static final int f1924t = 0;

    /* renamed from: u  reason: collision with root package name */
    static final int f1925u = 1;

    /* renamed from: v  reason: collision with root package name */
    static final int f1926v = 2;

    /* renamed from: w  reason: collision with root package name */
    static final int f1927w = 3;

    /* renamed from: x  reason: collision with root package name */
    static final int f1928x = 4;

    /* renamed from: y  reason: collision with root package name */
    static final int f1929y = 5;

    /* renamed from: z  reason: collision with root package name */
    static String[] f1930z = {"position", "x", "y", "width", "height", "pathRotate"};

    /* renamed from: a  reason: collision with root package name */
    Easing f1931a;

    /* renamed from: b  reason: collision with root package name */
    int f1932b;

    /* renamed from: c  reason: collision with root package name */
    float f1933c;

    /* renamed from: d  reason: collision with root package name */
    float f1934d;

    /* renamed from: e  reason: collision with root package name */
    float f1935e;

    /* renamed from: f  reason: collision with root package name */
    float f1936f;

    /* renamed from: g  reason: collision with root package name */
    float f1937g;

    /* renamed from: h  reason: collision with root package name */
    float f1938h;

    /* renamed from: i  reason: collision with root package name */
    float f1939i;

    /* renamed from: j  reason: collision with root package name */
    float f1940j;

    /* renamed from: k  reason: collision with root package name */
    int f1941k;

    /* renamed from: l  reason: collision with root package name */
    int f1942l;

    /* renamed from: m  reason: collision with root package name */
    float f1943m;

    /* renamed from: n  reason: collision with root package name */
    Motion f1944n;

    /* renamed from: o  reason: collision with root package name */
    HashMap<String, CustomVariable> f1945o;

    /* renamed from: p  reason: collision with root package name */
    int f1946p;

    /* renamed from: q  reason: collision with root package name */
    int f1947q;

    /* renamed from: r  reason: collision with root package name */
    double[] f1948r;

    /* renamed from: s  reason: collision with root package name */
    double[] f1949s;

    public MotionPaths() {
        this.f1932b = 0;
        this.f1939i = Float.NaN;
        this.f1940j = Float.NaN;
        this.f1941k = -1;
        this.f1942l = -1;
        this.f1943m = Float.NaN;
        this.f1944n = null;
        this.f1945o = new HashMap<>();
        this.f1946p = 0;
        this.f1948r = new double[18];
        this.f1949s = new double[18];
    }

    private static final float R0(float f4, float f5, float f6, float f7, float f8, float f9) {
        return (((f8 - f6) * f5) - ((f9 - f7) * f4)) + f6;
    }

    private static final float S0(float f4, float f5, float f6, float f7, float f8, float f9) {
        return ((f8 - f6) * f4) + ((f9 - f7) * f5) + f7;
    }

    private boolean m(float f4, float f5) {
        return (Float.isNaN(f4) || Float.isNaN(f5)) ? Float.isNaN(f4) != Float.isNaN(f5) : Math.abs(f4 - f5) > 1.0E-6f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void A(int[] iArr, double[] dArr, float[] fArr, int i2) {
        float f4 = this.f1937g;
        float f5 = this.f1938h;
        for (int i4 = 0; i4 < iArr.length; i4++) {
            float f6 = (float) dArr[i4];
            int i5 = iArr[i4];
            if (i5 == 3) {
                f4 = f6;
            } else if (i5 == 4) {
                f5 = f6;
            }
        }
        fArr[i2] = f4;
        fArr[i2 + 1] = f5;
    }

    void L0(MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f4;
        float f5;
        float f6 = motionKeyPosition.mFramePosition / 100.0f;
        this.f1933c = f6;
        this.f1932b = motionKeyPosition.mDrawPath;
        float f7 = Float.isNaN(motionKeyPosition.mPercentWidth) ? f6 : motionKeyPosition.mPercentWidth;
        float f8 = Float.isNaN(motionKeyPosition.mPercentHeight) ? f6 : motionKeyPosition.mPercentHeight;
        float f9 = motionPaths2.f1937g - motionPaths.f1937g;
        float f10 = motionPaths2.f1938h - motionPaths.f1938h;
        this.f1934d = this.f1933c;
        if (!Float.isNaN(motionKeyPosition.mPercentX)) {
            f6 = motionKeyPosition.mPercentX;
        }
        float f11 = motionPaths.f1935e;
        float f12 = motionPaths.f1937g;
        float f13 = motionPaths.f1936f;
        float f14 = motionPaths.f1938h;
        float f15 = (motionPaths2.f1935e + (motionPaths2.f1937g / 2.0f)) - ((f12 / 2.0f) + f11);
        float f16 = (motionPaths2.f1936f + (motionPaths2.f1938h / 2.0f)) - ((f14 / 2.0f) + f13);
        float f17 = f15 * f6;
        float f18 = (f9 * f7) / 2.0f;
        this.f1935e = (int) ((f11 + f17) - f18);
        float f19 = f6 * f16;
        float f20 = (f10 * f8) / 2.0f;
        this.f1936f = (int) ((f13 + f19) - f20);
        this.f1937g = (int) (f12 + f4);
        this.f1938h = (int) (f14 + f5);
        float f21 = Float.isNaN(motionKeyPosition.mPercentY) ? 0.0f : motionKeyPosition.mPercentY;
        this.f1946p = 1;
        float f22 = (int) ((motionPaths.f1935e + f17) - f18);
        this.f1935e = f22;
        float f23 = (int) ((motionPaths.f1936f + f19) - f20);
        this.f1936f = f23;
        this.f1935e = f22 + ((-f16) * f21);
        this.f1936f = f23 + (f15 * f21);
        this.f1942l = this.f1942l;
        this.f1931a = Easing.getInterpolator(motionKeyPosition.mTransitionEasing);
        this.f1941k = motionKeyPosition.mPathMotionArc;
    }

    void M0(int i2, int i4, MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float min;
        float f4;
        float f5 = motionKeyPosition.mFramePosition / 100.0f;
        this.f1933c = f5;
        this.f1932b = motionKeyPosition.mDrawPath;
        this.f1946p = motionKeyPosition.mPositionType;
        float f6 = Float.isNaN(motionKeyPosition.mPercentWidth) ? f5 : motionKeyPosition.mPercentWidth;
        float f7 = Float.isNaN(motionKeyPosition.mPercentHeight) ? f5 : motionKeyPosition.mPercentHeight;
        float f8 = motionPaths2.f1937g;
        float f9 = motionPaths.f1937g;
        float f10 = motionPaths2.f1938h;
        float f11 = motionPaths.f1938h;
        this.f1934d = this.f1933c;
        this.f1937g = (int) (f9 + ((f8 - f9) * f6));
        this.f1938h = (int) (f11 + ((f10 - f11) * f7));
        int i5 = motionKeyPosition.mPositionType;
        if (i5 == 1) {
            float f12 = Float.isNaN(motionKeyPosition.mPercentX) ? f5 : motionKeyPosition.mPercentX;
            float f13 = motionPaths2.f1935e;
            float f14 = motionPaths.f1935e;
            this.f1935e = (f12 * (f13 - f14)) + f14;
            if (!Float.isNaN(motionKeyPosition.mPercentY)) {
                f5 = motionKeyPosition.mPercentY;
            }
            float f15 = motionPaths2.f1936f;
            float f16 = motionPaths.f1936f;
            this.f1936f = (f5 * (f15 - f16)) + f16;
        } else if (i5 != 2) {
            float f17 = Float.isNaN(motionKeyPosition.mPercentX) ? f5 : motionKeyPosition.mPercentX;
            float f18 = motionPaths2.f1935e;
            float f19 = motionPaths.f1935e;
            this.f1935e = (f17 * (f18 - f19)) + f19;
            if (!Float.isNaN(motionKeyPosition.mPercentY)) {
                f5 = motionKeyPosition.mPercentY;
            }
            float f20 = motionPaths2.f1936f;
            float f21 = motionPaths.f1936f;
            this.f1936f = (f5 * (f20 - f21)) + f21;
        } else {
            if (Float.isNaN(motionKeyPosition.mPercentX)) {
                float f22 = motionPaths2.f1935e;
                float f23 = motionPaths.f1935e;
                min = ((f22 - f23) * f5) + f23;
            } else {
                min = Math.min(f7, f6) * motionKeyPosition.mPercentX;
            }
            this.f1935e = min;
            if (Float.isNaN(motionKeyPosition.mPercentY)) {
                float f24 = motionPaths2.f1936f;
                float f25 = motionPaths.f1936f;
                f4 = (f5 * (f24 - f25)) + f25;
            } else {
                f4 = motionKeyPosition.mPercentY;
            }
            this.f1936f = f4;
        }
        this.f1942l = motionPaths.f1942l;
        this.f1931a = Easing.getInterpolator(motionKeyPosition.mTransitionEasing);
        this.f1941k = motionKeyPosition.mPathMotionArc;
    }

    void N0(int i2, int i4, MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f4 = motionKeyPosition.mFramePosition / 100.0f;
        this.f1933c = f4;
        this.f1932b = motionKeyPosition.mDrawPath;
        float f5 = Float.isNaN(motionKeyPosition.mPercentWidth) ? f4 : motionKeyPosition.mPercentWidth;
        float f6 = Float.isNaN(motionKeyPosition.mPercentHeight) ? f4 : motionKeyPosition.mPercentHeight;
        float f7 = motionPaths2.f1937g;
        float f8 = motionPaths.f1937g;
        float f9 = motionPaths2.f1938h;
        float f10 = motionPaths.f1938h;
        this.f1934d = this.f1933c;
        float f11 = motionPaths.f1935e;
        float f12 = motionPaths.f1936f;
        float f13 = motionPaths2.f1935e + (f7 / 2.0f);
        float f14 = motionPaths2.f1936f + (f9 / 2.0f);
        float f15 = (f7 - f8) * f5;
        this.f1935e = (int) ((f11 + ((f13 - ((f8 / 2.0f) + f11)) * f4)) - (f15 / 2.0f));
        float f16 = (f9 - f10) * f6;
        this.f1936f = (int) ((f12 + ((f14 - (f12 + (f10 / 2.0f))) * f4)) - (f16 / 2.0f));
        this.f1937g = (int) (f8 + f15);
        this.f1938h = (int) (f10 + f16);
        this.f1946p = 2;
        if (!Float.isNaN(motionKeyPosition.mPercentX)) {
            this.f1935e = (int) (motionKeyPosition.mPercentX * ((int) (i2 - this.f1937g)));
        }
        if (!Float.isNaN(motionKeyPosition.mPercentY)) {
            this.f1936f = (int) (motionKeyPosition.mPercentY * ((int) (i4 - this.f1938h)));
        }
        this.f1942l = this.f1942l;
        this.f1931a = Easing.getInterpolator(motionKeyPosition.mTransitionEasing);
        this.f1941k = motionKeyPosition.mPathMotionArc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void O0(float f4, float f5, float f6, float f7) {
        this.f1935e = f4;
        this.f1936f = f5;
        this.f1937g = f6;
        this.f1938h = f7;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void P0(float f4, float f5, float[] fArr, int[] iArr, double[] dArr, double[] dArr2) {
        float f6 = 0.0f;
        float f7 = 0.0f;
        float f8 = 0.0f;
        float f9 = 0.0f;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            float f10 = (float) dArr[i2];
            double d4 = dArr2[i2];
            int i4 = iArr[i2];
            if (i4 == 1) {
                f6 = f10;
            } else if (i4 == 2) {
                f8 = f10;
            } else if (i4 == 3) {
                f7 = f10;
            } else if (i4 == 4) {
                f9 = f10;
            }
        }
        float f11 = f6 - ((0.0f * f7) / 2.0f);
        float f12 = f8 - ((0.0f * f9) / 2.0f);
        fArr[0] = (f11 * (1.0f - f4)) + (((f7 * 1.0f) + f11) * f4) + 0.0f;
        fArr[1] = (f12 * (1.0f - f5)) + (((f9 * 1.0f) + f12) * f5) + 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Q0(float f4, MotionWidget motionWidget, int[] iArr, double[] dArr, double[] dArr2, double[] dArr3) {
        float f5;
        float f6;
        float f7 = this.f1935e;
        float f8 = this.f1936f;
        float f9 = this.f1937g;
        float f10 = this.f1938h;
        if (iArr.length != 0 && this.f1948r.length <= iArr[iArr.length - 1]) {
            int i2 = iArr[iArr.length - 1] + 1;
            this.f1948r = new double[i2];
            this.f1949s = new double[i2];
        }
        Arrays.fill(this.f1948r, Double.NaN);
        for (int i4 = 0; i4 < iArr.length; i4++) {
            this.f1948r[iArr[i4]] = dArr[i4];
            this.f1949s[iArr[i4]] = dArr2[i4];
        }
        float f11 = Float.NaN;
        int i5 = 0;
        float f12 = 0.0f;
        float f13 = 0.0f;
        float f14 = 0.0f;
        float f15 = 0.0f;
        while (true) {
            double[] dArr4 = this.f1948r;
            if (i5 >= dArr4.length) {
                break;
            }
            if (Double.isNaN(dArr4[i5]) && (dArr3 == null || dArr3[i5] == 0.0d)) {
                f6 = f11;
            } else {
                double d4 = dArr3 != null ? dArr3[i5] : 0.0d;
                if (!Double.isNaN(this.f1948r[i5])) {
                    d4 = this.f1948r[i5] + d4;
                }
                f6 = f11;
                float f16 = (float) d4;
                float f17 = (float) this.f1949s[i5];
                if (i5 == 1) {
                    f11 = f6;
                    f12 = f17;
                    f7 = f16;
                } else if (i5 == 2) {
                    f11 = f6;
                    f13 = f17;
                    f8 = f16;
                } else if (i5 == 3) {
                    f11 = f6;
                    f14 = f17;
                    f9 = f16;
                } else if (i5 == 4) {
                    f11 = f6;
                    f15 = f17;
                    f10 = f16;
                } else if (i5 == 5) {
                    f11 = f16;
                }
                i5++;
            }
            f11 = f6;
            i5++;
        }
        float f18 = f11;
        Motion motion = this.f1944n;
        if (motion != null) {
            float[] fArr = new float[2];
            float[] fArr2 = new float[2];
            motion.getCenter(f4, fArr, fArr2);
            float f19 = fArr[0];
            float f20 = fArr[1];
            float f21 = fArr2[0];
            float f22 = fArr2[1];
            double d5 = f19;
            double d6 = f7;
            double d7 = f8;
            double sin = Math.sin(d7);
            Double.isNaN(d6);
            Double.isNaN(d5);
            double d8 = f9 / 2.0f;
            Double.isNaN(d8);
            float f23 = (float) ((d5 + (sin * d6)) - d8);
            double d9 = f20;
            double cos = Math.cos(d7);
            Double.isNaN(d6);
            Double.isNaN(d9);
            double d10 = d9 - (cos * d6);
            f5 = f10;
            double d11 = f10 / 2.0f;
            Double.isNaN(d11);
            float f24 = (float) (d10 - d11);
            double d12 = f21;
            double d13 = f12;
            double sin2 = Math.sin(d7);
            Double.isNaN(d13);
            Double.isNaN(d12);
            double d14 = d12 + (sin2 * d13);
            double cos2 = Math.cos(d7);
            Double.isNaN(d6);
            double d15 = f13;
            Double.isNaN(d15);
            float f25 = (float) (d14 + (cos2 * d6 * d15));
            double d16 = f22;
            double cos3 = Math.cos(d7);
            Double.isNaN(d13);
            Double.isNaN(d16);
            double sin3 = Math.sin(d7);
            Double.isNaN(d6);
            Double.isNaN(d15);
            float f26 = (float) ((d16 - (d13 * cos3)) + (d6 * sin3 * d15));
            if (dArr2.length >= 2) {
                dArr2[0] = f25;
                dArr2[1] = f26;
            }
            if (!Float.isNaN(f18)) {
                double d17 = f18;
                double degrees = Math.toDegrees(Math.atan2(f26, f25));
                Double.isNaN(d17);
                motionWidget.setRotationZ((float) (d17 + degrees));
            }
            f7 = f23;
            f8 = f24;
        } else {
            f5 = f10;
            if (!Float.isNaN(f18)) {
                double d18 = 0.0f;
                double d19 = f18;
                double degrees2 = Math.toDegrees(Math.atan2(f13 + (f15 / 2.0f), f12 + (f14 / 2.0f)));
                Double.isNaN(d19);
                Double.isNaN(d18);
                motionWidget.setRotationZ((float) (d18 + d19 + degrees2));
            }
        }
        float f27 = f7 + 0.5f;
        float f28 = f8 + 0.5f;
        motionWidget.layout((int) f27, (int) f28, (int) (f27 + f9), (int) (f28 + f5));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void U(double d4, int[] iArr, double[] dArr, float[] fArr, int i2) {
        float f4 = this.f1935e;
        float f5 = this.f1936f;
        float f6 = this.f1937g;
        float f7 = this.f1938h;
        for (int i4 = 0; i4 < iArr.length; i4++) {
            float f8 = (float) dArr[i4];
            int i5 = iArr[i4];
            if (i5 == 1) {
                f4 = f8;
            } else if (i5 == 2) {
                f5 = f8;
            } else if (i5 == 3) {
                f6 = f8;
            } else if (i5 == 4) {
                f7 = f8;
            }
        }
        Motion motion = this.f1944n;
        if (motion != null) {
            float[] fArr2 = new float[2];
            motion.getCenter(d4, fArr2, new float[2]);
            float f9 = fArr2[0];
            float f10 = fArr2[1];
            double d5 = f9;
            double d6 = f4;
            double d7 = f5;
            double sin = Math.sin(d7);
            Double.isNaN(d6);
            Double.isNaN(d5);
            double d8 = d5 + (sin * d6);
            double d9 = f6 / 2.0f;
            Double.isNaN(d9);
            float f11 = (float) (d8 - d9);
            double d10 = f10;
            double cos = Math.cos(d7);
            Double.isNaN(d6);
            Double.isNaN(d10);
            double d11 = d10 - (d6 * cos);
            double d12 = f7 / 2.0f;
            Double.isNaN(d12);
            f4 = f11;
            f5 = (float) (d11 - d12);
        }
        fArr[i2] = f4 + (f6 / 2.0f) + 0.0f;
        fArr[i2 + 1] = f5 + (f7 / 2.0f) + 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Y(double d4, int[] iArr, double[] dArr, float[] fArr, double[] dArr2, float[] fArr2) {
        float f4;
        float f5 = this.f1935e;
        float f6 = this.f1936f;
        float f7 = this.f1937g;
        float f8 = this.f1938h;
        float f9 = 0.0f;
        float f10 = 0.0f;
        float f11 = 0.0f;
        float f12 = 0.0f;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            float f13 = (float) dArr[i2];
            float f14 = (float) dArr2[i2];
            int i4 = iArr[i2];
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
        Motion motion = this.f1944n;
        if (motion != null) {
            float[] fArr3 = new float[2];
            float[] fArr4 = new float[2];
            motion.getCenter(d4, fArr3, fArr4);
            float f18 = fArr3[0];
            float f19 = fArr3[1];
            float f20 = fArr4[0];
            float f21 = fArr4[1];
            double d5 = f18;
            double d6 = f5;
            double d7 = f6;
            double sin = Math.sin(d7);
            Double.isNaN(d6);
            Double.isNaN(d5);
            double d8 = d5 + (sin * d6);
            f4 = f7;
            double d9 = f7 / 2.0f;
            Double.isNaN(d9);
            float f22 = (float) (d8 - d9);
            double d10 = f19;
            double cos = Math.cos(d7);
            Double.isNaN(d6);
            Double.isNaN(d10);
            double d11 = d10 - (d6 * cos);
            double d12 = f8 / 2.0f;
            Double.isNaN(d12);
            double d13 = f20;
            double d14 = f9;
            double sin2 = Math.sin(d7);
            Double.isNaN(d14);
            Double.isNaN(d13);
            double d15 = d13 + (sin2 * d14);
            double cos2 = Math.cos(d7);
            double d16 = f11;
            Double.isNaN(d16);
            float f23 = (float) (d15 + (cos2 * d16));
            double d17 = f21;
            double cos3 = Math.cos(d7);
            Double.isNaN(d14);
            Double.isNaN(d17);
            double sin3 = Math.sin(d7);
            Double.isNaN(d16);
            f17 = (float) ((d17 - (d14 * cos3)) + (sin3 * d16));
            f16 = f23;
            f5 = f22;
            f6 = (float) (d11 - d12);
            f15 = 2.0f;
        } else {
            f4 = f7;
        }
        fArr[0] = f5 + (f4 / f15) + 0.0f;
        fArr[1] = f6 + (f8 / f15) + 0.0f;
        fArr2[0] = f16;
        fArr2[1] = f17;
    }

    void a0(double d4, int[] iArr, double[] dArr, float[] fArr, int i2) {
        float f4 = this.f1935e;
        float f5 = this.f1936f;
        float f6 = this.f1937g;
        float f7 = this.f1938h;
        for (int i4 = 0; i4 < iArr.length; i4++) {
            float f8 = (float) dArr[i4];
            int i5 = iArr[i4];
            if (i5 == 1) {
                f4 = f8;
            } else if (i5 == 2) {
                f5 = f8;
            } else if (i5 == 3) {
                f6 = f8;
            } else if (i5 == 4) {
                f7 = f8;
            }
        }
        Motion motion = this.f1944n;
        if (motion != null) {
            float[] fArr2 = new float[2];
            motion.getCenter(d4, fArr2, new float[2]);
            float f9 = fArr2[0];
            float f10 = fArr2[1];
            double d5 = f9;
            double d6 = f4;
            double d7 = f5;
            double sin = Math.sin(d7);
            Double.isNaN(d6);
            Double.isNaN(d5);
            double d8 = d5 + (sin * d6);
            double d9 = f6 / 2.0f;
            Double.isNaN(d9);
            float f11 = (float) (d8 - d9);
            double d10 = f10;
            double cos = Math.cos(d7);
            Double.isNaN(d6);
            Double.isNaN(d10);
            double d11 = d10 - (d6 * cos);
            double d12 = f7 / 2.0f;
            Double.isNaN(d12);
            f4 = f11;
            f5 = (float) (d11 - d12);
        }
        fArr[i2] = f4 + (f6 / 2.0f) + 0.0f;
        fArr[i2 + 1] = f5 + (f7 / 2.0f) + 0.0f;
    }

    public void applyParameters(MotionWidget motionWidget) {
        this.f1931a = Easing.getInterpolator(motionWidget.f1955b.mTransitionEasing);
        MotionWidget.Motion motion = motionWidget.f1955b;
        this.f1941k = motion.mPathMotionArc;
        this.f1942l = motion.mAnimateRelativeTo;
        this.f1939i = motion.mPathRotate;
        this.f1932b = motion.mDrawPath;
        this.f1947q = motion.mAnimateCircleAngleTo;
        this.f1940j = motionWidget.f1956c.mProgress;
        this.f1943m = 0.0f;
        for (String str : motionWidget.getCustomAttributeNames()) {
            CustomVariable customAttribute = motionWidget.getCustomAttribute(str);
            if (customAttribute != null && customAttribute.isContinuous()) {
                this.f1945o.put(str, customAttribute);
            }
        }
    }

    public void configureRelativeTo(Motion motion) {
        motion.k(this.f1940j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int e0(String str, double[] dArr, int i2) {
        CustomVariable customVariable = this.f1945o.get(str);
        int i4 = 0;
        if (customVariable == null) {
            return 0;
        }
        if (customVariable.numberOfInterpolatedValues() == 1) {
            dArr[i2] = customVariable.getValueToInterpolate();
            return 1;
        }
        int numberOfInterpolatedValues = customVariable.numberOfInterpolatedValues();
        float[] fArr = new float[numberOfInterpolatedValues];
        customVariable.getValuesToInterpolate(fArr);
        while (i4 < numberOfInterpolatedValues) {
            dArr[i2] = fArr[i4];
            i4++;
            i2++;
        }
        return numberOfInterpolatedValues;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int k0(String str) {
        CustomVariable customVariable = this.f1945o.get(str);
        if (customVariable == null) {
            return 0;
        }
        return customVariable.numberOfInterpolatedValues();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m0(int[] iArr, double[] dArr, float[] fArr, int i2) {
        float f4 = this.f1935e;
        float f5 = this.f1936f;
        float f6 = this.f1937g;
        float f7 = this.f1938h;
        for (int i4 = 0; i4 < iArr.length; i4++) {
            float f8 = (float) dArr[i4];
            int i5 = iArr[i4];
            if (i5 == 1) {
                f4 = f8;
            } else if (i5 == 2) {
                f5 = f8;
            } else if (i5 == 3) {
                f6 = f8;
            } else if (i5 == 4) {
                f7 = f8;
            }
        }
        Motion motion = this.f1944n;
        if (motion != null) {
            float centerX = motion.getCenterX();
            float centerY = this.f1944n.getCenterY();
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
        int i6 = i2 + 1;
        fArr[i2] = f4 + 0.0f;
        int i7 = i6 + 1;
        fArr[i6] = f5 + 0.0f;
        int i8 = i7 + 1;
        fArr[i7] = f9 + 0.0f;
        int i9 = i8 + 1;
        fArr[i8] = f5 + 0.0f;
        int i10 = i9 + 1;
        fArr[i9] = f9 + 0.0f;
        int i11 = i10 + 1;
        fArr[i10] = f10 + 0.0f;
        fArr[i11] = f4 + 0.0f;
        fArr[i11 + 1] = f10 + 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void s(MotionPaths motionPaths, boolean[] zArr, String[] strArr, boolean z3) {
        boolean m4 = m(this.f1935e, motionPaths.f1935e);
        boolean m5 = m(this.f1936f, motionPaths.f1936f);
        zArr[0] = zArr[0] | m(this.f1934d, motionPaths.f1934d);
        boolean z4 = m4 | m5 | z3;
        zArr[1] = zArr[1] | z4;
        zArr[2] = z4 | zArr[2];
        zArr[3] = zArr[3] | m(this.f1937g, motionPaths.f1937g);
        zArr[4] = m(this.f1938h, motionPaths.f1938h) | zArr[4];
    }

    public void setupRelative(Motion motion, MotionPaths motionPaths) {
        double d4 = ((this.f1935e + (this.f1937g / 2.0f)) - motionPaths.f1935e) - (motionPaths.f1937g / 2.0f);
        double d5 = ((this.f1936f + (this.f1938h / 2.0f)) - motionPaths.f1936f) - (motionPaths.f1938h / 2.0f);
        this.f1944n = motion;
        this.f1935e = (float) Math.hypot(d5, d4);
        if (Float.isNaN(this.f1943m)) {
            this.f1936f = (float) (Math.atan2(d5, d4) + 1.5707963267948966d);
        } else {
            this.f1936f = (float) Math.toRadians(this.f1943m);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean v0(String str) {
        return this.f1945o.containsKey(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void x(double[] dArr, int[] iArr) {
        float[] fArr = {this.f1934d, this.f1935e, this.f1936f, this.f1937g, this.f1938h, this.f1939i};
        int i2 = 0;
        for (int i4 = 0; i4 < iArr.length; i4++) {
            if (iArr[i4] < 6) {
                dArr[i2] = fArr[iArr[i4]];
                i2++;
            }
        }
    }

    void y0(MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f4 = motionKeyPosition.mFramePosition / 100.0f;
        this.f1933c = f4;
        this.f1932b = motionKeyPosition.mDrawPath;
        float f5 = Float.isNaN(motionKeyPosition.mPercentWidth) ? f4 : motionKeyPosition.mPercentWidth;
        float f6 = Float.isNaN(motionKeyPosition.mPercentHeight) ? f4 : motionKeyPosition.mPercentHeight;
        float f7 = motionPaths2.f1937g;
        float f8 = motionPaths.f1937g;
        float f9 = motionPaths2.f1938h;
        float f10 = motionPaths.f1938h;
        this.f1934d = this.f1933c;
        float f11 = motionPaths.f1935e;
        float f12 = motionPaths.f1936f;
        float f13 = (motionPaths2.f1935e + (f7 / 2.0f)) - ((f8 / 2.0f) + f11);
        float f14 = (motionPaths2.f1936f + (f9 / 2.0f)) - (f12 + (f10 / 2.0f));
        float f15 = (f7 - f8) * f5;
        float f16 = f15 / 2.0f;
        this.f1935e = (int) ((f11 + (f13 * f4)) - f16);
        float f17 = (f9 - f10) * f6;
        float f18 = f17 / 2.0f;
        this.f1936f = (int) ((f12 + (f14 * f4)) - f18);
        this.f1937g = (int) (f8 + f15);
        this.f1938h = (int) (f10 + f17);
        float f19 = Float.isNaN(motionKeyPosition.mPercentX) ? f4 : motionKeyPosition.mPercentX;
        float f20 = Float.isNaN(motionKeyPosition.mAltPercentY) ? 0.0f : motionKeyPosition.mAltPercentY;
        if (!Float.isNaN(motionKeyPosition.mPercentY)) {
            f4 = motionKeyPosition.mPercentY;
        }
        float f21 = Float.isNaN(motionKeyPosition.mAltPercentX) ? 0.0f : motionKeyPosition.mAltPercentX;
        this.f1946p = 0;
        this.f1935e = (int) (((motionPaths.f1935e + (f19 * f13)) + (f21 * f14)) - f16);
        this.f1936f = (int) (((motionPaths.f1936f + (f13 * f20)) + (f14 * f4)) - f18);
        this.f1931a = Easing.getInterpolator(motionKeyPosition.mTransitionEasing);
        this.f1941k = motionKeyPosition.mPathMotionArc;
    }

    @Override // java.lang.Comparable
    public int compareTo(MotionPaths motionPaths) {
        return Float.compare(this.f1934d, motionPaths.f1934d);
    }

    public MotionPaths(int i2, int i4, MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        this.f1932b = 0;
        this.f1939i = Float.NaN;
        this.f1940j = Float.NaN;
        this.f1941k = -1;
        this.f1942l = -1;
        this.f1943m = Float.NaN;
        this.f1944n = null;
        this.f1945o = new HashMap<>();
        this.f1946p = 0;
        this.f1948r = new double[18];
        this.f1949s = new double[18];
        if (motionPaths.f1942l != -1) {
            M0(i2, i4, motionKeyPosition, motionPaths, motionPaths2);
            return;
        }
        int i5 = motionKeyPosition.mPositionType;
        if (i5 == 1) {
            L0(motionKeyPosition, motionPaths, motionPaths2);
        } else if (i5 != 2) {
            y0(motionKeyPosition, motionPaths, motionPaths2);
        } else {
            N0(i2, i4, motionKeyPosition, motionPaths, motionPaths2);
        }
    }
}
