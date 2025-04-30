package androidx.core.graphics;

import android.graphics.Color;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import java.util.Objects;
/* loaded from: classes.dex */
public final class ColorUtils {

    /* renamed from: a  reason: collision with root package name */
    private static final double f4249a = 95.047d;

    /* renamed from: b  reason: collision with root package name */
    private static final double f4250b = 100.0d;

    /* renamed from: c  reason: collision with root package name */
    private static final double f4251c = 108.883d;

    /* renamed from: d  reason: collision with root package name */
    private static final double f4252d = 0.008856d;

    /* renamed from: e  reason: collision with root package name */
    private static final double f4253e = 903.3d;

    /* renamed from: f  reason: collision with root package name */
    private static final int f4254f = 10;

    /* renamed from: g  reason: collision with root package name */
    private static final int f4255g = 1;

    /* renamed from: h  reason: collision with root package name */
    private static final ThreadLocal<double[]> f4256h = new ThreadLocal<>();

    private ColorUtils() {
    }

    @ColorInt
    public static int HSLToColor(@NonNull float[] fArr) {
        int round;
        int round2;
        int round3;
        float f4 = fArr[0];
        float f5 = fArr[1];
        float f6 = fArr[2];
        float abs = (1.0f - Math.abs((f6 * 2.0f) - 1.0f)) * f5;
        float f7 = f6 - (0.5f * abs);
        float abs2 = (1.0f - Math.abs(((f4 / 60.0f) % 2.0f) - 1.0f)) * abs;
        switch (((int) f4) / 60) {
            case 0:
                round = Math.round((abs + f7) * 255.0f);
                round2 = Math.round((abs2 + f7) * 255.0f);
                round3 = Math.round(f7 * 255.0f);
                break;
            case 1:
                round = Math.round((abs2 + f7) * 255.0f);
                round2 = Math.round((abs + f7) * 255.0f);
                round3 = Math.round(f7 * 255.0f);
                break;
            case 2:
                round = Math.round(f7 * 255.0f);
                round2 = Math.round((abs + f7) * 255.0f);
                round3 = Math.round((abs2 + f7) * 255.0f);
                break;
            case 3:
                round = Math.round(f7 * 255.0f);
                round2 = Math.round((abs2 + f7) * 255.0f);
                round3 = Math.round((abs + f7) * 255.0f);
                break;
            case 4:
                round = Math.round((abs2 + f7) * 255.0f);
                round2 = Math.round(f7 * 255.0f);
                round3 = Math.round((abs + f7) * 255.0f);
                break;
            case 5:
            case 6:
                round = Math.round((abs + f7) * 255.0f);
                round2 = Math.round(f7 * 255.0f);
                round3 = Math.round((abs2 + f7) * 255.0f);
                break;
            default:
                round3 = 0;
                round = 0;
                round2 = 0;
                break;
        }
        return Color.rgb(e(round, 0, 255), e(round2, 0, 255), e(round3, 0, 255));
    }

    @ColorInt
    public static int LABToColor(@FloatRange(from = 0.0d, to = 100.0d) double d4, @FloatRange(from = -128.0d, to = 127.0d) double d5, @FloatRange(from = -128.0d, to = 127.0d) double d6) {
        double[] f4 = f();
        LABToXYZ(d4, d5, d6, f4);
        return XYZToColor(f4[0], f4[1], f4[2]);
    }

    public static void LABToXYZ(@FloatRange(from = 0.0d, to = 100.0d) double d4, @FloatRange(from = -128.0d, to = 127.0d) double d5, @FloatRange(from = -128.0d, to = 127.0d) double d6, @NonNull double[] dArr) {
        double d7 = (d4 + 16.0d) / 116.0d;
        double d8 = (d5 / 500.0d) + d7;
        double d9 = d7 - (d6 / 200.0d);
        double pow = Math.pow(d8, 3.0d);
        if (pow <= f4252d) {
            pow = ((d8 * 116.0d) - 16.0d) / f4253e;
        }
        double pow2 = d4 > 7.9996247999999985d ? Math.pow(d7, 3.0d) : d4 / f4253e;
        double pow3 = Math.pow(d9, 3.0d);
        if (pow3 <= f4252d) {
            pow3 = ((d9 * 116.0d) - 16.0d) / f4253e;
        }
        dArr[0] = pow * f4249a;
        dArr[1] = pow2 * f4250b;
        dArr[2] = pow3 * f4251c;
    }

