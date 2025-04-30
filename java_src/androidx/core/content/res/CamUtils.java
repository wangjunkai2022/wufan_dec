package androidx.core.content.res;

import android.graphics.Color;
import androidx.annotation.NonNull;
import androidx.core.graphics.ColorUtils;
/* loaded from: classes.dex */
final class CamUtils {

    /* renamed from: a  reason: collision with root package name */
    static final float[][] f4193a = {new float[]{0.401288f, 0.650173f, -0.051461f}, new float[]{-0.250268f, 1.204414f, 0.045854f}, new float[]{-0.002079f, 0.048952f, 0.953127f}};

    /* renamed from: b  reason: collision with root package name */
    static final float[][] f4194b = {new float[]{1.8620678f, -1.0112547f, 0.14918678f}, new float[]{0.38752654f, 0.62144744f, -0.00897398f}, new float[]{-0.0158415f, -0.03412294f, 1.0499644f}};

    /* renamed from: c  reason: collision with root package name */
    static final float[] f4195c = {95.047f, 100.0f, 108.883f};

    /* renamed from: d  reason: collision with root package name */
    static final float[][] f4196d = {new float[]{0.41233894f, 0.35762063f, 0.18051042f}, new float[]{0.2126f, 0.7152f, 0.0722f}, new float[]{0.01932141f, 0.11916382f, 0.9503448f}};

    private CamUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(float f4) {
        if (f4 < 1.0f) {
            return -16777216;
        }
        if (f4 > 99.0f) {
            return -1;
        }
        float f5 = (f4 + 16.0f) / 116.0f;
        float f6 = (f4 > 8.0f ? 1 : (f4 == 8.0f ? 0 : -1)) > 0 ? f5 * f5 * f5 : f4 / 903.2963f;
        float f7 = f5 * f5 * f5;
        boolean z3 = f7 > 0.008856452f;
        float f8 = z3 ? f7 : ((f5 * 116.0f) - 16.0f) / 903.2963f;
        if (!z3) {
            f7 = ((f5 * 116.0f) - 16.0f) / 903.2963f;
        }
        float[] fArr = f4195c;
        return ColorUtils.XYZToColor(f8 * fArr[0], f6 * fArr[1], f7 * fArr[2]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float b(int i2) {
        return c(g(i2));
    }

    static float c(float f4) {
        float f5 = f4 / 100.0f;
        return f5 <= 0.008856452f ? f5 * 903.2963f : (((float) Math.cbrt(f5)) * 116.0f) - 16.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float d(float f4, float f5, float f6) {
        return f4 + ((f5 - f4) * f6);
    }

    static float e(int i2) {
        float f4 = i2 / 255.0f;
        return (f4 <= 0.04045f ? f4 / 12.92f : (float) Math.pow((f4 + 0.055f) / 1.055f, 2.4000000953674316d)) * 100.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static float[] f(int i2) {
        float e4 = e(Color.red(i2));
        float e5 = e(Color.green(i2));
        float e6 = e(Color.blue(i2));
        float[][] fArr = f4196d;
        return new float[]{(fArr[0][0] * e4) + (fArr[0][1] * e5) + (fArr[0][2] * e6), (fArr[1][0] * e4) + (fArr[1][1] * e5) + (fArr[1][2] * e6), (e4 * fArr[2][0]) + (e5 * fArr[2][1]) + (e6 * fArr[2][2])};
    }

    static float g(int i2) {
        float e4 = e(Color.red(i2));
        float e5 = e(Color.green(i2));
        float e6 = e(Color.blue(i2));
        float[][] fArr = f4196d;
        return (e4 * fArr[1][0]) + (e5 * fArr[1][1]) + (e6 * fArr[1][2]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float h(float f4) {
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
