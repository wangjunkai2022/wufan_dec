package com.google.android.material.color;

import androidx.core.view.MotionEventCompat;
import java.util.Arrays;
/* compiled from: ColorUtils.java */
/* loaded from: classes2.dex */
final class f {

    /* renamed from: a  reason: collision with root package name */
    private static final float[] f14581a = {95.047f, 100.0f, 108.883f};

    private f() {
    }

    public static int a(int i2) {
        return i2 & 255;
    }

    public static float b(float f4) {
        return f4 <= 0.0031308f ? f4 * 12.92f : (((float) Math.pow(f4, 0.4166666567325592d)) * 1.055f) - 0.055f;
    }

    public static int c(int i2) {
        return (i2 & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
    }

    public static String d(int i2) {
        return String.format("#%02x%02x%02x", Integer.valueOf(m(i2)), Integer.valueOf(c(i2)), Integer.valueOf(a(i2)));
    }

    public static int e(double d4, double d5, double d6) {
        double d7 = (d4 + 16.0d) / 116.0d;
        double d8 = (d5 / 500.0d) + d7;
        double d9 = d7 - (d6 / 200.0d);
        double d10 = d8 * d8 * d8;
        if (d10 <= 0.008856451679035631d) {
            d10 = ((d8 * 116.0d) - 16.0d) / 903.2962962962963d;
        }
        double d11 = d4 > 8.0d ? d7 * d7 * d7 : d4 / 903.2962962962963d;
        double d12 = d9 * d9 * d9;
        if (d12 <= 0.008856451679035631d) {
            d12 = ((d9 * 116.0d) - 16.0d) / 903.2962962962963d;
        }
        float[] fArr = f14581a;
        double d13 = fArr[0];
        Double.isNaN(d13);
        double d14 = d10 * d13;
        double d15 = fArr[1];
        Double.isNaN(d15);
        double d16 = fArr[2];
        Double.isNaN(d16);
        return i((float) d14, (float) (d11 * d15), (float) (d12 * d16));
    }

    public static int f(float f4) {
        float f5 = (f4 + 16.0f) / 116.0f;
        float f6 = f5 * f5 * f5;
        boolean z3 = f6 > 0.008856452f;
        float f7 = (f4 > 8.0f ? 1 : (f4 == 8.0f ? 0 : -1)) > 0 ? f6 : f4 / 903.2963f;
        float f8 = z3 ? f6 : ((f5 * 116.0f) - 16.0f) / 903.2963f;
        if (!z3) {
            f6 = ((f5 * 116.0f) - 16.0f) / 903.2963f;
        }
        float[] fArr = f14581a;
        return h(new float[]{f8 * fArr[0], f7 * fArr[1], f6 * fArr[2]});
    }

    public static int g(int i2, int i4, int i5) {
        return (((((i2 & 255) << 16) | (-16777216)) | ((i4 & 255) << 8)) | (i5 & 255)) >>> 0;
    }

    public static int h(float[] fArr) {
        return i(fArr[0], fArr[1], fArr[2]);
    }

    public static int i(float f4, float f5, float f6) {
        float f7 = f4 / 100.0f;
        float f8 = f5 / 100.0f;
        float f9 = f6 / 100.0f;
        float f10 = (3.2406f * f7) + ((-1.5372f) * f8) + ((-0.4986f) * f9);
        float f11 = (f7 * 0.0557f) + (f8 * (-0.204f)) + (f9 * 1.057f);
        return g(Math.max(Math.min(255, Math.round(b(f10) * 255.0f)), 0), Math.max(Math.min(255, Math.round(b(((-0.9689f) * f7) + (1.8758f * f8) + (0.0415f * f9)) * 255.0f)), 0), Math.max(Math.min(255, Math.round(b(f11) * 255.0f)), 0));
    }

    public static double[] j(int i2) {
        double d4;
        double d5;
        double d6;
        float[] o3 = o(i2);
        float f4 = o3[1];
        float[] fArr = f14581a;
        double d7 = f4 / fArr[1];
        if (d7 > 0.008856451679035631d) {
            d4 = Math.cbrt(d7);
        } else {
            Double.isNaN(d7);
            d4 = ((d7 * 903.2962962962963d) + 16.0d) / 116.0d;
        }
        double d8 = o3[0] / fArr[0];
        if (d8 > 0.008856451679035631d) {
            d5 = Math.cbrt(d8);
        } else {
            Double.isNaN(d8);
            d5 = ((d8 * 903.2962962962963d) + 16.0d) / 116.0d;
        }
        double d9 = o3[2] / fArr[2];
        if (d9 > 0.008856451679035631d) {
            d6 = Math.cbrt(d9);
        } else {
            Double.isNaN(d9);
            d6 = ((d9 * 903.2962962962963d) + 16.0d) / 116.0d;
        }
        return new double[]{(116.0d * d4) - 16.0d, (d5 - d4) * 500.0d, (d4 - d6) * 200.0d};
    }

    public static float k(float f4) {
        return f4 <= 0.04045f ? f4 / 12.92f : (float) Math.pow((f4 + 0.055f) / 1.055f, 2.4000000953674316d);
    }

    public static float l(int i2) {
        return (float) j(i2)[0];
    }

    public static int m(int i2) {
        return (i2 & 16711680) >> 16;
    }

    public static final float[] n() {
        return Arrays.copyOf(f14581a, 3);
    }

    public static float[] o(int i2) {
        float k4 = k(m(i2) / 255.0f) * 100.0f;
        float k5 = k(c(i2) / 255.0f) * 100.0f;
        float k6 = k(a(i2) / 255.0f) * 100.0f;
        return new float[]{(0.41233894f * k4) + (0.35762063f * k5) + (0.18051042f * k6), (0.2126f * k4) + (0.7152f * k5) + (0.0722f * k6), (k4 * 0.01932141f) + (k5 * 0.11916382f) + (k6 * 0.9503448f)};
    }

    public static float p(float f4) {
        float f5;
        if (f4 > 8.0f) {
            double d4 = f4;
            Double.isNaN(d4);
            f5 = (float) Math.pow((d4 + 16.0d) / 116.0d, 3.0d);
        } else {
            f5 = f4 / 903.2963f;
        }
        return f5 * 100.0f;
    }
}