    public static void RGBToHSL(@IntRange(from = 0, to = 255) int i2, @IntRange(from = 0, to = 255) int i4, @IntRange(from = 0, to = 255) int i5, @NonNull float[] fArr) {
        float f4;
        float abs;
        float f5 = i2 / 255.0f;
        float f6 = i4 / 255.0f;
        float f7 = i5 / 255.0f;
        float max = Math.max(f5, Math.max(f6, f7));
        float min = Math.min(f5, Math.min(f6, f7));
        float f8 = max - min;
        float f9 = (max + min) / 2.0f;
        if (max == min) {
            f4 = 0.0f;
            abs = 0.0f;
        } else {
            f4 = max == f5 ? ((f6 - f7) / f8) % 6.0f : max == f6 ? ((f7 - f5) / f8) + 2.0f : 4.0f + ((f5 - f6) / f8);
            abs = f8 / (1.0f - Math.abs((2.0f * f9) - 1.0f));
        }
        float f10 = (f4 * 60.0f) % 360.0f;
        if (f10 < 0.0f) {
            f10 += 360.0f;
        }
        fArr[0] = d(f10, 0.0f, 360.0f);
        fArr[1] = d(abs, 0.0f, 1.0f);
        fArr[2] = d(f9, 0.0f, 1.0f);
    }

    public static void RGBToLAB(@IntRange(from = 0, to = 255) int i2, @IntRange(from = 0, to = 255) int i4, @IntRange(from = 0, to = 255) int i5, @NonNull double[] dArr) {
        RGBToXYZ(i2, i4, i5, dArr);
        XYZToLAB(dArr[0], dArr[1], dArr[2], dArr);
    }

    public static void RGBToXYZ(@IntRange(from = 0, to = 255) int i2, @IntRange(from = 0, to = 255) int i4, @IntRange(from = 0, to = 255) int i5, @NonNull double[] dArr) {
        if (dArr.length == 3) {
            double d4 = i2;
            Double.isNaN(d4);
            double d5 = d4 / 255.0d;
            double pow = d5 < 0.04045d ? d5 / 12.92d : Math.pow((d5 + 0.055d) / 1.055d, 2.4d);
            double d6 = i4;
            Double.isNaN(d6);
            double d7 = d6 / 255.0d;
            double pow2 = d7 < 0.04045d ? d7 / 12.92d : Math.pow((d7 + 0.055d) / 1.055d, 2.4d);
            double d8 = i5;
            Double.isNaN(d8);
            double d9 = d8 / 255.0d;
            double pow3 = d9 < 0.04045d ? d9 / 12.92d : Math.pow((d9 + 0.055d) / 1.055d, 2.4d);
            dArr[0] = ((0.4124d * pow) + (0.3576d * pow2) + (0.1805d * pow3)) * f4250b;
            dArr[1] = ((0.2126d * pow) + (0.7152d * pow2) + (0.0722d * pow3)) * f4250b;
            dArr[2] = ((pow * 0.0193d) + (pow2 * 0.1192d) + (pow3 * 0.9505d)) * f4250b;
            return;
        }
        throw new IllegalArgumentException("outXyz must have a length of 3.");
    }

    @ColorInt
    public static int XYZToColor(@FloatRange(from = 0.0d, to = 95.047d) double d4, @FloatRange(from = 0.0d, to = 100.0d) double d5, @FloatRange(from = 0.0d, to = 108.883d) double d6) {
        double d7 = (((3.2406d * d4) + ((-1.5372d) * d5)) + ((-0.4986d) * d6)) / f4250b;
        double d8 = ((((-0.9689d) * d4) + (1.8758d * d5)) + (0.0415d * d6)) / f4250b;
        double d9 = (((0.0557d * d4) + ((-0.204d) * d5)) + (1.057d * d6)) / f4250b;
        return Color.rgb(e((int) Math.round((d7 > 0.0031308d ? (Math.pow(d7, 0.4166666666666667d) * 1.055d) - 0.055d : d7 * 12.92d) * 255.0d), 0, 255), e((int) Math.round((d8 > 0.0031308d ? (Math.pow(d8, 0.4166666666666667d) * 1.055d) - 0.055d : d8 * 12.92d) * 255.0d), 0, 255), e((int) Math.round((d9 > 0.0031308d ? (Math.pow(d9, 0.4166666666666667d) * 1.055d) - 0.055d : d9 * 12.92d) * 255.0d), 0, 255));
    }

    public static void XYZToLAB(@FloatRange(from = 0.0d, to = 95.047d) double d4, @FloatRange(from = 0.0d, to = 100.0d) double d5, @FloatRange(from = 0.0d, to = 108.883d) double d6, @NonNull double[] dArr) {
        if (dArr.length == 3) {
            double g4 = g(d4 / f4249a);
            double g5 = g(d5 / f4250b);
            double g6 = g(d6 / f4251c);
            dArr[0] = Math.max(0.0d, (116.0d * g5) - 16.0d);
            dArr[1] = (g4 - g5) * 500.0d;
            dArr[2] = (g5 - g6) * 200.0d;
            return;
        }
        throw new IllegalArgumentException("outLab must have a length of 3.");
    }

    @VisibleForTesting
    static float a(float f4, float f5, float f6) {
        if (Math.abs(f5 - f4) > 180.0f) {
            if (f5 > f4) {
                f4 += 360.0f;
            } else {
                f5 += 360.0f;
            }
        }
        return (f4 + ((f5 - f4) * f6)) % 360.0f;
    }

    private static int b(int i2, int i4) {
        return 255 - (((255 - i4) * (255 - i2)) / 255);
    }

    @ColorInt
    public static int blendARGB(@ColorInt int i2, @ColorInt int i4, @FloatRange(from = 0.0d, to = 1.0d) float f4) {
        float f5 = 1.0f - f4;
        return Color.argb((int) ((Color.alpha(i2) * f5) + (Color.alpha(i4) * f4)), (int) ((Color.red(i2) * f5) + (Color.red(i4) * f4)), (int) ((Color.green(i2) * f5) + (Color.green(i4) * f4)), (int) ((Color.blue(i2) * f5) + (Color.blue(i4) * f4)));
    }

    public static void blendHSL(@NonNull float[] fArr, @NonNull float[] fArr2, @FloatRange(from = 0.0d, to = 1.0d) float f4, @NonNull float[] fArr3) {
        if (fArr3.length == 3) {
            float f5 = 1.0f - f4;
            fArr3[0] = a(fArr[0], fArr2[0], f4);
            fArr3[1] = (fArr[1] * f5) + (fArr2[1] * f4);
            fArr3[2] = (fArr[2] * f5) + (fArr2[2] * f4);
            return;
        }
        throw new IllegalArgumentException("result must have a length of 3.");
    }

    public static void blendLAB(@NonNull double[] dArr, @NonNull double[] dArr2, @FloatRange(from = 0.0d, to = 1.0d) double d4, @NonNull double[] dArr3) {
        if (dArr3.length == 3) {
            double d5 = 1.0d - d4;
            dArr3[0] = (dArr[0] * d5) + (dArr2[0] * d4);
            dArr3[1] = (dArr[1] * d5) + (dArr2[1] * d4);
            dArr3[2] = (dArr[2] * d5) + (dArr2[2] * d4);
            return;
        }
        throw new IllegalArgumentException("outResult must have a length of 3.");
    }

    private static int c(int i2, int i4, int i5, int i6, int i7) {
        if (i7 == 0) {
            return 0;
        }
        return (((i2 * 255) * i4) + ((i5 * i6) * (255 - i4))) / (i7 * 255);
    }

    public static double calculateContrast(@ColorInt int i2, @ColorInt int i4) {
        if (Color.alpha(i4) == 255) {
            if (Color.alpha(i2) < 255) {
                i2 = compositeColors(i2, i4);
            }
            double calculateLuminance = calculateLuminance(i2) + 0.05d;
            double calculateLuminance2 = calculateLuminance(i4) + 0.05d;
            return Math.max(calculateLuminance, calculateLuminance2) / Math.min(calculateLuminance, calculateLuminance2);
        }
        throw new IllegalArgumentException("background can not be translucent: #" + Integer.toHexString(i4));
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    public static double calculateLuminance(@ColorInt int i2) {
        double[] f4 = f();
        colorToXYZ(i2, f4);
        return f4[1] / f4250b;
    }

    public static int calculateMinimumAlpha(@ColorInt int i2, @ColorInt int i4, float f4) {
        int i5 = 255;
        if (Color.alpha(i4) == 255) {
            double d4 = f4;
            if (calculateContrast(setAlphaComponent(i2, 255), i4) < d4) {
                return -1;
            }
            int i6 = 0;
            for (int i7 = 0; i7 <= 10 && i5 - i6 > 1; i7++) {
                int i8 = (i6 + i5) / 2;
                if (calculateContrast(setAlphaComponent(i2, i8), i4) < d4) {
                    i6 = i8;
                } else {
                    i5 = i8;
                }
            }
            return i5;
        }
        throw new IllegalArgumentException("background can not be translucent: #" + Integer.toHexString(i4));
    }

    public static void colorToHSL(@ColorInt int i2, @NonNull float[] fArr) {
        RGBToHSL(Color.red(i2), Color.green(i2), Color.blue(i2), fArr);
    }

    public static void colorToLAB(@ColorInt int i2, @NonNull double[] dArr) {
        RGBToLAB(Color.red(i2), Color.green(i2), Color.blue(i2), dArr);
    }

    public static void colorToXYZ(@ColorInt int i2, @NonNull double[] dArr) {
        RGBToXYZ(Color.red(i2), Color.green(i2), Color.blue(i2), dArr);
    }

    public static int compositeColors(@ColorInt int i2, @ColorInt int i4) {
        int alpha = Color.alpha(i4);
        int alpha2 = Color.alpha(i2);
        int b4 = b(alpha2, alpha);
        return Color.argb(b4, c(Color.red(i2), alpha2, Color.red(i4), alpha, b4), c(Color.green(i2), alpha2, Color.green(i4), alpha, b4), c(Color.blue(i2), alpha2, Color.blue(i4), alpha, b4));
    }

    private static float d(float f4, float f5, float f6) {
        return f4 < f5 ? f5 : f4 > f6 ? f6 : f4;
    }

    public static double distanceEuclidean(@NonNull double[] dArr, @NonNull double[] dArr2) {
        return Math.sqrt(Math.pow(dArr[0] - dArr2[0], 2.0d) + Math.pow(dArr[1] - dArr2[1], 2.0d) + Math.pow(dArr[2] - dArr2[2], 2.0d));
    }

    private static int e(int i2, int i4, int i5) {
        return i2 < i4 ? i4 : i2 > i5 ? i5 : i2;
    }

    private static double[] f() {
        ThreadLocal<double[]> threadLocal = f4256h;
        double[] dArr = threadLocal.get();
        if (dArr == null) {
            double[] dArr2 = new double[3];
            threadLocal.set(dArr2);
            return dArr2;
        }
        return dArr;
    }

    private static double g(double d4) {
        return d4 > f4252d ? Math.pow(d4, 0.3333333333333333d) : ((d4 * f4253e) + 16.0d) / 116.0d;
    }

    @ColorInt
    public static int setAlphaComponent(@ColorInt int i2, @IntRange(from = 0, to = 255) int i4) {
        if (i4 < 0 || i4 > 255) {
            throw new IllegalArgumentException("alpha must be between 0 and 255.");
        }
        return (i2 & 16777215) | (i4 << 24);
    }

    @NonNull
    @RequiresApi(26)
    public static Color compositeColors(@NonNull Color color, @NonNull Color color2) {
        if (Objects.equals(color.getModel(), color2.getModel())) {
            if (!Objects.equals(color2.getColorSpace(), color.getColorSpace())) {
                color = color.convert(color2.getColorSpace());
            }
            float[] components = color.getComponents();
            float[] components2 = color2.getComponents();
            float alpha = color.alpha();
            float alpha2 = color2.alpha() * (1.0f - alpha);
            int componentCount = color2.getComponentCount() - 1;
            components2[componentCount] = alpha + alpha2;
            if (components2[componentCount] > 0.0f) {
                alpha /= components2[componentCount];
                alpha2 /= components2[componentCount];
            }
            for (int i2 = 0; i2 < componentCount; i2++) {
                components2[i2] = (components[i2] * alpha) + (components2[i2] * alpha2);
            }
            return Color.valueOf(components2, color2.getColorSpace());
        }
        throw new IllegalArgumentException("Color models must match (" + color.getModel() + " vs. " + color2.getModel() + ")");
    }
}
